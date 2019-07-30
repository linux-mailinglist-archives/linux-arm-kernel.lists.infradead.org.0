Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C16A07A568
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 12:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EM1vGTqkZXuQOzZsDK26xR0BdJFM6C6kBT3smGOKAFI=; b=kNln16BL0Q/maT
	TPBzkOYZZVpPzPmNaFZ6FRkYOiBAVXRaC3WCowRINNpwyaSe+v7bd89qu/vznNKeXo7iz40aEkONY
	lkyeW+roie/8Y1zbNHEg1RKgc7v0qV5sIiveGNfank6r1BPpzQqpE5A8MMYTEA31BqVaoEjskdT/j
	K9hRMDZMCk3qa1fvcMemSWJstU+koUn9iz1rCz9s35OwN8yFL0zMWKsAHAPE+jRJfMZL+BDSiCqDN
	jrTwzwI0CiCuqIo0hqAGrwL0oDYWWCWiTKkxFOnWq7EVMZzYKO5mlrntd15Ikeo8MlvDSnE5JZRRG
	9LApn+/FnpjoQ//jaDPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOyD-0007Mz-54; Tue, 30 Jul 2019 10:03:01 +0000
Received: from mail-eopbgr150052.outbound.protection.outlook.com
 ([40.107.15.52] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOy1-0007MR-1r
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 10:02:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cbHN//t56AxjfTW4upRlFlbVASd4GLX8+Z76kv+0ErK67KemBmDr7b1Dd7ctfjxY4SIhY1bKb17qPcnVxfAaRdGNoQPdqqM0USu6dUpREcAA6foEVQdUjB7mVVbj2zhGry6BOsdx8ysHzM5LwzTs2Aa+ZjXzd4WOgzRwYEG/5rbN06neg9I8vpcnJD3ycxI7wAY6JYqx8ig1chgUQWtBg04cUWWHHRaJY2fJAxCXGqh3/A0NFTOH5YemO01TmiXNdyN+ngMKHnFrkCSDnpdGHh1bu6LXTZxF2ZYI9oW3eim2XR7NizJ+W0Zw+v3R00mnzG2F89kwcUKKLbxkEEuJLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JTLcj16svmN12PC6axhQenoxHGPtvYkqcxJnn2qQ/b0=;
 b=X0BVR9Rg/fJXnBXWbt5xmy6+AZojgOFF5UbDNyTMI5a/A5eNw/+LqOx2dVzk/C413j6nLzaKvQDeU+EKnI0eDt3Y+cceD/7cEOC1jplAcnKTAw5xq7ZYu1rnDioFY/uYJI38DKwwrt7RvwbeWZ9s2jRyjJOuxYafD50ODopAoP05F2Oxu1KXKn48gwHiKnSNrd769OU3b2fLut1UYsB2vtuptdWeACdiBqvtZaaPosFAk3Kz8EzL1MYGWgcY9BfA7fddJuHl/AEwmlYEnXbqaGt1caJJNYlcFLAbnie4cIt6cr0NYWrCNxgfccbbH+6UiNGWLR2S19rhscABM8LEDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JTLcj16svmN12PC6axhQenoxHGPtvYkqcxJnn2qQ/b0=;
 b=RIJzntA93nXE8ekKrzx24F8j9sTY5LPquLI6uG8glAV3ggIRUBGu2Vq9/InPUE4WeQXzUAxVHOyeOy5KOAjMRl7aWumV7IWgD30TLtSziccVMi712yKAAbdrJ/rZvSYU254R7PzO1Vy+kUaffa1r4tsps/4vYPyNtq+yaxaap10=
Received: from VI1PR04MB4158.eurprd04.prod.outlook.com (52.133.15.33) by
 VI1PR04MB5134.eurprd04.prod.outlook.com (20.177.50.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Tue, 30 Jul 2019 10:02:44 +0000
Received: from VI1PR04MB4158.eurprd04.prod.outlook.com
 ([fe80::71e8:4224:fefb:596f]) by VI1PR04MB4158.eurprd04.prod.outlook.com
 ([fe80::71e8:4224:fefb:596f%7]) with mapi id 15.20.2094.017; Tue, 30 Jul 2019
 10:02:44 +0000
From: Yinbo Zhu <yinbo.zhu@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>, Rob Herring
 <robh+dt@kernel.org>
Subject: RE: [PATCH v3] arm64: dts: ls1028a: Add esdhc node in dts
Thread-Topic: [PATCH v3] arm64: dts: ls1028a: Add esdhc node in dts
Thread-Index: AQHVCvrdHrRlATyZO0OFUe73KN44yqbjZQxQ
Date: Tue, 30 Jul 2019 10:02:44 +0000
Message-ID: <VI1PR04MB4158BFD0D6C44BB6817E1483E9DC0@VI1PR04MB4158.eurprd04.prod.outlook.com>
References: <20190515084925.30155-1-yinbo.zhu@nxp.com>
In-Reply-To: <20190515084925.30155-1-yinbo.zhu@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yinbo.zhu@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2f23bcd8-6b34-494c-f708-08d714d5110f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5134; 
x-ms-traffictypediagnostic: VI1PR04MB5134:
x-microsoft-antispam-prvs: <VI1PR04MB5134B29DDEFF98CA449AEF6DE9DC0@VI1PR04MB5134.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0114FF88F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(366004)(396003)(136003)(189003)(199004)(13464003)(86362001)(6116002)(486006)(66066001)(14444005)(3846002)(25786009)(256004)(68736007)(52536014)(229853002)(6246003)(6436002)(44832011)(305945005)(7736002)(4326008)(5660300002)(71190400001)(446003)(74316002)(66446008)(9686003)(99286004)(14454004)(64756008)(66946007)(8676002)(81166006)(7696005)(316002)(478600001)(81156014)(8936002)(102836004)(186003)(11346002)(54906003)(26005)(66476007)(66556008)(110136005)(33656002)(71200400001)(2906002)(476003)(76116006)(53546011)(6506007)(55016002)(76176011)(53936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5134;
 H:VI1PR04MB4158.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TRTZOIEaC4uDwMlRnsZhJt0H4g0emENNzgjEQfb7WJHyFzDQr2TF35GHQ+EK53DZLrwGialCHlDkT8k6SDLVUfmzsufMFz8W1zi+xAVGfOjGhBj3KsVIhHjq6YBryesor41Pg6i/YK1dtZQ3hY7wWn8389fzas0Pk9giBwSIzGOaKsbZxajcur71BPgh7Qb5yb+mC2AzgK+GfemuTroryNW/5bNDc2pNnh4vvps2d2LvX2FLSbLWDQG9IxCFIwyq1Si274pPW5L4P8EJlvHqzwc4jedNEB2x6n+Mx63syt+Vwk3OoCT9Lzky0Bd+GbQhP7FjUuEvfhT0V7iLzinPoTzS0h2ZcBI9SC7L0msudaEANQmpDY9DPSGerNO7plp7ZLU0vTiOJ9h0GciZOotFUEweliaW11k/DgHqCPQfOk8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f23bcd8-6b34-494c-f708-08d714d5110f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2019 10:02:44.1214 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yinbo.zhu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_030249_103319_1AB3078B 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ashish Kumar <ashish.kumar@nxp.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Xiaobo Xie <xiaobo.xie@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Y.b. Lu" <yangbo.lu@nxp.com>, Jiafei Pan <jiafei.pan@nxp.com>,
 Yinbo Zhu <yinbo.zhu@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIA0KDQpJIGp1c3QgY2hlY2sgbW1jIHVwc3RyZWFtIGNvZGUsIHRoYXQgcGF0Y2ggc3RpbGwg
bm90IHVwc3RyZWFtLg0KUGxlYXNlIGhlbHAgbWVyZ2UgaXQgdG8gdXBzdHJlYW0gdHJlZS4NCg0K
VGhhbmtzDQpSZWdhcmRzLA0KWWluYm8gWmh1DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCj4gRnJvbTogWWluYm8gWmh1IFttYWlsdG86eWluYm8uemh1QG54cC5jb21dDQo+IFNlbnQ6
IDIwMTnE6jXUwjE1yNUgMTY6NDkNCj4gVG86IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9y
Zz47IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPjsgUm9iDQo+IEhlcnJpbmcgPHJvYmgrZHRA
a2VybmVsLm9yZz4NCj4gQ2M6IFlpbmJvIFpodSA8eWluYm8uemh1QG54cC5jb20+OyBYaWFvYm8g
WGllIDx4aWFvYm8ueGllQG54cC5jb20+OyBNYXJrDQo+IFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBh
cm0uY29tPjsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiBkZXZpY2V0
cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsNCj4gbGlu
dXgtbW1jQHZnZXIua2VybmVsLm9yZzsgWS5iLiBMdSA8eWFuZ2JvLmx1QG54cC5jb20+OyBKaWFm
ZWkgUGFuDQo+IDxqaWFmZWkucGFuQG54cC5jb20+OyBBc2hpc2ggS3VtYXIgPGFzaGlzaC5rdW1h
ckBueHAuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjNdIGFybTY0OiBkdHM6IGxzMTAyOGE6IEFk
ZCBlc2RoYyBub2RlIGluIGR0cw0KPiANCj4gRnJvbTogQXNoaXNoIEt1bWFyIDxBc2hpc2guS3Vt
YXJAbnhwLmNvbT4NCj4gDQo+IFRoaXMgcGF0Y2ggaXMgdG8gYWRkIGVzZGhjIG5vZGUgYW5kIGVu
YWJsZSBTRCBVSFMtSSwgZU1NQyBIUzIwMCBmb3INCj4gbHMxMDI4YXJkYi9sczEwMjhhcWRzIGJv
YXJkLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQXNoaXNoIEt1bWFyIDxBc2hpc2guS3VtYXJAbnhw
LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogWWFuZ2JvIEx1IDx5YW5nYm8ubHVAbnhwLmNvbT4NCj4g
U2lnbmVkLW9mZi1ieTogWWluYm8gWmh1IDx5aW5iby56aHVAbnhwLmNvbT4NCj4gLS0tDQo+IENo
YW5nZSBpbiB2MzoNCj4gCQlyZXBsYWNlICJlc2RoY0AiIHdpdGggIm1tY0AiDQo+IA0KPiAgYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEtcWRzLmR0cyB8ICAgIDggKysr
KysrDQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1yZGIuZHRz
IHwgICAxMyArKysrKysrKysrDQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wt
bHMxMDI4YS5kdHNpICAgIHwgICAyNw0KPiArKysrKysrKysrKysrKysrKysrKysNCj4gIDMgZmls
ZXMgY2hhbmdlZCwgNDggaW5zZXJ0aW9ucygrKSwgMCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1xZHMuZHRz
DQo+IGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEtcWRzLmR0cw0K
PiBpbmRleCAxNGM3OWY0Li4xODBlNWQyIDEwMDY0NA0KPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1xZHMuZHRzDQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXFkcy5kdHMNCj4gQEAgLTQyLDYgKzQyLDE0IEBA
DQo+ICAJc3RhdHVzID0gIm9rYXkiOw0KPiAgfTsNCj4gDQo+ICsmZXNkaGMgew0KPiArCXN0YXR1
cyA9ICJva2F5IjsNCj4gK307DQo+ICsNCj4gKyZlc2RoYzEgew0KPiArCXN0YXR1cyA9ICJva2F5
IjsNCj4gK307DQo+ICsNCj4gICZpMmMwIHsNCj4gIAlzdGF0dXMgPSAib2theSI7DQo+IA0KPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEtcmRi
LmR0cw0KPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXJkYi5k
dHMNCj4gaW5kZXggZjg2YjA1NC4uMWJmYWY0MiAxMDA2NDQNCj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEtcmRiLmR0cw0KPiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1yZGIuZHRzDQo+IEBAIC0zMCw2ICszMCwx
OSBAQA0KPiAgCX07DQo+ICB9Ow0KPiANCj4gKyZlc2RoYyB7DQo+ICsJc3RhdHVzID0gIm9rYXki
Ow0KPiArCXNkLXVocy1zZHIxMDQ7DQo+ICsJc2QtdWhzLXNkcjUwOw0KPiArCXNkLXVocy1zZHIy
NTsNCj4gKwlzZC11aHMtc2RyMTI7DQo+ICsJfTsNCj4gKw0KPiArJmVzZGhjMSB7DQo+ICsJc3Rh
dHVzID0gIm9rYXkiOw0KPiArCW1tYy1oczIwMC0xXzh2Ow0KPiArCX07DQo+ICsNCj4gICZpMmMw
IHsNCj4gIAlzdGF0dXMgPSAib2theSI7DQo+IA0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaQ0KPiBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kNCj4gaW5kZXggMjg5NmJiYy4uNDYyODMzYyAx
MDA2NDQNCj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEu
ZHRzaQ0KPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5k
dHNpDQo+IEBAIC0yNzQsNiArMjc0LDMzIEBADQo+ICAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOw0K
PiAgCQl9Ow0KPiANCj4gKwkJZXNkaGM6IG1tY0AyMTQwMDAwIHsNCj4gKwkJCWNvbXBhdGlibGUg
PSAiZnNsLGxzMTAyOGEtZXNkaGMiLCAiZnNsLGVzZGhjIjsNCj4gKwkJCXJlZyA9IDwweDAgMHgy
MTQwMDAwIDB4MCAweDEwMDAwPjsNCj4gKwkJCWludGVycnVwdHMgPSA8MCAyOCAweDQ+OyAvKiBM
ZXZlbCBoaWdoIHR5cGUgKi8NCj4gKwkJCWNsb2NrLWZyZXF1ZW5jeSA9IDwwPjsgLyogZml4ZWQg
dXAgYnkgYm9vdGxvYWRlciAqLw0KPiArCQkJY2xvY2tzID0gPCZjbG9ja2dlbiAyIDE+Ow0KPiAr
CQkJdm9sdGFnZS1yYW5nZXMgPSA8MTgwMCAxODAwIDMzMDAgMzMwMD47DQo+ICsJCQlzZGhjaSxh
dXRvLWNtZDEyOw0KPiArCQkJbGl0dGxlLWVuZGlhbjsNCj4gKwkJCWJ1cy13aWR0aCA9IDw0PjsN
Cj4gKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7DQo+ICsJCX07DQo+ICsNCj4gKwkJZXNkaGMxOiBt
bWNAMjE1MDAwMCB7DQo+ICsJCQljb21wYXRpYmxlID0gImZzbCxsczEwMjhhLWVzZGhjIiwgImZz
bCxlc2RoYyI7DQo+ICsJCQlyZWcgPSA8MHgwIDB4MjE1MDAwMCAweDAgMHgxMDAwMD47DQo+ICsJ
CQlpbnRlcnJ1cHRzID0gPDAgNjMgMHg0PjsgLyogTGV2ZWwgaGlnaCB0eXBlICovDQo+ICsJCQlj
bG9jay1mcmVxdWVuY3kgPSA8MD47IC8qIGZpeGVkIHVwIGJ5IGJvb3Rsb2FkZXIgKi8NCj4gKwkJ
CWNsb2NrcyA9IDwmY2xvY2tnZW4gMiAxPjsNCj4gKwkJCXZvbHRhZ2UtcmFuZ2VzID0gPDE4MDAg
MTgwMCAzMzAwIDMzMDA+Ow0KPiArCQkJc2RoY2ksYXV0by1jbWQxMjsNCj4gKwkJCWJyb2tlbi1j
ZDsNCj4gKwkJCWxpdHRsZS1lbmRpYW47DQo+ICsJCQlidXMtd2lkdGggPSA8ND47DQo+ICsJCQlz
dGF0dXMgPSAiZGlzYWJsZWQiOw0KPiArCQl9Ow0KPiArDQo+ICAJCXNhdGE6IHNhdGFAMzIwMDAw
MCB7DQo+ICAJCQljb21wYXRpYmxlID0gImZzbCxsczEwMjhhLWFoY2kiOw0KPiAgCQkJcmVnID0g
PDB4MCAweDMyMDAwMDAgMHgwIDB4MTAwMDA+LA0KPiAtLQ0KPiAxLjcuMQ0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
