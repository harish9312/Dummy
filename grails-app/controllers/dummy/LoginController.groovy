package dummy

class LoginController {

	def msg
	def user
	def cn
	def inm
	def tn
	def dur
	def tf
	def fb
	def feedback
	String s

    def index() { 


    	def login = Users.findByUserNameAndPassword(params.username,params.password)

    	if(params.username!=null && params.password!=null)
    	{
    		if(login)
    		{
    			user = params.username
    			s=user
    			redirect(action: "home")
    		}
    		else
    		{	
    			redirect(action:"index")
    		}
    	}

    }

    def home(){
    	
		if(s!=null){

    	feedback = Feedback.findByUserName(s)
    	cn = feedback.courseName
    	inm = feedback.instName
    	tn = feedback.trainerName
    	dur = feedback.courseDur
    	tf = feedback.totalFees
    	fb = feedback.feedback

    	def fbs = [cn:cn , fb:fb , inm:inm , tn:tn , dur:dur , tf:tf]
    	[fbs:fbs]

      }
      else
      redirect(action:"index")

    }

    def update(){

    	feedback.courseName = params.cn
    	feedback.instName   = params.inm
    	feedback.trainerName= params.tn
    	feedback.courseDur  = params.dur
    	feedback.totalFees  = params.tf
    	feedback.feedback   = params.fb
    	if(feedback.save())
    	{	
 			[msg:"Updated"]
    		redirect(controller:"feedback" , action:"index")
    	}
    	else
    	{	
    		render("Sorry Error Occurred")
    	}
    }
    def updated(){}




}
