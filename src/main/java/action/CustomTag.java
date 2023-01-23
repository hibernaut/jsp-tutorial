package action;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.StringWriter;

public class CustomTag extends SimpleTagSupport {
    private String message;

    public void setMessage(String message) {
        this.message = message;
    }

    StringWriter writer = new StringWriter();

    public void doTag() throws JspException, IOException {
        if (message != null) {
            JspWriter out = getJspContext().getOut();
            out.println(message);
        } else {
            getJspBody().invoke(writer);
            getJspContext().getOut().println(writer.toString());
        }
    }
}
