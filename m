Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5D0176FA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 07:54:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iOPGGAtN9AlZyjPZd7SbpiwsrPiDYKAiypojCEWjOpw=; b=JkpZMh3zwVL0fK
	mVnNgRA0m/p6IWrgWgbr5mJrppzJXWfImnqYYYEZOkdhgyOaJmPsk2wpNWzLclZZZvqVomoe6o2Tl
	ZJRSvw0Bkofyuohx1GDunKOWyaP8MD5YqNjjD2i0xZjef5kTdHlzBIX7uGrAMaJWFt5GYYZ0ZWqJw
	e6FpM7tyZUAy5EcoYfQipv8SuKCjIs5WkDUKMAUlSvjtxdYKSKLTA1abBkTCIrTgaKN4O1+4+CbCb
	Q5JF7lZrGCNZLi3RU28t4ppipsjEEuhgtjFO5FT8KOFGWQJNH/RiRTM3nJ/EsfExO6i7c3D93wQ40
	7BFZxMjVxZF4sPDmTs1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j91RU-0005iG-8W; Tue, 03 Mar 2020 06:54:12 +0000
Received: from mail-vi1eur04on0630.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::630]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j91RK-0005ho-CI
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 06:54:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=of0VZltce/bX7lTS0VG+IsAxtUkhbRL0n9lPlHuvfp5sQsDp1V76zvNQtnD14L3y3YuMzWZVwzZRH/3M+bKj+yvZtHxj8YYBAe4nlsuV6tqM5aYg+ltCOcyQj9Z8ZqS4m+hTvMA+3s7P8nHaaHS9EPthmA4+GXXsn1F3cyw0N/+5jO8/kQ04QTaojF/rk1Fw5saxT2doqSZaTkXe+sXl4ozT2IXSkaHRQ8YtA77iJDa0P3tdzlYdmVCPOabJM0G5E58s+v+NRdckKtE7HlS+8W1M9RhzmrVmcXab8phvlkY2v87F6iKS6W2w6oek36CWOIHd4JoVzVAkGRP9pf6ahw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=88+IUAPXNnjkD3pAfHScTLzEe2xrNwCxDW9fFrR+x3M=;
 b=ceslU2x5ldWtAOZ7xlyJFYkgdJQhHuWDLX9PA6iPzqXQeAGSaFKtek2jMBiM8d3ldtigjxKAI6dAdK/qgPc8xd2ts3HSmn7kN/j/PnKzx8gph6/24nMtBc/3IBJsqqdr3vfUm9QNOLLk4h1JACd+5ykc/Iv5UNdclJLB0s+ikbXKjvA30Wq9pauxJkJQdIDtDnuefbKaFolujqvEuBNsRRvFWS8TEJP0ccOSsFs8kRx25jXaGukWhBFN7SV7yrVpqID34FLelsaTVjompTwYmmakboVpAxBRE2ERcUghoTkMARy8k8Qj9kZUu8aRHeCZrsOItzWt+bm0ErTZOGaCVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=88+IUAPXNnjkD3pAfHScTLzEe2xrNwCxDW9fFrR+x3M=;
 b=CXRT+RhgbWhLrumQGqPGC7gcbFzsXzq2pUx4yXy0ruWBT1nI7wNyeDafSac4RkFi8CBBeZmqXQ9pgr3BEFMA+GkUREhUfV7sJ2EpQL4y+MmTK8Hgj93eFb3OM1jHtAqBBLhw7Fz5UL4eAFCgeOVKfGZ6U2dvazw8jACNAWOaAPM=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5010.eurprd04.prod.outlook.com (20.176.215.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Tue, 3 Mar 2020 06:53:59 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 06:53:59 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>
Subject: RE: [PATCH V4 3/4] mailbox: imx: add SCU MU support
Thread-Topic: [PATCH V4 3/4] mailbox: imx: add SCU MU support
Thread-Index: AQHV8P9gtBHEOtjV/02/GKSnlIf9uqg2bNcAgAAAiMA=
Date: Tue, 3 Mar 2020 06:53:59 +0000
Message-ID: <AM0PR04MB4481DB6D5A00DBE864CE58AA88E40@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583200380-15623-1-git-send-email-peng.fan@nxp.com>
 <1583200380-15623-4-git-send-email-peng.fan@nxp.com>
 <cad0891c-6c81-3dd8-924b-06e920408243@pengutronix.de>
In-Reply-To: <cad0891c-6c81-3dd8-924b-06e920408243@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d8154ddf-b4f9-4d3a-39df-08d7bf3fa69c
x-ms-traffictypediagnostic: AM0PR04MB5010:|AM0PR04MB5010:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5010639A676B95F032DA989188E40@AM0PR04MB5010.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03319F6FEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(39860400002)(366004)(136003)(199004)(189003)(45080400002)(81156014)(478600001)(66476007)(81166006)(8676002)(53546011)(6506007)(8936002)(76116006)(64756008)(966005)(66556008)(7696005)(52536014)(54906003)(5660300002)(15650500001)(316002)(66446008)(110136005)(66946007)(2906002)(33656002)(86362001)(26005)(4326008)(186003)(71200400001)(55016002)(9686003)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5010;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s1ajyse08ZXB5fdSf/pLWjuzP+JjUZXqtMfDesIT2w0SImMYevkuPmzAgcWY4dMrNkX3kT8T4yFfJiHLTz87U8h0t385bDsYK2uCqLLRcTDPg30eRpaXoOWeoMXyp4BFSnZgt3j7Uh/VMYodqrEV42aDNbB2LFka9wbdx6F3lC28BfiBp1Z5eeH1+kwfELnnxYAYCBGz85m0kh3qUKE0T0tpPFUUosxM07U1SeHq5zoSVeDtv9g/kVUnd5i8Wxhb6qn0zjJFwngfyQgiF6yJsu5xSfGnBe21dCCL1FWUqpQ5J11Ihq/ZF+j2SFywlhP3rgaH0hp7PFKsn/4OQMGFOnM4CG3anwT1poEbr3P8RcaQnaAaMv0PdZ2owPzECiz07uOXmXCGTkAhdqGOPDclxrTljmtIJzQQshkkALjgalVUi9KiHWXG02nXeTIvIy3s42+uKM360eUxInz12rnaCUNT1sgLuI1Bx/NDeM46NjQsnRiNLWgeECuFCdR0dRhVqqiLStNGG9khFK7SofCoKA==
x-ms-exchange-antispam-messagedata: TLD9GkKG/qFAcRRSeTxwL+pgkWsS55B+Z6CNjHAA16vwdUtVuapOCOWN66hS1xnE+T/b825TBC/Jlj6M9I4SKidnQx4FeL81QTW6Z3LTrn6UeCKZY4yY9llphMYykxdWK+2yYeb9aEIj+w7hNjjkSA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8154ddf-b4f9-4d3a-39df-08d7bf3fa69c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2020 06:53:59.4066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kLrIIMq5hw8sV6PZCnE2opWV7T57Pvriso4f0wfr7VjYicGs3m1Mv29pMNpTLnVJK/altP5CsRTUNFHyA3OrQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_225402_675515_0B4CB1A8 
X-CRM114-Status: GOOD (  28.83  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:630 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBTdWJqZWN0OiBSZTogW1BBVENIIFY0IDMvNF0gbWFpbGJveDogaW14OiBhZGQgU0NVIE1VIHN1
cHBvcnQNCj4gDQo+IA0KPiANCj4gT24gMDMuMDMuMjAgMDI6NTIsIHBlbmcuZmFuQG54cC5jb20g
d3JvdGU6DQo+ID4gRnJvbTogUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+DQo+ID4NCj4gPiBp
Lk1YOC84WCBTQ1UgTVUgaXMgZGVkaWNhdGVkIGZvciBjb21tdW5pY2F0aW9uIGJldHdlZW4gU0NV
IGFuZA0KPiA+IENvcnRleC1BIGNvcmVzIGZyb20gaGFyZHdhcmUgZGVzaWduLCBhbmQgY291bGQg
bm90IGJlIHJldXNlZCBmb3Igb3RoZXINCj4gcHVycG9zZS4NCj4gPg0KPiA+IFBlciBpLk1YOC84
WCBSZWZlcmVuY2UgbWFubnVhbCwgQ2hhcHRlciAiMTIuOS4yLjMuMiBNZXNzYWdpbmcNCj4gRXhh
bXBsZXMiLA0KPiA+ICAgUGFzc2luZyBzaG9ydCBtZXNzYWdlczogVHJhbnNtaXQgcmVnaXN0ZXIo
cykgY2FuIGJlIHVzZWQgdG8gcGFzcw0KPiA+ICAgc2hvcnQgbWVzc2FnZXMgZnJvbSBvbmUgdG8g
Zm91ciB3b3JkcyBpbiBsZW5ndGguIEZvciBleGFtcGxlLCB3aGVuDQo+ID4gICBhIGZvdXItd29y
ZCBtZXNzYWdlIGlzIGRlc2lyZWQsIG9ubHkgb25lIG9mIHRoZSByZWdpc3RlcnMgbmVlZHMgdG8N
Cj4gPiAgIGhhdmUgaXRzIGNvcnJlc3BvbmRpbmcgaW50ZXJydXB0IGVuYWJsZSBiaXQgc2V0IGF0
IHRoZSByZWNlaXZlciBzaWRlOw0KPiA+ICAgdGhlIG1lc3NhZ2XigJlzIGZpcnN0IHRocmVlIHdv
cmRzIGFyZSB3cml0dGVuIHRvIHRoZSByZWdpc3RlcnMgd2hvc2UNCj4gPiAgIGludGVycnVwdCBp
cyBtYXNrZWQsIGFuZCB0aGUgZm91cnRoIHdvcmQgaXMgd3JpdHRlbiB0byB0aGUgb3RoZXINCj4g
PiAgIHJlZ2lzdGVyICh3aGljaCB0cmlnZ2VycyBhbiBpbnRlcnJ1cHQgYXQgdGhlIHJlY2VpdmVy
IHNpZGUpLg0KPiA+DQo+ID4gaS5NWDgvOFggU0NVIGZpcm13YXJlIElQQyBpcyBhbiBpbXBsZW1l
bnRhdGlvbiBvZiBwYXNzaW5nIHNob3J0DQo+ID4gbWVzc2FnZXMuIEJ1dCBjdXJyZW50IGlteC1t
YWlsYm94IGRyaXZlciBvbmx5IHN1cHBvcnQgb25lIHdvcmQNCj4gPiBtZXNzYWdlLCBpLk1YOC84
WCBsaW51eCBzaWRlIGZpcm13YXJlIGhhcyB0byByZXF1ZXN0IGZvdXIgVFggYW5kIGZvdXINCj4g
PiBSWCB0byBzdXBwb3J0IElQQyB0byBTQ1UgZmlybXdhcmUuIFRoaXMgaXMgbG93IGVmZmljZW50
IGFuZCBtb3JlDQo+ID4gaW50ZXJydXB0cyB0cmlnZ2VyZWQgY29tcGFyZWQgd2l0aCBvbmUgVFgg
YW5kIG9uZSBSWC4NCj4gPg0KPiA+IFRvIG1ha2UgU0NVIE1VIHdvcmssDQo+ID4gICAgLSBwYXJz
ZSB0aGUgc2l6ZSBvZiBtc2cuDQo+ID4gICAgLSBPbmx5IGVuYWJsZSBUUjAvUlIwIGludGVycnVw
dCBmb3IgdHJhbnNtaXQvcmVjZWl2ZSBtZXNzYWdlLg0KPiA+ICAgIC0gRm9yIFRYL1JYLCBvbmx5
IHN1cHBvcnQgb25lIFRYIGNoYW5uZWwgYW5kIG9uZSBSWCBjaGFubmVsDQo+ID4gICAgLSBGb3Ig
UlgsIHN1cHBvcnQgcmVjZWl2ZSBtc2cgbGFyZ2VyIHRoYW4gNCB1MzIgd29yZHMuDQo+ID4gICAg
LSBTdXBwb3J0IDYgY2hhbm5lbHMsIFRYMC9SWDAvUlhEQlswLTNdLCBub3Qgc3VwcG9ydCBUWERC
Lg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+DQo+
ID4gLS0tDQo+ID4gVjQ6DQo+ID4gICBBZGRlZCBzZXBhcmF0ZSBjaGFucyBpbml0IGFuZCB4bGF0
ZSBmdW5jdGlvbiBmb3IgU0NVIE1VDQo+ID4gICBMaW1pdCBjaGFucyB0byBUWDAvUlgwL1JYREJb
MC0zXSwgbWF4IDYgY2hhbnMuDQo+ID4gICBTYW50aXR5IGNoZWNrIHRvIG1zZyBzaXplDQo+ID4N
Cj4gPiBWMzoNCj4gPiAgIEFkZGVkIHNjdSB0eXBlIHR4L3J4IGFuZCBTQ1UgTVUgdHlwZQ0KPiA+
DQo+ID4gICBkcml2ZXJzL21haWxib3gvaW14LW1haWxib3guYyB8IDEyOA0KPiArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAx
MjcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5jDQo+ID4gYi9kcml2ZXJzL21haWxib3gvaW14LW1h
aWxib3guYyBpbmRleCBlOThmMzU1MGY5OTUuLmZiZGNkNjhkODQ5MA0KPiA+IDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5jDQo+ID4gKysrIGIvZHJpdmVycy9t
YWlsYm94L2lteC1tYWlsYm94LmMNCj4gPiBAQCAtNCw2ICs0LDcgQEANCj4gPiAgICAqLw0KPiA+
DQo+ID4gICAjaW5jbHVkZSA8bGludXgvY2xrLmg+DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9maXJt
d2FyZS9pbXgvaXBjLmg+DQo+ID4gICAjaW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+DQo+ID4g
ICAjaW5jbHVkZSA8bGludXgvaW8uaD4NCj4gPiAgICNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4N
Cj4gPiBAQCAtMjcsNiArMjgsOCBAQA0KPiA+ICAgI2RlZmluZSBJTVhfTVVfeENSX0dJUm4oeCkJ
QklUKDE2ICsgKDMgLSAoeCkpKQ0KPiA+DQo+ID4gICAjZGVmaW5lIElNWF9NVV9DSEFOUwkJMTYN
Cj4gPiArLyogVFgwL1JYMC9SWERCWzAtM10gKi8NCj4gPiArI2RlZmluZSBJTVhfTVVfU0NVX0NI
QU5TCTYNCj4gPiAgICNkZWZpbmUgSU1YX01VX0NIQU5fTkFNRV9TSVpFCTIwDQo+ID4NCj4gPiAg
IGVudW0gaW14X211X2NoYW5fdHlwZSB7DQo+ID4gQEAgLTM5LDYgKzQyLDExIEBAIGVudW0gaW14
X211X2NoYW5fdHlwZSB7DQo+ID4gICBzdHJ1Y3QgaW14X211X3ByaXY7DQo+ID4gICBzdHJ1Y3Qg
aW14X211X2Nvbl9wcml2Ow0KPiA+DQo+ID4gK3N0cnVjdCBpbXhfc2NfcnBjX21zZ19tYXggew0K
PiA+ICsJc3RydWN0IGlteF9zY19ycGNfbXNnIGhkcjsNCj4gPiArCXUzMiBkYXRhWzddOw0KPiA+
ICt9IF9fcGFja2VkIF9fYWxpZ25lZCg0KTsNCj4gDQo+IF9fcGFja2VkIF9fYWxpZ25lZCg0KSBs
b29rcyBsaWtlIHNvbWUgc29ydCBvZiBzdXBlcnN0aXRpb24uIGhkciBpcyA0IGJ5dGUgYW5kDQo+
IHUzMiBpcyA0IGJ5dGUgYXMgd2VsbC4gV2hhdCBraW5kIG9mIHByb2JsZW1zIHNob3VsZCBpdCBz
b2x2ZT8NCg0KUGxlYXNlIHNlZQ0KaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvc2hhd25ndW8vbGludXguZ2l0Lw0KY29tbWl0Lz9oPWZvci1uZXh0JmlkPTJh
MTgyZjI3ZmY1ZDU2ZDNhZjk5Yjk4NmI3MzIxZmM4MWFhODBkNjUNCg0KU2VlbXMgbm90IG5lZWRl
ZC4gSSdsbCBkcm9wIGl0IGluIFY1Lg0KDQo+IA0KPiANCj4gDQo+ID4gKw0KPiA+ICAgc3RydWN0
IGlteF9tdV9kY2ZnIHsNCj4gPiAgIAlpbnQgKCp0eCkoc3RydWN0IGlteF9tdV9wcml2ICpwcml2
LCBzdHJ1Y3QgaW14X211X2Nvbl9wcml2ICpjcCwgdm9pZA0KPiAqZGF0YSk7DQo+ID4gICAJaW50
ICgqcngpKHN0cnVjdCBpbXhfbXVfcHJpdiAqcHJpdiwgc3RydWN0IGlteF9tdV9jb25fcHJpdiAq
Y3ApOw0KPiA+IEBAIC0xMzYsNiArMTQ0LDU2IEBAIHN0YXRpYyBpbnQgaW14X211X2dlbmVyaWNf
cngoc3RydWN0IGlteF9tdV9wcml2DQo+ICpwcml2LA0KPiA+ICAgCXJldHVybiAwOw0KPiA+ICAg
fQ0KPiA+DQo+ID4gK3N0YXRpYyBpbnQgaW14X211X3NjdV90eChzdHJ1Y3QgaW14X211X3ByaXYg
KnByaXYsDQo+ID4gKwkJCSBzdHJ1Y3QgaW14X211X2Nvbl9wcml2ICpjcCwNCj4gPiArCQkJIHZv
aWQgKmRhdGEpDQo+ID4gK3sNCj4gPiArCXN0cnVjdCBpbXhfc2NfcnBjX21zZ19tYXggKm1zZyA9
IGRhdGE7DQo+ID4gKwl1MzIgKmFyZyA9IGRhdGE7DQo+ID4gKwlpbnQgaTsNCj4gPiArDQo+ID4g
Kwlzd2l0Y2ggKGNwLT50eXBlKSB7DQo+ID4gKwljYXNlIElNWF9NVV9UWVBFX1RYOg0KPiA+ICsJ
CWlmIChtc2ctPmhkci5zaXplID4gc2l6ZW9mKHN0cnVjdCBpbXhfc2NfcnBjX21zZ19tYXgpKSB7
DQo+IA0KPiBwbGVhc2UgdXNlLCBzaXplb2YoKm1zZykNCj4gDQo+IGFuZCB3ZSBuZWVkIGhlcmUg
YSBjb21tZW50Og0KPiAvKiB0aGUgcmVhbCBtZXNzYWdlIHNpemUgY2FuIGJlIGRpZmZlcmVudCB0
byBzdHJ1Y3QgaW14X3NjX3JwY19tc2dfbWF4IHNpemUNCj4gKi8NCj4gDQo+ID4gKwkJCWRldl9l
cnIocHJpdi0+ZGV2LCAiRXhjZWVkIG1heCBtc2cgc2l6ZVxuIik7DQo+IA0KPiBwbGVhc2UsDQo+
IGRldl9lcnIocHJpdi0+ZGV2LCAiRXhjZWVkIG1heCBtc2cgc2l6ZSAoJWkpIG9uIFRYLCBnb3Q6
ICVpXG4iLCBzaXplb2YobXNnKSwNCj4gbXNnLmhkci5zaXplKTsNCj4gDQo+IG9yIHNvbWUgdGhp
bmcgbGlrZSB0aGlzLg0KDQpvaywgZml4IGluIHY1Lg0KDQo+IA0KPiA+ICsJCQlyZXR1cm4gLUVJ
TlZBTDsNCj4gPiArCQl9DQo+IA0KPiBwbGVhc2UgYWRkIHNwYWNlDQoNCkZpeCBpbiB2NS4NCg0K
PiANCj4gPiArCQlmb3IgKGkgPSAwOyBpIDwgbXNnLT5oZHIuc2l6ZTsgaSsrKSB7DQo+ID4gKwkJ
CWlteF9tdV93cml0ZShwcml2LCAqYXJnKyssDQo+ID4gKwkJCQkgICAgIHByaXYtPmRjZmctPnhU
UltpICUgNF0pOw0KPiA+ICsJCX0NCj4gDQo+IHBsZWFzZSByZW1vdmUge30NCg0KRml4IGluIFY1
Lg0KDQo+IA0KPiA+ICsJCWlteF9tdV94Y3Jfcm13KHByaXYsIElNWF9NVV94Q1JfVElFbihjcC0+
aWR4KSwgMCk7DQo+ID4gKwkJYnJlYWs7DQo+ID4gKwlkZWZhdWx0Og0KPiA+ICsJCWRldl93YXJu
X3JhdGVsaW1pdGVkKHByaXYtPmRldiwgIlNlbmQgZGF0YSBvbiB3cm9uZyBjaGFubmVsDQo+IHR5
cGU6ICVkXG4iLCBjcC0+dHlwZSk7DQo+ID4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gKwl9DQo+
ID4gKw0KPiA+ICsJcmV0dXJuIDA7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgaW14
X211X3NjdV9yeChzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYsDQo+ID4gKwkJCSBzdHJ1Y3QgaW14
X211X2Nvbl9wcml2ICpjcCkNCj4gPiArew0KPiA+ICsJc3RydWN0IGlteF9zY19ycGNfbXNnX21h
eCBtc2c7DQo+ID4gKwl1MzIgKmRhdGEgPSAodTMyICopJm1zZzsNCj4gPiArCWludCBpOw0KPiA+
ICsNCj4gPiArCWlteF9tdV94Y3Jfcm13KHByaXYsIDAsIElNWF9NVV94Q1JfUklFbigwKSk7DQo+
ID4gKwkqZGF0YSsrID0gaW14X211X3JlYWQocHJpdiwgcHJpdi0+ZGNmZy0+eFJSWzBdKTsNCj4g
DQo+IHBsZWFzZSBhZGQgc3BhY2UNCg0KRml4IGluIHY1Lg0KDQo+IA0KPiA+ICsJaWYgKG1zZy5o
ZHIuc2l6ZSA+IHNpemVvZihzdHJ1Y3QgaW14X3NjX3JwY19tc2dfbWF4KSkgew0KPiANCj4gcGxl
YXNlIHVzZSBzaXplb2YobXNnKSBpbnN0ZWFkLg0KPiANCj4gPiArCQlkZXZfZXJyKHByaXYtPmRl
diwgIkV4Y2VlZCBtYXggbXNnIHNpemVcbiIpOw0KPiANCj4gcGxlYXNlLA0KPiBkZXZfZXJyKHBy
aXYtPmRldiwgIkV4Y2VlZCBtYXggbXNnIHNpemUgKCVpKSBvbiBSWCwgZ290OiAlaVxuIiwgc2l6
ZW9mKG1zZyksDQo+IG1zZy5oZHIuc2l6ZSk7DQo+IA0KPiBvciBzb21lIHRoaW5nIGxpa2UgdGhp
cy4NCg0KRml4IGluIHY1Lg0KDQo+IA0KPiA+ICsJCXJldHVybiAtRUlOVkFMOw0KPiA+ICsJfQ0K
PiANCj4gcGxlYXNlIGFkZCBzcGFjZQ0KDQpGaXggaW4gdjUuDQoNCj4gDQo+ID4gKwlmb3IgKGkg
PSAxOyBpIDwgbXNnLmhkci5zaXplOyBpKyspDQo+ID4gKwkJKmRhdGErKyA9IGlteF9tdV9yZWFk
KHByaXYsIHByaXYtPmRjZmctPnhSUltpICUgNF0pOw0KPiA+ICsNCj4gPiArCWlteF9tdV94Y3Jf
cm13KHByaXYsIElNWF9NVV94Q1JfUklFbigwKSwgMCk7DQo+ID4gKwltYm94X2NoYW5fcmVjZWl2
ZWRfZGF0YShjcC0+Y2hhbiwgKHZvaWQgKikmbXNnKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gMDsN
Cj4gPiArfQ0KPiA+ICsNCj4gPiAgIHN0YXRpYyB2b2lkIGlteF9tdV90eGRiX3Rhc2tsZXQodW5z
aWduZWQgbG9uZyBkYXRhKQ0KPiA+ICAgew0KPiA+ICAgCXN0cnVjdCBpbXhfbXVfY29uX3ByaXYg
KmNwID0gKHN0cnVjdCBpbXhfbXVfY29uX3ByaXYgKilkYXRhOw0KPiA+IEBAIC0yNjUsNiArMzIz
LDM5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbWJveF9jaGFuX29wcyBpbXhfbXVfb3BzID0NCj4g
ew0KPiA+ICAgCS5zaHV0ZG93biA9IGlteF9tdV9zaHV0ZG93biwNCj4gPiAgIH07DQo+ID4NCj4g
PiArc3RhdGljIHN0cnVjdCBtYm94X2NoYW4gKmlteF9tdV9zY3VfeGxhdGUoc3RydWN0IG1ib3hf
Y29udHJvbGxlcg0KPiAqbWJveCwNCj4gPiArCQkJCQkgIGNvbnN0IHN0cnVjdCBvZl9waGFuZGxl
X2FyZ3MgKnNwKQ0KPiA+ICt7DQo+ID4gKwl1MzIgdHlwZSwgaWR4LCBjaGFuOw0KPiA+ICsNCj4g
PiArCWlmIChzcC0+YXJnc19jb3VudCAhPSAyKSB7DQo+ID4gKwkJZGV2X2VycihtYm94LT5kZXYs
ICJJbnZhbGlkIGFyZ3VtZW50IGNvdW50ICVkXG4iLA0KPiBzcC0+YXJnc19jb3VudCk7DQo+ID4g
KwkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJdHlwZSA9
IHNwLT5hcmdzWzBdOyAvKiBjaGFubmVsIHR5cGUgKi8NCj4gPiArCWlkeCA9IHNwLT5hcmdzWzFd
OyAvKiBpbmRleCAqLw0KPiA+ICsNCj4gPiArCXN3aXRjaCAodHlwZSkgew0KPiA+ICsJY2FzZSBJ
TVhfTVVfVFlQRV9UWDoNCj4gPiArCWNhc2UgSU1YX01VX1RZUEVfUlg6DQo+IA0KPiBwbGVhc2Ug
YWRkIHNhbml0eSBjaGVjayBmb3IgaWR4IGFuZCBwcmludCBzb21lIGVycm9yLg0KDQpXaWxsIGFk
ZCBzb21ldGhpbmcgYXMgYmVsb3c6DQogaWYgKGlkeCAhPSAwKQ0KCWRldl9lcnIobWJveC0+ZGV2
LCAiSW52YWxpZCBjaGFubmVsIGluZGV4OiAlZFxuIiwgaWR4KQ0KDQo+IA0KPiA+ICsJCWNoYW4g
PSB0eXBlOw0KPiA+ICsJCWJyZWFrOw0KPiA+ICsJY2FzZSBJTVhfTVVfVFlQRV9SWERCOg0KPiA+
ICsJCWNoYW4gPSAyICsgaWR4Ow0KPiA+ICsJCWJyZWFrOw0KPiA+ICsJZGVmYXVsdDoNCj4gDQo+
IHBsZWFzZSBwcmludCBoZXJlIHNvbWUgdXNlZnVsIGVycm9yLg0KDQpPay4NCg0KPiANCj4gPiAr
CQlyZXR1cm4gTlVMTDsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwlpZiAoY2hhbiA+PSBtYm94LT5u
dW1fY2hhbnMpIHsNCj4gPiArCQlkZXZfZXJyKG1ib3gtPmRldiwgIk5vdCBzdXBwb3J0ZWQgY2hh
bm5lbCBudW1iZXI6ICVkLiAodHlwZTogJWQsDQo+IGlkeDogJWQpXG4iLCBjaGFuLCB0eXBlLCBp
ZHgpOw0KPiA+ICsJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOw0KPiA+ICsJfQ0KPiA+ICsNCj4g
PiArCXJldHVybiAmbWJveC0+Y2hhbnNbY2hhbl07DQo+ID4gK30NCj4gPiArDQo+ID4gICBzdGF0
aWMgc3RydWN0IG1ib3hfY2hhbiAqIGlteF9tdV94bGF0ZShzdHJ1Y3QgbWJveF9jb250cm9sbGVy
ICptYm94LA0KPiA+ICAgCQkJCSAgICAgICBjb25zdCBzdHJ1Y3Qgb2ZfcGhhbmRsZV9hcmdzICpz
cCkNCj4gPiAgIHsNCj4gPiBAQCAtMzEyLDYgKzQwMywyOCBAQCBzdGF0aWMgdm9pZCBpbXhfbXVf
aW5pdF9nZW5lcmljKHN0cnVjdA0KPiBpbXhfbXVfcHJpdiAqcHJpdikNCj4gPiAgIAlpbXhfbXVf
d3JpdGUocHJpdiwgMCwgcHJpdi0+ZGNmZy0+eENSKTsNCj4gPiAgIH0NCj4gPg0KPiA+ICtzdGF0
aWMgdm9pZCBpbXhfbXVfaW5pdF9zY3Uoc3RydWN0IGlteF9tdV9wcml2ICpwcml2KQ0KPiA+ICt7
DQo+ID4gKwl1bnNpZ25lZCBpbnQgaTsNCj4gPiArDQo+ID4gKwlmb3IgKGkgPSAwOyBpIDwgSU1Y
X01VX1NDVV9DSEFOUzsgaSsrKSB7DQo+ID4gKwkJc3RydWN0IGlteF9tdV9jb25fcHJpdiAqY3Ag
PSAmcHJpdi0+Y29uX3ByaXZbaV07DQo+ID4gKw0KPiA+ICsJCWNwLT5pZHggPSBpIDwgMiA/IDAg
OiBpIC0gMjsNCj4gPiArCQljcC0+dHlwZSA9IGkgPCAyID8gaSA6IElNWF9NVV9UWVBFX1JYREI7
DQo+ID4gKwkJY3AtPmNoYW4gPSAmcHJpdi0+bWJveF9jaGFuc1tpXTsNCj4gPiArCQlwcml2LT5t
Ym94X2NoYW5zW2ldLmNvbl9wcml2ID0gY3A7DQo+ID4gKwkJc25wcmludGYoY3AtPmlycV9kZXNj
LCBzaXplb2YoY3AtPmlycV9kZXNjKSwNCj4gPiArCQkJICJpbXhfbXVfY2hhblslaS0laV0iLCBj
cC0+dHlwZSwgY3AtPmlkeCk7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJcHJpdi0+bWJveC5udW1f
Y2hhbnMgPSBJTVhfTVVfU0NVX0NIQU5TOw0KPiA+ICsJcHJpdi0+bWJveC5vZl94bGF0ZSA9IGlt
eF9tdV9zY3VfeGxhdGU7DQo+ID4gKw0KPiA+ICsJLyogU2V0IGRlZmF1bHQgTVUgY29uZmlndXJh
dGlvbiAqLw0KPiA+ICsJaW14X211X3dyaXRlKHByaXYsIDAsIHByaXYtPmRjZmctPnhDUik7DQo+
ID4gK30NCj4gPiArDQo+ID4gICBzdGF0aWMgaW50IGlteF9tdV9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQ0KPiA+ICAgew0KPiA+ICAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZw
ZGV2LT5kZXY7DQo+ID4gQEAgLTM1NSw3ICs0NjgsMTAgQEAgc3RhdGljIGludCBpbXhfbXVfcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZQ0KPiAqcGRldikNCj4gPg0KPiA+ICAgCXByaXYtPnNp
ZGVfYiA9IG9mX3Byb3BlcnR5X3JlYWRfYm9vbChucCwgImZzbCxtdS1zaWRlLWIiKTsNCj4gPg0K
PiA+IC0JaW14X211X2luaXRfZ2VuZXJpYyhwcml2KTsNCj4gPiArCWlmIChvZl9kZXZpY2VfaXNf
Y29tcGF0aWJsZShucCwgImZzbCxpbXg4LW11LXNjdSIpKQ0KPiA+ICsJCWlteF9tdV9pbml0X3Nj
dShwcml2KTsNCj4gPiArCWVsc2UNCj4gPiArCQlpbXhfbXVfaW5pdF9nZW5lcmljKHByaXYpOw0K
PiANCj4gd2UgYWxyZWFkeSBoYXZlIGEgd2F5IHRvIGV4ZWN1dGUgZGV2aWNlIHNwZWNpZmljIGZ1
bmN0aW9ucywgcGxlYXNlIGJlDQo+IGNvbnNlcXVlbnQuDQoNCndpbGwgdXNlIHByaXYtPmRjZmct
PmluaXQNCg0KVGhhbmtzLA0KUGVuZy4NCg0KPiANCj4gPg0KPiA+ICAgCXNwaW5fbG9ja19pbml0
KCZwcml2LT54Y3JfbG9jayk7DQo+ID4NCj4gPiBAQCAtMzk2LDkgKzUxMiwxOSBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IGlteF9tdV9kY2ZnDQo+IGlteF9tdV9jZmdfaW14N3VscCA9IHsNCj4gPiAg
IAkueENSCT0gMHg2NCwNCj4gPiAgIH07DQo+ID4NCj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBp
bXhfbXVfZGNmZyBpbXhfbXVfY2ZnX2lteDhfc2N1ID0gew0KPiA+ICsJLnR4CT0gaW14X211X3Nj
dV90eCwNCj4gPiArCS5yeAk9IGlteF9tdV9zY3VfcngsDQo+ID4gKwkueFRSCT0gezB4MCwgMHg0
LCAweDgsIDB4Y30sDQo+ID4gKwkueFJSCT0gezB4MTAsIDB4MTQsIDB4MTgsIDB4MWN9LA0KPiA+
ICsJLnhTUgk9IDB4MjAsDQo+ID4gKwkueENSCT0gMHgyNCwNCj4gPiArfTsNCj4gPiArDQo+ID4g
ICBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBpbXhfbXVfZHRfaWRzW10gPSB7DQo+
ID4gICAJeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14N3VscC1tdSIsIC5kYXRhID0gJmlteF9tdV9j
ZmdfaW14N3VscCB9LA0KPiA+ICAgCXsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDZzeC1tdSIsIC5k
YXRhID0gJmlteF9tdV9jZmdfaW14NnN4IH0sDQo+ID4gKwl7IC5jb21wYXRpYmxlID0gImZzbCxp
bXg4LW11LXNjdSIsIC5kYXRhID0gJmlteF9tdV9jZmdfaW14OF9zY3UgfSwNCj4gPiAgIAl7IH0s
DQo+ID4gICB9Ow0KPiA+ICAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgaW14X211X2R0X2lkcyk7
DQo+ID4NCj4gDQo+IEtpbmQgcmVnYXJkcywNCj4gT2xla3NpaiBSZW1wZWwNCj4gDQo+IC0tDQo+
IFBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8DQo+IHwNCj4gSW5k
dXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAgIHwNCj4gaHR0cHM6Ly9ldXIw
MS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHAlM0ElMkYlMkZ3d3cu
cA0KPiBlbmd1dHJvbml4LmRlJTJGJmFtcDtkYXRhPTAyJTdDMDElN0NwZW5nLmZhbiU0MG54cC5j
b20lN0MyMTExOTUNCj4gODI3NTc5NDdiZmE3ZTcwOGQ3YmYzZTkzMDElN0M2ODZlYTFkM2JjMmI0
YzZmYTkyY2Q5OWM1YzMwMTYzNSU3DQo+IEMwJTdDMCU3QzYzNzE4ODE0Nzc4NzIxMTczNyZhbXA7
c2RhdGE9cVFhWHpCa3hyN0tCJTJGJTJCVzNUcQ0KPiBQaVpIM1RYJTJGZVo1Q3U2d2w4Tzg4OVhp
VTglM0QmYW1wO3Jlc2VydmVkPTAgIHwNCj4gUGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxkZXNo
ZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wDQo+IHwNCj4gQW10c2dlcmlj
aHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4Og0KPiArNDktNTEyMS0yMDY5
MTctNTU1NSB8DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
