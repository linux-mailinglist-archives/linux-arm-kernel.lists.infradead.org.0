Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A60DF25E4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 08:50:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7HPPxs8JMIs1WbfNCocsJh+j3nQftAsNb29HeDO4/9c=; b=EMrXECSCI4Xh8Q
	ahksqYtexBWxAHmytXTPVTAoGwygFKrK3vREKYq8YNMklaSGLaST9X1PnB9SGNfAjOh100PufkCZd
	PTBqIcE0GXBWt4SO2d4fcxciyBYQLTTtOLG/Bs0HrrAZ1//qbjPUwfxAMNZ7KWyKrqnB2tABpvk4C
	Iteio9bHWczy0PcXziEMv3TR/rJuyTYukSy4nxCNOkZH/i228GPDDhIhOcvoLD8JpwlP/EZF9Dq69
	1gdcUl22srFIyxCnwHrwW7/dtsKioN9zHpXJJILJ6pdZcIAutXYurlUualpwPXmsV15lt9aPKR6e2
	Rreq9Hb5uQUs126e8itQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTL4x-0002rH-Ep; Wed, 22 May 2019 06:50:23 +0000
Received: from mail-eopbgr10079.outbound.protection.outlook.com ([40.107.1.79]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTL4p-0002qe-FO
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 06:50:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iICz36GaGxIZ80QI8DIEGWCXWs0uFOywwiZIP9Tsbkk=;
 b=c/wOHEtgRHfI78/qrEVHmfBtJGzym2+FdE9C8pt7xET5N0ZtKQ9D/ot65UjfeyghyxVWfSXG+ArrHcB2putKWi0FuM/oWhiDQHRSX4nvEMFajnQ6kupI7TFd0U+ocT9WigD7nm/3A7pQI+TQ0c2Wg/XLeyj8xlGn29eArn+/+kk=
Received: from AM6PR04MB5863.eurprd04.prod.outlook.com (20.179.1.11) by
 AM6PR04MB5093.eurprd04.prod.outlook.com (20.177.33.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Wed, 22 May 2019 06:50:11 +0000
Received: from AM6PR04MB5863.eurprd04.prod.outlook.com
 ([fe80::29f1:bb22:4881:3cbd]) by AM6PR04MB5863.eurprd04.prod.outlook.com
 ([fe80::29f1:bb22:4881:3cbd%4]) with mapi id 15.20.1900.020; Wed, 22 May 2019
 06:50:11 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Chuanhua Han <chuanhua.han@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Rob
 Herring <robh@kernel.org>
Subject: RE: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix watchdog device node
Thread-Topic: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix watchdog device node
Thread-Index: AQHVBjWLXx4zf+tY20C9RmzfaaLbEqZupocAgAA7pYCAAQj3MIAFssaAgAB4RGCAAKvwgIAABnYw
Date: Wed, 22 May 2019 06:50:11 +0000
Message-ID: <AM6PR04MB5863FA1CE6D1E40F11B2E5008F000@AM6PR04MB5863.eurprd04.prod.outlook.com>
References: <20190509070657.18281-1-chuanhua.han@nxp.com>
 <20190517023728.GA15856@dragon>
 <AM6PR04MB4357C78FCEBA1B00AA42ED2E970B0@AM6PR04MB4357.eurprd04.prod.outlook.com>
 <AM6PR04MB586341334E62A663EE5E8BD18F0B0@AM6PR04MB5863.eurprd04.prod.outlook.com>
 <AM6PR04MB435758E1498B6A2BE0C0ACE397070@AM6PR04MB4357.eurprd04.prod.outlook.com>
 <AM6PR04MB58631458E6D851E4D83A77ED8F070@AM6PR04MB5863.eurprd04.prod.outlook.com>
 <AM6PR04MB435708872A4DBA92561C772597000@AM6PR04MB4357.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB435708872A4DBA92561C772597000@AM6PR04MB4357.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d882d92f-7a01-4832-519c-08d6de81bcaf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB5093; 
x-ms-traffictypediagnostic: AM6PR04MB5093:
x-microsoft-antispam-prvs: <AM6PR04MB5093F26D5F00A8BEDF635D448F000@AM6PR04MB5093.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(13464003)(199004)(189003)(446003)(25786009)(11346002)(8936002)(486006)(305945005)(81166006)(7736002)(26005)(476003)(81156014)(186003)(2906002)(4326008)(8676002)(53936002)(6246003)(6116002)(3846002)(68736007)(66066001)(74316002)(498600001)(5660300002)(7696005)(14444005)(256004)(52536014)(64756008)(73956011)(86362001)(76116006)(6436002)(66946007)(229853002)(66476007)(66556008)(66446008)(33656002)(76176011)(14454004)(99286004)(9686003)(54906003)(102836004)(110136005)(53546011)(6506007)(71200400001)(55016002)(71190400001)(21314003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5093;
 H:AM6PR04MB5863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GqBOmu+swPZ9PpYvYCtnA5M4aKIXrt107nVNOHvEh5iAzDAmK1n37sco0e4dETUC1cgV0A5gU03bd0go+d9579xQ8y08DEhni4yauTx42a7HGerRG/NScglarSOPYPAElrKyxa8dAeG65rTe/b5/T8iqcRFsB4PzIh9t7w+98yomCDVLT92ttbpLCs3V9ycy3td+tYzkS8IQFtqDlPpv6N5cVYwPDbnPq0e5FNIfELgzpj/RRyp9JGA3dgs7PjD2Lf1uHZ7F7mVI/j3NA22BVOCuOAa7c9vnCRekQ18ixlYPF6tbopUeO4U4e/FmayPm+k7w2qV7jqkspMeDXw6N28O5QyJi6TM6vGXJE5Kxjwz/VtEIAAMArljv2/pAegyPYRlxonqdP6NFVAke3S0hzCTqNLbdxVp0u/VadnnhmJg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d882d92f-7a01-4832-519c-08d6de81bcaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 06:50:11.6138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_235015_522996_49123158 
X-CRM114-Status: GOOD (  24.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQ2h1YW5odWEgSGFuDQo+
IFNlbnQ6IFdlZG5lc2RheSwgTWF5IDIyLCAyMDE5IDE6MjYgQU0NCj4gVG86IExlbyBMaSA8bGVv
eWFuZy5saUBueHAuY29tPjsgU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPg0KPiBDYzog
bWFyay5ydXRsYW5kQGFybS5jb207IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZzsNCj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5l
bC5vcmc7IFlpbmcgWmhhbmcNCj4gPHlpbmcuemhhbmcyMjQ1NUBueHAuY29tPg0KPiBTdWJqZWN0
OiBSRTogW0VYVF0gUmU6IFtQQVRDSF0gYXJtNjQ6IGR0czogbHMxMDI4YTogZml4IHdhdGNoZG9n
IGRldmljZSBub2RlDQo+IA0KPiANCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj4gPiBGcm9tOiBMZW8gTGkNCj4gPiBTZW50OiAyMDE5xOo11MIyMsjVIDQ6MTUNCj4gPiBUbzog
Q2h1YW5odWEgSGFuIDxjaHVhbmh1YS5oYW5AbnhwLmNvbT47IFNoYXduIEd1bw0KPiA+IDxzaGF3
bmd1b0BrZXJuZWwub3JnPg0KPiA+IENjOiBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiA+IGRldmljZXRyZWVAdmdlci5rZXJuZWwu
b3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBZaW5nIFpoYW5nDQo+ID4gPHlpbmcu
emhhbmcyMjQ1NUBueHAuY29tPg0KPiA+IFN1YmplY3Q6IFJFOiBbRVhUXSBSZTogW1BBVENIXSBh
cm02NDogZHRzOiBsczEwMjhhOiBmaXggd2F0Y2hkb2cNCj4gPiBkZXZpY2Ugbm9kZQ0KPiA+DQo+
ID4NCj4gPg0KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IENo
dWFuaHVhIEhhbg0KPiA+ID4gU2VudDogVHVlc2RheSwgTWF5IDIxLCAyMDE5IDg6MDAgQU0NCj4g
PiA+IFRvOiBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47IFNoYXduIEd1byA8c2hhd25ndW9A
a2VybmVsLm9yZz4NCj4gPiA+IENjOiBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiA+ID4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5v
cmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IFlpbmcgWmhhbmcNCj4gPiA+IDx5aW5n
LnpoYW5nMjI0NTVAbnhwLmNvbT4NCj4gPiA+IFN1YmplY3Q6IFJFOiBbRVhUXSBSZTogW1BBVENI
XSBhcm02NDogZHRzOiBsczEwMjhhOiBmaXggd2F0Y2hkb2cNCj4gPiA+IGRldmljZSBub2RlDQo+
ID4gPg0KPiA+ID4NCj4gPiA+DQo+ID4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
ID4gPiA+IEZyb206IExlbyBMaQ0KPiA+ID4gPiBTZW50OiAyMDE5xOo11MIxOMjVIDY6MDENCj4g
PiA+ID4gVG86IENodWFuaHVhIEhhbiA8Y2h1YW5odWEuaGFuQG54cC5jb20+OyBTaGF3biBHdW8N
Cj4gPiA+ID4gPHNoYXduZ3VvQGtlcm5lbC5vcmc+DQo+ID4gPiA+IENjOiBtYXJrLnJ1dGxhbmRA
YXJtLmNvbTsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiA+ID4gPiBk
ZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsg
WWluZw0KPiA+ID4gPiBaaGFuZyA8eWluZy56aGFuZzIyNDU1QG54cC5jb20+DQo+ID4gPiA+IFN1
YmplY3Q6IFJFOiBbRVhUXSBSZTogW1BBVENIXSBhcm02NDogZHRzOiBsczEwMjhhOiBmaXggd2F0
Y2hkb2cNCj4gPiA+ID4gZGV2aWNlIG5vZGUNCj4gPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4NCj4g
PiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gPiA+IEZyb206IENodWFu
aHVhIEhhbg0KPiA+ID4gPiA+IFNlbnQ6IEZyaWRheSwgTWF5IDE3LCAyMDE5IDE6MTEgQU0NCj4g
PiA+ID4gPiBUbzogU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPg0KPiA+ID4gPiA+IENj
OiBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47IG1hcmsucnV0bGFuZEBhcm0uY29tOw0KPiA+
ID4gPiA+IGxpbnV4LWFybS0ga2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+ID4gPiA+ID4g
ZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LSBrZXJuZWxAdmdlci5rZXJuZWwub3Jn
OyBZaW5nDQo+ID4gPiA+ID4gWmhhbmcgPHlpbmcuemhhbmcyMjQ1NUBueHAuY29tPg0KPiA+ID4g
PiA+IFN1YmplY3Q6IFJFOiBbRVhUXSBSZTogW1BBVENIXSBhcm02NDogZHRzOiBsczEwMjhhOiBm
aXggd2F0Y2hkb2cNCj4gPiA+ID4gPiBkZXZpY2Ugbm9kZQ0KPiA+ID4gPiA+DQo+ID4gPiA+ID4N
Cj4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+
ID4gPiA+IEZyb206IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4NCj4gPiA+ID4gPiA+
IFNlbnQ6IDIwMTnE6jXUwjE3yNUgMTA6MzgNCj4gPiA+ID4gPiA+IFRvOiBDaHVhbmh1YSBIYW4g
PGNodWFuaHVhLmhhbkBueHAuY29tPg0KPiA+ID4gPiA+ID4gQ2M6IExlbyBMaSA8bGVveWFuZy5s
aUBueHAuY29tPjsgbWFyay5ydXRsYW5kQGFybS5jb207DQo+ID4gPiA+ID4gPiBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+ID4gPiA+ID4gPiBkZXZpY2V0cmVlQHZnZXIu
a2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgWWluZw0KPiA+ID4gPiA+
ID4gWmhhbmcgPHlpbmcuemhhbmcyMjQ1NUBueHAuY29tPg0KPiA+ID4gPiA+ID4gU3ViamVjdDog
W0VYVF0gUmU6IFtQQVRDSF0gYXJtNjQ6IGR0czogbHMxMDI4YTogZml4IHdhdGNoZG9nDQo+ID4g
PiA+ID4gPiBkZXZpY2Ugbm9kZQ0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IENhdXRpb246IEVY
VCBFbWFpbA0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IE9uIFRodSwgTWF5IDA5LCAyMDE5IGF0
IDAzOjA2OjU3UE0gKzA4MDAsIENodWFuaHVhIEhhbiB3cm90ZToNCj4gPiA+ID4gPiA+ID4gbHMx
MDI4YSBwbGF0Zm9ybSB1c2VzIHNwODA1IHdhdGNoZG9nLCBhbmQgdXNlIDEvMTYgcGxhdGZvcm0N
Cj4gPiA+ID4gPiA+ID4gY2xvY2sgYXMgdGltZXIgY2xvY2ssIHRoaXMgcGF0Y2ggZml4IGRldmlj
ZSB0cmVlIG5vZGUuDQo+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6
IFpoYW5nIFlpbmctMjI0NTUgPHlpbmcuemhhbmcyMjQ1NUBueHAuY29tPg0KPiA+ID4gPiA+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBDaHVhbmh1YSBIYW4gPGNodWFuaHVhLmhhbkBueHAuY29tPg0KPiA+
ID4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiA+ID4gIC4uLi9hcm02NC9ib290L2R0cy9mcmVlc2Nh
bGUvZnNsLWxzMTAyOGEuZHRzaSB8IDE5DQo+ID4gPiA+ID4gPiA+ICsrKysrKysrKysrKy0tLS0t
LS0NCj4gPiA+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQ0KPiA+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaQ0KPiA+ID4gPiA+ID4g
PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kNCj4gPiA+
ID4gPiA+ID4gaW5kZXggYjA0NTgxMjQ5ZjBiLi4xNTEwYjE4NTgyNDYgMTAwNjQ0DQo+ID4gPiA+
ID4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0
c2kNCj4gPiA+ID4gPiA+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNs
LWxzMTAyOGEuZHRzaQ0KPiA+ID4gPiA+ID4gPiBAQCAtMjg1LDEzICsyODUsMTggQEANCj4gPiA+
ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICNpbnRlcnJ1cHQtY2VsbHMgPSA8Mj47DQo+
ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgfTsNCj4gPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+
ID4gLSAgICAgICAgICAgICB3ZG9nMDogd2F0Y2hkb2dAMjNjMDAwMCB7DQo+ID4gPiA+ID4gPiA+
IC0gICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImZzbCxsczEwMjhhLXdkdCIsDQo+
ID4gImZzbCxpbXgyMS13ZHQiOw0KPiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAg
cmVnID0gPDB4MCAweDIzYzAwMDAgMHgwIDB4MTAwMDA+Ow0KPiA+ID4gPiA+ID4gPiAtICAgICAg
ICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDU5DQo+ID4gPiA+IElSUV9UWVBF
X0xFVkVMX0hJR0g+Ow0KPiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgY2xvY2tz
ID0gPCZjbG9ja2dlbiA0IDE+Ow0KPiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAg
YmlnLWVuZGlhbjsNCj4gPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9
ICJkaXNhYmxlZCI7DQo+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgY2x1c3RlcjFfY29yZTBf
d2F0Y2hkb2c6IHdkdEBjMDAwMDAwIHsNCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBLZWVwICd3
YXRjaGRvZycgYXMgdGhlIG5vZGUgbmFtZSwNCj4gPiA+ID4gPiBUaGFua3MgZm9yIHlvdXIgcmVw
bGF5DQo+ID4gPiA+ID4gRG8geW91IG1lYW4gcmVwbGFjZSB0aGUgoa53ZHShryB3aXRoIKGud2F0
Y2hkb2ehrz8NCj4gPiA+ID4gPiBhbmQga2VlcCBub2RlcyBzb3J0IGluIHVuaXQtYWRkcmVzcy4N
Cj4gPiA+ID4gPiBXaGF0IGRvZXMgdGhpcyBtZWFuPw0KPiA+ID4gPg0KPiA+ID4gPiBUaGF0IG1l
YW5zIG9yZGVyIHRoZSBub2RlcyBieSB0aGUgYWRkcmVzc2VzIChlLmcuIGMwMDAwMDAsDQo+ID4g
PiA+IGMwMTAwMDApDQo+ID4gPiBUaGUgY3VycmVudCBvcmRlciBpcyBjb3JyZWN0o6hUaGUgZmly
c3QgaXMgYzAwMDAwMCwgdGhlbiBjMDAwMDAwo6kuDQo+ID4NCj4gPiBCdXQgdGhleSBhcmUgYWRk
ZWQgYWZ0ZXIgZ3Bpb0AyMzIwMDAwIGFuZCBiZWZvcmUgc2F0YUAzMjAwMDAwLg0KPiBJIGNoYW5n
ZWQgYW5kIG1hZGUgdGhlIHNlY29uZCB2ZXJzaW9uIG9mIHRoZSBwYXRjaCwgYnV0IEkgZm91bmQg
dGhlDQo+IGZvbGxvd2luZyBlcnJvciB3aGVuIEkgZXhlY3V0ZWQgLi9zY3JpcHRzL2NoZWNrcGF0
Y2gucGwgeHh4LnBhdGNoIHRvIGNoZWNrDQo+IHRoZSBwYXRjaDoNCj4gDQo+IFdBUk5JTkc6IERU
IGNvbXBhdGlibGUgc3RyaW5nIHZlbmRvciAiYXJtIiBhcHBlYXJzIHVuLWRvY3VtZW50ZWQgLS0N
Cj4gY2hlY2sgLi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZp
eGVzLnR4dA0KPiAjNDM6IEZJTEU6IGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1s
czEwMjhhLmR0c2k6MzUxOg0KPiArIGNvbXBhdGlibGUgPSAiYXJtLHNwODA1IiwgImFybSxwcmlt
ZWNlbGwiOw0KPiANCj4gSG93ZXZlciwgdGhlcmUgaXMgbm8gdmVuZG9yLXByZWZpeGVzLnR4dCBm
aWxlIGluDQo+IHRoZSAuL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy8gZGlyZWN0
b3J5LCBvbmx5IHZlbmRvci0NCj4gcHJlZml4ZXMueWFtbC4NCj4gTW9yZW92ZXIsIHRoZXJlIGFy
ZSChrmFybaGvIHZlbmRvcnMgaW4gdmVuZG9yLXByZWZpeGVzLnlhbWwuDQoNCkFkZGVkIFJvYiBI
ZXJyaW5nIHRvIHRoZSB0aHJlYWQuDQoNCj4gUmVxdWVzdCBoZWxwo6x0aGFua3MNCj4gPg0KPiA+
ID4gPg0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IFNoYXduDQo+ID4gPiA+ID4gPg0KPiA+ID4g
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhcm0sc3A4MDUiLCAi
YXJtLHByaW1lY2VsbCI7DQo+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICByZWcg
PSA8MHgwIDB4YzAwMDAwMCAweDAgMHgxMDAwPjsNCj4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgIGNsb2NrcyA9IDwmY2xvY2tnZW4gNCAxNT4sIDwmY2xvY2tnZW4NCj4gPiA+ID4g
PiA+ID4gKyA0DQo+ID4gMTU+Ow0KPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
Y2xvY2stbmFtZXMgPSAiYXBiX3BjbGsiLCAid2RvZ19jbGsiOw0KPiA+ID4gPiA+ID4gPiArICAg
ICAgICAgICAgIH07DQo+ID4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAg
ICBjbHVzdGVyMV9jb3JlMV93YXRjaGRvZzogd2R0QGMwMTAwMDAgew0KPiA+ID4gPiA+ID4gPiAr
ICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhcm0sc3A4MDUiLCAiYXJtLHByaW1l
Y2VsbCI7DQo+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgwIDB4
YzAxMDAwMCAweDAgMHgxMDAwPjsNCj4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
IGNsb2NrcyA9IDwmY2xvY2tnZW4gNCAxNT4sIDwmY2xvY2tnZW4NCj4gPiA+ID4gPiA+ID4gKyA0
DQo+ID4gMTU+Ow0KPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFt
ZXMgPSAiYXBiX3BjbGsiLCAid2RvZ19jbGsiOw0KPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAg
IH07DQo+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgc2F0YTogc2F0
YUAzMjAwMDAwIHsNCj4gPiA+ID4gPiA+ID4gLS0NCj4gPiA+ID4gPiA+ID4gMi4xNy4xDQo+ID4g
PiA+ID4gPiA+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
