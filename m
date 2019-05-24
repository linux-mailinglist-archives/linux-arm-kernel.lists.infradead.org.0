Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BC92951B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 11:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/xahdMT/HOVFPxs/kxODpzHzoFVWhKKLAcAg50ra5o=; b=MdhHnUWRLplcZh
	A1vL4PE2a7PM9yY2KeJHd/DDI9lmVW7qVYGqwEy14/G3Ri3hJrJGZfEHkHAqdVZ7RMIUGgQMwDjcZ
	alE3OJn9zrSjSQBNuA12HhobIXNsoqgh7Dtm+mR1n72ir5SRnQtco0GwpLu8U6xKlJX4aS2idMRIc
	l+W8BhJ6CYoUYHutnSlQ+E85KCQ7ZnepJ+EEPjnh01VKEHG+5F6sQTZfMAgvjJfAhX00KFFK4WdYL
	260lUUXkYii2O3mSd8pgZhN9c6juluuOHIs+IcGZUYBYY/wy+GwIFQmQUsl933tAkwC5EDf48LQ7E
	lBpCPCaZDV59Noyz/+Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU6p1-0000Mr-Oz; Fri, 24 May 2019 09:49:07 +0000
Received: from mail-eopbgr130058.outbound.protection.outlook.com
 ([40.107.13.58] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU6os-0000MM-Ht
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 09:49:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5SEvq+qTMgBHAB3T5geIizUWL5wJk17f9MsMhtsETUI=;
 b=ZN2MXsnB5fvJFS+yrpImi284qbeAVeS/SBAmSFYw05QP3ZspbQZD+dIxfFg2IV9CNXWNot0seuZgR/WyX6pX23xzvi+4iIEZgwO6GRmAKDHWwaLNnL7fSd3+wI5cbheCmZe+QNC6gACstpNJyjfmqDgpbSpwwG0ZldeH5t7JDPM=
Received: from AM6PR04MB4357.eurprd04.prod.outlook.com (52.135.167.33) by
 AM6PR04MB4615.eurprd04.prod.outlook.com (20.176.243.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.17; Fri, 24 May 2019 09:48:53 +0000
Received: from AM6PR04MB4357.eurprd04.prod.outlook.com
 ([fe80::d877:33b5:bfa6:30ce]) by AM6PR04MB4357.eurprd04.prod.outlook.com
 ([fe80::d877:33b5:bfa6:30ce%6]) with mapi id 15.20.1922.016; Fri, 24 May 2019
 09:48:53 +0000
From: Chuanhua Han <chuanhua.han@nxp.com>
To: Leo Li <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Rob Herring
 <robh@kernel.org>
Subject: RE: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix watchdog device node
Thread-Topic: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix watchdog device node
Thread-Index: AQHVBjWLU5tDmMzveEaz3RlKVqbc5aZupocAgAA6wsCAAQpVgIAFsPwAgAB6roCAAKa7cIAACsWAgANWFYA=
Date: Fri, 24 May 2019 09:48:52 +0000
Message-ID: <AM6PR04MB4357072E079BDD8D1866595797020@AM6PR04MB4357.eurprd04.prod.outlook.com>
References: <20190509070657.18281-1-chuanhua.han@nxp.com>
 <20190517023728.GA15856@dragon>
 <AM6PR04MB4357C78FCEBA1B00AA42ED2E970B0@AM6PR04MB4357.eurprd04.prod.outlook.com>
 <AM6PR04MB586341334E62A663EE5E8BD18F0B0@AM6PR04MB5863.eurprd04.prod.outlook.com>
 <AM6PR04MB435758E1498B6A2BE0C0ACE397070@AM6PR04MB4357.eurprd04.prod.outlook.com>
 <AM6PR04MB58631458E6D851E4D83A77ED8F070@AM6PR04MB5863.eurprd04.prod.outlook.com>
 <AM6PR04MB435708872A4DBA92561C772597000@AM6PR04MB4357.eurprd04.prod.outlook.com>
 <AM6PR04MB5863FA1CE6D1E40F11B2E5008F000@AM6PR04MB5863.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB5863FA1CE6D1E40F11B2E5008F000@AM6PR04MB5863.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chuanhua.han@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: effba48d-ddd4-4c74-4988-08d6e02d0822
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB4615; 
x-ms-traffictypediagnostic: AM6PR04MB4615:
x-microsoft-antispam-prvs: <AM6PR04MB4615C423D43BFE1A8143947397020@AM6PR04MB4615.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0047BC5ADE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(366004)(136003)(376002)(396003)(13464003)(199004)(189003)(8676002)(486006)(86362001)(8936002)(81156014)(81166006)(316002)(55016002)(6246003)(6506007)(6436002)(9686003)(110136005)(54906003)(6116002)(52536014)(71200400001)(71190400001)(3846002)(2906002)(5660300002)(14444005)(256004)(66066001)(66556008)(66476007)(66946007)(64756008)(76116006)(7736002)(186003)(73956011)(476003)(446003)(26005)(11346002)(7696005)(305945005)(68736007)(76176011)(66446008)(44832011)(229853002)(99286004)(25786009)(102836004)(53546011)(4326008)(33656002)(14454004)(478600001)(53936002)(74316002)(21314003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4615;
 H:AM6PR04MB4357.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WWkJXneRZkZAhG3FD222bYoTcR8tBhmtabohIiICNksyWI13EIaSuXe+4pzwB6X9AuJ/dLFO3mkzGLTFfCGb057LM1TGkhNJOaWSFg1RxBC+iRC2mEOLNhkkc1B6lH6tvpksH9pSTxMa9AxEcpfLiJvtGI9OkyNVONyC01GLBXfbywoQIv3pAMzFKceNnKMZ62skBIkW+70WOBIN0lmvvkOy3ACyRbWO14a8GcZVlgNRGxQGWaDq5rH+BTvTpWF/z2m/qpqUQyFUZdB6qA7MbA2zhWN31PvDaoVQ/KARKrsH/pkcg1Xh1MHMTlmVs/y5UNp9urTK+5Hr6WKcrlKoCEAxjLzRkpfqnPIwJRJP44ZBdmKcy6cEY7+5/PaxUkh+H+1RoPSvRvwct2v+L5GgmZLXJcvpDW92Td6jfT+JRdA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: effba48d-ddd4-4c74-4988-08d6e02d0822
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2019 09:48:53.2059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: chuanhua.han@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4615
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_024858_849812_73AEA9B1 
X-CRM114-Status: GOOD (  25.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIFJvYiBIZXJyaW5nDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTog
TGVvIExpDQo+IFNlbnQ6IDIwMTnE6jXUwjIyyNUgMTQ6NTANCj4gVG86IENodWFuaHVhIEhhbiA8
Y2h1YW5odWEuaGFuQG54cC5jb20+OyBTaGF3biBHdW8NCj4gPHNoYXduZ3VvQGtlcm5lbC5vcmc+
OyBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPg0KPiBDYzogbWFyay5ydXRsYW5kQGFybS5j
b207IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4gZGV2aWNldHJlZUB2
Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IFlpbmcgWmhhbmcN
Cj4gPHlpbmcuemhhbmcyMjQ1NUBueHAuY29tPg0KPiBTdWJqZWN0OiBSRTogW0VYVF0gUmU6IFtQ
QVRDSF0gYXJtNjQ6IGR0czogbHMxMDI4YTogZml4IHdhdGNoZG9nIGRldmljZSBub2RlDQo+IA0K
PiANCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBDaHVhbmh1
YSBIYW4NCj4gPiBTZW50OiBXZWRuZXNkYXksIE1heSAyMiwgMjAxOSAxOjI2IEFNDQo+ID4gVG86
IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPjsgU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwu
b3JnPg0KPiA+IENjOiBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnOw0KPiA+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1r
ZXJuZWxAdmdlci5rZXJuZWwub3JnOyBZaW5nIFpoYW5nDQo+ID4gPHlpbmcuemhhbmcyMjQ1NUBu
eHAuY29tPg0KPiA+IFN1YmplY3Q6IFJFOiBbRVhUXSBSZTogW1BBVENIXSBhcm02NDogZHRzOiBs
czEwMjhhOiBmaXggd2F0Y2hkb2cNCj4gPiBkZXZpY2Ugbm9kZQ0KPiA+DQo+ID4NCj4gPg0KPiA+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IExlbyBMaQ0KPiA+ID4g
U2VudDogMjAxOcTqNdTCMjLI1SA0OjE1DQo+ID4gPiBUbzogQ2h1YW5odWEgSGFuIDxjaHVhbmh1
YS5oYW5AbnhwLmNvbT47IFNoYXduIEd1bw0KPiA+ID4gPHNoYXduZ3VvQGtlcm5lbC5vcmc+DQo+
ID4gPiBDYzogbWFyay5ydXRsYW5kQGFybS5jb207IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZzsNCj4gPiA+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJu
ZWxAdmdlci5rZXJuZWwub3JnOyBZaW5nIFpoYW5nDQo+ID4gPiA8eWluZy56aGFuZzIyNDU1QG54
cC5jb20+DQo+ID4gPiBTdWJqZWN0OiBSRTogW0VYVF0gUmU6IFtQQVRDSF0gYXJtNjQ6IGR0czog
bHMxMDI4YTogZml4IHdhdGNoZG9nDQo+ID4gPiBkZXZpY2Ugbm9kZQ0KPiA+ID4NCj4gPiA+DQo+
ID4gPg0KPiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gPiBGcm9tOiBD
aHVhbmh1YSBIYW4NCj4gPiA+ID4gU2VudDogVHVlc2RheSwgTWF5IDIxLCAyMDE5IDg6MDAgQU0N
Cj4gPiA+ID4gVG86IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPjsgU2hhd24gR3VvIDxzaGF3
bmd1b0BrZXJuZWwub3JnPg0KPiA+ID4gPiBDYzogbWFyay5ydXRsYW5kQGFybS5jb207IGxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4gPiA+ID4gZGV2aWNldHJlZUB2Z2Vy
Lmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IFlpbmcNCj4gPiA+ID4g
WmhhbmcgPHlpbmcuemhhbmcyMjQ1NUBueHAuY29tPg0KPiA+ID4gPiBTdWJqZWN0OiBSRTogW0VY
VF0gUmU6IFtQQVRDSF0gYXJtNjQ6IGR0czogbHMxMDI4YTogZml4IHdhdGNoZG9nDQo+ID4gPiA+
IGRldmljZSBub2RlDQo+ID4gPiA+DQo+ID4gPiA+DQo+ID4gPiA+DQo+ID4gPiA+ID4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4gPiBGcm9tOiBMZW8gTGkNCj4gPiA+ID4gPiBT
ZW50OiAyMDE5xOo11MIxOMjVIDY6MDENCj4gPiA+ID4gPiBUbzogQ2h1YW5odWEgSGFuIDxjaHVh
bmh1YS5oYW5AbnhwLmNvbT47IFNoYXduIEd1bw0KPiA+ID4gPiA+IDxzaGF3bmd1b0BrZXJuZWwu
b3JnPg0KPiA+ID4gPiA+IENjOiBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiA+ID4gPiA+IGRldmljZXRyZWVAdmdlci5rZXJuZWwu
b3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBZaW5nDQo+ID4gPiA+ID4gWmhhbmcg
PHlpbmcuemhhbmcyMjQ1NUBueHAuY29tPg0KPiA+ID4gPiA+IFN1YmplY3Q6IFJFOiBbRVhUXSBS
ZTogW1BBVENIXSBhcm02NDogZHRzOiBsczEwMjhhOiBmaXggd2F0Y2hkb2cNCj4gPiA+ID4gPiBk
ZXZpY2Ugbm9kZQ0KPiA+ID4gPiA+DQo+ID4gPiA+ID4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+ID4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4gPiA+IEZyb206IENodWFuaHVhIEhh
bg0KPiA+ID4gPiA+ID4gU2VudDogRnJpZGF5LCBNYXkgMTcsIDIwMTkgMToxMSBBTQ0KPiA+ID4g
PiA+ID4gVG86IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4NCj4gPiA+ID4gPiA+IENj
OiBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47IG1hcmsucnV0bGFuZEBhcm0uY29tOw0KPiA+
ID4gPiA+ID4gbGludXgtYXJtLSBrZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4gPiA+ID4g
PiA+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC0ga2VybmVsQHZnZXIua2VybmVs
Lm9yZzsNCj4gPiA+ID4gPiA+IFlpbmcgWmhhbmcgPHlpbmcuemhhbmcyMjQ1NUBueHAuY29tPg0K
PiA+ID4gPiA+ID4gU3ViamVjdDogUkU6IFtFWFRdIFJlOiBbUEFUQ0hdIGFybTY0OiBkdHM6IGxz
MTAyOGE6IGZpeA0KPiA+ID4gPiA+ID4gd2F0Y2hkb2cgZGV2aWNlIG5vZGUNCj4gPiA+ID4gPiA+
DQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4gLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0NCj4gPiA+ID4gPiA+ID4gRnJvbTogU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJu
ZWwub3JnPg0KPiA+ID4gPiA+ID4gPiBTZW50OiAyMDE5xOo11MIxN8jVIDEwOjM4DQo+ID4gPiA+
ID4gPiA+IFRvOiBDaHVhbmh1YSBIYW4gPGNodWFuaHVhLmhhbkBueHAuY29tPg0KPiA+ID4gPiA+
ID4gPiBDYzogTGVvIExpIDxsZW95YW5nLmxpQG54cC5jb20+OyBtYXJrLnJ1dGxhbmRAYXJtLmNv
bTsNCj4gPiA+ID4gPiA+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0K
PiA+ID4gPiA+ID4gPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZn
ZXIua2VybmVsLm9yZzsNCj4gPiA+ID4gPiA+ID4gWWluZyBaaGFuZyA8eWluZy56aGFuZzIyNDU1
QG54cC5jb20+DQo+ID4gPiA+ID4gPiA+IFN1YmplY3Q6IFtFWFRdIFJlOiBbUEFUQ0hdIGFybTY0
OiBkdHM6IGxzMTAyOGE6IGZpeCB3YXRjaGRvZw0KPiA+ID4gPiA+ID4gPiBkZXZpY2Ugbm9kZQ0K
PiA+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gPiBDYXV0aW9uOiBFWFQgRW1haWwNCj4gPiA+ID4g
PiA+ID4NCj4gPiA+ID4gPiA+ID4gT24gVGh1LCBNYXkgMDksIDIwMTkgYXQgMDM6MDY6NTdQTSAr
MDgwMCwgQ2h1YW5odWEgSGFuIHdyb3RlOg0KPiA+ID4gPiA+ID4gPiA+IGxzMTAyOGEgcGxhdGZv
cm0gdXNlcyBzcDgwNSB3YXRjaGRvZywgYW5kIHVzZSAxLzE2DQo+ID4gPiA+ID4gPiA+ID4gcGxh
dGZvcm0gY2xvY2sgYXMgdGltZXIgY2xvY2ssIHRoaXMgcGF0Y2ggZml4IGRldmljZSB0cmVlIG5v
ZGUuDQo+ID4gPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBaaGFu
ZyBZaW5nLTIyNDU1IDx5aW5nLnpoYW5nMjI0NTVAbnhwLmNvbT4NCj4gPiA+ID4gPiA+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBDaHVhbmh1YSBIYW4gPGNodWFuaHVhLmhhbkBueHAuY29tPg0KPiA+ID4g
PiA+ID4gPiA+IC0tLQ0KPiA+ID4gPiA+ID4gPiA+ICAuLi4vYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2ZzbC1sczEwMjhhLmR0c2kgfCAxOQ0KPiA+ID4gPiA+ID4gPiA+ICsrKysrKysrKysrKy0t
LS0tLS0NCj4gPiA+ID4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyks
IDcgZGVsZXRpb25zKC0pDQo+ID4gPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4gPiBkaWZmIC0t
Z2l0DQo+ID4gPiA+ID4gPiA+ID4gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wt
bHMxMDI4YS5kdHNpDQo+ID4gPiA+ID4gPiA+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9mc2wtbHMxMDI4YS5kdHNpDQo+ID4gPiA+ID4gPiA+ID4gaW5kZXggYjA0NTgxMjQ5ZjBi
Li4xNTEwYjE4NTgyNDYgMTAwNjQ0DQo+ID4gPiA+ID4gPiA+ID4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaQ0KPiA+ID4gPiA+ID4gPiA+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kNCj4gPiA+ID4g
PiA+ID4gPiBAQCAtMjg1LDEzICsyODUsMTggQEANCj4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAg
ICAgICAgICAgICAgI2ludGVycnVwdC1jZWxscyA9IDwyPjsNCj4gPiA+ID4gPiA+ID4gPiAgICAg
ICAgICAgICAgIH07DQo+ID4gPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4gPiAtICAgICAgICAg
ICAgIHdkb2cwOiB3YXRjaGRvZ0AyM2MwMDAwIHsNCj4gPiA+ID4gPiA+ID4gPiAtICAgICAgICAg
ICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJmc2wsbHMxMDI4YS13ZHQiLA0KPiA+ID4gImZzbCxp
bXgyMS13ZHQiOw0KPiA+ID4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICByZWcgPSA8
MHgwIDB4MjNjMDAwMCAweDAgMHgxMDAwMD47DQo+ID4gPiA+ID4gPiA+ID4gLSAgICAgICAgICAg
ICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA1OQ0KPiA+ID4gPiA+IElSUV9UWVBFX0xF
VkVMX0hJR0g+Ow0KPiA+ID4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICBjbG9ja3Mg
PSA8JmNsb2NrZ2VuIDQgMT47DQo+ID4gPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAg
IGJpZy1lbmRpYW47DQo+ID4gPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgIHN0YXR1
cyA9ICJkaXNhYmxlZCI7DQo+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICBjbHVzdGVyMV9j
b3JlMF93YXRjaGRvZzogd2R0QGMwMDAwMDAgew0KPiA+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4g
PiBLZWVwICd3YXRjaGRvZycgYXMgdGhlIG5vZGUgbmFtZSwNCj4gPiA+ID4gPiA+IFRoYW5rcyBm
b3IgeW91ciByZXBsYXkNCj4gPiA+ID4gPiA+IERvIHlvdSBtZWFuIHJlcGxhY2UgdGhlIKGud2R0
oa8gd2l0aCChrndhdGNoZG9noa8/DQo+ID4gPiA+ID4gPiBhbmQga2VlcCBub2RlcyBzb3J0IGlu
IHVuaXQtYWRkcmVzcy4NCj4gPiA+ID4gPiA+IFdoYXQgZG9lcyB0aGlzIG1lYW4/DQo+ID4gPiA+
ID4NCj4gPiA+ID4gPiBUaGF0IG1lYW5zIG9yZGVyIHRoZSBub2RlcyBieSB0aGUgYWRkcmVzc2Vz
IChlLmcuIGMwMDAwMDAsDQo+ID4gPiA+ID4gYzAxMDAwMCkNCj4gPiA+ID4gVGhlIGN1cnJlbnQg
b3JkZXIgaXMgY29ycmVjdKOoVGhlIGZpcnN0IGlzIGMwMDAwMDAsIHRoZW4gYzAwMDAwMKOpLg0K
PiA+ID4NCj4gPiA+IEJ1dCB0aGV5IGFyZSBhZGRlZCBhZnRlciBncGlvQDIzMjAwMDAgYW5kIGJl
Zm9yZSBzYXRhQDMyMDAwMDAuDQo+ID4gSSBjaGFuZ2VkIGFuZCBtYWRlIHRoZSBzZWNvbmQgdmVy
c2lvbiBvZiB0aGUgcGF0Y2gsIGJ1dCBJIGZvdW5kIHRoZQ0KPiA+IGZvbGxvd2luZyBlcnJvciB3
aGVuIEkgZXhlY3V0ZWQgLi9zY3JpcHRzL2NoZWNrcGF0Y2gucGwgeHh4LnBhdGNoIHRvDQo+ID4g
Y2hlY2sgdGhlIHBhdGNoOg0KPiA+DQo+ID4gV0FSTklORzogRFQgY29tcGF0aWJsZSBzdHJpbmcg
dmVuZG9yICJhcm0iIGFwcGVhcnMgdW4tZG9jdW1lbnRlZCAtLQ0KPiA+IGNoZWNrIC4vRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy50eHQNCj4gPiAjNDM6
IEZJTEU6IGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2k6MzUx
Og0KPiA+ICsgY29tcGF0aWJsZSA9ICJhcm0sc3A4MDUiLCAiYXJtLHByaW1lY2VsbCI7DQo+ID4N
Cj4gPiBIb3dldmVyLCB0aGVyZSBpcyBubyB2ZW5kb3ItcHJlZml4ZXMudHh0IGZpbGUgaW4gdGhl
DQo+ID4gLi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvIGRpcmVjdG9yeSwgb25s
eSB2ZW5kb3ItDQo+ID4gcHJlZml4ZXMueWFtbC4NCj4gPiBNb3Jlb3ZlciwgdGhlcmUgYXJlIKGu
YXJtoa8gdmVuZG9ycyBpbiB2ZW5kb3ItcHJlZml4ZXMueWFtbC4NCj4gDQo+IEFkZGVkIFJvYiBI
ZXJyaW5nIHRvIHRoZSB0aHJlYWQuDQo+IA0KPiA+IFJlcXVlc3QgaGVscKOsdGhhbmtzDQpIb3cg
Y2FuIEkgc29sdmUgdGhpcyBwYXRjaCBjaGVjayBlcnJvcj8gQXNrIGZvciBoZWxwLCB0aGFuayB5
b3UhDQo+ID4gPg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+IFNoYXdu
DQo+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNv
bXBhdGlibGUgPSAiYXJtLHNwODA1IiwNCj4gImFybSxwcmltZWNlbGwiOw0KPiA+ID4gPiA+ID4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgwIDB4YzAwMDAwMCAweDAgMHgxMDAw
PjsNCj4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9j
a2dlbiA0IDE1PiwNCj4gPiA+ID4gPiA+ID4gPiArIDwmY2xvY2tnZW4NCj4gPiA+ID4gPiA+ID4g
PiArIDQNCj4gPiA+IDE1PjsNCj4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
Y2xvY2stbmFtZXMgPSAiYXBiX3BjbGsiLCAid2RvZ19jbGsiOw0KPiA+ID4gPiA+ID4gPiA+ICsg
ICAgICAgICAgICAgfTsNCj4gPiA+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiA+ID4gKyAgICAg
ICAgICAgICBjbHVzdGVyMV9jb3JlMV93YXRjaGRvZzogd2R0QGMwMTAwMDAgew0KPiA+ID4gPiA+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImFybSxzcDgwNSIsDQo+
ICJhcm0scHJpbWVjZWxsIjsNCj4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
cmVnID0gPDB4MCAweGMwMTAwMDAgMHgwIDB4MTAwMD47DQo+ID4gPiA+ID4gPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2xvY2tnZW4gNCAxNT4sDQo+ID4gPiA+ID4gPiA+
ID4gKyA8JmNsb2NrZ2VuDQo+ID4gPiA+ID4gPiA+ID4gKyA0DQo+ID4gPiAxNT47DQo+ID4gPiA+
ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImFwYl9wY2xrIiwN
Cj4gPiA+ID4gPiA+ID4gPiArICJ3ZG9nX2NsayI7DQo+ID4gPiA+ID4gPiA+ID4gICAgICAgICAg
ICAgICB9Ow0KPiA+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICBz
YXRhOiBzYXRhQDMyMDAwMDAgew0KPiA+ID4gPiA+ID4gPiA+IC0tDQo+ID4gPiA+ID4gPiA+ID4g
Mi4xNy4xDQo+ID4gPiA+ID4gPiA+ID4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
