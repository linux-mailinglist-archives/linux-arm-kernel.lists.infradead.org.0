Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F1782A77
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 06:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBiCBZeCFWzQqusyczVRJr1RJcRcUV+I7JUDfNQP7WY=; b=MZFpQQpMrgWHZ7
	ooVIMcHLLUQEGHbXF69hOpmRVNM9IgRp1L2tQOBquwUsTO1aoEYPeExw1JCPU8rzyo/Wo+eKp+onh
	4goxZjwv1k/k6teoIPLLKQ22LLGOA4nAE49WwqYLhm0Ge9v8993XhQdoS/rJPe2wE7ljEF+tojVmd
	aA80e7QMzDGxtNLwtpra9uUfYTtMEhSSUM6FCfTeiJab8kaHGdKHvv4LXDTqM4PLF9Pmonhwe0l+a
	9Aq8sZGydL3xYOXg+iW/RpLpUQdeJieQx9gViVriW1A1oe4UtmzAQdl18ln45+Z+aH1ZNYmy62Cem
	hNdavUI2Nfjo/T4Vp0Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hurGO-0004mw-Nb; Tue, 06 Aug 2019 04:39:56 +0000
Received: from mail-eopbgr70083.outbound.protection.outlook.com ([40.107.7.83]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurGF-0004lt-Ok
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 04:39:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OFdxps6KlTPwnIy9UbleNv8APEH4r3ICWL19OnmkujSOPP9iYvbR0I8PQchSRZIxM8eBNjt9mHZO2ylDN3M0vT0hFHlTPTcKn6RbaeZdYEcuK5itxbPXEK7gKxeKYV407GXdhZl1P3D8AujvCMscY1ZjgV0M5O5dMNVgZeqaqsv4bnhxaZ5/Jq7+S4u/8NMFHNlgw1laktf5taJFo2fCdozRZR9wXFZCYrIUGo6PHTzMIXmoWTzIRg87NnvGJt59Uw0Oe7zkoZrdkqab+zBNozsKjr+uLlzn8SbLoQNiFAEU7tLlmUE4lAYAYFR/IXyJiBQYyaHvh6qzV0r5eLisDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xec13rTUsXd1gASYhpv92Ws18KXOus6tZg8/T/zH3Kc=;
 b=E8Ls3A1R6K1w5nv4/rwQoNhJy7+Krq3oewr/SNsqWi9kClTXLeG9w9+Tvsjh4uHtmR2Qtz43V9e5A3S71n8cdT5Swuv546QTALY474t5vJQE2tqBTVpjS9/9AgocunFgZ0tOkWygMgz6DnUirtfY5RGzKtrovw0y7TWosc3Rblp38A9zX8vP4V7yQBzHKrrFL0LprSOZ9ttZrbSzKfPya22A1suDEuU5rYQUzhXrKdmwWgs2xAeJS5SvDgqhYhtKUcmTRHKOgKEUDcUSSZXcPc7Uh9LlGdOpqdn5XN9xcqL4AnXongEKXnKSgXWihmb4LgIUs9V6lXldi4L6cwZ8hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xec13rTUsXd1gASYhpv92Ws18KXOus6tZg8/T/zH3Kc=;
 b=DPhaoKaJZAW6CAwCAefLQC27QoG1yb0UqbIrB4MfAowUEF26QUUbjTfjdlibgAHw+6kvDv3auT0aPWW8CcXFTJsaGdCoxVwH82dZAotnW5zAVUtSkOETYi1xXfuiuNZjO7x3lAF48xq40Dn7emv7bstU1EcBKIt2suDfUfV5UUw=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB6763.eurprd04.prod.outlook.com (20.179.250.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Tue, 6 Aug 2019 04:39:39 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::19ec:cddf:5e07:37eb]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::19ec:cddf:5e07:37eb%3]) with mapi id 15.20.2136.018; Tue, 6 Aug 2019
 04:39:39 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>, "bhelgaas@google.com"
 <bhelgaas@google.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>, "kishon@ti.com"
 <kishon@ti.com>, "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "M.h. Lian" <minghuan.lian@nxp.com>, Mingkai Hu
 <mingkai.hu@nxp.com>, Roy Zang <roy.zang@nxp.com>,
 "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "pombredanne@nexb.com" <pombredanne@nexb.com>, "shawn.lin@rock-chips.com"
 <shawn.lin@rock-chips.com>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linuxppc-dev@lists.ozlabs.org"
 <linuxppc-dev@lists.ozlabs.org>
Subject: RE: [PATCHv2 3/3] PCI: layerscape: Add LS1028a support
Thread-Topic: [PATCHv2 3/3] PCI: layerscape: Add LS1028a support
Thread-Index: AQHVS0RTVBSwbW4lj0i37Oj0WQ6yPqbtihIQ
Date: Tue, 6 Aug 2019 04:39:38 +0000
Message-ID: <DB8PR04MB6747A3AE99090E6B49AAE3D984D50@DB8PR04MB6747.eurprd04.prod.outlook.com>
References: <20190805040453.48009-1-xiaowei.bao@nxp.com>
 <20190805040453.48009-3-xiaowei.bao@nxp.com>
In-Reply-To: <20190805040453.48009-3-xiaowei.bao@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-originating-ip: [27.187.43.90]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b6602838-d15d-479d-6f36-08d71a281787
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB6763; 
x-ms-traffictypediagnostic: DB8PR04MB6763:
x-microsoft-antispam-prvs: <DB8PR04MB6763B2B4E35F53D7AFD75CD284D50@DB8PR04MB6763.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(366004)(39860400002)(136003)(376002)(189003)(199004)(13464003)(478600001)(66476007)(99286004)(33656002)(186003)(53546011)(6506007)(52536014)(7696005)(9686003)(102836004)(26005)(68736007)(256004)(76176011)(5660300002)(7416002)(66066001)(2201001)(25786009)(14454004)(4326008)(6246003)(71190400001)(7736002)(6116002)(74316002)(305945005)(3846002)(110136005)(2906002)(81166006)(53936002)(71200400001)(8936002)(8676002)(6436002)(11346002)(66446008)(229853002)(316002)(446003)(81156014)(55016002)(2501003)(476003)(86362001)(66946007)(64756008)(66556008)(486006)(76116006)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6763;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qRmlN9e8Ri/fejJdAA3hr9PUh5dBjuzjzNqxQ/5/ngHqRxV2bvnivXCa0kzsfR0Gb1Qp3jYN1WYp34/rL1Q/bXgmUYuHkYaXCLuYtFJKcWhxxQ/ww56TS20KmFqDfPQ0MoPs559jTZlycM1L7NofmBuo0/FB8HNaFgHKTsnwc7yDHiUAXD/eUdD1eT7Di1pq57v6PnMqH0o9lDqEuliFFz4Gx+6dJjG18etc2Xt2XyeKCikYoRvBoFPDgtVTpVYXI402Ehm2Ib9nARbwWVPoln7OYQR3rCiHJkZe2T/faqhXW2ypu6w/PKBcwstxbNtF0J64xKZ4EcY4MMYwI9CZ+mIPsHmFU67HWFwhHYW2Nf7Ppxshl3fThmi1N2VTN+oCmfNqYuuBj402ahIhdrUjI6H8/FONAxIJH1iNp/995MU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6602838-d15d-479d-6f36-08d71a281787
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 04:39:39.0371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zhiqiang.hou@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6763
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_213947_888869_968A0142 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.83 listed in list.dnswl.org]
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
Cc: Xiaowei Bao <xiaowei.bao@nxp.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWGlhb3dlaSwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBYaWFv
d2VpIEJhbyBbbWFpbHRvOnhpYW93ZWkuYmFvQG54cC5jb21dDQo+IFNlbnQ6IDIwMTnE6jjUwjXI
1SAxMjowNQ0KPiBUbzogYmhlbGdhYXNAZ29vZ2xlLmNvbTsgcm9iaCtkdEBrZXJuZWwub3JnOyBt
YXJrLnJ1dGxhbmRAYXJtLmNvbTsNCj4gc2hhd25ndW9Aa2VybmVsLm9yZzsgTGVvIExpIDxsZW95
YW5nLmxpQG54cC5jb20+OyBraXNob25AdGkuY29tOw0KPiBsb3JlbnpvLnBpZXJhbGlzaUBhcm0u
Y29tOyBhcm5kQGFybmRiLmRlOyBncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZzsNCj4gTS5oLiBM
aWFuIDxtaW5naHVhbi5saWFuQG54cC5jb20+OyBNaW5na2FpIEh1IDxtaW5na2FpLmh1QG54cC5j
b20+Ow0KPiBaLnEuIEhvdSA8emhpcWlhbmcuaG91QG54cC5jb20+OyBSb3kgWmFuZyA8cm95Lnph
bmdAbnhwLmNvbT47DQo+IGtzdGV3YXJ0QGxpbnV4Zm91bmRhdGlvbi5vcmc7IHBvbWJyZWRhbm5l
QG5leGIuY29tOw0KPiBzaGF3bi5saW5Acm9jay1jaGlwcy5jb207IGxpbnV4LXBjaUB2Z2VyLmtl
cm5lbC5vcmc7DQo+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnOw0KPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxp
bnV4cHBjLWRldkBsaXN0cy5vemxhYnMub3JnDQo+IENjOiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5i
YW9AbnhwLmNvbT4NCj4gU3ViamVjdDogW1BBVENIdjIgMy8zXSBQQ0k6IGxheWVyc2NhcGU6IEFk
ZCBMUzEwMjhhIHN1cHBvcnQNCj4gDQo+IEFkZCBzdXBwb3J0IGZvciB0aGUgTFMxMDI4YSBQQ0ll
IGNvbnRyb2xsZXIuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5i
YW9AbnhwLmNvbT4NCj4gLS0tDQo+IHYyOg0KPiAgLSBubyBjaGFuZ2UuDQo+IA0KPiAgZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUuYyB8IDkgKysrKysrKysrDQo+ICAx
IGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUuYw0KPiBiL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLmMNCj4gaW5kZXggM2E1ZmEyNi4uOGM1NTZlMSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUu
Yw0KPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS5jDQo+
IEBAIC0yMzYsNiArMjM2LDE0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbHNfcGNpZV9kcnZkYXRh
IGxzMTA0M19kcnZkYXRhID0NCj4gew0KPiAgCS5kd19wY2llX29wcyA9ICZkd19sc19wY2llX29w
cywNCj4gIH07DQo+IA0KPiArc3RhdGljIGNvbnN0IHN0cnVjdCBsc19wY2llX2RydmRhdGEgbHMx
MDI4YV9kcnZkYXRhID0gew0KPiArCS5sdXRfb2Zmc2V0ID0gMHg4MDAwMCwNCj4gKwkubHRzc21f
c2hpZnQgPSAwLA0KPiArCS5sdXRfZGJnID0gMHg0MDdmYywNCj4gKwkub3BzID0gJmxzX3BjaWVf
aG9zdF9vcHMsDQo+ICsJLmR3X3BjaWVfb3BzID0gJmR3X2xzX3BjaWVfb3BzLA0KPiArfTsNCj4g
Kw0KDQpSZXVzZSB0aGUgZHJpdmVyIGRhdGEgc3RydWN0dXJlIG9mIExTMjA4OCBpbnN0ZWFkIGFk
ZCBhIG5ldyBvbmUuDQoNCi0gWmhpcWlhbmcNCg0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBsc19w
Y2llX2RydmRhdGEgbHMxMDQ2X2RydmRhdGEgPSB7DQo+ICAJLmx1dF9vZmZzZXQgPSAweDgwMDAw
LA0KPiAgCS5sdHNzbV9zaGlmdCA9IDI0LA0KPiBAQCAtMjYzLDYgKzI3MSw3IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgbHNfcGNpZV9kcnZkYXRhIGxzMjA4OF9kcnZkYXRhID0NCj4geyAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgbHNfcGNpZV9vZl9tYXRjaFtdID0gew0KPiAgCXsg
LmNvbXBhdGlibGUgPSAiZnNsLGxzMTAxMmEtcGNpZSIsIC5kYXRhID0gJmxzMTA0Nl9kcnZkYXRh
IH0sDQo+ICAJeyAuY29tcGF0aWJsZSA9ICJmc2wsbHMxMDIxYS1wY2llIiwgLmRhdGEgPSAmbHMx
MDIxX2RydmRhdGEgfSwNCj4gKwl7IC5jb21wYXRpYmxlID0gImZzbCxsczEwMjhhLXBjaWUiLCAu
ZGF0YSA9ICZsczEwMjhhX2RydmRhdGEgfSwNCj4gIAl7IC5jb21wYXRpYmxlID0gImZzbCxsczEw
NDNhLXBjaWUiLCAuZGF0YSA9ICZsczEwNDNfZHJ2ZGF0YSB9LA0KPiAgCXsgLmNvbXBhdGlibGUg
PSAiZnNsLGxzMTA0NmEtcGNpZSIsIC5kYXRhID0gJmxzMTA0Nl9kcnZkYXRhIH0sDQo+ICAJeyAu
Y29tcGF0aWJsZSA9ICJmc2wsbHMyMDgwYS1wY2llIiwgLmRhdGEgPSAmbHMyMDgwX2RydmRhdGEg
fSwNCj4gLS0NCj4gMi45LjUNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
