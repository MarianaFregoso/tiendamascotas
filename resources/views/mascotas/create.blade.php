<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form action="{{route('mascotas.store')}}" method="post">
      @csrf
       <label> Especie </label>
       <select name="especie" required>
          <option disable selected value="">Elige una Especie</option>
          @foreach($especies as $especie)
          <option value="{{$especie->id}}">{{$especie->nombre}}</option>
          @endforeach
       </select>
       <br>
       <label> Nombre</label>
       <input required type="text" name="nombre" placeholder="Nombre de la mascota">
       <br>
       <label> Precio</label>
       <input required type="text" name="precio" placeholder="Precio de la mascota">
       <br>
       <label> Fecha de Nacimiento</label>
       <input type="date" name="nacimiento">
       <br>
       <button type="submit">Crear una nueva mascota</button>
    </form>
</body>
</html>