Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 267678D247
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:35:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkHGGx/6ECka5nc6L5if4ugF1o3m/quf1qwH11SbJcY=; b=XtK6PRZsCHogGl
	KnXJ//E/YNheskLUtE9t37hdPB9sj1GBTAmQdCYOI0MwqpIwZL7axtrM9PZemu/drsp/8l9llC1Co
	1OPG1+IDJxDAgtrVM2TFz9HOYwS8+kk7Sd1gaQyxF0M/jdYP/bc0HUXWMzDdOcLDfHMAT/c3vagS2
	9DX+57C14H6Rjaa3ay45eTWA1Fk+9TMs075OvVxvspCooAEtJ03S9I/Xx0eKZAjWZSyP3Tuk7SIlu
	p9ix8QrZ44hJ61puUgbmiSdX6hzWgI7JU4AV4WP4hdCHeZg/NRxWqy7m4bToCUQsptruQ9DP23of7
	7fSBwW1wcrXOOA5Lu7CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrZ6-0003fA-2m; Wed, 14 Aug 2019 11:35:40 +0000
Received: from mail-eopbgr20077.outbound.protection.outlook.com ([40.107.2.77]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxrYl-0003ef-CY
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:35:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OHIMERAq6+wTe4KDRKWH+Gq4oGvcl4Awuf51ZkLPYeQKbEvQIr3mnYkPak+LI0H1QqPt8/jkTmCCuw6A/0V6G5M2hrpDWfrZVdqKsfCnD3Yg1RUEQHIEQPLyABGYEzeVBPfCOZxmK5S/zlbuNCodLOQEzp0Qf7/LPB+tXuuxUtBYw7CfvLUKK9I+s4S3tace8Pia+N5FZT78DFcl9BPmvmtSEUmgMKn/5U4nFgyXUGJjPyEeAHyNzVBK96AIBDlJMMwljYYHOIzWZfU5VliEvrQcgPLs2KEGOGDsf/uo0dr+6mg/7GmlpidwspmSiPMQnUiuG3o+7BMcg41YOkHu/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C6x+CNW5ZBAzIOs16KvmLIBUA4K6OCKnFeF4qJidfqw=;
 b=WjEQ0q8SXz+1KROzMtFNyvOtr/OLd7x/JLTI8ZWJ7WQHwIhyanKeFkfkaDAzA12U00HDvNNui0UMoehhIkMcY40ULsZfKcUbzNEzsCex2EpcLF35dvN1v7UZYjSMKEHSkokv7k74g18O8+xl/Si3LJWhiGLFFoAJExEukaTeHGVk1d7y0yJw32X1CPOGLpQ6FV+K0pm3u1MtzHYCbsiSR29AMwkwccXv55fjU/tKNmQWzqPGeR5YJM1XxOdNCBziCcoLSuOniNYlv1F/SXvFroyceYidPJRaxr+Qm0rFxKceJDKvmY/omV5jnfISRJS78XBRsd+ObgIdU8qCp3WIsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C6x+CNW5ZBAzIOs16KvmLIBUA4K6OCKnFeF4qJidfqw=;
 b=pugwQd9RBe5ipzSI2vxl8VtfO0t7Gg+FLAU+ugafIy3IqzPeNNH06aEUoI/8RuXYsCg1D+hECdMmwzsTO9569WRGCwfb2A0W5gdkrAMrYBZDk1xCGzfSRfjJcqAjSoXn5ZOBrGI5gjCtrhWdecU/zAAxTO92Qz9xUi3ijjXr6H0=
Received: from DB8PR04MB6715.eurprd04.prod.outlook.com (20.179.251.14) by
 DB8PR04MB6521.eurprd04.prod.outlook.com (20.179.249.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.23; Wed, 14 Aug 2019 11:35:15 +0000
Received: from DB8PR04MB6715.eurprd04.prod.outlook.com
 ([fe80::b0ab:d127:ca27:e1fa]) by DB8PR04MB6715.eurprd04.prod.outlook.com
 ([fe80::b0ab:d127:ca27:e1fa%7]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 11:35:15 +0000
From: Robert Chiras <robert.chiras@nxp.com>
To: "stefan@agner.ch" <stefan@agner.ch>
Subject: Re: [EXT] Re: [PATCH v2 12/15] drm/mxsfb: Improve the axi clock usage
Thread-Topic: [EXT] Re: [PATCH v2 12/15] drm/mxsfb: Improve the axi clock usage
Thread-Index: AQHVUo3nthuR4r+iXU+42EoMl6SgVqb6e4oAgAAIBwA=
Date: Wed, 14 Aug 2019 11:35:15 +0000
Message-ID: <1565782514.3209.68.camel@nxp.com>
References: <1565779731-1300-1-git-send-email-robert.chiras@nxp.com>
 <1565779731-1300-13-git-send-email-robert.chiras@nxp.com>
 <425a854f41248b083ff0c6c93673d696@agner.ch>
In-Reply-To: <425a854f41248b083ff0c6c93673d696@agner.ch>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=robert.chiras@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7622c0b6-c472-4a43-cc3f-08d720ab7a44
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB6521; 
x-ms-traffictypediagnostic: DB8PR04MB6521:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB652142D31B03EB75D8AADF83E3AD0@DB8PR04MB6521.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(376002)(39860400002)(396003)(366004)(189003)(199004)(76116006)(91956017)(86362001)(8676002)(229853002)(2351001)(6916009)(66446008)(66946007)(71200400001)(25786009)(6512007)(71190400001)(66556008)(103116003)(66476007)(14444005)(53936002)(64756008)(4326008)(6486002)(6246003)(2906002)(2501003)(5640700003)(256004)(305945005)(7736002)(3846002)(76176011)(6116002)(5660300002)(6436002)(6506007)(478600001)(99286004)(7416002)(66066001)(1730700003)(50226002)(54906003)(36756003)(316002)(81156014)(486006)(14454004)(446003)(44832011)(11346002)(476003)(2616005)(81166006)(8936002)(26005)(102836004)(186003)(53546011)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6521;
 H:DB8PR04MB6715.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ofWGa/jdHJkiJmp/ob7gpcurKtRHQFCwhyGMXeUc0A6gOuqvqdROQ/AMasQR39F4dTZODn+G6UwNenhcRwV4RxXEPstUjx4pSGwQknhwLD9OEzBY86Jib0W1CxiS0VSH1rJFl3odgj6HhYf49i6WhMBF3U7lFnIl7LCLbYHy6jbbIihYANUfeSl0yGNXSle3+bP0IDF4rOshfWbljyBlJ6S6ZXR6DE+rRnH4WRGreIM1lPSHB09LTaKYNhkXZ51t4xQ2gFO9SseU1knqmp4bN5MSbJzGAiA/UYabQhV2KHRNUqLRYbDx42FTEEKxrU+jE3KMPip9/4W75Cm0WgmH3T8OHdfuRfNNsCIuVUVRwtuSIXylLUJrwzdckNBpI/cZgJ0lQ2I//MUlYArc1zLpMwX2vY+ShBk6erEFqgCGifs=
Content-ID: <D6E7F220169E0944A6EC992CD2A31A51@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7622c0b6-c472-4a43-cc3f-08d720ab7a44
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 11:35:15.8340 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QA9lqkf7PKOuoqSC3yfq+lhDM9ECh2bkx8LMRk1FLF2RSO1Pqj/ZpAW7WAtByCLkePEQi2mtyi4cBrjikkKJ6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6521
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_043519_588319_724DC215 
X-CRM114-Status: GOOD (  25.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "marex@denx.de" <marex@denx.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3RlZmFuLA0KDQpPbiBNaSwgMjAxOS0wOC0xNCBhdCAxMzowNiArMDIwMCwgU3RlZmFuIEFn
bmVyIHdyb3RlOg0KPiBPbiAyMDE5LTA4LTE0IDEyOjQ4LCBSb2JlcnQgQ2hpcmFzIHdyb3RlOg0K
PiA+IA0KPiA+IEN1cnJlbnRseSwgdGhlIGVuYWJsZSBvZiB0aGUgYXhpIGNsb2NrIHJldHVybiBz
dGF0dXMgaXMgaWdub3JlZCwNCj4gPiBjYXVzaW5nDQo+ID4gaXNzdWVzIHdoZW4gdGhlIGVuYWJs
ZSBmYWlscyB0aGVuIHdlIHRyeSB0byBkaXNhYmxlIGl0LiBUaGVyZWZvcmUsDQo+ID4gaXQgaXMN
Cj4gPiBiZXR0ZXIgdG8gY2hlY2sgdGhlIHJldHVybiBzdGF0dXMgYW5kIGRpc2FibGUgaXQgb25s
eSB3aGVuIGVuYWJsZQ0KPiA+IHN1Y2NlZWRlZC4NCj4gSXMgdGhpcyBhY3R1YWxseSB0aGUgY2Fz
ZSBpbiByZWFsIHdvcmxkIHNvbWV0aW1lcz8gV2h5IGlzIGl0IGZhaWxpbmc/DQpXaGVuIEkgbm90
aWNlZCB0aGF0IGZhaWwsIHdlIGhhZCBzb21lIHJlc3RyaWN0aW9ucyBpbiBTQ1UgZmlybXdhcmUs
IHNvDQp0aGF0IHRoZSBjbG9jayBjYW5ub3QgYmUgZW5hYmxlZCBpZiB0aGUgcG93ZXIgZG9tYWlu
IHdhcyBkb3duLiBTdGlsbCwNCmF0IHRoYXQgdGltZSBJIG5vdGljZWQgaXQgaXMgcmVkdW5kYW50
IHRvIGhhdmUgZnVuY3Rpb25zIHRoYXQgY2hlY2tzIGlmDQphIGNsb2NrIGlzIE5VTEwgb3Igbm90
LCBzaW5jZSB0aGUgY2xrXyogZnVuY3Rpb25zIGFyZSBhbHJlYWR5IGRvaW5nDQp0aGlzLg0KPiAN
Cj4gSSBndWVzcyBpZiB3ZSBkbyB0aGlzIGluIG9uZSBwbGFjZSwgd2Ugc2hvdWxkIGRvIGl0IGlu
IGFsbCBwbGFjZXMNCj4gKGUuZy4NCj4gYWxzbyBpbiBteHNmYl9jcnRjX2VuYWJsZSwgbXhzZmJf
cGxhbmVfYXRvbWljX3VwZGF0ZS4uKQ0KSSBhZGQgc3BlY2lmaWMgY2hlY2tzIG9ubHkgaW4gdGhl
IHZibGFuayBmdW5jdGlvbnMsIGJlY2F1c2UgdGhvc2UNCmZ1bmN0aW9ucyBjYW4gYmUgY2FsbGVk
IGJlZm9yZSBjYWxsaW5nIHRoZSBwaXBlIGVuYWJsZS9kaXNhYmxlDQpmdW5jdGlvbnMgd2hpY2gg
ZW5hYmxlcyB0aGUgc3BlZmljIHBvd2VyIGRvbWFpbiBhbmQsIGF0IHRoaXMgcG9pbnQsIHRoZQ0K
Y2xvY2sgZW5hYmxlL2Rpc2FibGUgY2FsbHMgc2hvdWxkIG5vdCBmYWlsLg0KPiANCj4gLS0NCj4g
U3RlZmFuDQo+IA0KPiA+IA0KPiA+IEFsc28sIHJlbW92ZSB0aGUgaGVscGVyIGZ1bmN0aW9ucyBh
cm91bmQgY2xrX2F4aSwgc2luY2Ugd2UgY2FuDQo+ID4gZGlyZWN0bHkNCj4gPiB1c2UgdGhlIGNs
ayBBUEkgZnVuY3Rpb24gZm9yIGVuYWJsZS9kaXNhYmxlIHRoZSBjbG9jay4gVGhvc2UNCj4gPiBm
dW5jdGlvbnMNCj4gPiBhcmUgYWxyZWFkeSBjaGVja2luZyBmb3IgTlVMTCBjbGsgYW5kIHJldHVy
bmluZyAwIGlmIHRoYXQncyB0aGUNCj4gPiBjYXNlLg0KPiANCj4gPiANCj4gPiANCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBSb2JlcnQgQ2hpcmFzIDxyb2JlcnQuY2hpcmFzQG54cC5jb20+DQo+ID4gQWNr
ZWQtYnk6IExlb25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+DQo+ID4gLS0t
DQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jIHzCoMKgOCArKysrLS0t
LQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2Rydi5jwqDCoHwgMzIgKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0NCj4gPiAtLS0tLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9t
eHNmYi9teHNmYl9kcnYuaMKgwqB8wqDCoDMgLS0tDQo+ID4gwqAzIGZpbGVzIGNoYW5nZWQsIDE3
IGluc2VydGlvbnMoKyksIDI2IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
bXhzZmIvbXhzZmJfY3J0Yy5jDQo+ID4gaW5kZXggYTRiYTM2OC4uZTcyN2Y1ZSAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2NydGMuYw0KPiA+IEBAIC00MDgsNyArNDA4LDcgQEAg
dm9pZCBteHNmYl9jcnRjX2VuYWJsZShzdHJ1Y3QgbXhzZmJfZHJtX3ByaXZhdGUNCj4gPiAqbXhz
ZmIpDQo+ID4gwqB7DQo+ID4gwqDCoMKgwqDCoMKgZG1hX2FkZHJfdCBwYWRkcjsNCj4gPiANCj4g
PiAtwqDCoMKgwqDCoG14c2ZiX2VuYWJsZV9heGlfY2xrKG14c2ZiKTsNCj4gPiArwqDCoMKgwqDC
oGNsa19wcmVwYXJlX2VuYWJsZShteHNmYi0+Y2xrX2F4aSk7DQo+ID4gwqDCoMKgwqDCoMKgd3Jp
dGVsKDAsIG14c2ZiLT5iYXNlICsgTENEQ19DVFJMKTsNCj4gPiDCoMKgwqDCoMKgwqBteHNmYl9j
cnRjX21vZGVfc2V0X25vZmIobXhzZmIpOw0KPiA+IA0KPiA+IEBAIC00MjUsNyArNDI1LDcgQEAg
dm9pZCBteHNmYl9jcnRjX2VuYWJsZShzdHJ1Y3QgbXhzZmJfZHJtX3ByaXZhdGUNCj4gPiAqbXhz
ZmIpDQo+ID4gwqB2b2lkIG14c2ZiX2NydGNfZGlzYWJsZShzdHJ1Y3QgbXhzZmJfZHJtX3ByaXZh
dGUgKm14c2ZiKQ0KPiA+IMKgew0KPiA+IMKgwqDCoMKgwqDCoG14c2ZiX2Rpc2FibGVfY29udHJv
bGxlcihteHNmYik7DQo+ID4gLcKgwqDCoMKgwqBteHNmYl9kaXNhYmxlX2F4aV9jbGsobXhzZmIp
Ow0KPiA+ICvCoMKgwqDCoMKgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKG14c2ZiLT5jbGtfYXhpKTsN
Cj4gPiDCoH0NCj4gPiANCj4gPiDCoHZvaWQgbXhzZmJfcGxhbmVfYXRvbWljX3VwZGF0ZShzdHJ1
Y3QgbXhzZmJfZHJtX3ByaXZhdGUgKm14c2ZiLA0KPiA+IEBAIC00NTEsOCArNDUxLDggQEAgdm9p
ZCBteHNmYl9wbGFuZV9hdG9taWNfdXBkYXRlKHN0cnVjdA0KPiA+IG14c2ZiX2RybV9wcml2YXRl
ICpteHNmYiwNCj4gPiANCj4gPiDCoMKgwqDCoMKgwqBwYWRkciA9IG14c2ZiX2dldF9mYl9wYWRk
cihteHNmYik7DQo+ID4gwqDCoMKgwqDCoMKgaWYgKHBhZGRyKSB7DQo+ID4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgbXhzZmJfZW5hYmxlX2F4aV9jbGsobXhzZmIpOw0KPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGNsa19wcmVwYXJlX2VuYWJsZShteHNmYi0+Y2xrX2F4aSk7DQo+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHdyaXRlbChwYWRkciwgbXhzZmItPmJhc2Ug
KyBteHNmYi0+ZGV2ZGF0YS0NCj4gPiA+bmV4dF9idWYpOw0KPiA+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoG14c2ZiX2Rpc2FibGVfYXhpX2NsayhteHNmYik7DQo+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKG14c2ZiLT5jbGtfYXhpKTsNCj4g
PiDCoMKgwqDCoMKgwqB9DQo+ID4gwqB9DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9teHNmYi9teHNmYl9kcnYuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2Ry
di5jDQo+ID4gaW5kZXggNmRhZTJiZC4uNjk0YjI4NyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vbXhzZmIvbXhzZmJfZHJ2LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbXhz
ZmIvbXhzZmJfZHJ2LmMNCj4gPiBAQCAtOTcsMTggKzk3LDYgQEAgZHJtX3BpcGVfdG9fbXhzZmJf
ZHJtX3ByaXZhdGUoc3RydWN0DQo+ID4gZHJtX3NpbXBsZV9kaXNwbGF5X3BpcGUgKnBpcGUpDQo+
ID4gwqDCoMKgwqDCoMKgcmV0dXJuIGNvbnRhaW5lcl9vZihwaXBlLCBzdHJ1Y3QgbXhzZmJfZHJt
X3ByaXZhdGUsIHBpcGUpOw0KPiA+IMKgfQ0KPiA+IA0KPiA+IC12b2lkIG14c2ZiX2VuYWJsZV9h
eGlfY2xrKHN0cnVjdCBteHNmYl9kcm1fcHJpdmF0ZSAqbXhzZmIpDQo+ID4gLXsNCj4gPiAtwqDC
oMKgwqDCoGlmIChteHNmYi0+Y2xrX2F4aSkNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBjbGtfcHJlcGFyZV9lbmFibGUobXhzZmItPmNsa19heGkpOw0KPiA+IC19DQo+ID4gLQ0KPiA+
IC12b2lkIG14c2ZiX2Rpc2FibGVfYXhpX2NsayhzdHJ1Y3QgbXhzZmJfZHJtX3ByaXZhdGUgKm14
c2ZiKQ0KPiA+IC17DQo+ID4gLcKgwqDCoMKgwqBpZiAobXhzZmItPmNsa19heGkpDQo+ID4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKG14c2ZiLT5jbGtf
YXhpKTsNCj4gPiAtfQ0KPiA+IC0NCj4gPiDCoC8qKg0KPiA+IMKgICogbXhzZmJfYXRvbWljX2hl
bHBlcl9jaGVjayAtIHZhbGlkYXRlIHN0YXRlIG9iamVjdA0KPiA+IMKgICogQGRldjogRFJNIGRl
dmljZQ0KPiA+IEBAIC0yMjksMjUgKzIxNywzMSBAQCBzdGF0aWMgdm9pZCBteHNmYl9waXBlX3Vw
ZGF0ZShzdHJ1Y3QNCj4gPiBkcm1fc2ltcGxlX2Rpc3BsYXlfcGlwZSAqcGlwZSwNCj4gPiDCoHN0
YXRpYyBpbnQgbXhzZmJfcGlwZV9lbmFibGVfdmJsYW5rKHN0cnVjdCBkcm1fc2ltcGxlX2Rpc3Bs
YXlfcGlwZQ0KPiA+ICpwaXBlKQ0KPiA+IMKgew0KPiA+IMKgwqDCoMKgwqDCoHN0cnVjdCBteHNm
Yl9kcm1fcHJpdmF0ZSAqbXhzZmIgPQ0KPiA+IGRybV9waXBlX3RvX214c2ZiX2RybV9wcml2YXRl
KHBpcGUpOw0KPiA+ICvCoMKgwqDCoMKgaW50IHJldCA9IDA7DQo+ID4gKw0KPiA+ICvCoMKgwqDC
oMKgcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKG14c2ZiLT5jbGtfYXhpKTsNCj4gPiArwqDCoMKg
wqDCoGlmIChyZXQpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHJldDsN
Cj4gPiANCj4gPiDCoMKgwqDCoMKgwqAvKiBDbGVhciBhbmQgZW5hYmxlIFZCTEFOSyBJUlEgKi8N
Cj4gPiAtwqDCoMKgwqDCoG14c2ZiX2VuYWJsZV9heGlfY2xrKG14c2ZiKTsNCj4gPiDCoMKgwqDC
oMKgwqB3cml0ZWwoQ1RSTDFfQ1VSX0ZSQU1FX0RPTkVfSVJRLCBteHNmYi0+YmFzZSArIExDRENf
Q1RSTDEgKw0KPiA+IFJFR19DTFIpOw0KPiA+IMKgwqDCoMKgwqDCoHdyaXRlbChDVFJMMV9DVVJf
RlJBTUVfRE9ORV9JUlFfRU4sIG14c2ZiLT5iYXNlICsgTENEQ19DVFJMMQ0KPiA+ICsgUkVHX1NF
VCk7DQo+ID4gLcKgwqDCoMKgwqBteHNmYl9kaXNhYmxlX2F4aV9jbGsobXhzZmIpOw0KPiA+ICvC
oMKgwqDCoMKgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKG14c2ZiLT5jbGtfYXhpKTsNCj4gPiANCj4g
PiAtwqDCoMKgwqDCoHJldHVybiAwOw0KPiA+ICvCoMKgwqDCoMKgcmV0dXJuIHJldDsNCj4gPiDC
oH0NCj4gPiANCj4gPiDCoHN0YXRpYyB2b2lkIG14c2ZiX3BpcGVfZGlzYWJsZV92Ymxhbmsoc3Ry
dWN0DQo+ID4gZHJtX3NpbXBsZV9kaXNwbGF5X3BpcGUgKnBpcGUpDQo+ID4gwqB7DQo+ID4gwqDC
oMKgwqDCoMKgc3RydWN0IG14c2ZiX2RybV9wcml2YXRlICpteHNmYiA9DQo+ID4gZHJtX3BpcGVf
dG9fbXhzZmJfZHJtX3ByaXZhdGUocGlwZSk7DQo+ID4gDQo+ID4gK8KgwqDCoMKgwqBpZiAoY2xr
X3ByZXBhcmVfZW5hYmxlKG14c2ZiLT5jbGtfYXhpKSkNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqByZXR1cm47DQo+ID4gKw0KPiA+IMKgwqDCoMKgwqDCoC8qIERpc2FibGUgYW5kIGNs
ZWFyIFZCTEFOSyBJUlEgKi8NCj4gPiAtwqDCoMKgwqDCoG14c2ZiX2VuYWJsZV9heGlfY2xrKG14
c2ZiKTsNCj4gPiDCoMKgwqDCoMKgwqB3cml0ZWwoQ1RSTDFfQ1VSX0ZSQU1FX0RPTkVfSVJRX0VO
LCBteHNmYi0+YmFzZSArIExDRENfQ1RSTDENCj4gPiArIFJFR19DTFIpOw0KPiA+IMKgwqDCoMKg
wqDCoHdyaXRlbChDVFJMMV9DVVJfRlJBTUVfRE9ORV9JUlEsIG14c2ZiLT5iYXNlICsgTENEQ19D
VFJMMSArDQo+ID4gUkVHX0NMUik7DQo+ID4gLcKgwqDCoMKgwqBteHNmYl9kaXNhYmxlX2F4aV9j
bGsobXhzZmIpOw0KPiA+ICvCoMKgwqDCoMKgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKG14c2ZiLT5j
bGtfYXhpKTsNCj4gPiDCoH0NCj4gPiANCj4gPiDCoHN0YXRpYyBzdHJ1Y3QgZHJtX3NpbXBsZV9k
aXNwbGF5X3BpcGVfZnVuY3MgbXhzZmJfZnVuY3MgPSB7DQo+ID4gQEAgLTQxMyw3ICs0MDcsNyBA
QCBzdGF0aWMgaXJxcmV0dXJuX3QgbXhzZmJfaXJxX2hhbmRsZXIoaW50IGlycSwNCj4gPiB2b2lk
ICpkYXRhKQ0KPiA+IMKgwqDCoMKgwqDCoHN0cnVjdCBteHNmYl9kcm1fcHJpdmF0ZSAqbXhzZmIg
PSBkcm0tPmRldl9wcml2YXRlOw0KPiA+IMKgwqDCoMKgwqDCoHUzMiByZWc7DQo+ID4gDQo+ID4g
LcKgwqDCoMKgwqBteHNmYl9lbmFibGVfYXhpX2NsayhteHNmYik7DQo+ID4gK8KgwqDCoMKgwqBj
bGtfcHJlcGFyZV9lbmFibGUobXhzZmItPmNsa19heGkpOw0KPiA+IA0KPiA+IMKgwqDCoMKgwqDC
oHJlZyA9IHJlYWRsKG14c2ZiLT5iYXNlICsgTENEQ19DVFJMMSk7DQo+ID4gDQo+ID4gQEAgLTQy
Miw3ICs0MTYsNyBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgbXhzZmJfaXJxX2hhbmRsZXIoaW50IGly
cSwNCj4gPiB2b2lkICpkYXRhKQ0KPiA+IA0KPiA+IMKgwqDCoMKgwqDCoHdyaXRlbChDVFJMMV9D
VVJfRlJBTUVfRE9ORV9JUlEsIG14c2ZiLT5iYXNlICsgTENEQ19DVFJMMSArDQo+ID4gUkVHX0NM
Uik7DQo+ID4gDQo+ID4gLcKgwqDCoMKgwqBteHNmYl9kaXNhYmxlX2F4aV9jbGsobXhzZmIpOw0K
PiA+ICvCoMKgwqDCoMKgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKG14c2ZiLT5jbGtfYXhpKTsNCj4g
PiANCj4gPiDCoMKgwqDCoMKgwqByZXR1cm4gSVJRX0hBTkRMRUQ7DQo+ID4gwqB9DQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9kcnYuaA0KPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL214c2ZiL214c2ZiX2Rydi5oDQo+ID4gaW5kZXggOGZiNjVkMy4uZDZkZjhmZSAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfZHJ2LmgNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfZHJ2LmgNCj4gPiBAQCAtMzcsOSArMzcs
NiBAQCBzdHJ1Y3QgbXhzZmJfZHJtX3ByaXZhdGUgew0KPiA+IMKgaW50IG14c2ZiX3NldHVwX2Ny
dGMoc3RydWN0IGRybV9kZXZpY2UgKmRldik7DQo+ID4gwqBpbnQgbXhzZmJfY3JlYXRlX291dHB1
dChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsNCj4gPiANCj4gPiAtdm9pZCBteHNmYl9lbmFibGVf
YXhpX2NsayhzdHJ1Y3QgbXhzZmJfZHJtX3ByaXZhdGUgKm14c2ZiKTsNCj4gPiAtdm9pZCBteHNm
Yl9kaXNhYmxlX2F4aV9jbGsoc3RydWN0IG14c2ZiX2RybV9wcml2YXRlICpteHNmYik7DQo+ID4g
LQ0KPiA+IMKgdm9pZCBteHNmYl9jcnRjX2VuYWJsZShzdHJ1Y3QgbXhzZmJfZHJtX3ByaXZhdGUg
Km14c2ZiKTsNCj4gPiDCoHZvaWQgbXhzZmJfY3J0Y19kaXNhYmxlKHN0cnVjdCBteHNmYl9kcm1f
cHJpdmF0ZSAqbXhzZmIpOw0KPiA+IMKgdm9pZCBteHNmYl9wbGFuZV9hdG9taWNfdXBkYXRlKHN0
cnVjdCBteHNmYl9kcm1fcHJpdmF0ZSAqbXhzZmIsDQoNClRoYW5rcywNClJvYmVydApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
