Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A8E27445
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 04:09:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSoVIfX29RH3JA4PH6GnHUFiMsU/WMtOYI11QmisywE=; b=mrB9PzOPhpdfBt
	LxhTSNCrDjL94mOXhUGXCIJZjfJWfc/7zhMKBRddW25F29a1ouKDnvOyxPV1BYLPRka85qryMEAzB
	4Jr+/zoyJfLCqQ/0BrwxcBRg4VEfMgXD7xB8LCDnRU41ZyoQwkiDSX9bae5kldvr2T6042Bztgq0b
	Kn5rv8iqTVwb8zH6BrgCgylWO4A82DIs4Cm6oivTcjOalPP0fQ5fU76SMcN1SlU8uyCfFMTKVZdd6
	d/oNYEg1zxPeD8owVeDCWkypl/gPcxXuxPUaGzQ57Z9Ag1rRFEfhvxIqfwkLv/DV/Ndvi3bf7eTZ4
	z7zT3AauTzuhc8/SDd2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTdAM-0004uo-6G; Thu, 23 May 2019 02:09:10 +0000
Received: from mail-eopbgr130072.outbound.protection.outlook.com
 ([40.107.13.72] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTdAF-0004te-If
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 02:09:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MwZgzs/4aZwNfCjdz+/ne/jbJMPxd4bUOyyhLYXEmVI=;
 b=nP+EimQWUqrXt5cXHaVpbVhy9ZH0Qhzk9/N8pJLoVsYEIZArUpMWK+JjZhixjfAkEwKt6YzZUk4IbDXAjv9uQ73WmK9LUTo7ME0k2MXH+Ydx6ljp8vfknOuWbPlf42I7KMpJ5FFL9oECyA8N7GB96CvUPqYnmsYB2ECqIlrFaq0=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB6094.eurprd04.prod.outlook.com (20.179.25.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Thu, 23 May 2019 02:08:55 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5062:df97:a70b:93f8]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5062:df97:a70b:93f8%7]) with mapi id 15.20.1900.020; Thu, 23 May 2019
 02:08:54 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [EXT] Re: [PATCH v4 10/14] dma: imx-sdma: add i.mx6ul/6sx
 compatible name
Thread-Topic: [EXT] Re: [PATCH v4 10/14] dma: imx-sdma: add i.mx6ul/6sx
 compatible name
Thread-Index: AQHVEIU1vbltRMJezUidB/k1RHkv66Z3Kd0AgADL88A=
Date: Thu, 23 May 2019 02:08:54 +0000
Message-ID: <VI1PR04MB4543BE5BB829A2BFDA48824789010@VI1PR04MB4543.eurprd04.prod.outlook.com>
References: <1558548188-1155-1-git-send-email-yibin.gong@nxp.com>
 <1558548188-1155-11-git-send-email-yibin.gong@nxp.com>
 <20190522135128.GA24987@bogus>
In-Reply-To: <20190522135128.GA24987@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 817b28b3-d63c-44eb-92dc-08d6df239bc7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6094; 
x-ms-traffictypediagnostic: VI1PR04MB6094:
x-microsoft-antispam-prvs: <VI1PR04MB6094D46D8E2A38D25049248E89010@VI1PR04MB6094.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(366004)(39860400002)(136003)(376002)(13464003)(189003)(199004)(446003)(476003)(11346002)(4744005)(71190400001)(71200400001)(52536014)(5660300002)(2906002)(486006)(186003)(68736007)(66446008)(64756008)(66556008)(66476007)(66946007)(73956011)(6116002)(26005)(3846002)(7736002)(76116006)(305945005)(81156014)(81166006)(86362001)(66066001)(6916009)(316002)(74316002)(8676002)(8936002)(33656002)(7416002)(54906003)(76176011)(7696005)(229853002)(25786009)(102836004)(256004)(14444005)(4326008)(99286004)(53936002)(55016002)(9686003)(478600001)(6436002)(6506007)(6246003)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6094;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3K3cPhbNnzwtDRRdVPWB7LqwrE1SytmzdbFbuVWzSXwQZk3Y7rA0D2XnHHotVTwx3+sRL6VDKWi/xQHHiF6yFOFhIZT9Wd/aljoL8Lx5wOsbGuPHmU5mqHJO63/04mu916C8MXbmFOZklhC+ZuvCV8veFV2h9d2TCHgTZNUqRTRO0642CtdTdz5ibtYipB/riCr8VKtr1VkNBDp102UhasX3I5J4Xvra1cki0WLom6AyaUt/UsqL+Rikl+XKAckrNigKNMyLr9/kV9jCuaBDR6vIHIIIeu1Iop1OeyKgwAnK2AgeUJ9LGAJYrr3a0xbKyuZEo2flSHijZx4vyygD+sxrFhKNJt4szoidsugeYeiY8AUvUU8XZJsI2H4l2PuFKpp1D+XGfLH/uC2XXYdCxB49FYJ8VGstqB2hL0HBwPg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 817b28b3-d63c-44eb-92dc-08d6df239bc7
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 02:08:54.8391 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_190903_715307_C682110D 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLA0KCVRoYW5rIHlvdSBmb3IgeW91ciByZW1pbmRpbmcsIEkgaGF2ZSBhZGRlZCBBY2tl
ZC1ieSB0YWdzIGdvdHRlbiBmcm9tIE1hcmsgYW5kIFZpbm9kIGluIHY0IHBhdGNoIHNldCwgYnV0
IHRoZXJlIGlzIHN0aWxsIG9uZSB1cGRhdGUgKA0KcmVtb3ZlIGNoZWNraW5nICdldmVudF9pZDEn
IHplcm8gYXMgJ2V2ZW50X2lkMCcuKSBmb3IgVmlub2QncyBjb25jZXJuLCBzbyBJIHNlbnQgbmV3
IHY0Lg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSb2IgSGVycmluZyA8
cm9iaEBrZXJuZWwub3JnPg0KPiBTZW50OiAyMDE5xOo11MIyMsjVIDIxOjUxPiANCj4gT24gV2Vk
LCAyMiBNYXkgMjAxOSAxMDowMDozOCArMDAwMCwgUm9iaW4gR29uZyB3cm90ZToNCj4gPiBBZGQg
aS5teDZ1bCBhbmQgaS5teDZzeCBjb21wYXRpYmxlIG5hbWUgaW4gYmluZGluZyBkb2MuDQo+ID4N
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBSb2JpbiBHb25nIDx5aWJpbi5nb25nQG54cC5jb20+DQo+ID4g
LS0tDQo+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEvZnNsLWlteC1z
ZG1hLnR4dCB8IDIgKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPiA+
DQo+IA0KPiBQbGVhc2UgYWRkIEFja2VkLWJ5L1Jldmlld2VkLWJ5IHRhZ3Mgd2hlbiBwb3N0aW5n
IG5ldyB2ZXJzaW9ucy4gSG93ZXZlciwNCj4gdGhlcmUncyBubyBuZWVkIHRvIHJlcG9zdCBwYXRj
aGVzICpvbmx5KiB0byBhZGQgdGhlIHRhZ3MuIFRoZSB1cHN0cmVhbQ0KPiBtYWludGFpbmVyIHdp
bGwgZG8gdGhhdCBmb3IgYWNrcyByZWNlaXZlZCBvbiB0aGUgdmVyc2lvbiB0aGV5IGFwcGx5Lg0K
PiANCj4gSWYgYSB0YWcgd2FzIG5vdCBhZGRlZCBvbiBwdXJwb3NlLCBwbGVhc2Ugc3RhdGUgd2h5
IGFuZCB3aGF0IGNoYW5nZWQuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
