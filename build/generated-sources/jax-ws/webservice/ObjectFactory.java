
package webservice;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the webservice package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _Agregar_QNAME = new QName("http://WebService/", "agregar");
    private final static QName _AgregarResponse_QNAME = new QName("http://WebService/", "agregarResponse");
    private final static QName _Editar_QNAME = new QName("http://WebService/", "editar");
    private final static QName _EditarResponse_QNAME = new QName("http://WebService/", "editarResponse");
    private final static QName _Eliminar_QNAME = new QName("http://WebService/", "eliminar");
    private final static QName _EliminarResponse_QNAME = new QName("http://WebService/", "eliminarResponse");
    private final static QName _Listar_QNAME = new QName("http://WebService/", "listar");
    private final static QName _ListarId_QNAME = new QName("http://WebService/", "listarId");
    private final static QName _ListarIdResponse_QNAME = new QName("http://WebService/", "listarIdResponse");
    private final static QName _ListarResponse_QNAME = new QName("http://WebService/", "listarResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: webservice
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Agregar }
     * 
     */
    public Agregar createAgregar() {
        return new Agregar();
    }

    /**
     * Create an instance of {@link AgregarResponse }
     * 
     */
    public AgregarResponse createAgregarResponse() {
        return new AgregarResponse();
    }

    /**
     * Create an instance of {@link Editar }
     * 
     */
    public Editar createEditar() {
        return new Editar();
    }

    /**
     * Create an instance of {@link EditarResponse }
     * 
     */
    public EditarResponse createEditarResponse() {
        return new EditarResponse();
    }

    /**
     * Create an instance of {@link Eliminar }
     * 
     */
    public Eliminar createEliminar() {
        return new Eliminar();
    }

    /**
     * Create an instance of {@link EliminarResponse }
     * 
     */
    public EliminarResponse createEliminarResponse() {
        return new EliminarResponse();
    }

    /**
     * Create an instance of {@link Listar }
     * 
     */
    public Listar createListar() {
        return new Listar();
    }

    /**
     * Create an instance of {@link ListarId }
     * 
     */
    public ListarId createListarId() {
        return new ListarId();
    }

    /**
     * Create an instance of {@link ListarIdResponse }
     * 
     */
    public ListarIdResponse createListarIdResponse() {
        return new ListarIdResponse();
    }

    /**
     * Create an instance of {@link ListarResponse }
     * 
     */
    public ListarResponse createListarResponse() {
        return new ListarResponse();
    }

    /**
     * Create an instance of {@link Estudiante }
     * 
     */
    public Estudiante createEstudiante() {
        return new Estudiante();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Agregar }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "agregar")
    public JAXBElement<Agregar> createAgregar(Agregar value) {
        return new JAXBElement<Agregar>(_Agregar_QNAME, Agregar.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AgregarResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "agregarResponse")
    public JAXBElement<AgregarResponse> createAgregarResponse(AgregarResponse value) {
        return new JAXBElement<AgregarResponse>(_AgregarResponse_QNAME, AgregarResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Editar }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "editar")
    public JAXBElement<Editar> createEditar(Editar value) {
        return new JAXBElement<Editar>(_Editar_QNAME, Editar.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EditarResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "editarResponse")
    public JAXBElement<EditarResponse> createEditarResponse(EditarResponse value) {
        return new JAXBElement<EditarResponse>(_EditarResponse_QNAME, EditarResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Eliminar }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "eliminar")
    public JAXBElement<Eliminar> createEliminar(Eliminar value) {
        return new JAXBElement<Eliminar>(_Eliminar_QNAME, Eliminar.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "eliminarResponse")
    public JAXBElement<EliminarResponse> createEliminarResponse(EliminarResponse value) {
        return new JAXBElement<EliminarResponse>(_EliminarResponse_QNAME, EliminarResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Listar }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listar")
    public JAXBElement<Listar> createListar(Listar value) {
        return new JAXBElement<Listar>(_Listar_QNAME, Listar.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarId }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarId")
    public JAXBElement<ListarId> createListarId(ListarId value) {
        return new JAXBElement<ListarId>(_ListarId_QNAME, ListarId.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarIdResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarIdResponse")
    public JAXBElement<ListarIdResponse> createListarIdResponse(ListarIdResponse value) {
        return new JAXBElement<ListarIdResponse>(_ListarIdResponse_QNAME, ListarIdResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarResponse")
    public JAXBElement<ListarResponse> createListarResponse(ListarResponse value) {
        return new JAXBElement<ListarResponse>(_ListarResponse_QNAME, ListarResponse.class, null, value);
    }

}
