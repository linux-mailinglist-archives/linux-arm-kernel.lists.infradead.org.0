Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8319325E05
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 08:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pBAnU2i6u9EV40PkMr9qAE+Q+RXA6uAqG1JfDzgGz2I=; b=IPQ3zJXkPy+oE0
	mW7wuKrYIw45qidCuhPhi4OVSiT+2LqTD9yEZyNkO8lXKyVloNCcawxBomMmXmGTyiXCmKO8TuqA2
	poi2DTE89Z/uzABYKC9HqFMZ3SsElP+1Rf/UhhOqeEsLjbSMZ8uvXlD0LaGx7oBR8ow2VwC8Sf5os
	Vmwq00X0bOr/hRYC2+C4+nQPJkG3WTjVhCVmGc8iK9MRsbdFYrGaPXbgGY0f+BXSStVJbOlBXo/kq
	MenmokD6k8h1/MUNIh6693V6shNUNZrMyBswhoPp4dkRWhh5P6WPcipd5XHX+2Mbniny3G9iJPWlL
	8DrXdriTgvgtBmV/Nyvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTKhr-0003jG-K8; Wed, 22 May 2019 06:26:31 +0000
Received: from mail-eopbgr30050.outbound.protection.outlook.com ([40.107.3.50]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTKhk-0003ir-CR
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 06:26:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L3tsQWZkHDLlRUsJg3nVCX0Zi6zM96yWNpAktitx1sM=;
 b=IEMA22IUqrD/v5wqwoWB3esybvCdX79xpcEB8S+aLwKO+ky87VqxuslRknDUmg3Rbs5tNd2elRV+VUC6dxmRlsLorr8wBnWLRcZ15QJzmNBKzShe6j/UBElcTWw5k3X3v2V6e4x5zGBcmhRn2PZ69sm866Gce1KGbaGGIq7h/mg=
Received: from AM6PR04MB4357.eurprd04.prod.outlook.com (52.135.167.33) by
 AM6PR04MB4536.eurprd04.prod.outlook.com (20.176.243.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Wed, 22 May 2019 06:26:19 +0000
Received: from AM6PR04MB4357.eurprd04.prod.outlook.com
 ([fe80::d877:33b5:bfa6:30ce]) by AM6PR04MB4357.eurprd04.prod.outlook.com
 ([fe80::d877:33b5:bfa6:30ce%6]) with mapi id 15.20.1922.016; Wed, 22 May 2019
 06:26:19 +0000
From: Chuanhua Han <chuanhua.han@nxp.com>
To: Leo Li <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix watchdog device node
Thread-Topic: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix watchdog device node
Thread-Index: AQHVBjWLU5tDmMzveEaz3RlKVqbc5aZupocAgAA6wsCAAQpVgIAFsPwAgAB6roCAAKa7cA==
Date: Wed, 22 May 2019 06:26:19 +0000
Message-ID: <AM6PR04MB435708872A4DBA92561C772597000@AM6PR04MB4357.eurprd04.prod.outlook.com>
References: <20190509070657.18281-1-chuanhua.han@nxp.com>
 <20190517023728.GA15856@dragon>
 <AM6PR04MB4357C78FCEBA1B00AA42ED2E970B0@AM6PR04MB4357.eurprd04.prod.outlook.com>
 <AM6PR04MB586341334E62A663EE5E8BD18F0B0@AM6PR04MB5863.eurprd04.prod.outlook.com>
 <AM6PR04MB435758E1498B6A2BE0C0ACE397070@AM6PR04MB4357.eurprd04.prod.outlook.com>
 <AM6PR04MB58631458E6D851E4D83A77ED8F070@AM6PR04MB5863.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB58631458E6D851E4D83A77ED8F070@AM6PR04MB5863.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chuanhua.han@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cf258e6d-f124-40b0-4118-08d6de7e673b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB4536; 
x-ms-traffictypediagnostic: AM6PR04MB4536:
x-microsoft-antispam-prvs: <AM6PR04MB4536EFFDE7294BF1A746FB7497000@AM6PR04MB4536.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(13464003)(189003)(199004)(99286004)(33656002)(229853002)(6506007)(9686003)(4326008)(55016002)(486006)(66066001)(6436002)(53546011)(14444005)(3846002)(102836004)(6116002)(256004)(6246003)(68736007)(52536014)(73956011)(64756008)(66556008)(76176011)(7696005)(53936002)(2906002)(54906003)(76116006)(110136005)(74316002)(71200400001)(71190400001)(44832011)(66476007)(66946007)(66446008)(86362001)(446003)(8936002)(26005)(8676002)(81166006)(5660300002)(25786009)(186003)(11346002)(81156014)(14454004)(476003)(7736002)(305945005)(498600001)(21314003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4536;
 H:AM6PR04MB4357.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zSdsYMHuxp9ITPhM3lSORPN2VfY3cM/xmzdz5Ao84yJGmgeWu9eR2m6ZqVpWSAlW+NI7X35toA2n6IC2AhSstatNQk9ivEd5F5b7W9UN2uPvtclN1K8iAUUq/H+O1DwTv03AQQS0Oyz4wLCAhKWGuu01/4XtB8zGP5BcTiVb90tlZH8EnIMBLl8HXRQo/RC/Hy08l+2EUJCZ17pHEOhQc1rmHQNAMPRyozn52BmEEoOZlINlbzHkXkfHO492EXOdZR3g2Bm+BIhHebAr77JGjj4u9jrjklUxkXbaieoGdaIIJRghcL4Tkg/YGviMMzTKqpV2JCf4xPrrbpftKoaD4FOg7O3tItI19eDe2m5/2nuT16fRTOiS9Rky0iLuf4oppptXw+xiUwAwEntDoT6pFBblKV9rDY//7Oa2mh+pObI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf258e6d-f124-40b0-4118-08d6de7e673b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 06:26:19.7876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4536
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_232624_429871_67AEB380 
X-CRM114-Status: GOOD (  22.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.50 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ying Zhang <ying.zhang22455@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTGVvIExpDQo+IFNlbnQ6
IDIwMTnE6jXUwjIyyNUgNDoxNQ0KPiBUbzogQ2h1YW5odWEgSGFuIDxjaHVhbmh1YS5oYW5Abnhw
LmNvbT47IFNoYXduIEd1bw0KPiA8c2hhd25ndW9Aa2VybmVsLm9yZz4NCj4gQ2M6IG1hcmsucnV0
bGFuZEBhcm0uY29tOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+IGRl
dmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBZ
aW5nIFpoYW5nDQo+IDx5aW5nLnpoYW5nMjI0NTVAbnhwLmNvbT4NCj4gU3ViamVjdDogUkU6IFtF
WFRdIFJlOiBbUEFUQ0hdIGFybTY0OiBkdHM6IGxzMTAyOGE6IGZpeCB3YXRjaGRvZyBkZXZpY2Ug
bm9kZQ0KPiANCj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJv
bTogQ2h1YW5odWEgSGFuDQo+ID4gU2VudDogVHVlc2RheSwgTWF5IDIxLCAyMDE5IDg6MDAgQU0N
Cj4gPiBUbzogTGVvIExpIDxsZW95YW5nLmxpQG54cC5jb20+OyBTaGF3biBHdW8gPHNoYXduZ3Vv
QGtlcm5lbC5vcmc+DQo+ID4gQ2M6IG1hcmsucnV0bGFuZEBhcm0uY29tOyBsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+ID4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7
IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IFlpbmcgWmhhbmcNCj4gPiA8eWluZy56aGFu
ZzIyNDU1QG54cC5jb20+DQo+ID4gU3ViamVjdDogUkU6IFtFWFRdIFJlOiBbUEFUQ0hdIGFybTY0
OiBkdHM6IGxzMTAyOGE6IGZpeCB3YXRjaGRvZw0KPiA+IGRldmljZSBub2RlDQo+ID4NCj4gPg0K
PiA+DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogTGVvIExp
DQo+ID4gPiBTZW50OiAyMDE5xOo11MIxOMjVIDY6MDENCj4gPiA+IFRvOiBDaHVhbmh1YSBIYW4g
PGNodWFuaHVhLmhhbkBueHAuY29tPjsgU2hhd24gR3VvDQo+ID4gPiA8c2hhd25ndW9Aa2VybmVs
Lm9yZz4NCj4gPiA+IENjOiBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnOw0KPiA+ID4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxp
bnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IFlpbmcgWmhhbmcNCj4gPiA+IDx5aW5nLnpoYW5n
MjI0NTVAbnhwLmNvbT4NCj4gPiA+IFN1YmplY3Q6IFJFOiBbRVhUXSBSZTogW1BBVENIXSBhcm02
NDogZHRzOiBsczEwMjhhOiBmaXggd2F0Y2hkb2cNCj4gPiA+IGRldmljZSBub2RlDQo+ID4gPg0K
PiA+ID4NCj4gPiA+DQo+ID4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiA+
IEZyb206IENodWFuaHVhIEhhbg0KPiA+ID4gPiBTZW50OiBGcmlkYXksIE1heSAxNywgMjAxOSAx
OjExIEFNDQo+ID4gPiA+IFRvOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+DQo+ID4g
PiA+IENjOiBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47IG1hcmsucnV0bGFuZEBhcm0uY29t
OyBsaW51eC1hcm0tDQo+ID4gPiA+IGtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBkZXZpY2V0
cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtDQo+ID4gPiA+IGtlcm5lbEB2Z2VyLmtlcm5lbC5v
cmc7IFlpbmcgWmhhbmcgPHlpbmcuemhhbmcyMjQ1NUBueHAuY29tPg0KPiA+ID4gPiBTdWJqZWN0
OiBSRTogW0VYVF0gUmU6IFtQQVRDSF0gYXJtNjQ6IGR0czogbHMxMDI4YTogZml4IHdhdGNoZG9n
DQo+ID4gPiA+IGRldmljZSBub2RlDQo+ID4gPiA+DQo+ID4gPiA+DQo+ID4gPiA+DQo+ID4gPiA+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4gPiBGcm9tOiBTaGF3biBHdW8g
PHNoYXduZ3VvQGtlcm5lbC5vcmc+DQo+ID4gPiA+ID4gU2VudDogMjAxOcTqNdTCMTfI1SAxMDoz
OA0KPiA+ID4gPiA+IFRvOiBDaHVhbmh1YSBIYW4gPGNodWFuaHVhLmhhbkBueHAuY29tPg0KPiA+
ID4gPiA+IENjOiBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47IG1hcmsucnV0bGFuZEBhcm0u
Y29tOw0KPiA+ID4gPiA+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4g
PiA+ID4gPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2Vy
bmVsLm9yZzsgWWluZw0KPiA+ID4gPiA+IFpoYW5nIDx5aW5nLnpoYW5nMjI0NTVAbnhwLmNvbT4N
Cj4gPiA+ID4gPiBTdWJqZWN0OiBbRVhUXSBSZTogW1BBVENIXSBhcm02NDogZHRzOiBsczEwMjhh
OiBmaXggd2F0Y2hkb2cNCj4gPiA+ID4gPiBkZXZpY2Ugbm9kZQ0KPiA+ID4gPiA+DQo+ID4gPiA+
ID4gQ2F1dGlvbjogRVhUIEVtYWlsDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBPbiBUaHUsIE1heSAw
OSwgMjAxOSBhdCAwMzowNjo1N1BNICswODAwLCBDaHVhbmh1YSBIYW4gd3JvdGU6DQo+ID4gPiA+
ID4gPiBsczEwMjhhIHBsYXRmb3JtIHVzZXMgc3A4MDUgd2F0Y2hkb2csIGFuZCB1c2UgMS8xNiBw
bGF0Zm9ybQ0KPiA+ID4gPiA+ID4gY2xvY2sgYXMgdGltZXIgY2xvY2ssIHRoaXMgcGF0Y2ggZml4
IGRldmljZSB0cmVlIG5vZGUuDQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1i
eTogWmhhbmcgWWluZy0yMjQ1NSA8eWluZy56aGFuZzIyNDU1QG54cC5jb20+DQo+ID4gPiA+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBDaHVhbmh1YSBIYW4gPGNodWFuaHVhLmhhbkBueHAuY29tPg0KPiA+
ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4gPiAgLi4uL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9m
c2wtbHMxMDI4YS5kdHNpIHwgMTkNCj4gPiA+ID4gPiA+ICsrKysrKysrKysrKy0tLS0tLS0NCj4g
PiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMo
LSkNCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaQ0KPiA+ID4gPiA+ID4gYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpDQo+ID4gPiA+ID4gPiBpbmRleCBi
MDQ1ODEyNDlmMGIuLjE1MTBiMTg1ODI0NiAxMDA2NDQNCj4gPiA+ID4gPiA+IC0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kNCj4gPiA+ID4gPiA+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kNCj4gPiA+
ID4gPiA+IEBAIC0yODUsMTMgKzI4NSwxOCBAQA0KPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAg
ICAgICAgICNpbnRlcnJ1cHQtY2VsbHMgPSA8Mj47DQo+ID4gPiA+ID4gPiAgICAgICAgICAgICAg
IH07DQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICB3ZG9nMDogd2F0Y2hk
b2dAMjNjMDAwMCB7DQo+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJs
ZSA9ICJmc2wsbHMxMDI4YS13ZHQiLA0KPiAiZnNsLGlteDIxLXdkdCI7DQo+ID4gPiA+ID4gPiAt
ICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MCAweDIzYzAwMDAgMHgwIDB4MTAwMDA+Ow0K
PiA+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA1
OQ0KPiA+ID4gSVJRX1RZUEVfTEVWRUxfSElHSD47DQo+ID4gPiA+ID4gPiAtICAgICAgICAgICAg
ICAgICAgICAgY2xvY2tzID0gPCZjbG9ja2dlbiA0IDE+Ow0KPiA+ID4gPiA+ID4gLSAgICAgICAg
ICAgICAgICAgICAgIGJpZy1lbmRpYW47DQo+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAg
ICAgc3RhdHVzID0gImRpc2FibGVkIjsNCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgY2x1c3Rl
cjFfY29yZTBfd2F0Y2hkb2c6IHdkdEBjMDAwMDAwIHsNCj4gPiA+ID4gPg0KPiA+ID4gPiA+IEtl
ZXAgJ3dhdGNoZG9nJyBhcyB0aGUgbm9kZSBuYW1lLA0KPiA+ID4gPiBUaGFua3MgZm9yIHlvdXIg
cmVwbGF5DQo+ID4gPiA+IERvIHlvdSBtZWFuIHJlcGxhY2UgdGhlIKGud2R0oa8gd2l0aCChrndh
dGNoZG9noa8/DQo+ID4gPiA+IGFuZCBrZWVwIG5vZGVzIHNvcnQgaW4gdW5pdC1hZGRyZXNzLg0K
PiA+ID4gPiBXaGF0IGRvZXMgdGhpcyBtZWFuPw0KPiA+ID4NCj4gPiA+IFRoYXQgbWVhbnMgb3Jk
ZXIgdGhlIG5vZGVzIGJ5IHRoZSBhZGRyZXNzZXMgKGUuZy4gYzAwMDAwMCwgYzAxMDAwMCkNCj4g
PiBUaGUgY3VycmVudCBvcmRlciBpcyBjb3JyZWN0o6hUaGUgZmlyc3QgaXMgYzAwMDAwMCwgdGhl
biBjMDAwMDAwo6kuDQo+IA0KPiBCdXQgdGhleSBhcmUgYWRkZWQgYWZ0ZXIgZ3Bpb0AyMzIwMDAw
IGFuZCBiZWZvcmUgc2F0YUAzMjAwMDAwLg0KSSBjaGFuZ2VkIGFuZCBtYWRlIHRoZSBzZWNvbmQg
dmVyc2lvbiBvZiB0aGUgcGF0Y2gsIGJ1dCBJIGZvdW5kIHRoZSBmb2xsb3dpbmcgZXJyb3INCndo
ZW4gSSBleGVjdXRlZCAuL3NjcmlwdHMvY2hlY2twYXRjaC5wbCB4eHgucGF0Y2ggdG8gY2hlY2sg
dGhlIHBhdGNoOg0KDQpXQVJOSU5HOiBEVCBjb21wYXRpYmxlIHN0cmluZyB2ZW5kb3IgImFybSIg
YXBwZWFycyB1bi1kb2N1bWVudGVkIC0tIGNoZWNrIC4vRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy50eHQNCiM0MzogRklMRTogYXJjaC9hcm02NC9ib290
L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaTozNTE6DQorIGNvbXBhdGlibGUgPSAiYXJt
LHNwODA1IiwgImFybSxwcmltZWNlbGwiOw0KDQpIb3dldmVyLCB0aGVyZSBpcyBubyB2ZW5kb3It
cHJlZml4ZXMudHh0IGZpbGUgaW4gdGhlIC4vRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzLyBkaXJlY3RvcnksIG9ubHkgdmVuZG9yLXByZWZpeGVzLnlhbWwuDQpNb3Jlb3ZlciwgdGhl
cmUgYXJlIKGuYXJtoa8gdmVuZG9ycyBpbiB2ZW5kb3ItcHJlZml4ZXMueWFtbC4gDQpSZXF1ZXN0
IGhlbHCjrHRoYW5rcw0KPiANCj4gPiA+DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBTaGF3bg0KPiA+
ID4gPiA+DQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJh
cm0sc3A4MDUiLCAiYXJtLHByaW1lY2VsbCI7DQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgcmVnID0gPDB4MCAweGMwMDAwMDAgMHgwIDB4MTAwMD47DQo+ID4gPiA+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9ja2dlbiA0IDE1PiwgPCZjbG9ja2dlbiA0
DQo+IDE1PjsNCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9
ICJhcGJfcGNsayIsICJ3ZG9nX2NsayI7DQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgIH07DQo+
ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgIGNsdXN0ZXIxX2NvcmUxX3dh
dGNoZG9nOiB3ZHRAYzAxMDAwMCB7DQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
Y29tcGF0aWJsZSA9ICJhcm0sc3A4MDUiLCAiYXJtLHByaW1lY2VsbCI7DQo+ID4gPiA+ID4gPiAr
ICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MCAweGMwMTAwMDAgMHgwIDB4MTAwMD47DQo+
ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9ja2dlbiA0IDE1
PiwgPCZjbG9ja2dlbiA0DQo+IDE1PjsNCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICBjbG9jay1uYW1lcyA9ICJhcGJfcGNsayIsICJ3ZG9nX2NsayI7DQo+ID4gPiA+ID4gPiAgICAg
ICAgICAgICAgIH07DQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gICAgICAgICAgICAgICBzYXRh
OiBzYXRhQDMyMDAwMDAgew0KPiA+ID4gPiA+ID4gLS0NCj4gPiA+ID4gPiA+IDIuMTcuMQ0KPiA+
ID4gPiA+ID4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
