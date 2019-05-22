Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D535825EF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 10:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1eZraqP4NYLZ32AJHI1rtF+UAa8dtCTRhEdbxKFJbFA=; b=HisQcRxSaCr71w
	p+JGGK5auFQnekBeHcUWf8F2LI68CZp4oWT91DDm6bSOsxf+AdF9jpVya6bT6R61fkGTZ+EGPfUoK
	476Gzdk4EEN8rbi5WXa0DVcnHuWtHrYVCCM5wKkbEMjQjZyGBiPN5RQjDEQYsvRb4ky/v2ZngvKjC
	j2PYXYC/UWdYIMV2lIRn5Q5BK5HoO2/wmidYJTHekslAwV74XNWWH+3c1c047O2RvnQQG7ZK6HpUi
	9+v6OYQ8PSdKB46f8wPvtZ2WLsOg31SnnZY9xKBvg7oNXmh57LB4JvAaHbQu+iTOywSGsy4foEkJk
	rXi4jWDjruVXRwDlRCiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTMFX-000762-Pm; Wed, 22 May 2019 08:05:23 +0000
Received: from mail-eopbgr1400120.outbound.protection.outlook.com
 ([40.107.140.120] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTMFQ-00075V-SZ; Wed, 22 May 2019 08:05:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HbYtDrrTnyCm0GizAGLUUbkJk8OIV5B2JUPsHjtJSMQ=;
 b=giKf4kVOsEKhYXnSAsge3fh4MRepzf69aCsBMtfqqfIDwsbi+NMwEgglDyn9q6sW9+eS33JuKj7oAGD4Sr/+5pjbZtK5QrwMecw0cfbjtv7HUBajcfLVqClrGXXMxEPiHS81SkAZ2GQMZmXZvqFASbSflf6q8nzLMgIwaPoQ9pw=
Received: from OSBPR01MB2103.jpnprd01.prod.outlook.com (52.134.242.17) by
 OSBPR01MB5094.jpnprd01.prod.outlook.com (20.179.183.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Wed, 22 May 2019 08:05:10 +0000
Received: from OSBPR01MB2103.jpnprd01.prod.outlook.com
 ([fe80::a146:39f0:5df9:11bc]) by OSBPR01MB2103.jpnprd01.prod.outlook.com
 ([fe80::a146:39f0:5df9:11bc%7]) with mapi id 15.20.1900.020; Wed, 22 May 2019
 08:05:10 +0000
From: Biju Das <biju.das@bp.renesas.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Subject: RE: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Thread-Topic: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Thread-Index: AQHVCjGxbEdsIx4ReU+jIZIOb3TooaZvJLIAgAApPICABAgXgIAAWsCAgAAANlCAAAi9gIAADx0AgAGaToCAAW2SoA==
Date: Wed, 22 May 2019 08:05:09 +0000
Message-ID: <OSBPR01MB21032206146152983C8F4E8EB8000@OSBPR01MB2103.jpnprd01.prod.outlook.com>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
 <1557823643-8616-5-git-send-email-chunfeng.yun@mediatek.com>
 <20190517103736.GA1490@kuha.fi.intel.com>
 <20190517130511.GA1887@kuha.fi.intel.com>
 <1558319951.10179.352.camel@mhfsdcap03>
 <20190520080359.GC1887@kuha.fi.intel.com>
 <OSBPR01MB2103385D996762FA54F8E437B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190520083601.GE1887@kuha.fi.intel.com>
 <OSBPR01MB2103C4C8920C40E42BC1B2A9B8060@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190521095839.GI1887@kuha.fi.intel.com>
In-Reply-To: <20190521095839.GI1887@kuha.fi.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biju.das@bp.renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d6c9d8a7-5293-4c92-d74e-08d6de8c360f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:OSBPR01MB5094; 
x-ms-traffictypediagnostic: OSBPR01MB5094:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <OSBPR01MB5094730728BB5BE1005D841AB8000@OSBPR01MB5094.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(366004)(346002)(136003)(376002)(39860400002)(189003)(199004)(51914003)(53936002)(8936002)(71190400001)(25786009)(74316002)(71200400001)(66066001)(6246003)(14454004)(966005)(4326008)(7416002)(76116006)(64756008)(66476007)(66946007)(102836004)(316002)(73956011)(66446008)(66556008)(6506007)(54906003)(44832011)(8676002)(86362001)(26005)(446003)(5660300002)(486006)(52536014)(81156014)(81166006)(478600001)(11346002)(2906002)(6116002)(3846002)(186003)(476003)(76176011)(305945005)(7696005)(6916009)(33656002)(99286004)(7736002)(6436002)(55016002)(9686003)(229853002)(256004)(6306002)(68736007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:OSBPR01MB5094;
 H:OSBPR01MB2103.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: bp.renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KnH6yByx83xBIVFYf0B/+WKjBcQBhrJhEctgn74U9t3qjBA1slL+qFIcfl4pp+HynaCBBsBnr4K29z1b587v8A9P4l6ihqnEuqJlUQ+RkdNn9thAs3iVW24rm4P2IaRdj1yQo9seb61PSzEkNEbCceCgJNLD1vAi6YcAuA3ra6LMZte6QSrzqZZdnK8fiVNPxqVGzdR/ApHC5Ok34/gloyAjDeVuhe7Q55le+ihfLtw76iIzhy2KnOnBq9yGLaAEmFmAtrBHizm9G21tgV9mYKC3R0JhrX64g/oTfJIuxTPLKJhtwddeZeGDQk13UU2UJbUqfxo3JpzKDnxFuadOz+/1v6Zoa4nQwuC/L/Dj4qLiGL4rhnh752H+/SKTvPmXCFDN8jQ8ch2qzp8uZ+cF2fl5DMl6FnCqsB63RJkFmJY=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6c9d8a7-5293-4c92-d74e-08d6de8c360f
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 08:05:10.1230 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB5094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_010516_932034_4C7A66A2 
X-CRM114-Status: GOOD (  28.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.120 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heikki,

Thanks for the feedback.

> Subject: Re: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by
> node
> 
> On Mon, May 20, 2019 at 09:45:46AM +0000, Biju Das wrote:
> >
> >
> > Hi Heikki,
> >
> > Thanks for the feedback.
> >
> > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > usb_role_switch by node
> > >
> > > On Mon, May 20, 2019 at 08:06:41AM +0000, Biju Das wrote:
> > > > Hi Heikki,
> > > >
> > > > > Subject: Re: [PATCH v5 4/6] usb: roles: add API to get
> > > > > usb_role_switch by node
> > > > >
> > > > > On Mon, May 20, 2019 at 10:39:11AM +0800, Chunfeng Yun wrote:
> > > > > > Hi,
> > > > > > On Fri, 2019-05-17 at 16:05 +0300, Heikki Krogerus wrote:
> > > > > > > Hi,
> > > > > > >
> > > > > > > On Fri, May 17, 2019 at 01:37:36PM +0300, Heikki Krogerus wrote:
> > > > > > > > On Tue, May 14, 2019 at 04:47:21PM +0800, Chunfeng Yun
> wrote:
> > > > > > > > > Add fwnode_usb_role_switch_get() to make easier to get
> > > > > > > > > usb_role_switch by fwnode which register it.
> > > > > > > > > It's useful when there is not device_connection
> > > > > > > > > registered between two drivers and only knows the fwnode
> > > > > > > > > which register usb_role_switch.
> > > > > > > > >
> > > > > > > > > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > > > > > > > Tested-by: Biju Das <biju.das@bp.renesas.com>
> > > > > > > >
> > > > > > > > Acked-by: Heikki Krogerus
> > > > > > > > <heikki.krogerus@linux.intel.com>
> > > > > > >
> > > > > > > Hold on. I just noticed Rob's comment on patch 2/6, where he
> > > > > > > points out that you don't need to use device graph since the
> > > > > > > controller is the parent of the connector. Doesn't that mean
> > > > > > > you don't really need this API?
> > > > > > No, I still need it.
> > > > > > The change is about the way how to get fwnode; when use device
> > > > > > graph, get fwnode by of_graph_get_remote_node(); but now will
> > > > > > get fwnode by of_get_parent();
> > > > >
> > > > > OK, I get that, but I'm still not convinced about if something
> > > > > like this function is needed at all. I also have concerns
> > > > > regarding how you are using the function. I'll explain in
> > > > > comment to the patch 5/6 in this
> > > series...
> > > >
> > > > FYI, Currently  I am also using this api in my patch series.
> > > > https://patchwork.kernel.org/patch/10944637/
> > >
> > > Yes, and I have the same question for you I jusb asked in comment I
> > > added to the patch 5/6 of this series. Why isn't usb_role_switch_get()
> enough?
> >
> > Currently no issue. It will work with this api as well, since the port node is
> part of controller node.
> > For eg:-
> > https://patchwork.kernel.org/patch/10944627/
> >
> > However if any one adds port node inside the connector node, then this
> api may won't work as expected.
> > Currently I get below error
> >
> > [    2.299703] OF: graph: no port node found in
> /soc/i2c@e6500000/hd3ss3220@47
> 
> We need to understand why is that happening?
> 

Form the stack trace  the parent node is "parent_node=hd3ss3220@47" , instead of the "connector" node.
That is the reason for the above error.

[    2.442429]  of_graph_get_next_endpoint.part.0+0x28/0x168
[    2.447889]  of_fwnode_graph_get_next_endpoint+0x5c/0xb0
[    2.453267]  fwnode_graph_get_next_endpoint+0x20/0x30
[    2.458374]  device_connection_find_match+0x74/0x1a0
[    2.463399]  usb_role_switch_get+0x20/0x28
[    2.467542]  hd3ss3220_probe+0xc4/0x218

The use case is

&i2c0 {
	hd3ss3220@47 {                                                           
                 	compatible = "ti,hd3ss3220"; 
                                   
                 	usb_con: connector {                                             
                          		compatible = "usb-c-connector";                                                      
                         		port {                                                   
                                		 hd3ss3220_ep: endpoint {                         
                                        			remote-endpoint = <&usb3_role_switch>;   
                                		};                                               
                         		};                                                       
                	 };                                                               
	 }; 
};
   
&usb3_peri0 {                                                                    
         companion = <&xhci0>;                                                    
         usb-role-switch;                                                         
                                                                                  
         port {                                                                   
                usb3_role_switch: endpoint {                                     
                        remote-endpoint = <&hd3ss3220_ep>;                       
                 };                                                               
         };                                                                       
};   

Q1) How do we modify the usb_role_switch_get() function to search 
Child(connector) and child's endpoint?

> It looks like we have an issue somewhere in the code, and instead of fixing
> that, you are working around it. Let's not do that.

OK.

Regards,
Biju


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
