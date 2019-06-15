Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D68746DD9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 04:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ML0UUUUGOJgr7hprozOckfW36gYy7ucjU2+e+03rDfc=; b=OeIW751lRnV0vB
	lOwZ4PNPw03cyjCk9IWMaTNC6eGu0X333DxYLHWG9TBYUSIOXTbgerEY/QAush78vvmFmL87y7EYL
	izpUCvpwaxQcSqlGKj12GkvXKyqUC/f8Z/9p+azcFrbDrLkq0FAiUDAzfwT8/mjQq6sPle+tnML13
	X30fdCpkcJZ2dai/38LItICUtHGGnzjSPFoQBAZULD3ZDH+UDD+rFe0Aqbno9xNv0s4a///XvJ8O7
	2FgZv+bc6+nQUnx0oJUObD4dMkct+Y/2CaV7QRDwYHgWkXSlktKQYARwnOO30eewVaYtQUGO19Dhk
	T5KpZBVZswhJzLVMsYRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbyWy-0004xT-Et; Sat, 15 Jun 2019 02:35:00 +0000
Received: from mail-eopbgr70053.outbound.protection.outlook.com ([40.107.7.53]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbyWp-0004wJ-Nl
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 02:34:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vvM9va8Cgs1lB26Fe7gtor+l/FazgsETzFAZp1nQ+l0=;
 b=RK8FRyqp4bPVlq9jm1Bay+goZJcHpG46NqLDDczuZaSCbB99c6kvxpBwH3dzpoTnHspvGzpWSMtmgh8uQVWkq0D4DtUSx0SDUjbW3PwQ+UX9iEZiMkzTePH3fMsRYFibVJMv2LJrAkwag5Didj1+Bu9prhCCxhPm13wbuKGYTC4=
Received: from AM0PR04MB6738.eurprd04.prod.outlook.com (20.179.253.203) by
 AM0PR04MB4548.eurprd04.prod.outlook.com (52.135.149.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Sat, 15 Jun 2019 02:34:44 +0000
Received: from AM0PR04MB6738.eurprd04.prod.outlook.com
 ([fe80::f41f:5455:d0b3:2527]) by AM0PR04MB6738.eurprd04.prod.outlook.com
 ([fe80::f41f:5455:d0b3:2527%4]) with mapi id 15.20.1987.013; Sat, 15 Jun 2019
 02:34:44 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: RE: [PATCHv5 17/20] PCI: mobiveil: Complete initialization of host
 even if no PCIe link
Thread-Topic: [PATCHv5 17/20] PCI: mobiveil: Complete initialization of host
 even if no PCIe link
Thread-Index: AQHU8Qrh69RXVzVSWU2bYWJ3S9cC9aaYddkAgAPcP0A=
Date: Sat, 15 Jun 2019 02:34:44 +0000
Message-ID: <AM0PR04MB6738A753FB8A0AE340ADB2C684E90@AM0PR04MB6738.eurprd04.prod.outlook.com>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-18-Zhiqiang.Hou@nxp.com>
 <20190612143440.GC15747@redmoon>
In-Reply-To: <20190612143440.GC15747@redmoon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-originating-ip: [27.186.246.136]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5bb9fd0e-8877-416b-6c26-08d6f13a0700
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4548; 
x-ms-traffictypediagnostic: AM0PR04MB4548:
x-microsoft-antispam-prvs: <AM0PR04MB4548AA8C71B348890D1A974884E90@AM0PR04MB4548.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0069246B74
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(346002)(396003)(39850400004)(136003)(189003)(199004)(54534003)(13464003)(9686003)(2906002)(33656002)(76116006)(81156014)(81166006)(55016002)(26005)(102836004)(8676002)(53546011)(256004)(186003)(6246003)(6506007)(76176011)(66946007)(66476007)(73956011)(446003)(7696005)(6116002)(4326008)(11346002)(476003)(64756008)(66446008)(3846002)(66556008)(486006)(53936002)(99286004)(305945005)(52536014)(86362001)(5660300002)(71200400001)(6436002)(74316002)(14454004)(68736007)(54906003)(478600001)(71190400001)(316002)(25786009)(66066001)(8936002)(229853002)(7736002)(6916009)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4548;
 H:AM0PR04MB6738.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YqMEsHEYdZapZvDN19UuSrRjZ8zOR7skrH3VLIblgEnCFICTrXUiouf7ZuByuRWRGRR+RT3OYUKNi6eeLT/veOdOXURpYVUBEKCxqQNm2ROQVGfsKHsk8rcqMLNHQjANV3+gmeHb4q2SBjxntqhhPHEgTVIJNSxTeYj94Pi9y5/k363Z4qgvZpgkM4Iba0SnyBoABUtBhbBbeS+02iowbgf7xRZwIu+QIbhMbJHFQrdXeZ0GAxYA2ZhDBhtkTSVm24eg5VFyW43aewqI0DrQk2WhhJkmHOIWelwoVY9qdbbgu/uhadY+4fwK6x5fvEt8hfrdKWPEku8Eu68sNgy6xsQag/9yfB1X+Zu/sv082m9dBrCt1UsY/SD1gBkh7z+e5Xqnb3r689SmwjbzZ+Ezhn9MiLZMRakK0c0715ZoPUo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bb9fd0e-8877-416b-6c26-08d6f13a0700
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2019 02:34:44.5950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zhiqiang.hou@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4548
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_193451_879057_E3DCD2AE 
X-CRM114-Status: GOOD (  19.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTG9yZW56bywNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBMb3Jl
bnpvIFBpZXJhbGlzaSBbbWFpbHRvOmxvcmVuem8ucGllcmFsaXNpQGFybS5jb21dDQo+IFNlbnQ6
IDIwMTnE6jbUwjEyyNUgMjI6MzUNCj4gVG86IFoucS4gSG91IDx6aGlxaWFuZy5ob3VAbnhwLmNv
bT4NCj4gQ2M6IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZzsNCj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtl
cm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+IGJoZWxnYWFzQGdvb2dsZS5jb207IHJvYmgrZHRAa2Vy
bmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb207DQo+IGwuc3VicmFobWFueWFAbW9iaXZlaWwu
Y28uaW47IHNoYXduZ3VvQGtlcm5lbC5vcmc7IExlbyBMaQ0KPiA8bGVveWFuZy5saUBueHAuY29t
PjsgY2F0YWxpbi5tYXJpbmFzQGFybS5jb207IHdpbGwuZGVhY29uQGFybS5jb207DQo+IE1pbmdr
YWkgSHUgPG1pbmdrYWkuaHVAbnhwLmNvbT47IE0uaC4gTGlhbiA8bWluZ2h1YW4ubGlhbkBueHAu
Y29tPjsNCj4gWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+DQo+IFN1YmplY3Q6IFJl
OiBbUEFUQ0h2NSAxNy8yMF0gUENJOiBtb2JpdmVpbDogQ29tcGxldGUgaW5pdGlhbGl6YXRpb24g
b2YgaG9zdA0KPiBldmVuIGlmIG5vIFBDSWUgbGluaw0KPiANCj4gT24gRnJpLCBBcHIgMTIsIDIw
MTkgYXQgMDg6MzY6NTRBTSArMDAwMCwgWi5xLiBIb3Ugd3JvdGU6DQo+ID4gRnJvbTogSG91IFpo
aXFpYW5nIDxaaGlxaWFuZy5Ib3VAbnhwLmNvbT4NCj4gPg0KPiA+IFNvbWV0aW1lcyB0aGVyZSBp
cyBub3QgYSBQQ0llIEVuZHBvaW50IHN0YWxsZWQgaW4gdGhlIHNsb3QsIHNvIGRvIG5vdA0KPiA+
IGV4aXQgd2hlbiB0aGUgUENJZSBsaW5rIGlzIG5vdCB1cC4gQW5kIGRlZ3JhZGUgdGhlIHByaW50
IGxldmVsIG9mIGxpbmsNCj4gPiB1cCBpbmZvLg0KPiANCj4gU28gd2hhdCdzIHRoZSBwb2ludCBv
ZiBwcm9iaW5nIGlmIHRoZSBsaW5rIGRvZXMgbm90IGluaXRpYWxpemUgPw0KDQpBIHNpbXBsZSBj
YXNlIGlzIHBsdWcgaW4gYSBQQ0llIGRldmljZSBhZnRlciB0aGUgTGludXggYm9vdCB1cCwgdGhl
biByZXNjYW4gdGhlIGRldmljZS4NCklmIGV4aXQgd2hlbiBQQ0llIGxpbmsgaXMgbm90IHVwLCB0
aGUgUENJZSBjb250cm9sbGVyIGlzIG5vdCBpbml0aWFsaXplZCBjb21wbGV0ZWx5LCB0aGUNCnJl
c2NhbiBjYW5ub3Qgd29yay4NCg0KVGhhbmtzLA0KWmhpcWlhbmcNCg0KPiBMb3JlbnpvDQo+IA0K
PiA+IFNpZ25lZC1vZmYtYnk6IEhvdSBaaGlxaWFuZyA8WmhpcWlhbmcuSG91QG54cC5jb20+DQo+
ID4gUmV2aWV3ZWQtYnk6IE1pbmdodWFuIExpYW4gPE1pbmdodWFuLkxpYW5AbnhwLmNvbT4NCj4g
PiBSZXZpZXdlZC1ieTogU3VicmFobWFueWEgTGluZ2FwcGEgPGwuc3VicmFobWFueWFAbW9iaXZl
aWwuY28uaW4+DQo+ID4gLS0tDQo+ID4gVjU6DQo+ID4gIC0gQ29ycmVjdGVkIGFuZCByZXRvdWNo
ZWQgdGhlIHN1YmplY3QgYW5kIGNoYW5nZWxvZy4NCj4gPg0KPiA+ICBkcml2ZXJzL3BjaS9jb250
cm9sbGVyL3BjaWUtbW9iaXZlaWwuYyB8IDYgKystLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9wY2kvY29udHJvbGxlci9wY2llLW1vYml2ZWlsLmMNCj4gPiBiL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvcGNpZS1tb2JpdmVpbC5jDQo+ID4gaW5kZXggMWVlM2VhMjU3MGMwLi44ZGM4N2M3
YTYwMGUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLW1vYml2
ZWlsLmMNCj4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtbW9iaXZlaWwuYw0K
PiA+IEBAIC01NjAsNyArNTYwLDcgQEAgc3RhdGljIGludCBtb2JpdmVpbF9icmluZ3VwX2xpbmso
c3RydWN0DQo+IG1vYml2ZWlsX3BjaWUgKnBjaWUpDQo+ID4gIAkJdXNsZWVwX3JhbmdlKExJTktf
V0FJVF9NSU4sIExJTktfV0FJVF9NQVgpOw0KPiA+ICAJfQ0KPiA+DQo+ID4gLQlkZXZfZXJyKCZw
Y2llLT5wZGV2LT5kZXYsICJsaW5rIG5ldmVyIGNhbWUgdXBcbiIpOw0KPiA+ICsJZGV2X2luZm8o
JnBjaWUtPnBkZXYtPmRldiwgImxpbmsgbmV2ZXIgY2FtZSB1cFxuIik7DQo+ID4NCj4gPiAgCXJl
dHVybiAtRVRJTUVET1VUOw0KPiA+ICB9DQo+ID4gQEAgLTkyNiwxMCArOTI2LDggQEAgc3RhdGlj
IGludCBtb2JpdmVpbF9wY2llX3Byb2JlKHN0cnVjdA0KPiBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
DQo+ID4gIAlicmlkZ2UtPnN3aXp6bGVfaXJxID0gcGNpX2NvbW1vbl9zd2l6emxlOw0KPiA+DQo+
ID4gIAlyZXQgPSBtb2JpdmVpbF9icmluZ3VwX2xpbmsocGNpZSk7DQo+ID4gLQlpZiAocmV0KSB7
DQo+ID4gKwlpZiAocmV0KQ0KPiA+ICAJCWRldl9pbmZvKGRldiwgImxpbmsgYnJpbmctdXAgZmFp
bGVkXG4iKTsNCj4gPiAtCQlnb3RvIGVycm9yOw0KPiA+IC0JfQ0KPiA+DQo+ID4gIAkvKiBzZXR1
cCB0aGUga2VybmVsIHJlc291cmNlcyBmb3IgdGhlIG5ld2x5IGFkZGVkIFBDSWUgcm9vdCBidXMg
Ki8NCj4gPiAgCXJldCA9IHBjaV9zY2FuX3Jvb3RfYnVzX2JyaWRnZShicmlkZ2UpOw0KPiA+IC0t
DQo+ID4gMi4xNy4xDQo+ID4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
