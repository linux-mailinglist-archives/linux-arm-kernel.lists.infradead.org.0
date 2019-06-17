Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F07EF47FE9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 12:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2kR5h9gY3q69uKM0kE2zzwgzRJuW0eCVc3TbtrpAJ8=; b=YvFyNwBoCtTv1e
	sQOQz3vsxtylNwGNynqor45IHBhl9IGow6EEW63Td0tnpO5eOjso4QXOyO2fG/6pXQF/834L4L5MK
	lKQodiHHu5QV3Jznd3i+Eh9k1Vzm290jb4KGAtJOu9/d2FuFmPuKBefwLvd+GQXJHkXCue4pasWxG
	zV4bbqHEgGAaD7pw6edDlMHpuHfdUmwNulXBlnOcf/dyynyIzH4LOTNZh0LNLW26m/ve6n/QdEBAQ
	ZVNclJwGqrhqXgVF7k92qVI1LCDJ5OQ/zFvQtWWU/FtI5gl/YVBwpe649y/Qa2HliM2rzk/QSYOF4
	e8xGXiU+UVf2i3i+WjgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcp6A-0007B5-RI; Mon, 17 Jun 2019 10:42:50 +0000
Received: from mail-ve1eur01on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::618]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcp60-0007AX-Qq
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 10:42:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K5RjSG7iX5bCJaPMt2QXj0BKE8YyqvfrKa/0AZ/alI0=;
 b=mkUVyIEWvDegbxbb91s4lmYg52wWo13qx4DnyqEhWGJ54pIJfoF804W+g5w0u4cpJpb5w7ASfYHarVrdLrbwr0sm4HSuid9IZuAAa72TAVFP26h6fVTD4I5T3Kf5WelBBU5L7IWGI+MqLlBoUqNQ8iDhYNmbxwz7SON3H1MyDas=
Received: from AM6PR04MB6742.eurprd04.prod.outlook.com (20.179.246.158) by
 AM6PR04MB4469.eurprd04.prod.outlook.com (20.176.242.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.15; Mon, 17 Jun 2019 10:42:36 +0000
Received: from AM6PR04MB6742.eurprd04.prod.outlook.com
 ([fe80::cdfd:dd0c:dcaf:95b1]) by AM6PR04MB6742.eurprd04.prod.outlook.com
 ([fe80::cdfd:dd0c:dcaf:95b1%7]) with mapi id 15.20.1987.014; Mon, 17 Jun 2019
 10:42:36 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: RE: [PATCHv5 18/20] PCI: mobiveil: Disable IB and OB windows set by
 bootloader
Thread-Topic: [PATCHv5 18/20] PCI: mobiveil: Disable IB and OB windows set by
 bootloader
Thread-Index: AQHU8Qrl2X2dZdmZtkqqPC5pUtT6KKaYlFaAgAPP00CAA5hoAIAAEtkg
Date: Mon, 17 Jun 2019 10:42:36 +0000
Message-ID: <AM6PR04MB67424DE4A1964ED222D21E9584EB0@AM6PR04MB6742.eurprd04.prod.outlook.com>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-19-Zhiqiang.Hou@nxp.com>
 <20190612162347.GF15747@redmoon>
 <AM0PR04MB67383C84D946045874B0F14A84E90@AM0PR04MB6738.eurprd04.prod.outlook.com>
 <20190617093040.GC18020@e121166-lin.cambridge.arm.com>
In-Reply-To: <20190617093040.GC18020@e121166-lin.cambridge.arm.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 327b77e3-5561-4a29-a067-08d6f3108348
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB4469; 
x-ms-traffictypediagnostic: AM6PR04MB4469:
x-microsoft-antispam-prvs: <AM6PR04MB446981557E7A84034F4D5C8284EB0@AM6PR04MB4469.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0071BFA85B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(346002)(396003)(39860400002)(136003)(13464003)(199004)(189003)(6916009)(102836004)(6506007)(256004)(14444005)(5660300002)(478600001)(186003)(11346002)(476003)(71200400001)(446003)(73956011)(486006)(26005)(76116006)(66476007)(66946007)(66446008)(64756008)(66556008)(74316002)(53546011)(71190400001)(7736002)(305945005)(52536014)(7696005)(86362001)(76176011)(99286004)(8936002)(81166006)(81156014)(8676002)(2906002)(53936002)(7416002)(6246003)(229853002)(6436002)(54906003)(316002)(55016002)(68736007)(9686003)(25786009)(4326008)(33656002)(6116002)(3846002)(14454004)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4469;
 H:AM6PR04MB6742.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GcvP/4XisK0YN6gQLF5n8h+pe/XbH9k4eZnH2AHec1GnxJluH7DQF4Wr52xusl0AhsQ1idU3WnpEafnpNjJMQH9QMZxyGQ1ZbV4+7N95I/TUT+spuvBUcOxr2wjlwD7ncjCecTyaScbwJnzSaI5q5UicZotW/k1p0dMljlb6v+cJme466PVlF9aD3cZs4MkZt/sQDT0ukK3FfZXaEgjmdHMu0JY7lvF9DDWVXTJlBx9tjStnR3AbuR31OK8O7bfb4pXc9rlqn2GjwOMAszpKFYpKtt2KxTT3DUcBsgxFZhvM//JOoqRX1fig7LjbJuK9lA10x0H7FLNJTPsItMArLpso1P1+EbL2TYo2SntNlvMVYniEzskUzXRrBrn5QkVfTK7nHL41p2KBeoeYaT1e3PsOr3Rgh9E/7oQpGdz0Ogc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 327b77e3-5561-4a29-a067-08d6f3108348
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2019 10:42:36.6005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zhiqiang.hou@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4469
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_034240_877525_169821CF 
X-CRM114-Status: GOOD (  25.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:618 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTG9yZW56bywNCg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IExv
cmVuem8gUGllcmFsaXNpIDxsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tPg0KPiBTZW50OiAyMDE5
5bm0NuaciDE35pelIDE3OjMxDQo+IFRvOiBaLnEuIEhvdSA8emhpcWlhbmcuaG91QG54cC5jb20+
DQo+IENjOiBiaGVsZ2Fhc0Bnb29nbGUuY29tOyBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnOw0K
PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGRldmljZXRyZWVAdmdlci5r
ZXJuZWwub3JnOw0KPiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyByb2JoK2R0QGtlcm5l
bC5vcmc7IG1hcmsucnV0bGFuZEBhcm0uY29tOw0KPiBsLnN1YnJhaG1hbnlhQG1vYml2ZWlsLmNv
LmluOyBzaGF3bmd1b0BrZXJuZWwub3JnOyBMZW8gTGkNCj4gPGxlb3lhbmcubGlAbnhwLmNvbT47
IGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tOyB3aWxsLmRlYWNvbkBhcm0uY29tOw0KPiBNaW5na2Fp
IEh1IDxtaW5na2FpLmh1QG54cC5jb20+OyBNLmguIExpYW4gPG1pbmdodWFuLmxpYW5AbnhwLmNv
bT47DQo+IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPg0KPiBTdWJqZWN0OiBSZTog
W1BBVENIdjUgMTgvMjBdIFBDSTogbW9iaXZlaWw6IERpc2FibGUgSUIgYW5kIE9CIHdpbmRvd3Mg
c2V0DQo+IGJ5IGJvb3Rsb2FkZXINCj4gDQo+IE9uIFNhdCwgSnVuIDE1LCAyMDE5IGF0IDA1OjAz
OjMzQU0gKzAwMDAsIFoucS4gSG91IHdyb3RlOg0KPiA+IEhpIExvcmVuem8sDQo+ID4NCj4gPiA+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBMb3JlbnpvIFBpZXJhbGlz
aSBbbWFpbHRvOmxvcmVuem8ucGllcmFsaXNpQGFybS5jb21dDQo+ID4gPiBTZW50OiAyMDE55bm0
NuaciDEz5pelIDA6MjQNCj4gPiA+IFRvOiBaLnEuIEhvdSA8emhpcWlhbmcuaG91QG54cC5jb20+
OyBiaGVsZ2Fhc0Bnb29nbGUuY29tDQo+ID4gPiBDYzogbGludXgtcGNpQHZnZXIua2VybmVsLm9y
ZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiA+ID4gZGV2aWNldHJl
ZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+ID4gPiBy
b2JoK2R0QGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0uY29tOw0KPiA+ID4gcm9iaCtsLnN1
YnJhaG1hbnlhQG1vYml2ZWlsLmNvLmluOw0KPiA+ID4gc2hhd25ndW9Aa2VybmVsLm9yZzsgTGVv
IExpIDxsZW95YW5nLmxpQG54cC5jb20+Ow0KPiA+ID4gY2F0YWxpbi5tYXJpbmFzQGFybS5jb207
IHdpbGwuZGVhY29uQGFybS5jb207IE1pbmdrYWkgSHUNCj4gPiA+IDxtaW5na2FpLmh1QG54cC5j
b20+OyBNLmguIExpYW4gPG1pbmdodWFuLmxpYW5AbnhwLmNvbT47IFhpYW93ZWkNCj4gQmFvDQo+
ID4gPiA8eGlhb3dlaS5iYW9AbnhwLmNvbT4NCj4gPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0h2NSAx
OC8yMF0gUENJOiBtb2JpdmVpbDogRGlzYWJsZSBJQiBhbmQgT0INCj4gPiA+IHdpbmRvd3Mgc2V0
IGJ5IGJvb3Rsb2FkZXINCj4gPiA+DQo+ID4gPiBPbiBGcmksIEFwciAxMiwgMjAxOSBhdCAwODoz
NzowMEFNICswMDAwLCBaLnEuIEhvdSB3cm90ZToNCj4gPiA+ID4gRnJvbTogSG91IFpoaXFpYW5n
IDxaaGlxaWFuZy5Ib3VAbnhwLmNvbT4NCj4gPiA+ID4NCj4gPiA+ID4gRGlzYWJsZSBhbGwgaW5i
b3VuZCBhbmQgb3V0Ym91bmQgd2luZG93cyBiZWZvcmUgc2V0IHVwIHRoZSB3aW5kb3dzDQo+ID4g
PiA+IGluIGtlcm5lbCwgaW4gY2FzZSB0cmFuc2FjdGlvbnMgbWF0Y2ggdGhlIHdpbmRvdyBzZXQg
YnkgYm9vdGxvYWRlci4NCj4gPiA+DQo+ID4gPiBUaGVyZSBtdXN0IGJlIG5vIFBDSSB0cmFuc2Fj
dGlvbnMgb25nb2luZyBhdCBib290bG9hZGVyPC0+T1MgaGFuZG92ZXIuDQo+ID4gPg0KPiA+DQo+
ID4gWWVzLCBleGFjdC4NCj4gPg0KPiA+ID4gVGhlIGJvb3Rsb2FkZXIgbmVlZHMgZml4aW5nIGFu
ZCB0aGlzIHBhdGNoIHNob3VsZCBiZSBkcm9wcGVkLCB0aGUNCj4gPiA+IGhvc3QgYnJpZGdlIGRy
aXZlciBhc3N1bWVzIHRoZSBob3N0IGJyaWRnZSBzdGF0ZSBpcyBkaXNhYmxlZCwNCj4gPg0KPiA+
IFRoZSBob3N0IGJyaWRnZSBkcml2ZXIgc2hvdWxkIG5vdCBhc3N1bWVzIHRoZSBob3N0IHN0YXRl
IGlzIGRpc2FibGVkLA0KPiA+IGFjdHVhbGx5IHUtYm9vdCBlbmFibGUvaW5pdGlhbGl6ZSB0aGUg
aG9zdCBhbmQgd2l0aG91dCBkaXNhYmxpbmcgaXQNCj4gPiB3aGVuIHRyYW5zZmVyIHRoZSBjb250
cm9sIHRvIExpbnV4Lg0KPiANCj4gRml4IHRoZSBib290bG9hZGVyIGFuZCBkcm9wIHRoaXMgcGF0
Y2gsIEkgZXhwbGFpbiB0byB5b3Ugd2h5Lg0KDQpUaGlzIHBhdGNoIGlzIGp1c3QgdG8gYXZvaWQg
dWJvb3QgZHJpdmVyIHdpbmRvd3Mgc2V0dXAgYW5kIExpbnV4IGRyaXZlciB3aW5kb3dzDQpzZXR1
cCBvdmVybGFwIGlzc3VlLCBwbGVhc2UgZHJvcCBpdCBpZiB5b3UgZG9uJ3QgdGhpbmsgaXQncyBu
ZWVkZWQg8J+Yii4NCg0KVGhhbmtzLA0KWmhpcWlhbmcNCg0KPiANCj4gPiA+IGl0IHdpbGwgcHJv
Z3JhbSB0aGUgYnJpZGdlDQo+ID4gPiBhcGVydHVyZXMgZnJvbSBzY3JhdGNoIHdpdGggbm8gb25n
b2luZyB0cmFuc2FjdGlvbnMsIGFueXRoaW5nDQo+ID4gPiBkZXZpYXRpbmcgZnJvbSB0aGlzIGJl
aGF2aW91ciBpcyBhIGJvb3Rsb2FkZXIgYnVnIGFuZCBhIHJlY2lwZSBmb3IgZGlzYXN0ZXIuDQo+
ID4NCj4gPiBUaGUgcG9pbnQgb2YgdGhpcyBwYXRjaCBpcyBub3QgdG8gZml4IHRoZSBvbmdvaW5n
IHRyYW5zYWN0aW9uIGlzc3VlLA0KPiA+IGl0IGlzIHRvIGF2b2lkIGEgcG90ZW50aWFsIGlzc3Vl
IHdoaWNoIGlzIGNhdXNlZCBieSB0aGUgb3V0Ym91bmQNCj4gPiB3aW5kb3cgZW5hYmxlZCBieSBi
b290bG9hZGVyIG92ZXJsYXBwaW5nIHdpdGggTGludXggZW5hYmxlZC4NCj4gDQo+IFNlZSBhYm92
ZS4NCj4gDQo+IExvcmVuem8NCj4gDQo+ID4gVGhhbmtzLA0KPiA+IFpoaXFpYW5nDQo+ID4NCj4g
PiA+IExvcmVuem8NCj4gPiA+DQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEhvdSBaaGlxaWFuZyA8
WmhpcWlhbmcuSG91QG54cC5jb20+DQo+ID4gPiA+IFJldmlld2VkLWJ5OiBNaW5naHVhbiBMaWFu
IDxNaW5naHVhbi5MaWFuQG54cC5jb20+DQo+ID4gPiA+IFJldmlld2VkLWJ5OiBTdWJyYWhtYW55
YSBMaW5nYXBwYSA8bC5zdWJyYWhtYW55YUBtb2JpdmVpbC5jby5pbj4NCj4gPiA+ID4gLS0tDQo+
ID4gPiA+IFY1Og0KPiA+ID4gPiAgLSBObyBmdW5jdGlvbmFsaXR5IGNoYW5nZS4NCj4gPiA+ID4N
Cj4gPiA+ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1tb2JpdmVpbC5jIHwgMjUNCj4g
PiA+ID4gKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQs
IDI1IGluc2VydGlvbnMoKykNCj4gPiA+ID4NCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvcGNpZS1tb2JpdmVpbC5jDQo+ID4gPiA+IGIvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9wY2llLW1vYml2ZWlsLmMNCj4gPiA+ID4gaW5kZXggOGRjODdjN2E2MDBlLi40MTFl
OTc3OWRhMTIgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNp
ZS1tb2JpdmVpbC5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1t
b2JpdmVpbC5jDQo+ID4gPiA+IEBAIC01NjUsNiArNTY1LDI0IEBAIHN0YXRpYyBpbnQgbW9iaXZl
aWxfYnJpbmd1cF9saW5rKHN0cnVjdA0KPiA+ID4gbW9iaXZlaWxfcGNpZSAqcGNpZSkNCj4gPiA+
ID4gIAlyZXR1cm4gLUVUSU1FRE9VVDsNCj4gPiA+ID4gIH0NCj4gPiA+ID4NCj4gPiA+ID4gK3N0
YXRpYyB2b2lkIG1vYml2ZWlsX3BjaWVfZGlzYWJsZV9pYl93aW4oc3RydWN0IG1vYml2ZWlsX3Bj
aWUNCj4gPiA+ID4gKypwY2llLCBpbnQgaWR4KSB7DQo+ID4gPiA+ICsJdTMyIHZhbDsNCj4gPiA+
ID4gKw0KPiA+ID4gPiArCXZhbCA9IGNzcl9yZWFkbChwY2llLCBQQUJfUEVYX0FNQVBfQ1RSTChp
ZHgpKTsNCj4gPiA+ID4gKwl2YWwgJj0gfigxIDw8IEFNQVBfQ1RSTF9FTl9TSElGVCk7DQo+ID4g
PiA+ICsJY3NyX3dyaXRlbChwY2llLCB2YWwsIFBBQl9QRVhfQU1BUF9DVFJMKGlkeCkpOyB9DQo+
ID4gPiA+ICsNCj4gPiA+ID4gK3N0YXRpYyB2b2lkIG1vYml2ZWlsX3BjaWVfZGlzYWJsZV9vYl93
aW4oc3RydWN0IG1vYml2ZWlsX3BjaWUNCj4gPiA+ID4gKypwY2llLCBpbnQgaWR4KSB7DQo+ID4g
PiA+ICsJdTMyIHZhbDsNCj4gPiA+ID4gKw0KPiA+ID4gPiArCXZhbCA9IGNzcl9yZWFkbChwY2ll
LCBQQUJfQVhJX0FNQVBfQ1RSTChpZHgpKTsNCj4gPiA+ID4gKwl2YWwgJj0gfigxIDw8IFdJTl9F
TkFCTEVfU0hJRlQpOw0KPiA+ID4gPiArCWNzcl93cml0ZWwocGNpZSwgdmFsLCBQQUJfQVhJX0FN
QVBfQ1RSTChpZHgpKTsgfQ0KPiA+ID4gPiArDQo+ID4gPiA+ICBzdGF0aWMgdm9pZCBtb2JpdmVp
bF9wY2llX2VuYWJsZV9tc2koc3RydWN0IG1vYml2ZWlsX3BjaWUgKnBjaWUpICB7DQo+ID4gPiA+
ICAJcGh5c19hZGRyX3QgbXNnX2FkZHIgPSBwY2llLT5wY2llX3JlZ19iYXNlOyBAQCAtNTg1LDYg
KzYwMywxMw0KPiBAQA0KPiA+ID4gPiBzdGF0aWMgaW50IG1vYml2ZWlsX2hvc3RfaW5pdChzdHJ1
Y3QgbW9iaXZlaWxfcGNpZSAqcGNpZSkgIHsNCj4gPiA+ID4gIAl1MzIgdmFsdWUsIHBhYl9jdHJs
LCB0eXBlOw0KPiA+ID4gPiAgCXN0cnVjdCByZXNvdXJjZV9lbnRyeSAqd2luOw0KPiA+ID4gPiAr
CWludCBpOw0KPiA+ID4gPiArDQo+ID4gPiA+ICsJLyogRGlzYWJsZSBhbGwgaW5ib3VuZC9vdXRi
b3VuZCB3aW5kb3dzICovDQo+ID4gPiA+ICsJZm9yIChpID0gMDsgaSA8IHBjaWUtPmFwaW9fd2lu
czsgaSsrKQ0KPiA+ID4gPiArCQltb2JpdmVpbF9wY2llX2Rpc2FibGVfb2Jfd2luKHBjaWUsIGkp
Ow0KPiA+ID4gPiArCWZvciAoaSA9IDA7IGkgPCBwY2llLT5wcGlvX3dpbnM7IGkrKykNCj4gPiA+
ID4gKwkJbW9iaXZlaWxfcGNpZV9kaXNhYmxlX2liX3dpbihwY2llLCBpKTsNCj4gPiA+ID4NCj4g
PiA+ID4gIAkvKiBzZXR1cCBidXMgbnVtYmVycyAqLw0KPiA+ID4gPiAgCXZhbHVlID0gY3NyX3Jl
YWRsKHBjaWUsIFBDSV9QUklNQVJZX0JVUyk7DQo+ID4gPiA+IC0tDQo+ID4gPiA+IDIuMTcuMQ0K
PiA+ID4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
