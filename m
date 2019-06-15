Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2381E46E6B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 07:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KF1AB//Y2li8gAbTKXqFVIM/XXebAuXH3UAeok/kQ9U=; b=lWPOalB1nfxZaQ
	tsXbNNSUtVP+I/0hdI87z4fVYoym0LjMqGm1GYluFAco+wAadmSlV6vQ5Jo+8ygAun/7eDCkwjbUp
	KwLWC5zHA0UUlBb6G+0YOyhOyIWod44VEfZawNSofqejXt8Yc7B54xU2hkaVkzJTQ2laWjbM01PVo
	+Z+CeV7Fhx5bmXHoTrwlMz97BfhUFeow/RBi5DD8Rc0a0I43dCQcTdhLJ2vG3Sl4GDuK1qDqAWh26
	Kx2nEz9aPBlQ/sy05Hh7P1P3PU37rSsuOKk19RYK42hQIJ5FoPPvf2JEY/w0zib386d/wmsLb3xXG
	6VRuixwGL/y/iGgwJhNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc0qz-0006Md-9D; Sat, 15 Jun 2019 05:03:49 +0000
Received: from mail-eopbgr60084.outbound.protection.outlook.com ([40.107.6.84]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc0qn-0006M4-MU
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 05:03:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FOcSy+KiGQxIKss8QBtUtIp7nlP5xib/WpLVin7l/p4=;
 b=JWn4GhSPLRKcg14cq/O92KsQzcS5gC7JBW6G0s3siTnHgEhI+4PmelWRDx9EK1UIJkAwtJWfTcRouMdfsleZ2VfeVBkDHOsrooyLViQLMjJwo55JIULKCi1O2qFt0I2i8No20eb4p01/2xmjiBUWakOXRZCXF0QfBnwr5kveWAo=
Received: from AM0PR04MB6738.eurprd04.prod.outlook.com (20.179.253.203) by
 AM0PR04MB5412.eurprd04.prod.outlook.com (20.178.112.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Sat, 15 Jun 2019 05:03:33 +0000
Received: from AM0PR04MB6738.eurprd04.prod.outlook.com
 ([fe80::f41f:5455:d0b3:2527]) by AM0PR04MB6738.eurprd04.prod.outlook.com
 ([fe80::f41f:5455:d0b3:2527%4]) with mapi id 15.20.1987.013; Sat, 15 Jun 2019
 05:03:33 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, "bhelgaas@google.com"
 <bhelgaas@google.com>
Subject: RE: [PATCHv5 18/20] PCI: mobiveil: Disable IB and OB windows set by
 bootloader
Thread-Topic: [PATCHv5 18/20] PCI: mobiveil: Disable IB and OB windows set by
 bootloader
Thread-Index: AQHU8Qrl2X2dZdmZtkqqPC5pUtT6KKaYlFaAgAPP00A=
Date: Sat, 15 Jun 2019 05:03:33 +0000
Message-ID: <AM0PR04MB67383C84D946045874B0F14A84E90@AM0PR04MB6738.eurprd04.prod.outlook.com>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-19-Zhiqiang.Hou@nxp.com>
 <20190612162347.GF15747@redmoon>
In-Reply-To: <20190612162347.GF15747@redmoon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-originating-ip: [27.186.246.136]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 341e3ca0-801d-4e28-e2a9-08d6f14ed131
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB5412; 
x-ms-traffictypediagnostic: AM0PR04MB5412:
x-microsoft-antispam-prvs: <AM0PR04MB54128FFFE8C2D58F82C0BE9384E90@AM0PR04MB5412.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 0069246B74
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(376002)(346002)(136003)(396003)(13464003)(199004)(189003)(53936002)(55016002)(229853002)(9686003)(6436002)(7696005)(53546011)(76176011)(6506007)(102836004)(6246003)(3846002)(2906002)(186003)(6116002)(99286004)(4326008)(446003)(11346002)(316002)(110136005)(54906003)(25786009)(486006)(26005)(476003)(71190400001)(71200400001)(66946007)(76116006)(73956011)(66476007)(66556008)(64756008)(66446008)(7736002)(256004)(305945005)(74316002)(52536014)(5660300002)(14444005)(66066001)(7416002)(68736007)(14454004)(86362001)(2501003)(33656002)(81166006)(8676002)(81156014)(8936002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5412;
 H:AM0PR04MB6738.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: V+xKVAJVpNRfIsDDhlRJqz23pIbyf3nUHQ65YngXDGeLKBdT58s29Xm9Cu60jbuGfyrp3H79n18cqHYmPJytmB8b16j0j/AvD3WIku8plQzyg756Dw4gkc7eDwga0+UfMoyiKzAzogz6ZZoChisVWInyxzohRUchca0XwVk60TlA05reZ6/iz8Ey6Wj5nzVzXNu+jiCDsj95O/YkMluwf1yxB2q0UU3H7GCPZbkNwRdINjzMUIY7/7ntZSNboJ1PmcEhjY/PihDhF/K0pdxTvkhKhEPUitIpHxt3wD1Ce8Up4ashroluizEd3e6cO8X0hTlo7EudfUGz+i61CaGVXy/9eusEOJTJRjZKQFv1JQIF2kJmgI057W5y64eG+ZoFouMXcZSUbKKqpR5B0uX7o1kWRgsyZ9zbVorllM1DVNE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 341e3ca0-801d-4e28-e2a9-08d6f14ed131
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2019 05:03:33.8084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zhiqiang.hou@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5412
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_220337_870949_64694594 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.84 listed in list.dnswl.org]
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
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTG9yZW56bywNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBMb3Jl
bnpvIFBpZXJhbGlzaSBbbWFpbHRvOmxvcmVuem8ucGllcmFsaXNpQGFybS5jb21dDQo+IFNlbnQ6
IDIwMTnE6jbUwjEzyNUgMDoyNA0KPiBUbzogWi5xLiBIb3UgPHpoaXFpYW5nLmhvdUBueHAuY29t
PjsgYmhlbGdhYXNAZ29vZ2xlLmNvbQ0KPiBDYzogbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsg
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiBkZXZpY2V0cmVlQHZnZXIu
a2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsNCj4gcm9iaCtkdEBrZXJu
ZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgbC5zdWJyYWhtYW55YUBtb2JpdmVpbC5jby5p
bjsNCj4gc2hhd25ndW9Aa2VybmVsLm9yZzsgTGVvIExpIDxsZW95YW5nLmxpQG54cC5jb20+Ow0K
PiBjYXRhbGluLm1hcmluYXNAYXJtLmNvbTsgd2lsbC5kZWFjb25AYXJtLmNvbTsgTWluZ2thaSBI
dQ0KPiA8bWluZ2thaS5odUBueHAuY29tPjsgTS5oLiBMaWFuIDxtaW5naHVhbi5saWFuQG54cC5j
b20+OyBYaWFvd2VpIEJhbw0KPiA8eGlhb3dlaS5iYW9AbnhwLmNvbT4NCj4gU3ViamVjdDogUmU6
IFtQQVRDSHY1IDE4LzIwXSBQQ0k6IG1vYml2ZWlsOiBEaXNhYmxlIElCIGFuZCBPQiB3aW5kb3dz
IHNldA0KPiBieSBib290bG9hZGVyDQo+IA0KPiBPbiBGcmksIEFwciAxMiwgMjAxOSBhdCAwODoz
NzowMEFNICswMDAwLCBaLnEuIEhvdSB3cm90ZToNCj4gPiBGcm9tOiBIb3UgWmhpcWlhbmcgPFpo
aXFpYW5nLkhvdUBueHAuY29tPg0KPiA+DQo+ID4gRGlzYWJsZSBhbGwgaW5ib3VuZCBhbmQgb3V0
Ym91bmQgd2luZG93cyBiZWZvcmUgc2V0IHVwIHRoZSB3aW5kb3dzIGluDQo+ID4ga2VybmVsLCBp
biBjYXNlIHRyYW5zYWN0aW9ucyBtYXRjaCB0aGUgd2luZG93IHNldCBieSBib290bG9hZGVyLg0K
PiANCj4gVGhlcmUgbXVzdCBiZSBubyBQQ0kgdHJhbnNhY3Rpb25zIG9uZ29pbmcgYXQgYm9vdGxv
YWRlcjwtPk9TIGhhbmRvdmVyLg0KPg0KDQpZZXMsIGV4YWN0Lg0KIA0KPiBUaGUgYm9vdGxvYWRl
ciBuZWVkcyBmaXhpbmcgYW5kIHRoaXMgcGF0Y2ggc2hvdWxkIGJlIGRyb3BwZWQsIHRoZSBob3N0
IGJyaWRnZQ0KPiBkcml2ZXIgYXNzdW1lcyB0aGUgaG9zdCBicmlkZ2Ugc3RhdGUgaXMgZGlzYWJs
ZWQsDQoNClRoZSBob3N0IGJyaWRnZSBkcml2ZXIgc2hvdWxkIG5vdCBhc3N1bWVzIHRoZSBob3N0
IHN0YXRlIGlzIGRpc2FibGVkLCBhY3R1YWxseQ0KdS1ib290IGVuYWJsZS9pbml0aWFsaXplIHRo
ZSBob3N0IGFuZCB3aXRob3V0IGRpc2FibGluZyBpdCB3aGVuIHRyYW5zZmVyIHRoZSANCmNvbnRy
b2wgdG8gTGludXguDQoNCj4gaXQgd2lsbCBwcm9ncmFtIHRoZSBicmlkZ2UNCj4gYXBlcnR1cmVz
IGZyb20gc2NyYXRjaCB3aXRoIG5vIG9uZ29pbmcgdHJhbnNhY3Rpb25zLCBhbnl0aGluZyBkZXZp
YXRpbmcgZnJvbQ0KPiB0aGlzIGJlaGF2aW91ciBpcyBhIGJvb3Rsb2FkZXIgYnVnIGFuZCBhIHJl
Y2lwZSBmb3IgZGlzYXN0ZXIuDQoNClRoZSBwb2ludCBvZiB0aGlzIHBhdGNoIGlzIG5vdCB0byBm
aXggdGhlIG9uZ29pbmcgdHJhbnNhY3Rpb24gaXNzdWUsIGl0IGlzIHRvIGF2b2lkDQphIHBvdGVu
dGlhbCBpc3N1ZSB3aGljaCBpcyBjYXVzZWQgYnkgdGhlIG91dGJvdW5kIHdpbmRvdyBlbmFibGVk
IGJ5IGJvb3Rsb2FkZXINCm92ZXJsYXBwaW5nIHdpdGggTGludXggZW5hYmxlZC4NCg0KVGhhbmtz
LA0KWmhpcWlhbmcNCiANCj4gTG9yZW56bw0KPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBIb3UgWmhp
cWlhbmcgPFpoaXFpYW5nLkhvdUBueHAuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBNaW5naHVhbiBM
aWFuIDxNaW5naHVhbi5MaWFuQG54cC5jb20+DQo+ID4gUmV2aWV3ZWQtYnk6IFN1YnJhaG1hbnlh
IExpbmdhcHBhIDxsLnN1YnJhaG1hbnlhQG1vYml2ZWlsLmNvLmluPg0KPiA+IC0tLQ0KPiA+IFY1
Og0KPiA+ICAtIE5vIGZ1bmN0aW9uYWxpdHkgY2hhbmdlLg0KPiA+DQo+ID4gIGRyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvcGNpZS1tb2JpdmVpbC5jIHwgMjUgKysrKysrKysrKysrKysrKysrKysrKysr
Kw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1tb2JpdmVpbC5jDQo+ID4gYi9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtbW9iaXZlaWwuYw0KPiA+IGluZGV4IDhkYzg3YzdhNjAw
ZS4uNDExZTk3NzlkYTEyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
cGNpZS1tb2JpdmVpbC5jDQo+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLW1v
Yml2ZWlsLmMNCj4gPiBAQCAtNTY1LDYgKzU2NSwyNCBAQCBzdGF0aWMgaW50IG1vYml2ZWlsX2Jy
aW5ndXBfbGluayhzdHJ1Y3QNCj4gbW9iaXZlaWxfcGNpZSAqcGNpZSkNCj4gPiAgCXJldHVybiAt
RVRJTUVET1VUOw0KPiA+ICB9DQo+ID4NCj4gPiArc3RhdGljIHZvaWQgbW9iaXZlaWxfcGNpZV9k
aXNhYmxlX2liX3dpbihzdHJ1Y3QgbW9iaXZlaWxfcGNpZSAqcGNpZSwNCj4gPiAraW50IGlkeCkg
ew0KPiA+ICsJdTMyIHZhbDsNCj4gPiArDQo+ID4gKwl2YWwgPSBjc3JfcmVhZGwocGNpZSwgUEFC
X1BFWF9BTUFQX0NUUkwoaWR4KSk7DQo+ID4gKwl2YWwgJj0gfigxIDw8IEFNQVBfQ1RSTF9FTl9T
SElGVCk7DQo+ID4gKwljc3Jfd3JpdGVsKHBjaWUsIHZhbCwgUEFCX1BFWF9BTUFQX0NUUkwoaWR4
KSk7IH0NCj4gPiArDQo+ID4gK3N0YXRpYyB2b2lkIG1vYml2ZWlsX3BjaWVfZGlzYWJsZV9vYl93
aW4oc3RydWN0IG1vYml2ZWlsX3BjaWUgKnBjaWUsDQo+ID4gK2ludCBpZHgpIHsNCj4gPiArCXUz
MiB2YWw7DQo+ID4gKw0KPiA+ICsJdmFsID0gY3NyX3JlYWRsKHBjaWUsIFBBQl9BWElfQU1BUF9D
VFJMKGlkeCkpOw0KPiA+ICsJdmFsICY9IH4oMSA8PCBXSU5fRU5BQkxFX1NISUZUKTsNCj4gPiAr
CWNzcl93cml0ZWwocGNpZSwgdmFsLCBQQUJfQVhJX0FNQVBfQ1RSTChpZHgpKTsgfQ0KPiA+ICsN
Cj4gPiAgc3RhdGljIHZvaWQgbW9iaXZlaWxfcGNpZV9lbmFibGVfbXNpKHN0cnVjdCBtb2JpdmVp
bF9wY2llICpwY2llKSAgew0KPiA+ICAJcGh5c19hZGRyX3QgbXNnX2FkZHIgPSBwY2llLT5wY2ll
X3JlZ19iYXNlOyBAQCAtNTg1LDYgKzYwMywxMyBAQA0KPiA+IHN0YXRpYyBpbnQgbW9iaXZlaWxf
aG9zdF9pbml0KHN0cnVjdCBtb2JpdmVpbF9wY2llICpwY2llKSAgew0KPiA+ICAJdTMyIHZhbHVl
LCBwYWJfY3RybCwgdHlwZTsNCj4gPiAgCXN0cnVjdCByZXNvdXJjZV9lbnRyeSAqd2luOw0KPiA+
ICsJaW50IGk7DQo+ID4gKw0KPiA+ICsJLyogRGlzYWJsZSBhbGwgaW5ib3VuZC9vdXRib3VuZCB3
aW5kb3dzICovDQo+ID4gKwlmb3IgKGkgPSAwOyBpIDwgcGNpZS0+YXBpb193aW5zOyBpKyspDQo+
ID4gKwkJbW9iaXZlaWxfcGNpZV9kaXNhYmxlX29iX3dpbihwY2llLCBpKTsNCj4gPiArCWZvciAo
aSA9IDA7IGkgPCBwY2llLT5wcGlvX3dpbnM7IGkrKykNCj4gPiArCQltb2JpdmVpbF9wY2llX2Rp
c2FibGVfaWJfd2luKHBjaWUsIGkpOw0KPiA+DQo+ID4gIAkvKiBzZXR1cCBidXMgbnVtYmVycyAq
Lw0KPiA+ICAJdmFsdWUgPSBjc3JfcmVhZGwocGNpZSwgUENJX1BSSU1BUllfQlVTKTsNCj4gPiAt
LQ0KPiA+IDIuMTcuMQ0KPiA+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
