package sk.kasv.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode,String> {

    private  String coursePrefix;

    @Override
    public void initialize(CourseCode constraintAnnotation) {
        coursePrefix=constraintAnnotation.value();
    }

    @Override
    public boolean isValid(String s, ConstraintValidatorContext constraintValidatorContext) {
        boolean result;
        if (s!=null) {
            result = s.startsWith(coursePrefix);
        }else{
            result=true;
        }
        return result;
    }
}
