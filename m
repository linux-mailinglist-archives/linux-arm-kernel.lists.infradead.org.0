Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C811291CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 07:13:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hOeQP2tnM5bDdPhhxIsaUyeSc90/e6AI/BYIyKdp9oo=; b=Obpa8qYmoO7gu5
	uLIhZ72GY0fkFBVrZrjfoTkzGu7kAZdXqM/5AqjwCGAJaclhe60fKEepnt+olE6Le+CEWJSQSNEew
	NDYdIBBPgGTkz6F+iQ22QiFMHKhwhMqkp8lDYQ1UiP6H+qPC5wxXnSx/FE/h5ulpzIjbv38EmxGh2
	U6RUaiKzlL02G0a2xSOckUPwMf1RbmbD0eWB6fQldznFcKy2HzfZfvjkHRmNBfdObPsOWC2V6eV8/
	E7MXtymoi/07GO0feI0GBgAEb8vmwtbcp1mb5DY8kJSGyLfS1fH2qMeqANGZzdmV1RekjBfL5bdwP
	KYmdfqXyz31q/+a5M1ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijGxW-0004BU-KO; Mon, 23 Dec 2019 06:12:50 +0000
Received: from mail-eopbgr00047.outbound.protection.outlook.com ([40.107.0.47]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijGxN-0004AQ-45
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 06:12:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SYSaUl8VC1z5fBwjkzyi006VM/xEPnBIwHP0d4/3iYfUHJKeBDSep0vqI2cGcmOqNBawqwK/FQamYRHKEf6hgOu9RbQk2SpgOFm6mLnhme5Y/KkDYj24wQp6VcrXDVhJa3wQuT4siem1E+z30jHZRll4oZjp/LBA2g/UPYYxRy7gxuAE5W6MbXKF1PeaXiacUVyyGhs1nEgIPATLbamiyVsHJFosdEgKswtqSA5+W5TA76jvY/bG5Akq58bVPnfVcOHgiRvj8aYKU9xvZ7axITWp0n68WH6KaVLv5i1CAF7Ig/ivI2O3T6KFTDIf6Mc0sIrgAD8zKJYfIsYTN8OcIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7mefm3d82/kdLpLir2oc/hAF26QbAMmVhQrbYoJTSBk=;
 b=mb+29tBUKcxl+Db2vCaTe6ylrY0wyx2eATUI5L1mEQeRhl75R+hmpapB0ZMj84d64I0NvyFJLpS/XP62T2TKTshWM2VqZyNmrCG3TROSXX+wmh9gy0+cSjsxKDUFA5md2EQd94xWOQTmD1pGgXVuNgc6FI6SbkRb5z+swQtYm5Zf7OHDXtkqHPC9QuV65AJjYvFIGCmGjrACUFXaXMfFeLLpUcQAO3wuiwijElfdarWLPYkIipFYcMmBgLyHj8gF4NN7Z0CmFeXghYNRixXQhZZuQxFwh0snTGhtKEmJ4FX0QwEitMTcgaB0Af7j1gLRjkLvzimyEURncRMCX1GQsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7mefm3d82/kdLpLir2oc/hAF26QbAMmVhQrbYoJTSBk=;
 b=V5Ui3vQnjokTNYgVEmtnFz7vOBVOpUxiZIByAxYyu1FyJldD2K3LkGp5ZzcioJ3e+psFVcjFuNLAL+yOkVCGdqM4jQKMvNAKVcpLSYlg5gAMaR0iqKlIH8zI1i2UftZwUu7SRgrUEv6owCvwNhBDS0BwTyGfj7d0Kfc8NvG9EdY=
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com (20.177.55.205) by
 VI1PR04MB7152.eurprd04.prod.outlook.com (10.186.158.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.15; Mon, 23 Dec 2019 06:12:32 +0000
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::c947:5ae7:2a68:a4f2]) by VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::c947:5ae7:2a68:a4f2%3]) with mapi id 15.20.2559.017; Mon, 23 Dec 2019
 06:12:32 +0000
From: Peng Ma <peng.ma@nxp.com>
To: Vinod Koul <vkoul@kernel.org>
Subject: RE: [EXT] Re: [v5 1/3] dmaengine: fsl-edma: Add eDMA support for
 QorIQ LS1028A platform
Thread-Topic: [EXT] Re: [v5 1/3] dmaengine: fsl-edma: Add eDMA support for
 QorIQ LS1028A platform
Thread-Index: AQHVsJ2TZ/jVyH6lNkyvcDWZa1lfcae/dvcAgAAYxuCAAhhbAIABQiJg
Date: Mon, 23 Dec 2019 06:12:32 +0000
Message-ID: <VI1PR04MB4431671A81F87AB20A0313E6ED2E0@VI1PR04MB4431.eurprd04.prod.outlook.com>
References: <20191212033714.4090-1-peng.ma@nxp.com>
 <20191218062636.GS2536@vkoul-mobl>
 <VI1PR04MB44311BE955B863C73DF4CD4CED530@VI1PR04MB4431.eurprd04.prod.outlook.com>
 <20191219155458.GY2536@vkoul-mobl>
In-Reply-To: <20191219155458.GY2536@vkoul-mobl>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.ma@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 66c26685-71e5-450f-0213-08d7876f18eb
x-ms-traffictypediagnostic: VI1PR04MB7152:|VI1PR04MB7152:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB71527827608529BD68AE8D90ED2E0@VI1PR04MB7152.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0260457E99
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(366004)(376002)(346002)(13464003)(199004)(189003)(186003)(64756008)(44832011)(71200400001)(8936002)(2906002)(52536014)(76116006)(26005)(7696005)(66446008)(86362001)(5660300002)(66476007)(66946007)(6506007)(66556008)(33656002)(316002)(9686003)(55016002)(478600001)(81166006)(6916009)(8676002)(81156014)(54906003)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB7152;
 H:VI1PR04MB4431.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B/pZPHoIAo1qaKJarAa6XA5TYPfTvyxq44ge1c++Et+b/VFJV9qJ5U6THDFvMJ2XJWVE63Lc29b5p9wGx6CmlZPSRhI93E56uDP7E3K35pCGeZDhi7GhButDxT1M95YbBwLiHJmir0w4aRWJBbVboZZrGgSzZelt77h2bA5CGv3hUDjIYMXZEnrHhHpXjs39q2Q8cbeX4k5WVK2A18mv5xMvplzV0dhQkKH7QJssowjz+uv5jghVsymesupz1NiQGEK7pSJqz0WtgGjeI/rRpbd45Ne0PYB/aALCNs4crHymtlOt3l8vHNFSSPC9FmuKGTzaoT+NMXZXEc3PXvyNxqTIQL/2UqD9R2mUuKfQU1lTQMDEYsce22fsLozjgFP+w34IEr4d143MNaUoiI0LzcyFoEMaHT+np3cmn+yaHqhMgrdsGN5H3M7g2osDt9ZBfdgl3OXc6UnN5vj4Tw6NIkgGLjW488zw+uMkDRZ0h6L7PIXnOJGJ1dwaAQl9VsTp
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66c26685-71e5-450f-0213-08d7876f18eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2019 06:12:32.3509 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: suFb/ZoT7jamvtc+Tqk4MHxi4wCKL8wtAuqRNV7XW9m/GYezczLzPo2GOmDefAAL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_221241_165793_A3E9C3A9 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 Robin Gong <yibin.gong@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFZpbm9kIEtvdWwgPHZrb3Vs
QGtlcm5lbC5vcmc+DQo+U2VudDogMjAxOcTqMTLUwjE5yNUgMjM6NTUNCj5UbzogUGVuZyBNYSA8
cGVuZy5tYUBueHAuY29tPg0KPkNjOiByb2JoK2R0QGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBh
cm0uY29tOyBzaGF3bmd1b0BrZXJuZWwub3JnOyBMZW8NCj5MaSA8bGVveWFuZy5saUBueHAuY29t
PjsgZGFuLmoud2lsbGlhbXNAaW50ZWwuY29tOyBSb2JpbiBHb25nDQo+PHlpYmluLmdvbmdAbnhw
LmNvbT47IGRtYWVuZ2luZUB2Z2VyLmtlcm5lbC5vcmc7DQo+ZGV2aWNldHJlZUB2Z2VyLmtlcm5l
bC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+bGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnDQo+U3ViamVjdDogUmU6IFtFWFRdIFJlOiBbdjUgMS8zXSBkbWFl
bmdpbmU6IGZzbC1lZG1hOiBBZGQgZURNQSBzdXBwb3J0IGZvcg0KPlFvcklRIExTMTAyOEEgcGxh
dGZvcm0NCj4NCj5DYXV0aW9uOiBFWFQgRW1haWwNCj4NCj5PbiAxOC0xMi0xOSwgMDg6MDgsIFBl
bmcgTWEgd3JvdGU6DQo+ID5CdHcgcGxzIHNlbmQgYmluZGluZ3MgYXMgcGF0Y2gxIGFuZCBkcml2
ZXIgY2hhbmdlcyBhcyBwYXRjaDIuDQo+PiBbUGVuZyBNYV0gSSBkb24ndCB1bmRlcnN0YW5kIHRo
aXMgc2VudGVuY2UsIFBsZWFzZSBnaXZlIG1lIG1vcmUNCj5pbmZvcm1hdGlvbi4NCj4+IEFzIEkg
a25vdyBwYXRjaDEgaXMgZHJpdmVyIGNoYW5nZXMsIHBhdGNoMiBpcyBkdHMgY2hhbmdlcywgcGF0
Y2gzIGlzIGJpbmRpbmcNCj5jaGFuZ2VzLg0KPj4gWW91IGFjY2VwdGVkIHBhdGNoMSBhbmQgcGF0
Y2gzLCBJIGFtIHB1enpsZWQgZm9yIHBhdGNoMiBhbmQgeW91cg0KPmNvbW1lbnRzLg0KPg0KPlRo
ZSBvcmRlciBvZiBwYXRjaGVzIHNob3VsZCBhbHdheXMgYmUgZHQtYmluZGluZ3MgZmlyc3QsIGZv
bGxvd2VyZCBieSBkcml2ZXINCj5jaGFuZ2UgYW5kIHRoZSBkdHMgY2hhbmdlcyBhcyB0aGUgbGFz
dCBvbmUgaW4gdGhlIHNlcmllcy4NCj4NCltQZW5nIE1hXSBPS6OsR290IGl0Lg0KVGhhbmtzIHZl
cnkgbXVjaCENCg0KQmVzdCBSZWdhcmRzLA0KUGVuZw0KPi0tDQo+flZpbm9kDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
