Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C7842427
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:37:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xibSDDr4ybvAeBNkPmhD5g6NkcZ9dmyJ5L2vEtXzgeE=; b=f00E8SHYbE1WFA
	WbSUwh36ts5+/O2BrZV0VUV/KIfEb2eQ4fef9/W7K0jcCLsb5VEFkRsx0JdqAXmR+nuxMCpsJvDmN
	7fFGgO6a2ZLBLeud26yyaIVAH63ZVUy6S4tl2n9DfYSAQyKPv1ARnwgM2gpZRd/F+4O0LGdjIKLxo
	kX+lCoZHso/g0M0dQKpu1DEYYD1n1NF2KfrJLaMmFGINJvCwuqyICuEBXDEtNxVIEskWyGncb+Am/
	xR11/578H/J9rhOLpo/a1YSaq5zru6ODTTZJe58b4aBBaqbVGvBof6RMQ0h7+/BTfMKQoAp+Amed+
	h1MUY1SNoUkoEGd56eUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1ZF-00037W-Oq; Wed, 12 Jun 2019 11:37:25 +0000
Received: from mail-eopbgr50057.outbound.protection.outlook.com ([40.107.5.57]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1Yf-0002k8-8A
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:36:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U2VSpsf4P4PWQkFxMn8yNndfjIS730z9WIfzYvrNnn4=;
 b=pJ1Icy4XHriyiGhcdgcqsc8XdBphyXT0R7U98dcc12U2SdciMLEbWy3gHJWzMOy0uFaB8f2SpUd2STYKInt/3dOPTlveHfqMbOerkcxdlW7Dxx0ogi3gkLaddIVan5vwoBMzpZAVi9IZLiD0T4jgICg/wThuJi0PKt0nDiLYCzg=
Received: from AM0PR04MB6738.eurprd04.prod.outlook.com (20.179.253.203) by
 AM0PR04MB4291.eurprd04.prod.outlook.com (52.134.126.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.16; Wed, 12 Jun 2019 11:36:46 +0000
Received: from AM0PR04MB6738.eurprd04.prod.outlook.com
 ([fe80::f41f:5455:d0b3:2527]) by AM0PR04MB6738.eurprd04.prod.outlook.com
 ([fe80::f41f:5455:d0b3:2527%4]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 11:36:46 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, "bhelgaas@google.com"
 <bhelgaas@google.com>
Subject: RE: [PATCHv5 16/20] PCI: mobiveil: Add link up condition check
Thread-Topic: [PATCHv5 16/20] PCI: mobiveil: Add link up condition check
Thread-Index: AQHU8QreVEure7z7nE2dWdwI9OV746aXEQeAgAEyqdA=
Date: Wed, 12 Jun 2019 11:36:45 +0000
Message-ID: <AM0PR04MB673830A6DF6FEDFC9155037184EC0@AM0PR04MB6738.eurprd04.prod.outlook.com>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-17-Zhiqiang.Hou@nxp.com>
 <20190611171733.GB22836@redmoon>
In-Reply-To: <20190611171733.GB22836@redmoon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07d0eff2-ba6f-4478-e594-08d6ef2a3ff9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4291; 
x-ms-traffictypediagnostic: AM0PR04MB4291:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB4291F7DDEBC38D7BAF61A84584EC0@AM0PR04MB4291.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(376002)(136003)(396003)(39860400002)(13464003)(199004)(189003)(2501003)(9686003)(52536014)(76116006)(6306002)(55016002)(81156014)(71200400001)(3846002)(316002)(66556008)(966005)(66446008)(110136005)(71190400001)(76176011)(6116002)(73956011)(478600001)(6436002)(5660300002)(256004)(66476007)(45080400002)(64756008)(66946007)(54906003)(486006)(25786009)(81166006)(8676002)(7696005)(4326008)(8936002)(14454004)(7736002)(99286004)(74316002)(68736007)(305945005)(229853002)(2906002)(186003)(476003)(53936002)(7416002)(11346002)(33656002)(66066001)(6506007)(53546011)(26005)(102836004)(86362001)(446003)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4291;
 H:AM0PR04MB6738.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: N/Q9A3FCHgIXR/TmY/Z727qcDl79bfSjF2uZ+0YAYJjj8eLD7e+A62tepRsrMLqi9w7datdj5zPWmdkCQz7LjAJZixq9kJmpX0wB78npwEQ9ryqCsSH0p0UBk1mnwdX286QHYQu0qeGkq0H+MhThJSd8j6cH6+szIlOXXiuJJuCYjHN/fxc4BxSEHKODRUaurL+WEI7o9fPG7hGyJR4yI1FP/w4F0/ZRmCTCQ8GVWuKtisMBsab32VptRp9RAKEYBir0Q82mAauDDbvllRkbrVCg4E1zUSKKjc2k2VeNy9lzN4RNqys2VNnT4veXEA9u9Min4tC5EzZB9M2E+gX2WyVV6TA0o7t0x3UV0Yc3d8kKw9B+tVd121vzIBV+bHjUoK5KtjwqmN4uCfcrSD9iliJ8XoqlnePC5n2ZaQu14bQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07d0eff2-ba6f-4478-e594-08d6ef2a3ff9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 11:36:45.8821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zhiqiang.hou@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4291
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_043649_334032_5BB8CB2B 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTG9yZW56bywNCg0KVGhhbmtzIGEgbG90IGZvciB5b3VyIGNvbW1lbnRzIQ0KDQo+IC0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IExvcmVuem8gUGllcmFsaXNpIDxsb3Jlbnpv
LnBpZXJhbGlzaUBhcm0uY29tPg0KPiBTZW50OiAyMDE5xOo21MIxMsjVIDE6MTgNCj4gVG86IFou
cS4gSG91IDx6aGlxaWFuZy5ob3VAbnhwLmNvbT47IGJoZWxnYWFzQGdvb2dsZS5jb20NCj4gQ2M6
IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZzsNCj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2Vy
Lmtlcm5lbC5vcmc7DQo+IHJvYmgrZHRAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb207
IGwuc3VicmFobWFueWFAbW9iaXZlaWwuY28uaW47DQo+IHNoYXduZ3VvQGtlcm5lbC5vcmc7IExl
byBMaSA8bGVveWFuZy5saUBueHAuY29tPjsNCj4gY2F0YWxpbi5tYXJpbmFzQGFybS5jb207IHdp
bGwuZGVhY29uQGFybS5jb207IE1pbmdrYWkgSHUNCj4gPG1pbmdrYWkuaHVAbnhwLmNvbT47IE0u
aC4gTGlhbiA8bWluZ2h1YW4ubGlhbkBueHAuY29tPjsgWGlhb3dlaSBCYW8NCj4gPHhpYW93ZWku
YmFvQG54cC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0h2NSAxNi8yMF0gUENJOiBtb2JpdmVp
bDogQWRkIGxpbmsgdXAgY29uZGl0aW9uIGNoZWNrDQo+IA0KPiBOQjogUGxlYXNlIHRyaW0gdGhl
IENDIGxpc3QgYW5kIGtlZXAgaXQgdG8gY29uY2VybmVkIG1haW50YWluZXJzLg0KPiANCj4gT24g
RnJpLCBBcHIgMTIsIDIwMTkgYXQgMDg6MzY6NDhBTSArMDAwMCwgWi5xLiBIb3Ugd3JvdGU6DQo+
ID4gRnJvbTogSG91IFpoaXFpYW5nIDxaaGlxaWFuZy5Ib3VAbnhwLmNvbT4NCj4gPg0KPiA+IEF2
b2lkIHRvIGlzc3VlIENGRyB0cmFuc2FjdGlvbnMgdG8gbGluayBwYXJ0bmVyIHdoZW4gdGhlIFBD
SWUgbGluayBpcw0KPiA+IG5vdCB1cC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEhvdSBaaGlx
aWFuZyA8WmhpcWlhbmcuSG91QG54cC5jb20+DQo+ID4gLS0tDQo+ID4gVjU6DQo+ID4gIC0gQ29y
cmVjdGVkIHRoZSBzdWJqZWN0Lg0KPiA+DQo+ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNp
ZS1tb2JpdmVpbC5jIHwgNCArKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtbW9i
aXZlaWwuYw0KPiA+IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLW1vYml2ZWlsLmMNCj4g
PiBpbmRleCA2MjE4NTIwNzhjYWYuLjFlZTNlYTI1NzBjMCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtbW9iaXZlaWwuYw0KPiA+ICsrKyBiL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvcGNpZS1tb2JpdmVpbC5jDQo+ID4gQEAgLTI4Myw2ICsyODMsMTAgQEAgc3Rh
dGljIGJvb2wgbW9iaXZlaWxfcGNpZV92YWxpZF9kZXZpY2Uoc3RydWN0DQo+ID4gcGNpX2J1cyAq
YnVzLCB1bnNpZ25lZCBpbnQgZGV2Zm4pICB7DQo+ID4gIAlzdHJ1Y3QgbW9iaXZlaWxfcGNpZSAq
cGNpZSA9IGJ1cy0+c3lzZGF0YTsNCj4gPg0KPiA+ICsJLyogSWYgdGhlcmUgaXMgbm8gbGluaywg
dGhlbiB0aGVyZSBpcyBubyBkZXZpY2UgKi8NCj4gPiArCWlmIChidXMtPm51bWJlciA+IHBjaWUt
PnJvb3RfYnVzX25yICYmICFtb2JpdmVpbF9wY2llX2xpbmtfdXAocGNpZSkpDQo+IA0KPiBJIHRo
aW5rIEJqb3JuIG1lbnRpb25lZCB0aGlzIGEgbWlsbGlvbiB0aW1lcyBhbHJlYWR5LCBlZzoNCj4g
DQo+IGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1o
dHRwcyUzQSUyRiUyRmxvcmUua2UNCj4gcm5lbC5vcmclMkZsaW51eC1wY2klMkYyMDE5MDQxMTIw
MTUzNS5HUzI1NjA0NSU0MGdvb2dsZS5jb20lMkYmYW0NCj4gcDtkYXRhPTAyJTdDMDElN0N6aGlx
aWFuZy5ob3UlNDBueHAuY29tJTdDZmZiNGM4ZGNlYmU0NDkzYTM3NTkwOA0KPiBkNmVlOTBiNDcx
JTdDNjg2ZWExZDNiYzJiNGM2ZmE5MmNkOTljNWMzMDE2MzUlN0MwJTdDMCU3QzYzNjk1DQo+IDg3
MDI2Mzc5NzM1NDMmYW1wO3NkYXRhPW0lMkZxVjV6b2hxeUJNVURUN3pyVmpGJTJGTHRZZUpaTzM2
cmRZDQo+IGVNVFBHR2JIZyUzRCZhbXA7cmVzZXJ2ZWQ9MA0KPiANCj4gdGhpcyBpcyByYWN5IGFu
ZCBnaXZlcyBhIGZhbHNlIHNlbnNlIG9mIHJvYnVzdG5lc3MuIFdlIGhhdmUgY29kZSBpbiB0aGUg
a2VybmVsDQo+IHRoYXQgY2hlY2tzIHRoZSBsaW5rIGJ1dCBhZGRpbmcgbW9yZSBzZWVtcyBzaWxs
eSB0byBtZSwgc28gSSBhbSBpbmNsaW5lZCB0bw0KPiBkcm9wIHRoaXMgcGF0Y2guDQo+IA0KDQpV
bmRlcnN0YW5kLCBkcm9wIGl0Lg0KDQpUaGFua3MsDQpaaGlxaWFuZw0KDQo+IExvcmVuem8NCj4g
DQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+ICsNCj4gPiAgCS8qIE9ubHkgb25lIGRldmljZSBk
b3duIG9uIGVhY2ggcm9vdCBwb3J0ICovDQo+ID4gIAlpZiAoKGJ1cy0+bnVtYmVyID09IHBjaWUt
PnJvb3RfYnVzX25yKSAmJiAoZGV2Zm4gPiAwKSkNCj4gPiAgCQlyZXR1cm4gZmFsc2U7DQo+ID4g
LS0NCj4gPiAyLjE3LjENCj4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
