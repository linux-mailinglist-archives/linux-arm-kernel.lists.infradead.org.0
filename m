Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 312FD9A5A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 04:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2rFg5izMa/Gn4ZY1n+H4iaIJMer003GzFQO3pOwGJNE=; b=HPn0RvF4WPr8LS
	XD27JrwP6fANazqkGiaJWQs7Qxb9SkAA9g0zECC7s6JVxPETf3/xjZhL5t3v0U9owDwF8DBsC+fVo
	DIUu3bZ26O8uELbxZ+1zAYSG/kKOuFr38Zv0bNp37qu1dxQJclqUOBkAoddX/FeeS04AYT/pX7ABB
	ltthNlevRoJ3BVZaeihGcmQ+zyk4fzIgGn8VWg+D7uGNZEn8Hwno88ks460pfM97Xe57EllPld/Ri
	ozkJAyMF1c3iRVT51mBhj9zAi7jvelAUOlCnOcwc1q/BlP6YwwumeW/7kfti4EWkgM6hC/OUHnGUF
	yYiyxbbKly+EMRp3u7tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0zUH-0001M7-5L; Fri, 23 Aug 2019 02:39:37 +0000
Received: from mail-eopbgr140085.outbound.protection.outlook.com
 ([40.107.14.85] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0zU1-0001Kt-Kd
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 02:39:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kh8ZDYFFRfz02LN3xMWRhd6lczbO+2M5HYyb38RVxUIBqEzFufUBuDx9DKY/nb74P3mpJwwoBQctpgI3RyjegOPrubf3HfYMZda031iwjrBfc19jPFVznXow6YnL1xMYzhjYrDzQ/SagqvVlemkWwZp2tP0fqIHtv3TnjmaZLmqqEZD7ZjxQxHrgPdjk1cYldYAcvzwAqZsB0xN7t5lFeXq0isExOIZHhFAIR3aVIhdc9Xy4eCinopz4EW3IC8qrgPQnsX1IJeegXgJG9sWh02NCupBNNc8LPVViizmNMR9IuD3C5TIGeHX/rhwsuC52tScLhGKOh1vbfn8/nIZG6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bvWnzTz4ltjUhvxsA06VhloRwSvn6wK4KNFkmFBFMwE=;
 b=VvHeA+wmrx9BQE22k7jk5RvxJ+kTNyUnILyZ3QnpfhFzkaEeMxOxOF+DPwCviI8mru53hFU3eTbBlqwvQG6yGCeseb+BxzQ2iJy7fK05W75YID2oQA4Cll2Zy6CuJXFx5CAyZ9rYYCTxgyQ1FqHkjez5ggV7nSoPLXu9UgocON9J31VRXNuVtgzfTOzbkKkR4c8lSOEBz4zuMkZv20JcrZcA38bmJUe6FfoiEJRbCTfjkVmmr1bhHPS9x2iZxpmhweXaHMYE0wAIhVD1SyZ+xaDMS5HX0ZZe7V9e7YjF2ac4TfNex5GXMUS2XBIJn2wdJFrPbkfgaaRyqkK1pgu1hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bvWnzTz4ltjUhvxsA06VhloRwSvn6wK4KNFkmFBFMwE=;
 b=QT45a0hFwL0Hp6luVSo1Tg+hBUMckiIOZ3DdPhp1SNooEk7+PaacEO+EhEELXIGJsJsBUs4j3miMRJHpSEsYHRGhmAS0XJXuJj1g8WR+QSqHNzmSADqqWvewemYsQKfp1n6Kv3qH1q4nB5h+l8H8Ls4QGqWEEGc55KRyA4BPysc=
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com (10.173.255.158) by
 AM5PR04MB2979.eurprd04.prod.outlook.com (10.167.171.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Fri, 23 Aug 2019 02:39:13 +0000
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::1ce8:464b:3edf:4043]) by AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::1ce8:464b:3edf:4043%7]) with mapi id 15.20.2178.020; Fri, 23 Aug 2019
 02:39:13 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, "bhelgaas@google.com"
 <bhelgaas@google.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>,
 "lorenzo.pieralisi@arm.co" <lorenzo.pieralisi@arm.co>, "arnd@arndb.de"
 <arnd@arndb.de>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "M.h. Lian" <minghuan.lian@nxp.com>, Mingkai Hu <mingkai.hu@nxp.com>, Roy
 Zang <roy.zang@nxp.com>, "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linuxppc-dev@lists.ozlabs.org"
 <linuxppc-dev@lists.ozlabs.org>, "andrew.murray@arm.com"
 <andrew.murray@arm.com>
Subject: RE: [PATCH v2 06/10] PCI: layerscape: Modify the way of getting
 capability with different PEX
Thread-Topic: [PATCH v2 06/10] PCI: layerscape: Modify the way of getting
 capability with different PEX
Thread-Index: AQHVWN1bxZWGihL6TkupN1zdrsSAQ6cHDAGAgAD5DQA=
Date: Fri, 23 Aug 2019 02:39:13 +0000
Message-ID: <AM5PR04MB3299DE7B57F31EA405E4FCBCF5A40@AM5PR04MB3299.eurprd04.prod.outlook.com>
References: <20190822112242.16309-1-xiaowei.bao@nxp.com>
 <20190822112242.16309-6-xiaowei.bao@nxp.com>
 <0c02ac52-e4b1-8071-bf9e-d10b28fc9029@ti.com>
In-Reply-To: <0c02ac52-e4b1-8071-bf9e-d10b28fc9029@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 406c534b-a340-4f5d-a0c6-08d7277315f8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR04MB2979; 
x-ms-traffictypediagnostic: AM5PR04MB2979:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR04MB2979AECF6775B98EDD81CA82F5A40@AM5PR04MB2979.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0138CD935C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(366004)(346002)(376002)(51444003)(199004)(189003)(13464003)(33656002)(66446008)(76116006)(64756008)(66476007)(76176011)(66556008)(66946007)(6246003)(316002)(81166006)(81156014)(8676002)(2906002)(110136005)(44832011)(26005)(99286004)(5660300002)(53936002)(6436002)(102836004)(6506007)(8936002)(53546011)(2501003)(11346002)(256004)(186003)(6116002)(446003)(7696005)(486006)(3846002)(476003)(2201001)(86362001)(71190400001)(71200400001)(14454004)(52536014)(7416002)(478600001)(55016002)(229853002)(66066001)(25786009)(7736002)(9686003)(74316002)(305945005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB2979;
 H:AM5PR04MB3299.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JmlpIpZxycwqxcGOoXgQqeOBqnYGTX8fZoPqYW6Ii0pQ3TQGyAnkfSQ1qhDyTQKPAm6iTakio6Hmla4IhXt39qVnbvkTpcw3BcDtvIPED7staVpx+48k7aSBNTwjUKVNe7Cy9jVVOMoLSLMGaoK0sCwOWWVK7L3PDtipavZYLnzbK6BZBZ6p0YQQkE+lWl2BmhacFemHd2VEHPl7rMzabeyBs/81/ppoTnNdI5QhhkXdJtWdAzn/s/LhN5aMaIZPhR32+qURVCixy8swLKHTezWlzLQQDlcAIjQvcJoxevQ8t3mpSG2j4JOjuD+wErcsMrXNmh5KsPpcSSCQThwo78nOy3gcbQUiut2LjGx4ybAL23osUica6O8sp7Zzfce9mJhNBgAcFpAe1UMgBHVY/j5rBcNUuLe1rwdvpaeHDyg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 406c534b-a340-4f5d-a0c6-08d7277315f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2019 02:39:13.8053 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x+/8ERMjRwD7RKyrE6g6hNJeSR17tEDEzqsfWPgLBdRUrcWsSBrYB69UUHyypQKpHNxKhfN92qDXG/Zjns/bRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB2979
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_193921_691538_80FF29F0 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2lzaG9uIFZpamF5IEFi
cmFoYW0gSSA8a2lzaG9uQHRpLmNvbT4NCj4gU2VudDogMjAxOeW5tDjmnIgyMuaXpSAxOTo0NA0K
PiBUbzogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+OyBiaGVsZ2Fhc0Bnb29nbGUu
Y29tOw0KPiByb2JoK2R0QGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0uY29tOyBzaGF3bmd1
b0BrZXJuZWwub3JnOyBMZW8gTGkNCj4gPGxlb3lhbmcubGlAbnhwLmNvbT47IGxvcmVuem8ucGll
cmFsaXNpQGFybS5jbzsgYXJuZEBhcm5kYi5kZTsNCj4gZ3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5v
cmc7IE0uaC4gTGlhbiA8bWluZ2h1YW4ubGlhbkBueHAuY29tPjsgTWluZ2thaQ0KPiBIdSA8bWlu
Z2thaS5odUBueHAuY29tPjsgUm95IFphbmcgPHJveS56YW5nQG54cC5jb20+Ow0KPiBqaW5nb29o
YW4xQGdtYWlsLmNvbTsgZ3VzdGF2by5waW1lbnRlbEBzeW5vcHN5cy5jb207DQo+IGxpbnV4LXBj
aUB2Z2VyLmtlcm5lbC5vcmc7IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOw0KPiBsaW51eC1r
ZXJuZWxAdmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmc7DQo+IGxpbnV4cHBjLWRldkBsaXN0cy5vemxhYnMub3JnOyBhbmRyZXcubXVycmF5QGFybS5j
b20NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MiAwNi8xMF0gUENJOiBsYXllcnNjYXBlOiBNb2Rp
ZnkgdGhlIHdheSBvZiBnZXR0aW5nDQo+IGNhcGFiaWxpdHkgd2l0aCBkaWZmZXJlbnQgUEVYDQo+
IA0KPiBIaSwNCj4gDQo+IE9uIDIyLzA4LzE5IDQ6NTIgUE0sIFhpYW93ZWkgQmFvIHdyb3RlOg0K
PiA+IFRoZSBkaWZmZXJlbnQgUENJZSBjb250cm9sbGVyIGluIG9uZSBib2FyZCBtYXkgYmUgaGF2
ZSBkaWZmZXJlbnQNCj4gPiBjYXBhYmlsaXR5IG9mIE1TSSBvciBNU0lYLCBzbyBjaGFuZ2UgdGhl
IHdheSBvZiBnZXR0aW5nIHRoZSBNU0kNCj4gPiBjYXBhYmlsaXR5LCBtYWtlIGl0IG1vcmUgZmxl
eGlibGUuDQo+IA0KPiBwbGVhc2UgdXNlIGRpZmZlcmVudCBwY2lfZXBjX2ZlYXR1cmVzIHRhYmxl
IGZvciBkaWZmZXJlbnQgYm9hcmRzLg0KVGhhbmtzLCBJIHRoaW5rIHRoYXQgaXQgd2lsbCBiZSBt
b3JlIGZsZXhpYmxlIHRvIGR5bmFtaWNhbGx5IGdldCBNU0kgb3IgTVNJWCBjYXBhYmlsaXR5LA0K
VGh1cywgd2Ugd2lsbCBub3QgbmVlZCB0byBkZWZpbmUgdGhlIHBjaV9lcGNfZmVhdHVyZSBmb3Ig
ZGlmZmVyZW50IGJvYXJkcy4NCj4gDQo+IFRoYW5rcw0KPiBLaXNob24NCj4gPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPg0KPiA+IC0tLQ0KPiA+
IHYyOg0KPiA+ICAtIFJlbW92ZSB0aGUgcmVwZWF0ZWQgYXNzaWdubWVudCBjb2RlLg0KPiA+DQo+
ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMgfCAyNg0K
PiA+ICsrKysrKysrKysrKysrKysrKystLS0tLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBp
bnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMNCj4gPiBiL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMNCj4gPiBpbmRleCA0ZTkyYTk1
Li44NDYxZjYyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aS1sYXllcnNjYXBlLWVwLmMNCj4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9w
Y2ktbGF5ZXJzY2FwZS1lcC5jDQo+ID4gQEAgLTIyLDYgKzIyLDcgQEANCj4gPg0KPiA+ICBzdHJ1
Y3QgbHNfcGNpZV9lcCB7DQo+ID4gIAlzdHJ1Y3QgZHdfcGNpZQkJKnBjaTsNCj4gPiArCXN0cnVj
dCBwY2lfZXBjX2ZlYXR1cmVzCSpsc19lcGM7DQo+ID4gIH07DQo+ID4NCj4gPiAgI2RlZmluZSB0
b19sc19wY2llX2VwKHgpCWRldl9nZXRfZHJ2ZGF0YSgoeCktPmRldikNCj4gPiBAQCAtNDAsMjUg
KzQxLDI2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkDQo+IGxzX3BjaWVfZXBf
b2ZfbWF0Y2hbXSA9IHsNCj4gPiAgCXsgfSwNCj4gPiAgfTsNCj4gPg0KPiA+IC1zdGF0aWMgY29u
c3Qgc3RydWN0IHBjaV9lcGNfZmVhdHVyZXMgbHNfcGNpZV9lcGNfZmVhdHVyZXMgPSB7DQo+ID4g
LQkubGlua3VwX25vdGlmaWVyID0gZmFsc2UsDQo+ID4gLQkubXNpX2NhcGFibGUgPSB0cnVlLA0K
PiA+IC0JLm1zaXhfY2FwYWJsZSA9IGZhbHNlLA0KPiA+IC19Ow0KPiA+IC0NCj4gPiAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBwY2lfZXBjX2ZlYXR1cmVzKiAgbHNfcGNpZV9lcF9nZXRfZmVhdHVyZXMo
c3RydWN0DQo+ID4gZHdfcGNpZV9lcCAqZXApICB7DQo+ID4gLQlyZXR1cm4gJmxzX3BjaWVfZXBj
X2ZlYXR1cmVzOw0KPiA+ICsJc3RydWN0IGR3X3BjaWUgKnBjaSA9IHRvX2R3X3BjaWVfZnJvbV9l
cChlcCk7DQo+ID4gKwlzdHJ1Y3QgbHNfcGNpZV9lcCAqcGNpZSA9IHRvX2xzX3BjaWVfZXAocGNp
KTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gcGNpZS0+bHNfZXBjOw0KPiA+ICB9DQo+ID4NCj4gPiAg
c3RhdGljIHZvaWQgbHNfcGNpZV9lcF9pbml0KHN0cnVjdCBkd19wY2llX2VwICplcCkgIHsNCj4g
PiAgCXN0cnVjdCBkd19wY2llICpwY2kgPSB0b19kd19wY2llX2Zyb21fZXAoZXApOw0KPiA+ICsJ
c3RydWN0IGxzX3BjaWVfZXAgKnBjaWUgPSB0b19sc19wY2llX2VwKHBjaSk7DQo+ID4gIAllbnVt
IHBjaV9iYXJubyBiYXI7DQo+ID4NCj4gPiAgCWZvciAoYmFyID0gQkFSXzA7IGJhciA8PSBCQVJf
NTsgYmFyKyspDQo+ID4gIAkJZHdfcGNpZV9lcF9yZXNldF9iYXIocGNpLCBiYXIpOw0KPiA+ICsN
Cj4gPiArCXBjaWUtPmxzX2VwYy0+bXNpX2NhcGFibGUgPSBlcC0+bXNpX2NhcCA/IHRydWUgOiBm
YWxzZTsNCj4gPiArCXBjaWUtPmxzX2VwYy0+bXNpeF9jYXBhYmxlID0gZXAtPm1zaXhfY2FwID8g
dHJ1ZSA6IGZhbHNlOw0KPiA+ICB9DQo+ID4NCj4gPiAgc3RhdGljIGludCBsc19wY2llX2VwX3Jh
aXNlX2lycShzdHJ1Y3QgZHdfcGNpZV9lcCAqZXAsIHU4IGZ1bmNfbm8sIEBADQo+ID4gLTExOCw2
ICsxMjAsNyBAQCBzdGF0aWMgaW50IF9faW5pdCBsc19wY2llX2VwX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UNCj4gKnBkZXYpDQo+ID4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+
ZGV2Ow0KPiA+ICAJc3RydWN0IGR3X3BjaWUgKnBjaTsNCj4gPiAgCXN0cnVjdCBsc19wY2llX2Vw
ICpwY2llOw0KPiA+ICsJc3RydWN0IHBjaV9lcGNfZmVhdHVyZXMgKmxzX2VwYzsNCj4gPiAgCXN0
cnVjdCByZXNvdXJjZSAqZGJpX2Jhc2U7DQo+ID4gIAlpbnQgcmV0Ow0KPiA+DQo+ID4gQEAgLTEy
OSw2ICsxMzIsMTAgQEAgc3RhdGljIGludCBfX2luaXQgbHNfcGNpZV9lcF9wcm9iZShzdHJ1Y3QN
Cj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KPiA+ICAJaWYgKCFwY2kpDQo+ID4gIAkJcmV0dXJu
IC1FTk9NRU07DQo+ID4NCj4gPiArCWxzX2VwYyA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigq
bHNfZXBjKSwgR0ZQX0tFUk5FTCk7DQo+ID4gKwlpZiAoIWxzX2VwYykNCj4gPiArCQlyZXR1cm4g
LUVOT01FTTsNCj4gPiArDQo+ID4gIAlkYmlfYmFzZSA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9i
eW5hbWUocGRldiwgSU9SRVNPVVJDRV9NRU0sDQo+ICJyZWdzIik7DQo+ID4gIAlwY2ktPmRiaV9i
YXNlID0gZGV2bV9wY2lfcmVtYXBfY2ZnX3Jlc291cmNlKGRldiwgZGJpX2Jhc2UpOw0KPiA+ICAJ
aWYgKElTX0VSUihwY2ktPmRiaV9iYXNlKSkNCj4gPiBAQCAtMTM5LDYgKzE0NiwxMSBAQCBzdGF0
aWMgaW50IF9faW5pdCBsc19wY2llX2VwX3Byb2JlKHN0cnVjdA0KPiBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpDQo+ID4gIAlwY2ktPm9wcyA9ICZsc19wY2llX2VwX29wczsNCj4gPiAgCXBjaWUtPnBj
aSA9IHBjaTsNCj4gPg0KPiA+ICsJbHNfZXBjLT5saW5rdXBfbm90aWZpZXIgPSBmYWxzZSwNCj4g
PiArCWxzX2VwYy0+YmFyX2ZpeGVkXzY0Yml0ID0gKDEgPDwgQkFSXzIpIHwgKDEgPDwgQkFSXzQp
LA0KPiA+ICsNCj4gPiArCXBjaWUtPmxzX2VwYyA9IGxzX2VwYzsNCj4gPiArDQo+ID4gIAlwbGF0
Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBwY2llKTsNCj4gPg0KPiA+ICAJcmV0ID0gbHNfYWRkX3Bj
aWVfZXAocGNpZSwgcGRldik7DQo+ID4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
