Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 035DC18F7C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 15:54:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W21i6SuXw0mMzi+wQIlA5cm7Gf+Xgy+KofmYIzlYQzw=; b=jCgs600UgJVOem
	WzHtPTOJbfQ/sqySfHO8NgyycZwOuReDtYflJg1PCDfKzGVYumKygBCf/hvirXiU0UB0eiRzo77uV
	RfIC0xwU22rwWPMyusMOvjjtLotsEM0AZEl4h0D1w3Z9GcZSfA3pFyD15o95dboENf1gpSTaF6XyB
	xV0/5+OX77dyDmD9MhINWb7GDePgM67Y7kN0w+/uZSEfzlX33daJM953JSl5H4Wk8muIwo99xtuS6
	PHDul53QhJwyiEX/enVCgvlOE0vUNoht1UG7nfcqTxZ7mZLWBg95wVc3NsFk+Aku/hL8+xuAJRP1N
	kGIR7XeFB+H+AJgsnhMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGOSr-0004uA-Mj; Mon, 23 Mar 2020 14:54:05 +0000
Received: from mail-eopbgr40082.outbound.protection.outlook.com ([40.107.4.82]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGOSk-0004tc-K8
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 14:54:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IPQBHWhp6sRL+89xEIlDiuwhe1d0k12pPwtVAAj/Rw3PlphIKpwhejia9lSFASYzLKS5fmiDBA47Wb7/T3avmjkoLlOIlD+dVPaXbXqgKj/XVjNJFCYMf6R/f8vV50YrF5mt19E33O3l/gPO2B+TNAkMveRBGiB/AnTHE3nBQo0RrWpPrXX439sAbylGcOxr+CvyTen9VE/La5oRRTVneHD7D4cjPvPhvxwXKanAi0DsTXcRhflCsqZs4PehyUyXFIk6FUO9rXEt2rOuEr638kOXl1GbBw9dJnXPrpPMO68PrqrvsFdCc4vr93S4hlQ9mQnKlWgUckj1vJlMQ6LF5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YrHWuPWR/Jj7H+EBKnCNV4IIKtLfYebb43wNU+QaX84=;
 b=Xji9VUlobFhBcMzvG8LuR1c0lMpmRZuSt/r2LAlaoeiXxzpAH9leyRb5tZdyLIzN1Fo8nOnYrOrqO8ijOsimA/aq+mGb0jBnOT/wAE8hY5ToBlCxhcpz7bGUWrFuutKOGgReqypk8X+H+Rbi021QPXsDNML7Buwr8s3o/RehaEidYsKT925SbT7QAm4guezVIHkDb3qQ6tSat601kY4kfhCU8VkSGNf/QaI/KT4aP3y6wpiZoBTAxV+9O3A1PpR2gIyoXxW/9pNH8GOjvMU3g8OEIx1qXAelmoFBz+Z/jLUcXB1vw9J3xPYVrsYGp8N4UNIrTbu1OL16yQ78BNXCgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YrHWuPWR/Jj7H+EBKnCNV4IIKtLfYebb43wNU+QaX84=;
 b=llQBe+5/kQgJXCm7JrmuZuai8cD+OH2qj70BDEKakqH5cNWqUzFt6iplfk5Y+3DIzc0x5nuMN/8BaBQ7tST5xXwqVcmOhx/zVd4g196pPWVKnoBDLcUHb76ql2H2YVFHl+vsrOLCHu+GNZlzyZ6jEDmbcZrghvbRHCVdzn/obAI=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3849.eurprd04.prod.outlook.com (52.134.71.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.21; Mon, 23 Mar 2020 14:53:56 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 14:53:56 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "rui.zhang@intel.com"
 <rui.zhang@intel.com>, "amit.kucheria@verdurent.com"
 <amit.kucheria@verdurent.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] thermal: imx8mm: Fix build warning of incorrect argument
 type
Thread-Topic: [PATCH] thermal: imx8mm: Fix build warning of incorrect argument
 type
Thread-Index: AQHWAR8IqER7H1rXjEuQj4zN1DgcyqhWPb2AgAAEhLA=
Date: Mon, 23 Mar 2020 14:53:55 +0000
Message-ID: <DB3PR0402MB39164815DDDB8F94507E36B4F5F00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1584973156-25734-1-git-send-email-Anson.Huang@nxp.com>
 <8f1f2d2b-33bc-b5e0-ad06-78f7ce54f2b7@linaro.org>
In-Reply-To: <8f1f2d2b-33bc-b5e0-ad06-78f7ce54f2b7@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3848308c-8d57-4087-25ed-08d7cf3a02ea
x-ms-traffictypediagnostic: DB3PR0402MB3849:|DB3PR0402MB3849:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3849CB25DB97FEC3864836A1F5F00@DB3PR0402MB3849.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 0351D213B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(136003)(366004)(376002)(199004)(7696005)(53546011)(26005)(86362001)(186003)(8936002)(110136005)(316002)(81166006)(44832011)(66446008)(64756008)(7416002)(33656002)(52536014)(71200400001)(66556008)(66946007)(76116006)(6506007)(81156014)(66476007)(4326008)(9686003)(55016002)(2906002)(5660300002)(8676002)(478600001)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3849;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PCT6tAfCLrXw3p1gPxWH/PD+Lh97yvZArh02PSGebWeZvFrkVB9LGLRLx2lbGN7TQhBDJilmOMU3DnvUNCfbGV1RBoDH81v/prT8iwT4aAZbl3ZeRaieid0O10Qcn9cRCaY1CJososRppQaHy/2gAfmc3gxpoUEq4T/4+UiZhKDR91U7DNNHoQAIUbauhu1SQ18V7+Xt3jTSnA/feTcfW0zJn9RZUa0BExluAIkOJJXR6+oGOlOw+8/bYasy+4cHKli/CjEyQD+g4VIoN4olmXobtHykBVxUIyViK2jixwsZ2BSRiv8wJkKIIn9IXboVx2twc3LAl6QdPYTB4e9ECqmwgU11QPQkcgr9W8CDELz6JqNYGlcG7Fyk/lTYgxPVOqicmaNEX3LPrI35qT/dDAP9ksyoh5ubSKirrw81wLoDARsCaDPj8DOBu8B1dGZc29VFLsbRy+wEY+AFUR/28Zj1QaaMwrAGnIUN7HNsWY3ULq6TGTHQ4cwJZ10zuA7i3N17TN1lZyWzq32Xv7oTww==
x-ms-exchange-antispam-messagedata: oBr/L6KLDUunYQs5AeoMCOmT7g4Eo/XexJhSlFa6xDzWUW1pKcDlW5wsWK72aawhs6ed9Wu9gTU8Q3sATVrE7Q7QBzZPPWhe7tl45sRH3096gNMsrFhSBGemC4XxbLHRuuDL2O7xL6uIH6X+W28/cg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3848308c-8d57-4087-25ed-08d7cf3a02ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2020 14:53:55.8567 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2kAlPlzYna444ABtGCxCkzZ2+xvm2HV6sYOqlixmtCmNAzkbWMDPHjBp7T94+wDM7xq7C+VID2UkxesLpumw4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3849
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_075358_668889_2C27ABE1 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIERhbmllbA0KDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIHRoZXJtYWw6IGlteDhtbTogRml4
IGJ1aWxkIHdhcm5pbmcgb2YgaW5jb3JyZWN0DQo+IGFyZ3VtZW50IHR5cGUNCj4gDQo+IE9uIDIz
LzAzLzIwMjAgMTU6MTksIEFuc29uIEh1YW5nIHdyb3RlOg0KPiA+IEZpeCBiZWxvdyBzcGFyc2Ug
d2FybmluZzoNCj4gPg0KPiA+IGRyaXZlcnMvdGhlcm1hbC9pbXg4bW1fdGhlcm1hbC5jOjgyOjM2
OiBzcGFyc2U6IHNwYXJzZTogaW5jb3JyZWN0IHR5cGUNCj4gPiBpbiBhcmd1bWVudCAyIChkaWZm
ZXJlbnQgYWRkcmVzcyBzcGFjZXMpLCBleHBlY3RlZCB1bnNpZ25lZCBsb25nIGNvbnN0DQo+ID4g
dm9sYXRpbGUgKmFkZHINCj4gPiBkcml2ZXJzL3RoZXJtYWwvaW14OG1tX3RoZXJtYWwuYzo4Mjoz
Njogc3BhcnNlOiBleHBlY3RlZCB1bnNpZ25lZCBsb25nDQo+ID4gY29uc3Qgdm9sYXRpbGUgKmFk
ZHINCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAu
Y29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL3RoZXJtYWwvaW14OG1tX3RoZXJtYWwuYyB8IDcg
KysrLS0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9pbXg4bW1fdGhlcm1h
bC5jDQo+ID4gYi9kcml2ZXJzL3RoZXJtYWwvaW14OG1tX3RoZXJtYWwuYw0KPiA+IGluZGV4IGMz
MjMwOGIuLjBkNjBmOGQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy90aGVybWFsL2lteDhtbV90
aGVybWFsLmMNCj4gPiArKysgYi9kcml2ZXJzL3RoZXJtYWwvaW14OG1tX3RoZXJtYWwuYw0KPiA+
IEBAIC03NSwxNSArNzUsMTQgQEAgc3RhdGljIGludCBpbXg4bXBfdG11X2dldF90ZW1wKHZvaWQg
KmRhdGEsIGludA0KPiA+ICp0ZW1wKSAgew0KPiA+ICAJc3RydWN0IHRtdV9zZW5zb3IgKnNlbnNv
ciA9IGRhdGE7DQo+ID4gIAlzdHJ1Y3QgaW14OG1tX3RtdSAqdG11ID0gc2Vuc29yLT5wcml2Ow0K
PiA+ICsJdW5zaWduZWQgbG9uZyB2YWw7DQo+ID4gIAlib29sIHJlYWR5Ow0KPiA+IC0JdTMyIHZh
bDsNCj4gPg0KPiA+IC0JcmVhZHkgPSB0ZXN0X2JpdChwcm9iZV9zdGF0dXNfb2Zmc2V0KHNlbnNv
ci0+aHdfaWQpLA0KPiA+IC0JCQkgdG11LT5iYXNlICsgVFJJVFNSKTsNCj4gPiArCXZhbCA9IHJl
YWRsX3JlbGF4ZWQodG11LT5iYXNlICsgVFJJVFNSKTsNCj4gPiArCXJlYWR5ID0gdGVzdF9iaXQo
cHJvYmVfc3RhdHVzX29mZnNldChzZW5zb3ItPmh3X2lkKSwgJnZhbCk7DQo+ID4gIAlpZiAoIXJl
YWR5KQ0KPiA+ICAJCXJldHVybiAtRUFHQUlOOw0KPiANCj4gRG9lc24ndCB0aGlzIHBhdGNoIGFs
c28gZml4IGEgYnVnIGJlY2F1c2UgdGhlIHJlYWQgd2FzIGRvbmUgYWZ0ZXIgdGVzdGluZyB0aGUN
Cj4gYml0PyA6KQ0KDQpZZXPwn5iKIFByZXZpb3VzIHBhdGNoIHJlYWRzIHRoZSByZWdpc3RlciB0
d2ljZSBhdCBkaWZmZXJlbnQgdGltZSwgbWF5IGNhdXNlIGENCnN5bmMgaXNzdWUgb2YgY2hlY2tp
bmcgdGhlIHJlYWR5IGJpdCBhbmQgcmVhZGluZyB0aGUgdGVtcGVyYXR1cmUgdXNpbmcgcmVnaXN0
ZXINCnZhbHVlcyByZWFkIGF0IGRpZmZlcmVudCB0aW1lLg0KDQpEbyBJIG5lZWQgdG8gaW1wcm92
ZSB0aGUgY29tbWl0IGxvZz8gSSBndWVzcyBubyBuZWVkPw0KDQpUaGFua3MsDQpBbnNvbiANCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
