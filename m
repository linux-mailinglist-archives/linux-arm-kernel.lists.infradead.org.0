Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D68277A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 10:07:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ke4cNIG8NE2UC+LgpD9vzm0XamqaIk64rzPXyVKeIz0=; b=Kv2RG3oyJWvv08
	msg8Z9QfOniNdq1awUkWyEoHcvOpuG26/iKMskn1DLu1P5Ji6TJFjxIavlDkHGSKy4xrG8oQo3Let
	zVeaub9zi46Qy5XYt3Ny/iiP74KGQJKDcrAwqCrOolM+k5d37t0THjXKcm7YOcFsZk2h21no6lnoZ
	KYFlUiyBkV4OneauSWVuxm9T7vEEPTelk6EK1I/1nT0SpMAmu6+8IAfThjkvvMXuonYBuVA6zAiGX
	dAVwgilc+ifwQzhJvNJ8L0CpDa0+f0edVSVgMicWsnzPHkbTQvRMXYXLrGdF+VPtdDw0h25D5NJHq
	a+uvPNpxjOnKvEUGXTQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTikd-0003mi-Bs; Thu, 23 May 2019 08:06:59 +0000
Received: from mail-db5eur03on060e.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::60e]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTikU-0003lw-R0
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 08:06:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nWaTk8MbZpmIop2guW09qvoF8guSPYmjA49+FhJk8C0=;
 b=j7ULGu3vY4YvufQl7EUVFjTzC1y14pIo6DVEcH0qwc5eIZPrqLMKq7WFzeZTeYyES7+q4w/GIKjuzPdKxMxuyWA/r9R9zDAcyy3L2QSJt9lTcPRJALTDfzDog6iQr99Lx8G9EGHnQrwf1feKh4/V7E9smyt+voRVAOvw+ZwSV1Y=
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com (10.173.255.158) by
 AM5PR04MB3185.eurprd04.prod.outlook.com (10.173.255.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Thu, 23 May 2019 08:06:43 +0000
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::15e3:bb28:7e33:1adb]) by AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::15e3:bb28:7e33:1adb%7]) with mapi id 15.20.1922.017; Thu, 23 May 2019
 08:06:42 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [EXT] Re: [PATCHv2] arm64: dts: ls1028a: add flexspi nodes
Thread-Topic: [EXT] Re: [PATCHv2] arm64: dts: ls1028a: add flexspi nodes
Thread-Index: AQHVCw6ogMFRF8ssNEKztKIHvtwUn6Z4ZSmAgAAAqwA=
Date: Thu, 23 May 2019 08:06:42 +0000
Message-ID: <AM5PR04MB32997EA37551AFC88FCBE2C6F5010@AM5PR04MB3299.eurprd04.prod.outlook.com>
References: <20190515110924.13726-1-xiaowei.bao@nxp.com>
 <20190523080049.GI9261@dragon>
In-Reply-To: <20190523080049.GI9261@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 43aa6459-d660-4dbd-d523-08d6df5597b1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR04MB3185; 
x-ms-traffictypediagnostic: AM5PR04MB3185:
x-microsoft-antispam-prvs: <AM5PR04MB318553DD68302E88F4EEB310F5010@AM5PR04MB3185.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:167;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(376002)(346002)(366004)(396003)(13464003)(189003)(199004)(44832011)(4326008)(86362001)(7696005)(316002)(99286004)(54906003)(76176011)(2906002)(186003)(478600001)(53546011)(6506007)(55016002)(476003)(26005)(3846002)(6116002)(102836004)(8936002)(6436002)(66066001)(81166006)(81156014)(8676002)(486006)(11346002)(446003)(73956011)(76116006)(229853002)(52536014)(5660300002)(53936002)(68736007)(66556008)(64756008)(6246003)(66946007)(66476007)(66446008)(256004)(74316002)(7736002)(305945005)(9686003)(33656002)(6916009)(71200400001)(71190400001)(25786009)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB3185;
 H:AM5PR04MB3299.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wVM7EXpMrt8yPD59xt0F4FUO6zo1lXmGRO9nu3FVBehM+OkLyDGiPhLlmEK8F6yMK36OzOmlTWi0rIIQW3kHQHsvWDP83KlW8yHKvIJdI7vQvvnGdACPt1lf0AvSgS3TlPQrxGt1biF/yRQpKIey5aJp7dXM52j9NToZDXowjc+iSxqLUM4o9c2VxhqZZkHfQaIS5x8JvaIwQ/H6qUpppgpOlUL49oqp30IQZcr1lbax1eYlSMcfsdYoNrsKCXUDC1cplUYcEE5FsvqB6zRazAWKpoiy4LKdiBvjq6X5Z9MayKruuJEU14iclYxpNzXH2AByoll4t0lrADMv/i/kzm7Hq5wAaWUBSf0st8oxjPcEFg216jvzY7NTYn9Ixdr+e9bNc/ZQuD8dCSOiFBJxF0ZX3WVSHtwFCke5eoXH0Co=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43aa6459-d660-4dbd-d523-08d6df5597b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 08:06:42.8512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3185
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_010650_882535_4D935E29 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:60e listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2hhd24sDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBTaGF3biBHdW8g
PHNoYXduZ3VvQGtlcm5lbC5vcmc+IA0KU2VudDogMjAxOcTqNdTCMjPI1SAxNjowMQ0KVG86IFhp
YW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPg0KQ2M6IExlbyBMaSA8bGVveWFuZy5saUBu
eHAuY29tPjsgcm9iaCtkdEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9y
ZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KU3ViamVjdDogW0VYVF0gUmU6IFtQQVRD
SHYyXSBhcm02NDogZHRzOiBsczEwMjhhOiBhZGQgZmxleHNwaSBub2Rlcw0KDQpDYXV0aW9uOiBF
WFQgRW1haWwNCg0KT24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMTE6MDk6MjVBTSArMDAwMCwgWGlh
b3dlaSBCYW8gd3JvdGU6DQo+IEZyb206IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29t
Pg0KPg0KPiBBZGQgZnNwaSBub2RlIHByb3BlcnR5IGZvciBMUzEwMjhBIFNvQyBmb3IgRmxleFNQ
SSBkcml2ZXIuDQo+IFByb3BlcnR5IGFkZGVkIGZvciB0aGUgRmxleFNQSSBjb250cm9sbGVyIGFu
ZCBmb3IgdGhlIGNvbm5lY3RlZCBzbGF2ZSANCj4gZGV2aWNlIGZvciB0aGUgTFMxMDI4QVJEQiBh
bmQgTFMxMDI4QVFEUyB0YXJnZXQuDQo+IFRoaXMgaXMgaGF2aW5nIG9uZSBTUEktTk9SIGZsYXNo
IGRldmljZSwgbXQzNXh1MDJnIGNvbm5lY3RlZCBhdCBDUzAuDQo+DQo+IFNpZ25lZC1vZmYtYnk6
IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPg0KPiAtLS0NCj4gdjI6DQo+ICAtIG1v
ZGlmeSB0aGUgY29tbWl0IG1lc3NhZ2UgYW5kIHRoZSBkdHMgZm9ybWF0Lg0KPg0KPiAgYXJjaC9h
cm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEtcWRzLmR0cyB8ICAgMTUgKysrKysr
KysrKysrKysrDQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1y
ZGIuZHRzIHwgICAxNSArKysrKysrKysrKysrKysNCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kgICAgfCAgIDEyICsrKysrKysrKysrKw0KPiAgMyBmaWxl
cyBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCAwIGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEtcWRzLmR0cyAN
Cj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1xZHMuZHRzDQo+
IGluZGV4IDViY2Q0OTEuLjZlMTI4MDYgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXFkcy5kdHMNCj4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEtcWRzLmR0cw0KPiBAQCAtMTU4LDYgKzE1OCwyMSBA
QA0KPiAgICAgICB9Ow0KPiAgfTsNCj4NCj4gKyZmc3BpIHsNCg0KS2VlcCB0aGUgbGFiZWxpbmcg
bm9kZSBzb3J0IGFscGhhYmV0aWNhbGx5LiAgVGhhdCBzYWlkLCAmZnNwaSBzaG91bGQgYmUgYWRk
ZWQgYmVmb3JlICZpMmMwLg0KDQo+ICsgICAgIHN0YXR1cyA9ICJva2F5IjsNCg0KUGxlYXNlIGhh
dmUgbmV3bGluZSBiZXR3ZWVuIHByb3BlcnR5IGFuZCBjaGlsZCBub2RlLg0KDQo+ICsgICAgIG10
MzV4dTAyZzogZmxhc2hAMCB7DQo+ICsgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47
DQo+ICsgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MT47DQo+ICsgICAgICAgICAgICAgY29t
cGF0aWJsZSA9ICJzcGFuc2lvbixtMjVwODAiOw0KDQpQbGVhc2Ugc3RhcnQgcHJvcGVydGllcyB3
aXRoIGNvbXBhdGlibGUuDQpbWGlhb3dlaSBCYW9dIEkgaGF2ZSBzdWJtaXQgdGhlIHYzIHBhdGNo
IHRvIGZpeCB0aGlzIGlzc3VlLg0KDQo+ICsgICAgICAgICAgICAgbTI1cCxmYXN0LXJlYWQ7DQo+
ICsgICAgICAgICAgICAgc3BpLW1heC1mcmVxdWVuY3kgPSA8MjAwMDAwMDA+Ow0KPiArICAgICAg
ICAgICAgIHJlZyA9IDwwPjsNCj4gKyAgICAgICAgICAgICAvKiBUaGUgZm9sbG93aW5nIHNldHRp
bmcgZW5hYmxlcyAxLTEtOCAoQ01ELUFERFItREFUQSkgbW9kZSAqLw0KPiArICAgICAgICAgICAg
IHNwaS1yeC1idXMtd2lkdGggPSA8OD47IC8qIDggU1BJIFJ4IGxpbmVzICovDQo+ICsgICAgICAg
ICAgICAgc3BpLXR4LWJ1cy13aWR0aCA9IDwxPjsgLyogMSBTUEkgVHggbGluZSAqLw0KPiArICAg
ICB9Ow0KPiArfTsNCj4gKw0KPiAgJnNhaTEgew0KPiAgICAgICBzdGF0dXMgPSAib2theSI7DQo+
ICB9Ow0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxz
MTAyOGEtcmRiLmR0cyANCj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMx
MDI4YS1yZGIuZHRzDQo+IGluZGV4IDI1ZDIzNzAuLjVkMzk2MTYgMTAwNjQ0DQo+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXJkYi5kdHMNCj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEtcmRiLmR0cw0KPiBAQCAt
MTM2LDYgKzEzNiwyMSBAQA0KPiAgICAgICB9Ow0KPiAgfTsNCj4NCj4gKyZmc3BpIHsNCj4gKyAg
ICAgc3RhdHVzID0gIm9rYXkiOw0KPiArICAgICBtdDM1eHUwMmc6IGZsYXNoQDAgew0KPiArICAg
ICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KPiArICAgICAgICAgICAgICNzaXplLWNl
bGxzID0gPDE+Ow0KPiArICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAic3BhbnNpb24sbTI1cDgw
IjsNCj4gKyAgICAgICAgICAgICBtMjVwLGZhc3QtcmVhZDsNCj4gKyAgICAgICAgICAgICBzcGkt
bWF4LWZyZXF1ZW5jeSA9IDwyMDAwMDAwMD47DQo+ICsgICAgICAgICAgICAgcmVnID0gPDA+Ow0K
PiArICAgICAgICAgICAgIC8qIFRoZSBmb2xsb3dpbmcgc2V0dGluZyBlbmFibGVzIDEtMS04IChD
TUQtQUREUi1EQVRBKSBtb2RlICovDQo+ICsgICAgICAgICAgICAgc3BpLXJ4LWJ1cy13aWR0aCA9
IDw4PjsgLyogOCBTUEkgUnggbGluZXMgKi8NCj4gKyAgICAgICAgICAgICBzcGktdHgtYnVzLXdp
ZHRoID0gPDE+OyAvKiAxIFNQSSBUeCBsaW5lICovDQo+ICsgICAgIH07DQo+ICt9Ow0KPiArDQo+
ICAmZHVhcnQwIHsNCj4gICAgICAgc3RhdHVzID0gIm9rYXkiOw0KPiAgfTsNCj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kgDQo+IGIv
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaQ0KPiBpbmRleCBi
YTcxYTMzLi5hMjdjZDYwIDEwMDY0NA0KPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9mc2wtbHMxMDI4YS5kdHNpDQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2ZzbC1sczEwMjhhLmR0c2kNCj4gQEAgLTEwOSw2ICsxMDksMTggQEANCj4gICAgICAgICAg
ICAgICB9Ow0KPiAgICAgICB9Ow0KPg0KPiArICAgICBmc3BpOiBzcGlAMjBjMDAwMCB7DQoNCkFy
ZSB5b3Ugc3VyZSB5b3Ugd2FudCB0byBhZGQgdGhpcyBkZXZpY2Ugbm9kZSBvdXRzaWRlIG9mICdz
b2MnIG5vZGU/DQoNCj4gKyAgICAgICAgICAgICBjb21wYXRpYmxlID0gIm54cCxseDIxNjBhLWZz
cGkiLCAic2ltcGxlLWJ1cyI7DQo+ICsgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47
DQo+ICsgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47DQo+ICsgICAgICAgICAgICAgcmVn
ID0gPDB4MCAweDIwYzAwMDAgMHgwIDB4MTAwMDA+LA0KPiArICAgICAgICAgICAgICAgICA8MHgw
IDB4MjAwMDAwMDAgMHgwIDB4MTAwMDAwMDA+Ow0KDQpGaXggdGhlIGluZGVudGF0aW9uIHRvIGdp
dCBpdCBhbGlnbmVkIHdpdGggYWJvdmUgJzwnLg0KW1hpYW93ZWkgQmFvXSB0aGlzIGlzIGFsaWdu
ZWQsIEkgZG9uJ3Qga25vdyB3aHkgaXQgaXMgbm90IGFsaWduZWQgaW4gZW1haWwuIFRoYW5rcy4N
Cg0KPiArICAgICAgICAgICAgIHJlZy1uYW1lcyA9ICJGU1BJIiwgIkZTUEktbWVtb3J5IjsNCj4g
KyAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPDAgMjUgMHg0PjsgLyogTGV2ZWwgaGlnaCB0eXBl
ICovDQoNCmludGVycnVwdHMgPSA8R0lDX1NQSSAyNSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsNCg0K
U2hhd24NCg0KPiArICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2xvY2tnZW4gNCAzPiwgPCZjbG9j
a2dlbiA0IDM+Ow0KPiArICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImZzcGlfZW4iLCAiZnNw
aSI7DQo+ICsgICAgIH07DQo+ICsNCj4gICAgICAgc29jOiBzb2Mgew0KPiAgICAgICAgICAgICAg
IGNvbXBhdGlibGUgPSAic2ltcGxlLWJ1cyI7DQo+ICAgICAgICAgICAgICAgI2FkZHJlc3MtY2Vs
bHMgPSA8Mj47DQo+IC0tDQo+IDEuNy4xDQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
