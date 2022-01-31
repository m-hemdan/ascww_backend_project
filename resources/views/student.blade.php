<!DOCTYPE html>
<html>
    <head>
        <title></title>
    </head>
<body dir="rtl" >
    <h3>أسماء المقبولين في المدرسه الفنيه لعام 2022</h3>
<table border="1" >
        <tr>
            <th> رقم التسلسل</th>
            <th >اسم الطالب</th>
            <th>رقم قومي الاب </th>
            <th>تاريخ الميلاد</th>
            <th> السن أول اكتوبر</th>
            <th >المحافظه</th>
            <th>سنه الحصول علي الشهاده الاعداديه</th>
            <th>تليفون</th>
            <th> العنوان</th>
          
            <th>المجموع الكلي </th>
        
            <th>ملف الصور</th>
        </tr>
             @foreach($data as $data)
        <tr>
            <td>{{$data->id}}</td>
            <td>{{$data->name}}</td>
            <td>{{$data->userId}}</td>
            <td>{{$data->date}}</td>
            <td>{{$data->age_in_october}}</td>
            <td>{{$data->city}}</td>
            <td>{{$data->year_of_graduated}}</td>
            <td>{{$data->phone}}</td>
            <td>{{$data->address}}</td>
            <td>{{$data->total_grade}}</td>
         <!--   <td><a href="">view</a></td>   -->
            <td><a href="{{url('/download',$data->fileName)}}">download file</a></td>
        </tr>
    @endforeach
</table>
</body>
</html>     