Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B17CBD5C9C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DljbsThbl3SPh/yezP0FDyy5VL8jKRvUd80Uc3MDMIk=; b=ZlbwAR8YYkiFsC
	3SUO2QuCv2AptXEMxQtAe2uyLb9yIS5o++TilkQ+TufcTWS/hHN5h+II8f27VrbFnQDqJWONB4M4Z
	YGkJlPSN8U6/M0SROZS81TsVakKW/Er6bklFTf9jZqdnHBc7jLqqiln24gsA30ipIL1ZGsikYkNkB
	VWH6BUryNOPkPBvoPpiW4/kPA3w3FlM0rX4bYD0l05V4JguZiFyuHDi9pRQUerPBamFnIuAzM7D0w
	ZyG/KoVejtZPneYNVJASt9GGo2SExfBQ6CPRq6q+3jmyCgEImIktGnOLfcPE91tIFoPcmlod4al19
	g7VjpC0+ZiSL9lUh+cQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJv5T-0004S8-IS; Mon, 14 Oct 2019 07:48:15 +0000
Received: from mail-eopbgr140048.outbound.protection.outlook.com
 ([40.107.14.48] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJv5J-0004RV-EN
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 07:48:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T61KybHtlLKej+xBg85SWFxUsgZC90D1m6MQ7AjMfiCvGkZpOOSEA3pFWlcX86WVWqIeNT0fmwddgtoz5hCJ/N+6bs+aU4M1MXEx0FiFBnIkkF3pgzgyTzgGgCHOAPgxJo1DXKbofEUrKFZB3vu3qI1AjN0N8o3G4g3207TmEFHkZoJmBob2ofaEoOSk3KTAfKmWBj0baYmn+9seP45BsYLap+mlGvF5NR/LXVyxDVviFT9max41POy92ivn9DcekXbS0DCPyirJTb/mjTSjLLNuyLeoJqIbCprTrc9qkPzERMWqjBIJptP7kAMVlcAaUpj9VLLFyEv7C9UvlLIFuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yWzzJaED7zvSJA0HMi1cdUjTlUZ466E0LY8fFM+H/sY=;
 b=SzBh0ko51qyyOtb8wTuRg8Mkm/hYmtHejyJQFlxOKbfqkOi3Fb4Zs2XCaHiPLW20vR/uVKoEYNUJtMeIdfnEy/IlQf3ImDpbRsTX+tW+7PUxGRNoeclaEuzBpJG+9jlGBGVapZim4FNNf/wQT9/IpX6lBkoEx8XjyGQSCa5r1sa4U0O1rMtbvW2VSy3IWjqfof0HJ1PsyZnkkUzkX2pEDeQSphWpNJKr1pnpK9bzil+bzJvDQc4b/ZQuqmHOqbQscvlqs4PWLmt2Awhcc5dHnr2X2USK1JA7ibM+4Md32oGTCVWs92NaQrdUPSDw2BnI3wmP2rlK0EapWLmigffW1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yWzzJaED7zvSJA0HMi1cdUjTlUZ466E0LY8fFM+H/sY=;
 b=ClIKeqr7tWtEgUVdogxlRKFUlXrWpExQUzRcO0DDzSVbVewcowAVG79FrhjLJJx/GOdIfoHFjLtlGSHvkYWUGU/Tb3tHQ2WcCa75eaDQizVGy5vZAWxgo9qADDPgUHumFeJ+QzcH2tirB0wjEvpX8l17znmaWaAml+4m7WUJ3l0=
Received: from VI1PR04MB4158.eurprd04.prod.outlook.com (52.133.13.28) by
 VI1PR04MB5072.eurprd04.prod.outlook.com (20.177.50.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Mon, 14 Oct 2019 07:47:59 +0000
Received: from VI1PR04MB4158.eurprd04.prod.outlook.com
 ([fe80::dda8:5c80:4c09:4ff1]) by VI1PR04MB4158.eurprd04.prod.outlook.com
 ([fe80::dda8:5c80:4c09:4ff1%6]) with mapi id 15.20.2347.021; Mon, 14 Oct 2019
 07:47:59 +0000
From: Yinbo Zhu <yinbo.zhu@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [EXT] Re: [PATCH v2] usb: dwc3: enable otg mode for dwc3 usb ip
 on layerscape
Thread-Topic: [EXT] Re: [PATCH v2] usb: dwc3: enable otg mode for dwc3 usb ip
 on layerscape
Thread-Index: AQHVcogKKVIHkmsOA0qi72Us7K9FWKdZ0r8AgAANA1A=
Date: Mon, 14 Oct 2019 07:47:58 +0000
Message-ID: <VI1PR04MB41582B7ADE5D8786DE937CA5E9900@VI1PR04MB4158.eurprd04.prod.outlook.com>
References: <20190924032903.32775-1-yinbo.zhu@nxp.com>
 <20191014065210.GE12262@dragon>
In-Reply-To: <20191014065210.GE12262@dragon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yinbo.zhu@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ae74887c-2a58-46c9-edea-08d7507ad540
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR04MB5072:|VI1PR04MB5072:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5072B963DC371FE013A6B386E9900@VI1PR04MB5072.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01901B3451
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(39860400002)(366004)(396003)(189003)(199004)(13464003)(446003)(6916009)(256004)(14444005)(11346002)(7736002)(74316002)(486006)(476003)(3846002)(305945005)(6116002)(2906002)(55016002)(229853002)(44832011)(6436002)(9686003)(6246003)(4326008)(66946007)(66476007)(66556008)(64756008)(66446008)(76116006)(8936002)(99286004)(7696005)(8676002)(81156014)(81166006)(186003)(76176011)(6506007)(25786009)(71190400001)(86362001)(26005)(478600001)(316002)(5660300002)(52536014)(14454004)(66066001)(102836004)(53546011)(54906003)(33656002)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5072;
 H:VI1PR04MB4158.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1nUaVFKouiDB+d2HJhux80QZZECLBtv/MTOwub4yup4Kkz2EATiVDHmOiS+sqIYML2TTIBJDyDO1iKSlyswD/2VtyqKRJSxmfsM1leipdJhxzx6NHqTL0/Kv+GJmoFo8jhLGJgZWVz8z3NETosielDPk14S9aesULG8oSv0d5OdTpiwgg5jWG6uZWUk3XreEt/z7iFZx8zzAEkL3tGxCgqzt2g/Cr10CXr0PdaALm4OHkz9njjyL32WfG2mncpfhPXhQD9PzPILojeKKfrWwnNrp23DqNobzTOkgSAukuUUeS8RzzBbdUb2odbkYpATkV+1uZwMCMzsvdjagy1H9VCIK/JcliO82NmuUAC65Vhhb3Nxj5TOmHKTQz930wR3/5RNiDu7X4Nb6zIG4LO8Y1Y/G9A/OUqg7G40wM0ciWp8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae74887c-2a58-46c9-edea-08d7507ad540
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2019 07:47:58.8459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cFvVYIaTQ0fN97TkifQ8gRWy5iRDo7gqFP2v3WDftpHqR+Tak0rNcRPsL9wjb+CCuG02E/km01f9kq6WNPLmaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_004805_485599_F4BDA30E 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Xiaobo Xie <xiaobo.xie@nxp.com>, Leo Li <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Jiafei Pan <jiafei.pan@nxp.com>,
 Ran Wang <ran.wang_1@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBTaGF3biBHdW8gPHNoYXduZ3Vv
QGtlcm5lbC5vcmc+IA0KU2VudDogMjAxOcTqMTDUwjE0yNUgMTQ6NTINClRvOiBZaW5ibyBaaHUg
PHlpbmJvLnpodUBueHAuY29tPg0KQ2M6IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPjsgUm9i
IEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz47IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5k
QGFybS5jb20+OyBYaWFvYm8gWGllIDx4aWFvYm8ueGllQG54cC5jb20+OyBKaWFmZWkgUGFuIDxq
aWFmZWkucGFuQG54cC5jb20+OyBSYW4gV2FuZyA8cmFuLndhbmdfMUBueHAuY29tPjsgbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9y
ZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KU3ViamVjdDogW0VYVF0gUmU6IFtQQVRD
SCB2Ml0gdXNiOiBkd2MzOiBlbmFibGUgb3RnIG1vZGUgZm9yIGR3YzMgdXNiIGlwIG9uIGxheWVy
c2NhcGUNCg0KQ2F1dGlvbjogRVhUIEVtYWlsDQoNCk9uIFR1ZSwgU2VwIDI0LCAyMDE5IGF0IDEx
OjI5OjAzQU0gKzA4MDAsIFlpbmJvIFpodSB3cm90ZToNCj4gbGF5ZXJzY2FwZSBvdGcgZnVuY3Rp
b24gc2hvdWxkIGJlIHN1cHBvcnRlZCBITlAgU1JQIGFuZCBBRFAgcHJvdG9jb2wgDQo+IGFjY3Jv
aW5nIHRvIHJtIGRvYywgYnV0IGR3YzMgY29kZSBub3QgcmVhbGl6ZSBpdCBhbmQgdXNlIGlkIHBp
biB0byANCj4gZGV0ZWN0IHdobyBpcyBob3N0IG9yIGRldmljZSgwIGlzIGhvc3QgMSBpcyBkZXZp
Y2UpIHRoaXMgcGF0Y2ggaXMgdG8gDQo+IGVuYWJsZSBPVEcgbW9kZSBvbiBsczEwMjhhcmRiIGxz
MTA4OGFyZGIgYW5kIGxzMTA0NmFyZGIgaW4gZHRzDQo+DQo+IFNpZ25lZC1vZmYtYnk6IFlpbmJv
IFpodSA8eWluYm8uemh1QG54cC5jb20+DQo+IC0tLQ0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvZnNsLWxzMTAyOGEtcmRiLmR0cyB8IDQgKysrKyAgDQo+IGFyY2gvYXJtNjQvYm9v
dC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwNDZhLXJkYi5kdHMgfCA0ICsrKysgIA0KPiBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDg4YS1yZGIuZHRzIHwgMSArDQoNCj4gdGhp
cyBpcyBhbiBhcm02NCBEVFMgcGF0Y2gsIHNvIHRoZSBwYXRjaCBwcmVmaXggc2hvdWxkIGJlIHNv
bWV0aGluZyBsaWtlICdhcm02NCBkdHM6IGZzbDogLi4uJw0KICAgIA0KPiBTaGF3biANCkhpIFNo
YXduIGd1bywNCg0KVGhpcyBwYXRjaCBJIGhhZCB1cGRhdGVkIHRvIHYzLCBwbGVhc2UgY2hlY2sg
dGhhdCB2MyB2ZXJzaW9uLg0KDQpSZWdhcmRzLA0KWWluYm8gWmh1Lg0KPiAgMyBmaWxlcyBjaGFu
Z2VkLCA5IGluc2VydGlvbnMoKykNCj4NCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXJkYi5kdHMgDQo+IGIvYXJjaC9hcm02NC9ib290L2R0
cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEtcmRiLmR0cw0KPiBpbmRleCA5ZmI5MTEzLi4wNzZjYWM2
IDEwMDY0NA0KPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4
YS1yZGIuZHRzDQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEw
MjhhLXJkYi5kdHMNCj4gQEAgLTE3MSwzICsxNzEsNyBAQA0KPiAgJnNhdGEgew0KPiAgICAgICBz
dGF0dXMgPSAib2theSI7DQo+ICB9Ow0KPiArDQo+ICsmdXNiMSB7DQo+ICsgICAgIGRyX21vZGUg
PSAib3RnIjsNCj4gK307DQo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9mc2wtbHMxMDQ2YS1yZGIuZHRzIA0KPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2ZzbC1sczEwNDZhLXJkYi5kdHMNCj4gaW5kZXggNmE2NTE0ZC4uMGM3NDJiZSAxMDA2NDQN
Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTA0NmEtcmRiLmR0
cw0KPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDQ2YS1yZGIu
ZHRzDQo+IEBAIC0xMjIsNiArMTIyLDEwIEBADQo+ICAgICAgIH07DQo+ICB9Ow0KPg0KPiArJnVz
YjEgew0KPiArICAgICBkcl9tb2RlID0gIm90ZyI7DQo+ICt9Ow0KPiArDQo+ICAjaW5jbHVkZSAi
ZnNsLWxzMTA0Ni1wb3N0LmR0c2kiDQo+DQo+ICAmZm1hbjAgew0KPiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTA4OGEtcmRiLmR0cyANCj4gYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDg4YS1yZGIuZHRzDQo+IGluZGV4IDhl
OTI1ZGYuLjkwYjE5ODkgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2ZzbC1sczEwODhhLXJkYi5kdHMNCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVl
c2NhbGUvZnNsLWxzMTA4OGEtcmRiLmR0cw0KPiBAQCAtOTUsNSArOTUsNiBAQA0KPiAgfTsNCj4N
Cj4gICZ1c2IxIHsNCj4gKyAgICAgZHJfbW9kZSA9ICJvdGciOw0KPiAgICAgICBzdGF0dXMgPSAi
b2theSI7DQo+ICB9Ow0KPiAtLQ0KPiAyLjkuNQ0KPg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
