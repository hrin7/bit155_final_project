<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html dir="ltr" lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
    <title>Bit 155 Final Project</title>
    <!-- Custom CSS -->
    <!-- Custom CSS -->
    <link href="../../dist/css/style.min.css" rel="stylesheet">
    <link href="../../dist/css/kanban.css" rel="stylesheet">
    <!-- Vue.js CDN -->
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<!-- 엑시오스 CDN (ajax같은 것) -->
	<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        #addTodoListBtn {
            cursor: pointer;
        }
        .iconStyle {
            color: silver;
        }
        .iconStyle:hover {
            color: gray;
        }
    </style>
</head>



<body>

    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
        data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin6">
            <nav class="navbar top-navbar navbar-expand-md">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i
                            class="ti-menu ti-close"></i></a>
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <div class="navbar-brand">
                        <!-- Logo icon -->
                        <a href="index.html">
                            <b class="logo-icon">
                                <!-- Dark Logo icon -->
                                <img src="assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                                <!-- Light Logo icon -->
                                <img src="assets/images/logo-icon.png" alt="homepage" class="light-logo" />
                            </b>
                            <!--End Logo icon -->
                            <!-- Logo text -->
                            <span class="logo-text">
                                <!-- dark Logo text -->
                                <img src="assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                                <!-- Light Logo text -->
                                <img src="assets/images/logo-light-text.png" class="light-logo" alt="homepage" />
                            </span>
                        </a>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Toggle which is visible on mobile only -->
                    <!-- ============================================================== -->
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)"
                        data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i
                            class="ti-more"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-left mr-auto ml-3 pl-1">
                        <!-- Notification -->
                        <li class="nav-item dropdown">
                            <div class="dropdown-menu dropdown-menu-left mailbox animated bounceInDown">
                                <ul class="list-style-none">
                                    <li>
                                        <div class="message-center notifications position-relative">
                                            <!-- Message -->
                                            <a href="javascript:void(0)"
                                                class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                                <div class="btn btn-danger rounded-circle btn-circle"><i
                                                        data-feather="airplay" class="text-white"></i></div>
                                                <div class="w-75 d-inline-block v-middle pl-2">
                                                    <h6 class="message-title mb-0 mt-1">Luanch Admin</h6>
                                                    <span class="font-12 text-nowrap d-block text-muted">Just see
                                                        the my new
                                                        admin!</span>
                                                    <span class="font-12 text-nowrap d-block text-muted">9:30 AM</span>
                                                </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)"
                                                class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                                <span class="btn btn-success text-white rounded-circle btn-circle"><i
                                                        data-feather="calendar" class="text-white"></i></span>
                                                <div class="w-75 d-inline-block v-middle pl-2">
                                                    <h6 class="message-title mb-0 mt-1">Event today</h6>
                                                    <span
                                                        class="font-12 text-nowrap d-block text-muted text-truncate">Just
                                                        a reminder that you have event</span>
                                                    <span class="font-12 text-nowrap d-block text-muted">9:10 AM</span>
                                                </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)"
                                                class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                                <span class="btn btn-info rounded-circle btn-circle"><i
                                                        data-feather="settings" class="text-white"></i></span>
                                                <div class="w-75 d-inline-block v-middle pl-2">
                                                    <h6 class="message-title mb-0 mt-1">Settings</h6>
                                                    <span
                                                        class="font-12 text-nowrap d-block text-muted text-truncate">You
                                                        can customize this template
                                                        as you want</span>
                                                    <span class="font-12 text-nowrap d-block text-muted">9:08 AM</span>
                                                </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)"
                                                class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                                <span class="btn btn-primary rounded-circle btn-circle"><i
                                                        data-feather="box" class="text-white"></i></span>
                                                <div class="w-75 d-inline-block v-middle pl-2">
                                                    <h6 class="message-title mb-0 mt-1">Pavan kumar</h6> <span
                                                        class="font-12 text-nowrap d-block text-muted">Just
                                                        see the my admin!</span>
                                                    <span class="font-12 text-nowrap d-block text-muted">9:02 AM</span>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <a class="nav-link pt-3 text-center text-dark" href="javascript:void(0);">
                                            <strong>Check all notifications</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- End Notification -->
                        <!-- ============================================================== -->
                        <!-- create new -->
                        <!-- ============================================================== -->


                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-right">
                        <!-- ============================================================== -->
                        <!-- User profile -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false"
                                style="line-height: 40px; margin-bottom:10px;">
                                <div class="rounded-circle"
                                    style="float : left; background-color: white; overflow: hidden; height:40px; width:40px;">
                                    <div style="top: 0; left: 0; right: 0; bottom: 0; transform: translate(50%, 50%);">
                                        <img src="assets/images/users/ssss.jpg" alt="user" href="javascript:void(0)"
                                            style="width :auto; height: 70px; transform: translate(-50%, -50%); ">
                                    </div>
                                </div>
                                <span class="ml-2 d-none d-lg-inline-block" style="clear: both;">
                                    <span>Hello,</span>
                                    <span class="text-dark">떤더</span>
                                    <i data-feather="chevron-down" class="svg-icon"></i>
                                </span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
                                <a class="dropdown-item" href="javascript:void(0)"><i data-feather="user"
                                        class="svg-icon mr-2 ml-1"></i>
                                    My Profile</a>
                                <a class="dropdown-item" href="javascript:void(0)"><i data-feather="power"
                                        class="svg-icon mr-2 ml-1"></i>
                                    Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar" data-sidebarbg="skin6">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="sidebar-item" id="teaminfo-nav">
                            <span class="team-title">하이하이 3004조 입니다</span>

                            <div class="popover-icon" id="profile-group">

                                <div class="rounded-circle popover-item"
                                    style="float:left; background-color: white; overflow: hidden; height:50px; width:50px;">
                                    <div style="top: 0; left: 0; right: 0; bottom: 0; transform: translate(50%, 50%);">
                                        <img src="assets/images/users/ssss.jpg" alt="user" href="javascript:void(0)"
                                            style="width :auto; height: 70px; transform: translate(-50%, -50%); ">
                                    </div>
                                </div>
                                <div class="rounded-circle popover-item"
                                    style="float:left; background-color: white; overflow: hidden; height:50px; width:50px;">
                                    <div style="top: 0; left: 0; right: 0; bottom: 0; transform: translate(50%, 50%);">
                                        <img src="assets/images/users/ssss.jpg" alt="user" href="javascript:void(0)"
                                            style="width :auto; height: 70px; transform: translate(-50%, -50%); ">
                                    </div>
                                </div>
                                <div class="rounded-circle popover-item"
                                    style="float:left; background-color: white; overflow: hidden; height:50px; width:50px;">
                                    <div style="top: 0; left: 0; right: 0; bottom: 0; transform: translate(50%, 50%);">
                                        <img src="assets/images/users/ssss.jpg" alt="user" href="javascript:void(0)"
                                            style="width :auto; height: 70px; transform: translate(-50%, -50%); ">
                                    </div>
                                </div>
                                <div class="rounded-circle popover-item"
                                    style="float:left; background-color: white; overflow: hidden; height:50px; width:50px;">
                                    <div style="top: 0; left: 0; right: 0; bottom: 0; transform: translate(50%, 50%);">
                                        <img src="assets/images/users/ssss.jpg" alt="user" href="javascript:void(0)"
                                            style="width :auto; height: 70px; transform: translate(-50%, -50%); ">
                                    </div>
                                </div>
                                <div class="rounded-circle popover-item"
                                    style="float:left; background-color: white; overflow: hidden; height:50px; width:50px;">
                                    <div style="top: 0; left: 0; right: 0; bottom: 0; transform: translate(50%, 50%);">
                                        <img src="assets/images/users/ssss.jpg" alt="user" href="javascript:void(0)"
                                            style="width :auto; height: 70px; transform: translate(-50%, -50%); ">
                                    </div>
                                </div>
                                <div class="rounded-circle popover-item"
                                    style="float:left; background-color: white; overflow: hidden; height:50px; width:50px;">
                                    <div style="top: 0; left: 0; right: 0; bottom: 0; transform: translate(50%, 50%);">
                                        <img src="assets/images/users/ssss.jpg" alt="user" href="javascript:void(0)"
                                            style="width :auto; height: 70px; transform: translate(-50%, -50%); ">
                                    </div>
                                </div>
                                <div class="rounded-circle popover-item"
                                    style="float:left; background-color: white; overflow: hidden; height:50px; width:50px;">
                                    <div style="top: 0; left: 0; right: 0; bottom: 0; transform: translate(50%, 50%);">
                                        <img src="assets/images/users/ssss.jpg" alt="user" href="javascript:void(0)"
                                            style="width :auto; height: 70px; transform: translate(-50%, -50%); ">
                                    </div>
                                </div>


                                <!-- <img src="assets/images/users/181163014C9203713C.jpeg" alt="user"  href="javascript:void(0)" class="rounded-circle popover-item" width="45" height="45">
                                <img src="assets/images/users/profile-pic.jpg" alt="user"  href="javascript:void(0)" class="rounded-circle popover-item" width="45"> -->
                                <!-- <a class="btn btn-cyan rounded-circle btn-circle font-12 popover-item"
                                        href="javascript:void(0)">RP</a> -->
                            </div>
                            <div class="invite-button">
                                <button type="button"
                                    class="btn waves-effect waves-light btn-rounded btn-primary">Invite</button>
                            </div>
                        </li>

                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">Board List</span></li>

                        <li class="sidebar-item">
                            <a class="sidebar-link" href="#" aria-expanded="false">
                                <i class="fas fa-table"></i>
                                <span class="hide-menu">Board Name </span></a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link sidebar-link" href="#" aria-expanded="false">
                                <i class="fab fa-trello"></i>
                                <span class="hide-menu">Board Name</span></a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link sidebar-link" href="#" aria-expanded="false">
                                <i data-feather="plus-circle" class="feather-icon"></i>
                                <span class="hide-menu">Add Board</span></a>
                        </li>


                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">Components</span></li>

                        <li class="sidebar-item">
                            <a class="sidebar-link sidebar-link" href="javascript:void(0)" aria-expanded="false">
                                <i class="fas fa-cloud-download-alt"></i>
                                <span class="hide-menu">Cloud</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link sidebar-link" href="javascript:void(0)" aria-expanded="false">
                                <i class="fas fa-calendar-check"></i>
                                <span class="hide-menu">Calender </span></a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link sidebar-link" href="javascript:void(0)" aria-expanded="false">
                                <i class="fas fa-paint-brush"></i>
                                <span class="hide-menu">Canvas </span></a>
                        </li>


                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>


        <!-- ============================================================== -->
        <!-- 본인 페이지 인클루드  -->
        <!-- ============================================================== -->
        <div id="app">
		    <div class="page-wrapper">
		        <!-- ============================================================== -->
		        <!-- Container fluid  -->
		        <!-- ============================================================== -->
		        <div class="container-fluid">
					${todoList}
		            <!-- ============================================================== -->
		            <!-- Start Page Content -->
		            <!-- ============================================================== -->
		            <div class="row">
		                <!-- <component :is="todoLists"></component> -->
		                <component v-for="item in todoLists" :is="item"></component>
		                
		                <div class="col-xl-4">
		                    <div class="btn waves-effect waves-light btn-primary" id="addTodoListBtn" @click="addTodoTitle" v-if="addListBtnisStatusOn">+ Add Todo-List</div>
		                </div>
		
		            </div>
		            <!-- end row-->
		
		        </div>
		        <!-- ============================================================== -->
		        <!-- End Container fluid  -->
		        <!-- ============================================================== -->
		    </div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
		</div>
		
		<script>
		    var todoListComponent = {
		        template: `
		            <div class="col-xl-4">
		                <div class="card">
		                    <div class="card-body">
		                        <input type="text" class="form-control" placeholder="Title 입력 후 Enter" v-model="title" @keyup.enter="addTodoList" v-if="isStatusOn"/>
		                        <div v-if="isStatusOff">
		                            <h4 class="card-title mb-3">{{ title }}</h4>
		                            <div style="width: 100%;">
		                                <input type="text" class="form-control" placeholder="할 일을 입력하세요" v-model="userInput" @keyup.enter="addNewTodo"/>
		                            </div>
		                            <br>
		
		                            <div class="text-right">
		                                <button type="button" class="btn btn-outline-warning" @click="changeCurrentState('all')"><i class="fa fa-heart"></i> All</button>
		                                <button type="button" class="btn btn-outline-danger" @click="changeCurrentState('active')"><i class="far fa-heart"></i> Active</button>
		                                <button type="button" class="btn btn-outline-success" @click="changeCurrentState('done')"><i class="fa fa-check"></i> Done</button>
		                            </div>
		                            <br>
		                            
		                            <div class="tab-content">
		                                <template v-for="todo in activeTodoList">
		                                    <div class="tab-pane show active">
		                                        <div class="custom-control custom-checkbox">
		                                            <div style="float: left;">
		                                                <input type="checkbox" class="custom-control-input" :id="todo.content" :value="todo.content" 
		                                                    @click="toggleTodoState(todo)" :checked="todo.state == 'done' ? true : false">
		                                                <label class="custom-control-label" :for="todo.content" :style="{color:todo.state == 'done' ? 'lightgray' : '#7c8798'}">{{ todo.content }}</label>
		                                            </div>
		                                            <div style="float: right;">
		                                                <a href="#"><i class="fas fa-pencil-alt iconStyle"></i></a>&nbsp
		                                                <a href="#"><i class="fas fa-trash-alt iconStyle"></i></a>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </template>
		                            </div>
		                        </div>
		                    </div> <!-- end card-body-->
		                </div> <!-- end card-->
		            </div> <!-- end col -->
		        `,
		        data() {
		            return {
		                title: '',
		                userInput: '',
		                todoList: [],
		                currentState: 'all', //출력할 상태값을 가질 변수
		                isStatusOn: true,
		                isStatusOff: false
		            };
		        },
		        //클릭하면 값 들어오는거까지는 했는데...ㅠ 어렵다..
		        created() {
		        	axios.get('todoList2.do?teamNo=1')
		            .then((response) => {
		                for(var s in response.data) {
			                console.log(response.data[s].content); // 객체 형태로 반환. 파싱작업 불필요
			                this.todoList.push({
			                    content: response.data[s].content,
			                    state: 'active' //완료하지 않은 항목
			                });
		                }
		            });
		        },
		        methods: {//상태값을 변경할 메소드
		            changeCurrentState(state) {
		                this.currentState = state;
		            },
		            addNewTodo() {
		                this.todoList.push({
		                    content: this.userInput,
		                    state: 'active' //완료하지 않은 항목
		                });
		                this.userInput = '';
		            },
		            toggleTodoState(todo) { // 클릭시 상태값을 변경할 함수 //todo parameter는 클릭한 항목을 받을 parameter
		                //parameter로 받은 todo의 state를 done과 active로 번갈아가며 설정할 수 있도록 함
		                todo.state = todo.state === 'active' ? 'done' : 'active';
		            },
		            addTodoList() {
		                this.isStatusOn = false;
		                this.isStatusOff = true;
		                this.$root.addListBtnisStatusOn = true;
		
		                //axios통신으로 todoList Title DB에 insert하기
			            var params = new URLSearchParams();
			            params.append('title', this.title);
			            params.append('teamNo', 1);
			            params.append('id', 'hyerin');
			            axios.post('insertTodoTitle.do', params
			    	    ).then(response => {
			                console.log(response);
			            }).catch((ex) => {
			                console.log("ERROR!!!!! : ",ex);
			            });
		            }
		        },
		        // computed에 선언해놓은 것은 내부변수처럼 불러서 사용할 수 있기 때문에 activeTodoList() 이렇게 부르는 것이 아니라 activeTodoList일케 부름..
		        // 클래스의 getter함수처럼 동작한다고 한다
		        computed: {
		            activeTodoList() {
		                //currentState가 all이면 모든항목을 가져오고, 아닐경우 currentState과 동일한 항목만 가져오도록 설정
		                return this.todoList.filter(todo => this.currentState === 'all' || todo.state === this.currentState);
		            }
		        },
		    };
		
		    
		    
		    var app = new Vue({
		        el: '#app',
		        data() {
		            return {
		                todoLists : [],
		                addListBtnisStatusOn: true
		            };
		        },
		        /*
		        mounted() {
		        	axios.get('todoList2.do?teamNo=1')
		            .then(function(response) {
		                console.log(response.data); // 객체 형태로 반환. 파싱작업 불필요
		                this.todoLists = response.data;
		            });
		        },
		        */
		        methods: {
		            /*
		        	list: function() {
		            	axios.get('todoList2.do?teamNo=1')
		                .then(function(response) {
		                    console.log(response.data.todoList); // 객체 형태로 반환. 파싱작업 불필요
		                });
		            },
		            */
		            addTodoTitle() {
		                this.todoLists.push('todoList');
		                this.addListBtnisStatusOn = false;
		            }
		        },
		        components: {
		            'todoList': todoListComponent
		        }
		    });
			/*
		    axios.get('todoList2.do?teamNo=1')
		    .then(function(response) {
		        console.log(response.data); // 객체 형태로 반환. 파싱작업 불필요
		    });
		    */
		</script>


    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
   

    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="../../assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="../../assets/libs/popper.js/dist/umd/popper.main.js"></script>
    <script src="../../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- apps -->
    <!-- apps -->
    <script src="../../dist/js/app-style-switcher.js"></script>
    <script src="../../dist/js/feather.min.js"></script>
    <script src="../../assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="../../dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../../dist/js/custom.min.js"></script>
    <!--This page JavaScript -->


</body>

</html>