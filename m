Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 765FB2139F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 08:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0ZIx9TuGm/o3JaLC4MVtHbU497T2NYFWHd0/Pc5xOA=; b=e87CpksUJVepcX
	+vt7tej97GmkXbrZVrCSgFOlJR1vdyB7mRS2Zj1SxRWLiIsVbujtc0iONcLd/Guqr331GNsCKGcj1
	5VACapm8wjNUSpfGjozmrwZqVyHOy3n5wWLJqZN+Mm6JQwWzZRV0cRLcvEbTJm6/Vo9vCtIIBL/x2
	SbMOlH1oNnQvEiguOoDFOR8fY2BCI5A2Ho8Vi9Wel6Ud6d7DD8sp83Kq5MHSgCvCSRoxeKCWwSGiz
	RArrYN8FAZ58tjDfTtoiXpaQKCR81JH1boKvStU0DTlLvPy3V5H92hkAVtWghNd+GouuJvMdKQ3ay
	MtEqGqtcXgewrGeEtlqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRW5M-0003KF-Nx; Fri, 17 May 2019 06:11:16 +0000
Received: from mail-eopbgr140048.outbound.protection.outlook.com
 ([40.107.14.48] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRW5E-0003J2-Ao
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 06:11:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=coVbVksQiyYiJuqVMDPDaSwZCJK5+fQ6FtuB0bW/gHw=;
 b=jZzZ4voZdmSOaIdAcNpXR8pVFA1Mjw8NuBwjFzltypz3nhbFbbHJ50mpScOQcOY26JWefNiTpEnLzGUEPUEo5pJeWbcTdE8Dsw2WanU/MefdKQZHPxNBQ/ap+Pm09C38tKfoIKW8MKFiY8sfOu4Fn048P11EMuzD11Lf6P71OFE=
Received: from AM6PR04MB4357.eurprd04.prod.outlook.com (52.135.167.33) by
 AM6PR04MB4792.eurprd04.prod.outlook.com (20.177.32.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Fri, 17 May 2019 06:11:00 +0000
Received: from AM6PR04MB4357.eurprd04.prod.outlook.com
 ([fe80::d877:33b5:bfa6:30ce]) by AM6PR04MB4357.eurprd04.prod.outlook.com
 ([fe80::d877:33b5:bfa6:30ce%6]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 06:11:00 +0000
From: Chuanhua Han <chuanhua.han@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix watchdog device node
Thread-Topic: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix watchdog device node
Thread-Index: AQHVBjWLU5tDmMzveEaz3RlKVqbc5aZupocAgAA6wsA=
Date: Fri, 17 May 2019 06:10:59 +0000
Message-ID: <AM6PR04MB4357C78FCEBA1B00AA42ED2E970B0@AM6PR04MB4357.eurprd04.prod.outlook.com>
References: <20190509070657.18281-1-chuanhua.han@nxp.com>
 <20190517023728.GA15856@dragon>
In-Reply-To: <20190517023728.GA15856@dragon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chuanhua.han@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e00a26a3-59b1-46f9-7221-08d6da8e6ee8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB4792; 
x-ms-traffictypediagnostic: AM6PR04MB4792:
x-microsoft-antispam-prvs: <AM6PR04MB47925576B13167EBEC1CFF6C970B0@AM6PR04MB4792.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(396003)(366004)(39860400002)(346002)(189003)(13464003)(199004)(446003)(76116006)(73956011)(74316002)(9686003)(316002)(3846002)(55016002)(44832011)(54906003)(8936002)(6246003)(4326008)(99286004)(81166006)(8676002)(81156014)(33656002)(66946007)(6116002)(11346002)(14454004)(102836004)(66476007)(66556008)(64756008)(66446008)(478600001)(6436002)(2906002)(53546011)(256004)(6506007)(86362001)(76176011)(7696005)(53936002)(476003)(7736002)(305945005)(26005)(229853002)(486006)(6916009)(66066001)(71190400001)(71200400001)(68736007)(5660300002)(186003)(52536014)(25786009)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4792;
 H:AM6PR04MB4357.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 72cwQohMgOenOnmoEGpWX4DU6fpT340g8rhp6QKoInL0jJ+q7XhGy27HTftbr2J/WC6NWsq3LUD7lnKrHpsQYsPbk4awRWxm9CCeQVrUvJ5PRnDnWHynQUcv2U6Ce3yEzz3JyHrJccaAOmTD1d6ejjBe6ijkT9WP/vPMVSRBoPW9uAkrboFXp8HgLfHDNyjqU8vNnFe2B5m4Jn2O2ex9RToGCGFK+MHBO4sa6UtRnzMIwC4VPUhK9aILRT7wlCqwfJOkQhxPsUCj1kuwlJ2XYaSV0GHDBO0T8JoTwztirnb06irEFPDe5w140dIsGJlfjhhV3+JGP1iIZETTF5KUsJE09Wy9DUyLkjKZ1o/75OcRjsztrTC0shktEyGmoNR+ZcuXOKnY7oHeL2X85vjsgbnSDuRI2E6V87+V4Xs0T6Y=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e00a26a3-59b1-46f9-7221-08d6da8e6ee8
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 06:10:59.9592 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4792
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_231108_376758_0E1D042F 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.48 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ying Zhang <ying.zhang22455@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2hhd24gR3VvIDxzaGF3
bmd1b0BrZXJuZWwub3JnPg0KPiBTZW50OiAyMDE5xOo11MIxN8jVIDEwOjM4DQo+IFRvOiBDaHVh
bmh1YSBIYW4gPGNodWFuaHVhLmhhbkBueHAuY29tPg0KPiBDYzogTGVvIExpIDxsZW95YW5nLmxp
QG54cC5jb20+OyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsNCj4gbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnOyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsNCj4gbGludXgta2Vy
bmVsQHZnZXIua2VybmVsLm9yZzsgWWluZyBaaGFuZyA8eWluZy56aGFuZzIyNDU1QG54cC5jb20+
DQo+IFN1YmplY3Q6IFtFWFRdIFJlOiBbUEFUQ0hdIGFybTY0OiBkdHM6IGxzMTAyOGE6IGZpeCB3
YXRjaGRvZyBkZXZpY2Ugbm9kZQ0KPiANCj4gQ2F1dGlvbjogRVhUIEVtYWlsDQo+IA0KPiBPbiBU
aHUsIE1heSAwOSwgMjAxOSBhdCAwMzowNjo1N1BNICswODAwLCBDaHVhbmh1YSBIYW4gd3JvdGU6
DQo+ID4gbHMxMDI4YSBwbGF0Zm9ybSB1c2VzIHNwODA1IHdhdGNoZG9nLCBhbmQgdXNlIDEvMTYg
cGxhdGZvcm0gY2xvY2sgYXMNCj4gPiB0aW1lciBjbG9jaywgdGhpcyBwYXRjaCBmaXggZGV2aWNl
IHRyZWUgbm9kZS4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFpoYW5nIFlpbmctMjI0NTUgPHlp
bmcuemhhbmcyMjQ1NUBueHAuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IENodWFuaHVhIEhhbiA8
Y2h1YW5odWEuaGFuQG54cC5jb20+DQo+ID4gLS0tDQo+ID4gIC4uLi9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaSB8IDE5DQo+ID4gKysrKysrKysrKysrLS0tLS0tLQ0K
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4g
Pg0KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMx
MDI4YS5kdHNpDQo+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4
YS5kdHNpDQo+ID4gaW5kZXggYjA0NTgxMjQ5ZjBiLi4xNTEwYjE4NTgyNDYgMTAwNjQ0DQo+ID4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaQ0KPiA+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kNCj4g
PiBAQCAtMjg1LDEzICsyODUsMTggQEANCj4gPiAgICAgICAgICAgICAgICAgICAgICAgI2ludGVy
cnVwdC1jZWxscyA9IDwyPjsNCj4gPiAgICAgICAgICAgICAgIH07DQo+ID4NCj4gPiAtICAgICAg
ICAgICAgIHdkb2cwOiB3YXRjaGRvZ0AyM2MwMDAwIHsNCj4gPiAtICAgICAgICAgICAgICAgICAg
ICAgY29tcGF0aWJsZSA9ICJmc2wsbHMxMDI4YS13ZHQiLCAiZnNsLGlteDIxLXdkdCI7DQo+ID4g
LSAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDAgMHgyM2MwMDAwIDB4MCAweDEwMDAwPjsN
Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDU5IElSUV9U
WVBFX0xFVkVMX0hJR0g+Ow0KPiA+IC0gICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNs
b2NrZ2VuIDQgMT47DQo+ID4gLSAgICAgICAgICAgICAgICAgICAgIGJpZy1lbmRpYW47DQo+ID4g
LSAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7DQo+ID4gKyAgICAgICAg
ICAgICBjbHVzdGVyMV9jb3JlMF93YXRjaGRvZzogd2R0QGMwMDAwMDAgew0KPiANCj4gS2VlcCAn
d2F0Y2hkb2cnIGFzIHRoZSBub2RlIG5hbWUsDQpUaGFua3MgZm9yIHlvdXIgcmVwbGF5DQpEbyB5
b3UgbWVhbiByZXBsYWNlIHRoZSChrndkdKGvIHdpdGggoa53YXRjaGRvZ6GvPw0KYW5kIGtlZXAg
bm9kZXMgc29ydCBpbiB1bml0LWFkZHJlc3MuDQpXaGF0IGRvZXMgdGhpcyBtZWFuPw0KPiANCj4g
U2hhd24NCj4gDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYXJtLHNw
ODA1IiwgImFybSxwcmltZWNlbGwiOw0KPiA+ICsgICAgICAgICAgICAgICAgICAgICByZWcgPSA8
MHgwIDB4YzAwMDAwMCAweDAgMHgxMDAwPjsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgY2xv
Y2tzID0gPCZjbG9ja2dlbiA0IDE1PiwgPCZjbG9ja2dlbiA0IDE1PjsNCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYXBiX3BjbGsiLCAid2RvZ19jbGsiOw0KPiA+ICsg
ICAgICAgICAgICAgfTsNCj4gPiArDQo+ID4gKyAgICAgICAgICAgICBjbHVzdGVyMV9jb3JlMV93
YXRjaGRvZzogd2R0QGMwMTAwMDAgew0KPiA+ICsgICAgICAgICAgICAgICAgICAgICBjb21wYXRp
YmxlID0gImFybSxzcDgwNSIsICJhcm0scHJpbWVjZWxsIjsNCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgcmVnID0gPDB4MCAweGMwMTAwMDAgMHgwIDB4MTAwMD47DQo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgIGNsb2NrcyA9IDwmY2xvY2tnZW4gNCAxNT4sIDwmY2xvY2tnZW4gNCAxNT47DQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImFwYl9wY2xrIiwgIndkb2df
Y2xrIjsNCj4gPiAgICAgICAgICAgICAgIH07DQo+ID4NCj4gPiAgICAgICAgICAgICAgIHNhdGE6
IHNhdGFAMzIwMDAwMCB7DQo+ID4gLS0NCj4gPiAyLjE3LjENCj4gPg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
