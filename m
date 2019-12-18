Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91291124403
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:12:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3e9Uo/XZDYgGF1Ke5G81SGuJ0z8HN2lUHLsB+yzwJeU=; b=tmyqoClcIKKs8i
	zsHReBQFNwUdq+iO2S7Tqxd1XEpWuXRVGTk+Af2EfEq2+cBOkFy/Vh0RZto+tzmkf8nZPX3WajNWP
	pd4H7CCQDIBhUQeQ0GU2YJYTph8G7M4KFx/NfEGicmNtpjfS42rbkg7WwU0ViAuBX5OOdm0iasWMq
	A3aPdM6MyxWTKrP9mWurDw5hHD2d9XhE3dUcPeVxjQsUQ+4Yo0aik0HW0D1r8xZa9j3PLjwaGXLq4
	5h9Pqhcz45hZZeya/9w6NrtLDaFko4WtLzT0POiLBMo25e4KVBkSlve3vNLfh9nksrsXXye3rafI+
	Ah9vqm++GedcMjpDCeiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWJL-0002SW-MP; Wed, 18 Dec 2019 10:12:07 +0000
Received: from mail-eopbgr10067.outbound.protection.outlook.com ([40.107.1.67]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWJC-0002RR-Hh
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:12:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SxR5O5ULccggwOigjVMKLVNQcVgvmXd2OVY7Cdl9OmuP6WvyqVuwL/ZXcTT29CvuHTAyDHrh87h6FmnDgsMX5BKR7pGPUcWHpLjo3LoXrOHRTTHl3Exz0qL0gLdpxkrWb6ljhurf9n8oy50ihdEXbAML3uC+DlL0Csi98/h1/t+Xve1u2Z+EOpjz+fJwCxpb44xtmatzQkBB6zcCpcd5P7Pwx8NBICi6VTZsB2a9AneM9evpy+dD+U8X7i2JP511fh92nas+rUuuVqjP+Rl5sAL4/DPalqSYXyGU3PYXXhx33tcXTu997xmUCKKr4m4K+VG9ZbM7eDDRZLWhuU7Dug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6A60Gvs7hBdHaRkLWhE3/EMikJbkQmArwW2aWL2i0II=;
 b=ZszzRNE+10kc6omA0jW+bOoyuPGT2XccGQpHCllccHHD5DQ4Gy51BJeAQScJ7TUV8TgNw6k3+pWL3rBf0oOiH+LCcIzoYSi58qLEZRU1XgzBFu3fHU3e5cqjxV68TJAcJfeBrG9nECr/VrGNhdjOTsBbynC+jQn/omjPMw2i+naDCmzzqLeDcIbQ4FUyAvPg/XPCCO76/5/F/iQ76L7etNCX9AhBX6xAYBSzbrIv186NmEpkBOesHrwGid/ub48BEOMoH9oJ6CJ2zzaTF0G3a14vslzhwyHvQxElsvsATkDEJ4hvKIjM7LQLLUXCldNP6yV4mdbEsewZe4NP8jXibw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6A60Gvs7hBdHaRkLWhE3/EMikJbkQmArwW2aWL2i0II=;
 b=BqBne9ZLjuEUGyoq9auqdYIMubB0IJkr5aBQvemMFQIp7EJU/zF3J85xpBs5r41jk7zLnSfAZB/hPGPx52TTldkuP8LE7TrtWnOTmTp8kmA95lbX9cSQ3AeYYJtdjWinNeLgNeL35ZYFNTdPzKA6FiUoNEmLez/xzQQhyzAiX9g=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5273.eurprd04.prod.outlook.com (20.176.236.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.13; Wed, 18 Dec 2019 10:11:55 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::b40b:46af:9458:f2df]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::b40b:46af:9458:f2df%6]) with mapi id 15.20.2538.019; Wed, 18 Dec 2019
 10:11:55 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH 3/3] drivers/irqchip: enable INTMUX interrupt controller
 driver
Thread-Topic: [PATCH 3/3] drivers/irqchip: enable INTMUX interrupt controller
 driver
Thread-Index: AQHVtYdHjZa8N9ppNUCqvlRyulzgtae/q99g
Date: Wed, 18 Dec 2019 10:11:55 +0000
Message-ID: <DB7PR04MB46185212999B2EFB6D68DDE9E6530@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <1576653615-27954-1-git-send-email-qiangqing.zhang@nxp.com>
 <1576653615-27954-4-git-send-email-qiangqing.zhang@nxp.com>
 <30431cce4c9e59ab11043c991493c368@www.loen.fr>
In-Reply-To: <30431cce4c9e59ab11043c991493c368@www.loen.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8c4d6edd-2966-4986-dfdf-08d783a2b5e1
x-ms-traffictypediagnostic: DB7PR04MB5273:|DB7PR04MB5273:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB52730953D05663AE1AECD0C9E6530@DB7PR04MB5273.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:590;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(346002)(366004)(136003)(199004)(189003)(13464003)(9686003)(6916009)(8676002)(71200400001)(33656002)(478600001)(53546011)(6506007)(52536014)(316002)(81156014)(2906002)(8936002)(7696005)(7416002)(4326008)(4001150100001)(54906003)(81166006)(26005)(186003)(86362001)(5660300002)(64756008)(66476007)(66556008)(66446008)(66946007)(76116006)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5273;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /RnV+uI5tax0rKD+Z0Bmrh5MFBwWwSIHsO75nAXgfFOTe2dKWodA15Nw9OJCD0QwFOWIGVHdQEmyCWD8+0ikQO3M7hQUPO24GcK/pSMCDGGerURGkjkCXgCIWUDIOvCodI+CdLZuwYB1CMuw2ydnUgVsPDFW9SIDUAFOdM6e3A/OmNtTZnpIOyRnGP3um9Y1nNc59XWI2qeiZYXg5mGKnKGdQ74i9rJi3ufGvX9v8L8wHSBF9Ij1FuNW/iLgt6WGMYrn+RkLt0pGVlwbv6PRO0lGMbt/TDN1C6yQVC+JJTc9GvJiHVxwpVds0tY5RXs6mlWGEaFuQS7eaIN/Iez5wnpNTvzqAzSIunseep6BuYmk0S5chOz+lg3yuvnjCXM0QNvYoK6d3m4tCvZh+5CCi0bkuCiW97a3TimnF4TL5Sm6Amrty5o9Vo0hwGEm3UpYmOmr/bZ0r0hNuxRUdSXs6Hb3WHoX+0U31E3LsIre/0YYepAbMrS9RED3nBz4lkk8
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c4d6edd-2966-4986-dfdf-08d783a2b5e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 10:11:55.4624 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JkEUsTRbxITwwHb6frnLFNF7F/ZhpMv+UH3BbnYzHTwU6Zme4Zk6hwuBtt8lLeRaWEV7tn/bTWca34ucxzPm/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5273
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_021158_589270_6C7A7C99 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Andy Duan <fugang.duan@nxp.com>, "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Aisheng Dong <aisheng.dong@nxp.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE1hcmMgWnluZ2llciA8bWF6
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnlubQxMuaciDE45pelIDE3OjQxDQo+IFRvOiBKb2Fr
aW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPg0KPiBDYzogdGdseEBsaW51dHJvbml4
LmRlOyBqYXNvbkBsYWtlZGFlbW9uLm5ldDsgcm9iaCtkdEBrZXJuZWwub3JnOw0KPiBtYXJrLnJ1
dGxhbmRAYXJtLmNvbTsgc2hhd25ndW9Aa2VybmVsLm9yZzsgcy5oYXVlckBwZW5ndXRyb25peC5k
ZTsgUy5qLg0KPiBXYW5nIDxzaGVuZ2ppdS53YW5nQG54cC5jb20+OyBrZXJuZWxAcGVuZ3V0cm9u
aXguZGU7DQo+IGZlc3RldmFtQGdtYWlsLmNvbTsgZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhw
LmNvbT47DQo+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGRldmljZXRyZWVAdmdlci5r
ZXJuZWwub3JnOw0KPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IEFuZHkg
RHVhbiA8ZnVnYW5nLmR1YW5AbnhwLmNvbT47DQo+IEFpc2hlbmcgRG9uZyA8YWlzaGVuZy5kb25n
QG54cC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMy8zXSBkcml2ZXJzL2lycWNoaXA6IGVu
YWJsZSBJTlRNVVggaW50ZXJydXB0IGNvbnRyb2xsZXINCj4gZHJpdmVyDQo+IA0KPiBPbiAyMDE5
LTEyLTE4IDA3OjIwLCBKb2FraW0gWmhhbmcgd3JvdGU6DQo+ID4gRW5hYmxlIElOVE1VWCBpbnRl
cnJ1cHQgY29udHJvbGxlciBkcml2ZXIgZm9yIGkuTVggcGxhdGZvcm1zLg0KPiA+DQo+ID4gU2ln
bmVkLW9mZi1ieTogSm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCj4gPiAt
LS0NCj4gPiAgZHJpdmVycy9pcnFjaGlwL0tjb25maWcgIHwgNiArKysrKysNCj4gPiAgZHJpdmVy
cy9pcnFjaGlwL01ha2VmaWxlIHwgMSArDQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pcnFjaGlwL0tjb25maWcgYi9k
cml2ZXJzL2lycWNoaXAvS2NvbmZpZyBpbmRleA0KPiA+IGJhMTUyOTU0MzI0Yi4uN2UyYjFlOWQw
YjQ1IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvaXJxY2hpcC9LY29uZmlnDQo+ID4gKysrIGIv
ZHJpdmVycy9pcnFjaGlwL0tjb25maWcNCj4gPiBAQCAtNDU3LDYgKzQ1NywxMiBAQCBjb25maWcg
SU1YX0lSUVNURUVSDQo+ID4gIAloZWxwDQo+ID4gIAkgIFN1cHBvcnQgZm9yIHRoZSBpLk1YIElS
UVNURUVSIGludGVycnVwdCBtdWx0aXBsZXhlci9yZW1hcHBlci4NCj4gPg0KPiA+ICtjb25maWcg
SU1YX0lOVE1VWA0KPiA+ICsJZGVmX2Jvb2wgeSBpZiBBUkNIX01YQw0KPiA+ICsJc2VsZWN0IElS
UV9ET01BSU4NCj4gPiArCWhlbHANCj4gPiArCSAgU3VwcG9ydCBmb3IgdGhlIGkuTVggSU5UTVVY
IGludGVycnVwdCBtdWx0aXBsZXhlci4NCj4gPiArDQo+ID4gIGNvbmZpZyBMUzFYX0lSUQ0KPiA+
ICAJYm9vbCAiTG9vbmdzb24tMSBJbnRlcnJ1cHQgQ29udHJvbGxlciINCj4gPiAgCWRlcGVuZHMg
b24gTUFDSF9MT09OR1NPTjMyDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaXJxY2hpcC9NYWtl
ZmlsZSBiL2RyaXZlcnMvaXJxY2hpcC9NYWtlZmlsZSBpbmRleA0KPiA+IGU4MDZkZGE2OTBlYS4u
YWY5NzZhNzlkMWZiIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvaXJxY2hpcC9NYWtlZmlsZQ0K
PiA+ICsrKyBiL2RyaXZlcnMvaXJxY2hpcC9NYWtlZmlsZQ0KPiA+IEBAIC0xMDAsNiArMTAwLDcg
QEAgb2JqLSQoQ09ORklHX0NTS1lfTVBJTlRDKQkJKz0NCj4gaXJxLWNza3ktbXBpbnRjLm8NCj4g
PiAgb2JqLSQoQ09ORklHX0NTS1lfQVBCX0lOVEMpCQkrPSBpcnEtY3NreS1hcGItaW50Yy5vDQo+
ID4gIG9iai0kKENPTkZJR19TSUZJVkVfUExJQykJCSs9IGlycS1zaWZpdmUtcGxpYy5vDQo+ID4g
IG9iai0kKENPTkZJR19JTVhfSVJRU1RFRVIpCQkrPSBpcnEtaW14LWlycXN0ZWVyLm8NCj4gPiAr
b2JqLSQoQ09ORklHX0lNWF9JTlRNVVgpCQkrPSBpcnEtaW14LWludG11eC5vDQo+ID4gIG9iai0k
KENPTkZJR19NQURFUkFfSVJRKQkJKz0gaXJxLW1hZGVyYS5vDQo+ID4gIG9iai0kKENPTkZJR19M
UzFYX0lSUSkJCQkrPSBpcnEtbHMxeC5vDQo+ID4gIG9iai0kKENPTkZJR19USV9TQ0lfSU5UUl9J
UlFDSElQKQkrPSBpcnEtdGktc2NpLWludHIubw0KPiANCj4gUGxlYXNlIG1lcmdlIHRoaXMgd2l0
aCB0aGUgcHJldmlvdXMgcGF0Y2gsIGl0IGRvZXNuJ3QgcmVhbGx5IHdhcnJhbnQgYSBzZXBhcmF0
ZQ0KPiBwYXRjaC4NCj4gDQo+IFRoYW5rcywNCg0KR290IGl0LiBUaGFua3MuDQoNCkJlc3QgUmVn
YXJkcywNCkpvYWtpbSBaaGFuZw0KPiAgICAgICAgICBNLg0KPiAtLQ0KPiBKYXp6IGlzIG5vdCBk
ZWFkLiBJdCBqdXN0IHNtZWxscyBmdW5ueS4uLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
