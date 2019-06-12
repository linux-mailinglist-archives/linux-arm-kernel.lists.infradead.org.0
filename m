Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C7242412
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goFYMcVx5Tn4RInN9cgpZm1t/8LZAj+RecenFOAtHJw=; b=PRhlBeZtXCHOiP
	cAnOckNkj3eftNvCkYNwFI4+6Z4X/6Cq8Az3mtsrpQWJbxSwXIowVK8F010Xq2pcy98fcYWnIaYIU
	3B9c8ClK6JPzd99eT9hHZbrw6kB/RaoV3vV+GGrRUytx6Fq5wOo+I5HbWF8V/BXrIz6AOiZQKTwZP
	gnVMM2n2ItynHjSS5an74a5deWUjk0BbLACregCsUoT6nrUC5bVjyU6+yxC3tzmAIgu3eRvVLjh8+
	Nb1BRJeNwA727K8+1HkuANjdRt4cTl5JCemibwhPGX4tb1aVAihsegsuM+wdeet/2Vu4cfTssEAjS
	PrtLFWQUQBJl5gV/4L5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1XA-0000wr-Se; Wed, 12 Jun 2019 11:35:16 +0000
Received: from mail-eopbgr70088.outbound.protection.outlook.com ([40.107.7.88]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1Wq-0000wB-LW
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:34:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tEbVfDxQgo7slIQtNSPBeZuoBvVoBksJT0vEeLL8ZmM=;
 b=Wyf1b1+lT6MtaLYgAF2Dwv2rFEpuLIMRXNgYVcM+xRRaQCST1qgvnInlJZhgjf9Ud71U9UqsazD1YTmcLKIneMSYl7978b5/5HSgbclIOfL+sxfGvaj+9vI+MRXUqVKJvaIul+ArclRYKm23uFUX3x7v2v2MF+mOQqWzkS4aYCw=
Received: from AM0PR04MB6738.eurprd04.prod.outlook.com (20.179.253.203) by
 AM0PR04MB4404.eurprd04.prod.outlook.com (52.135.149.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Wed, 12 Jun 2019 11:34:51 +0000
Received: from AM0PR04MB6738.eurprd04.prod.outlook.com
 ([fe80::f41f:5455:d0b3:2527]) by AM0PR04MB6738.eurprd04.prod.outlook.com
 ([fe80::f41f:5455:d0b3:2527%4]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 11:34:51 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: RE: [PATCHv5 04/20] PCI: mobiveil: Remove the flag
 MSI_FLAG_MULTI_PCI_MSI
Thread-Topic: [PATCHv5 04/20] PCI: mobiveil: Remove the flag
 MSI_FLAG_MULTI_PCI_MSI
Thread-Index: AQHU8Qqz/gJFKoxI7kSHS+a5VfCWFaaXDAuAgAE1ccA=
Date: Wed, 12 Jun 2019 11:34:51 +0000
Message-ID: <AM0PR04MB67383023B81AEB33DAF9C35584EC0@AM0PR04MB6738.eurprd04.prod.outlook.com>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-5-Zhiqiang.Hou@nxp.com>
 <20190611165935.GA22836@redmoon>
In-Reply-To: <20190611165935.GA22836@redmoon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 925a34f3-8147-445b-1c43-08d6ef29fbba
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4404; 
x-ms-traffictypediagnostic: AM0PR04MB4404:
x-microsoft-antispam-prvs: <AM0PR04MB4404CF071662AD0103F1FCD284EC0@AM0PR04MB4404.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(396003)(366004)(346002)(376002)(199004)(189003)(13464003)(7696005)(6246003)(76176011)(229853002)(99286004)(6436002)(8936002)(4326008)(66066001)(33656002)(25786009)(53936002)(71200400001)(5660300002)(71190400001)(52536014)(86362001)(256004)(14444005)(66446008)(64756008)(476003)(486006)(66476007)(66556008)(305945005)(316002)(73956011)(446003)(7736002)(53546011)(11346002)(81166006)(74316002)(81156014)(76116006)(6916009)(8676002)(478600001)(26005)(7416002)(9686003)(186003)(54906003)(66946007)(55016002)(68736007)(102836004)(6506007)(3846002)(6116002)(14454004)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4404;
 H:AM0PR04MB6738.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Fj0vDmBgPzH5bxmyTnu+bKJ6KxpMMl9pFJ/CX2BcY2JucMgwozy3JwborKJC2x/UOnK87jcjoIB9fyvJMLc7NQ1VohT/nMnw0sRp5JVjbioLGn+6TYI1H9dA4C1jAQKKYNXlHG7Wa8M0TDzLC21VTI7/XTyuUhsGUZgj0+wTPOTEt6//fFUfFgE1Y6P2qB/Zo0Y8l7uSzA3SkeFCRls+kmyAfHjze+vHBIF9cIkQEjptDZCcXBIW6UE7CDZMv+C9fPp52o2ucE7iNvZCWkz9tTOmrDGdIrTWgbafEUuNnV9eOYoO7xQuK8Ege9Ny1Zgnh6tKKW+XsfvLiu30SvJy/5HooZTPVBZa2wSxEg4oTtJqhOc62qFmQ7IHbf/5/Hmy6FV3lzx+7DD72x32oCQJEhBgNlyaWuKsEElZXpBPD8k=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 925a34f3-8147-445b-1c43-08d6ef29fbba
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 11:34:51.4620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zhiqiang.hou@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4404
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_043456_711739_DD4360AF 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.88 listed in list.dnswl.org]
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
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTG9yZW56bywNCg0KVGhhbmtzIGEgbG90IGZvciB5b3VyIGNvbW1lbnRzIQ0KDQo+IC0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IExvcmVuem8gUGllcmFsaXNpIDxsb3Jlbnpv
LnBpZXJhbGlzaUBhcm0uY29tPg0KPiBTZW50OiAyMDE5xOo21MIxMsjVIDE6MDANCj4gVG86IFou
cS4gSG91IDx6aGlxaWFuZy5ob3VAbnhwLmNvbT4NCj4gQ2M6IGxpbnV4LXBjaUB2Z2VyLmtlcm5l
bC5vcmc7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4gZGV2aWNldHJl
ZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+IGJoZWxn
YWFzQGdvb2dsZS5jb207IHJvYmgrZHRAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb207
DQo+IGwuc3VicmFobWFueWFAbW9iaXZlaWwuY28uaW47IHNoYXduZ3VvQGtlcm5lbC5vcmc7IExl
byBMaQ0KPiA8bGVveWFuZy5saUBueHAuY29tPjsgY2F0YWxpbi5tYXJpbmFzQGFybS5jb207IHdp
bGwuZGVhY29uQGFybS5jb207DQo+IE1pbmdrYWkgSHUgPG1pbmdrYWkuaHVAbnhwLmNvbT47IE0u
aC4gTGlhbiA8bWluZ2h1YW4ubGlhbkBueHAuY29tPjsNCj4gWGlhb3dlaSBCYW8gPHhpYW93ZWku
YmFvQG54cC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0h2NSAwNC8yMF0gUENJOiBtb2JpdmVp
bDogUmVtb3ZlIHRoZSBmbGFnDQo+IE1TSV9GTEFHX01VTFRJX1BDSV9NU0kNCj4gDQo+IE9uIEZy
aSwgQXByIDEyLCAyMDE5IGF0IDA4OjM1OjM2QU0gKzAwMDAsIFoucS4gSG91IHdyb3RlOg0KPiA+
IEZyb206IEhvdSBaaGlxaWFuZyA8WmhpcWlhbmcuSG91QG54cC5jb20+DQo+ID4NCj4gPiBUaGUg
Y3VycmVudCBjb2RlIGRvZXMgbm90IHN1cHBvcnQgbXVsdGlwbGUgTVNJcywgc28gcmVtb3ZlIHRo
ZQ0KPiA+IGNvcnJlc3BvbmRpbmcgZmxhZyBmcm9tIHRoZSBtc2lfZG9tYWluX2luZm8gc3RydWN0
dXJlLg0KPiANCj4gUGxlYXNlIGV4cGxhaW4gbWUgd2hhdCdzIHRoZSBwcm9ibGVtIGJlZm9yZSBy
ZW1vdmluZyBtdWx0aSBNU0kgc3VwcG9ydC4NCg0KTlhQIExYMiBQQ0llIHVzZSB0aGUgR0lDLUlU
UyBpbnN0ZWFkIG9mIE1vYml2ZWlsIElQIGludGVybmFsIE1TSSBjb250cm9sbGVyLA0Kc28sIEkg
ZGlkbid0IGVuY291bnRlciBwcm9ibGVtLg0KU3ViYnUsIGRpZCB5b3UgdGVzdCB3aXRoIEVuZHBv
aW50IHN1cHBvcnRpbmcgbXVsdGkgTVNJPw0KDQpUaGFua3MsDQpaaGlxaWFuZw0KDQo+IA0KPiBU
aGFua3MsDQo+IExvcmVuem8NCj4gDQo+ID4gRml4ZXM6IDFlOTEzZTU4MzM1ZiAoIlBDSTogbW9i
aXZlaWw6IEFkZCBNU0kgc3VwcG9ydCIpDQo+ID4gU2lnbmVkLW9mZi1ieTogSG91IFpoaXFpYW5n
IDxaaGlxaWFuZy5Ib3VAbnhwLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTogTWluZ2h1YW4gTGlhbiA8
TWluZ2h1YW4uTGlhbkBueHAuY29tPg0KPiA+IC0tLQ0KPiA+IFY1Og0KPiA+ICAtIENvcnJlY3Rl
ZCB0aGUgc3ViamVjdC4NCj4gPg0KPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtbW9i
aXZlaWwuYyB8IDIgKy0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9w
Y2llLW1vYml2ZWlsLmMNCj4gPiBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1tb2JpdmVp
bC5jDQo+ID4gaW5kZXggNTYzMjEwZTczMWQzLi5hMGRkMzM3YzYyMTQgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLW1vYml2ZWlsLmMNCj4gPiArKysgYi9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtbW9iaXZlaWwuYw0KPiA+IEBAIC03MDMsNyArNzAzLDcg
QEAgc3RhdGljIHN0cnVjdCBpcnFfY2hpcCBtb2JpdmVpbF9tc2lfaXJxX2NoaXAgPSB7DQo+ID4N
Cj4gPiAgc3RhdGljIHN0cnVjdCBtc2lfZG9tYWluX2luZm8gbW9iaXZlaWxfbXNpX2RvbWFpbl9p
bmZvID0gew0KPiA+ICAJLmZsYWdzCT0gKE1TSV9GTEFHX1VTRV9ERUZfRE9NX09QUyB8DQo+IE1T
SV9GTEFHX1VTRV9ERUZfQ0hJUF9PUFMgfA0KPiA+IC0JCSAgIE1TSV9GTEFHX01VTFRJX1BDSV9N
U0kgfCBNU0lfRkxBR19QQ0lfTVNJWCksDQo+ID4gKwkJICAgTVNJX0ZMQUdfUENJX01TSVgpLA0K
PiA+ICAJLmNoaXAJPSAmbW9iaXZlaWxfbXNpX2lycV9jaGlwLA0KPiA+ICB9Ow0KPiA+DQo+ID4g
LS0NCj4gPiAyLjE3LjENCj4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
