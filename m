Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31074127F3A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 16:26:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G42cmc7LN44rHlmdd98n59b+bn/6qsNHoTW7afSYXeI=; b=H3QKZo1uGhjJdO
	9Xw+x+KP29+e2w+hH32x4czdsW8y6NgUkWemdONCYytmQ8UvgLDsXFziAk/x5uBkVxoSXqZk9Npj4
	M9P6DWuAs2Kc7HsA13zxv8NxWAIn7ArscO7vq3cadddgR/0qdfmYfAw+zYy5rEQpbjixd44fLtmu2
	dZ5F+uu20EoTqs+Tuyo5HIdrH5fs6kGQVlSSsYgVCjMBbAVwQMXrPMeldsiZ0fEvH6qfrnOUG9Ecc
	vc5GMm4z74t4AizgP0tZJFNkwHxAstuw1UMcNUGLXl28NgETyjlnxM2v3F5aL3KpiCLi79pXyxkRQ
	aObi18ST09QYNPgJEq/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiKAo-0003ts-2U; Fri, 20 Dec 2019 15:26:38 +0000
Received: from mail-am5eur03on0603.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::603]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiKAf-0003t8-KA
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 15:26:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hLQxLjkhwovYOKq5Pwwl+HGgvTq0kUNQ1oTBCQZjXmXfiG/gChaYpA+2GkzXleVnN5v5XC7TOi5jG0EKQTuaZEjcphBvyPxPWJZZNl1cdRkC0auDDPmYWsXm68BlRgpfDGPLh7uGRH/nbgdBSa3WMp9TILwYIUi4sd3QrS59cBQJumK7cizIlRWBH7hitlDlKXcdbfdjeq+ysJF51WszRiQwvPcgJp0O1jcrznKmske+zrFySgOusohCfPMmLP4IBSs64YxLDJN1eGbUxLlL6vVATplQ0jpGk4BjfZ+RiyvDgVSo4hmuZoK8TrAedfglBi3ZSGhn6bTyhpbGcYHwIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9hcB23s9PRyBtuiePuuU27vSodo00NsjBxBIo9AykiA=;
 b=ODUyTY0wx8vjsjttdkCSxoXnRPGKrAd5thcAP//PBogu1G6Mx6ajxNw6WaE6ym+twkTh4Xvhn+Q3iA9JBp0+n4LcurSxsvgU5PV6YdhYmI7Z1U2p4k28CmbFl2Io1hRqNFoNwB3F6nSsI5/Te4UYJ3rPHAsMZMobOkOCIQEiNtXVVcjTnquqLKQG8zhwRDUuscaY8xWvIL1G2BccOrJT4gWchpuKnmsRyy6HHJdnY82X5Di7aG4MO8FHX7EGxjSGpWhl8x60MwMtP5KeJu0UBH8aecB4VXreE/ZSCo+fzI/D1PX++E8d7/h0rfgYGPQNhKW1Lv6BL9mZZ3/1D9oSTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9hcB23s9PRyBtuiePuuU27vSodo00NsjBxBIo9AykiA=;
 b=QZNRc8JZEb0oeUGnQUKUK2AAdA2NI0FemF7tCKF44CZ/U3qmXjCyADyv1HQaELnMjGRRsG5uw/0P947HiBRisQlLdY8JbEB4uVYzi9EDZuEF+9DPuSZVYnXs2qZC6Mg/yB9z1qEvojqJx+1v8ep6jj+NV2Ff1JJO3BL9ZpkGSDM=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4683.eurprd04.prod.outlook.com (52.135.139.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.16; Fri, 20 Dec 2019 15:26:26 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::b40b:46af:9458:f2df]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::b40b:46af:9458:f2df%6]) with mapi id 15.20.2559.016; Fri, 20 Dec 2019
 15:26:26 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH V3 2/2] drivers/irqchip: add NXP INTMUX interrupt
 multiplexer support
Thread-Topic: [PATCH V3 2/2] drivers/irqchip: add NXP INTMUX interrupt
 multiplexer support
Thread-Index: AQHVt0CZN4VDSg4vrkOd54zakVbswKfDIpPA
Date: Fri, 20 Dec 2019 15:26:26 +0000
Message-ID: <DB7PR04MB4618A390C538DCD6929DE998E62D0@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <1576827431-31942-1-git-send-email-qiangqing.zhang@nxp.com>
 <1576827431-31942-3-git-send-email-qiangqing.zhang@nxp.com>
 <ad5165ba-24d7-ceeb-8794-cdbe4e564bd5@ti.com>
 <DB7PR04MB4618B9A227807CCF884910C6E62D0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <8bc6bcf113cce13816c62c166f091785@www.loen.fr>
In-Reply-To: <8bc6bcf113cce13816c62c166f091785@www.loen.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [117.81.222.152]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e60574f5-2a06-403a-4eb5-08d78560faad
x-ms-traffictypediagnostic: DB7PR04MB4683:|DB7PR04MB4683:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4683B6ABDF7E2811A79588B8E62D0@DB7PR04MB4683.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 025796F161
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(366004)(136003)(39860400002)(13464003)(199004)(189003)(4326008)(54906003)(2906002)(478600001)(7416002)(81166006)(8676002)(81156014)(66946007)(76116006)(66476007)(8936002)(66556008)(66446008)(64756008)(7696005)(4001150100001)(55016002)(9686003)(52536014)(5660300002)(186003)(6916009)(6506007)(53546011)(26005)(33656002)(86362001)(71200400001)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4683;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Zz7mfc3/wZ480VOptjZrITc60MHGKux92GGxMHRglAgDDAU74Q6AaUXw1DEcEU0tIdV+sks+pALMkIHDkYL3jUsH07zcsnTXwdFcDGYWbHITmwYNIhAcpNdKHJVjwVkF3ayFTQGP2mCnkTSya6GPJbkc2sf0TBVnUScVKHLOKaz42cRtZMuP8r+dWjrSNwrZT2ck2pMtpsC9xiKJTLxy9JKHYm2YDoJodpMjISKy4mhbxgeqQse2ofWksjjPMT0fI6Glar3BuODi6CY1Hi2boxhZf0bGHAW7WGxaHZBKfdIBbUn2JtW1uTZDxId1aAMaPNC7dXZ5o5xKRXng+9M/sqovIAdGvlj8aiakcmTKxCXf7zTV3e/Ua165oU8wNKr5MhZ9qfAWq4cc37bmpU4w33C/SZPSYwMD39N3FWdOiTLt9jE5aQ+7hfy8h2OvoJWtMyZ/kNVAO27RUL9XFdS4t0Gs7Pr/NHNYtlHpwKqBV+DvO/2iyZB413PxLV6Ggx4Z
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e60574f5-2a06-403a-4eb5-08d78560faad
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2019 15:26:26.3352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B6swJNWeNIQawWF2xdR8MK6C49qbHHzVooCFU4b9S9sie7LoYpGv7BrE8pEYmKqZFSEbGsW0T8k0lD+MT45gNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4683
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_072629_758534_95FCFFD8 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:603 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Andy Duan <fugang.duan@nxp.com>, "jason@lakedaemon.net" <jason@lakedaemon.net>,
 Lokesh Vutla <lokeshvutla@ti.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE1hcmMgWnluZ2llciA8bWF6
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnlubQxMuaciDIw5pelIDIyOjIwDQo+IFRvOiBKb2Fr
aW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPg0KPiBDYzogTG9rZXNoIFZ1dGxhIDxs
b2tlc2h2dXRsYUB0aS5jb20+OyB0Z2x4QGxpbnV0cm9uaXguZGU7DQo+IGphc29uQGxha2VkYWVt
b24ubmV0OyByb2JoK2R0QGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0uY29tOw0KPiBzaGF3
bmd1b0BrZXJuZWwub3JnOyBzLmhhdWVyQHBlbmd1dHJvbml4LmRlOyBBbmR5IER1YW4NCj4gPGZ1
Z2FuZy5kdWFuQG54cC5jb20+OyBTLmouIFdhbmcgPHNoZW5naml1LndhbmdAbnhwLmNvbT47DQo+
IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54
cC5jb20+Ow0KPiBrZXJuZWxAcGVuZ3V0cm9uaXguZGU7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSRTogW1BBVENIIFYzIDIvMl0gZHJpdmVycy9pcnFj
aGlwOiBhZGQgTlhQIElOVE1VWCBpbnRlcnJ1cHQNCj4gbXVsdGlwbGV4ZXIgc3VwcG9ydA0KPiAN
Cj4gT24gMjAxOS0xMi0yMCAxNDoxMCwgSm9ha2ltIFpoYW5nIHdyb3RlOg0KPiA+PiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+PiBGcm9tOiBMb2tlc2ggVnV0bGEgPGxva2VzaHZ1dGxh
QHRpLmNvbT4NCj4gDQo+IFsuLi5dDQo+IA0KPiA+PiBEb2VzIHRoZSB1c2VyIGNhcmUgdG8gd2hp
Y2ggY2hhbm5lbCBkb2VzIHRoZSBpbnRlcnJ1cHQgc291cmNlIGdvZXMNCj4gPj4gdG8/IElmIG5v
dCwgaW50ZXJydXB0LWNlbGxzIGluIERUIGNhbiBqdXN0IGJlIGEgc2luZ2xlIGVudHJ5IGFuZCB0
aGUNCj4gPj4gY2hhbm5lbCBzZWxlY3Rpb24gY2FuIGJlIGNvbnRyb2xsZWQgYnkgdGhlIGRyaXZl
ciBubz8gSSBhbSB0cnlpbmcgdG8NCj4gPj4gdW5kZXJzdGFuZCB3aHkgdXNlciBzaG91bGQgc3Bl
Y2lmeSB0aGUgY2hhbm5lbCBuby4NCj4gPiBIaSBMb2tlc2gsDQo+ID4NCj4gPiBJZiBhIGZpeGVk
IGNoYW5uZWwgaXMgc3BlY2lmaWVkIGluIHRoZSBkcml2ZXIsIGFsbCBpbnRlcnJ1cHQgc291cmNl
cw0KPiA+IHdpbGwgYmUgY29ubmVjdGVkIHRvIHRoaXMgY2hhbm5lbCwgYWZmZWN0aW5nIHRoZSBp
bnRlcnJ1cHQgcHJpb3JpdHkgdG8NCj4gPiBzb21lIGV4dGVudC4NCj4gPg0KPiA+IEZyb20gbXkg
cG9pbnQgb2YgdmlldywgYSBmaXhlZCBjaGFubmVsIGNvdWxkIGJlIGVub3VnaCBpZiBkb24ndCBj
YXJlDQo+ID4gaW50ZXJydXB0IHByaW9yaXR5Lg0KPiANCj4gSG9sZCBvbiBhIHNlYzoNCj4gDQo+
IElzIHRoZSBjaGFubmVsIHRvIHdoaWNoIGFuIGludGVycnVwdCBpcyByb3V0ZWQgdG8gcHJvZ3Jh
bW1hYmxlPyBXaGF0IGhhcyB0aGUNCj4gcHJpb3JpdHkgb2YgdGhlIGludGVycnVwdCB0byBkbyB3
aXRoIHRoaXM/IEhvdyBkb2VzIHRoaXMgYWZmZWN0IGludGVycnVwdA0KPiBkZWxpdmVyeT8NCj4g
DQo+IEl0IGxvb2tzIGxpa2UgdGhpcyBIVyBkb2VzIG1vcmUgdGhhdCB5b3UgaW5pdGlhbGx5IGV4
cGxhaW5lZC4uLg0KSGkgTWFyYywNCg0KVGhlIGNoYW5uZWwgdG8gd2hpY2ggYW4gaW50ZXJydXB0
IGlzIHJvdXRlZCB0byBpcyBub3QgcHJvZ3JhbW1hYmxlLiBFYWNoIGNoYW5uZWwgaGFzIHRoZSBz
YW1lIDMyIGludGVycnVwdCBzb3VyY2VzLg0KRWFjaCBjaGFubmVsIGhhcyBtYXNrLCB1bm1hc2sg
YW5kIHN0YXR1cyByZWdpc3Rlci4NCklmIHVzZSAxIGNoYW5uZWwsIDMyIGludGVycnVwdCBzb3Vy
Y2VzIGlucHV0IGFuZCAxIGludGVycnVwdCBvdXRwdXQuDQpJZiB1c2UgMiBjaGFubmVscywgMzIg
aW50ZXJydXB0IHNvdXJjZXMgaW5wdXQgYW5kIDIgaW50ZXJydXB0cyBvdXRwdXQuDQpBbmQgc28g
b24uIFlvdSBjYW4gc2VlIGFib3ZlIElOVE1VWCBibG9jayBkaWFncmFtLiBUaGlzIGlzIGhvdyBI
VyB3b3Jrcy4NCg0KRm9yIGV4YW1wbGU6DQoxKSB1c2UgMSBjaGFubmVsOg0KV2UgY2FuIGVuYWJs
ZSAwfjMxIGludGVycnVwdCBpbiBjaGFubmVsIDAuIEFuZCAxIGludGVycnVwdCBvdXRwdXQuIElm
IGdlbmVyYXRlIGludGVycnVwdCwgd2UgY2Fubm90IGZpZ3VyZSBvdXQgd2hpY2ggaGFsZiBoYXBw
ZW5lZCBmaXJzdC4NCjIpdXNlIDIgY2hhbm5lbHM6DQpXZSBjYW4gZW5hYmxlIDB+MTUgaW50ZXJy
dXB0IGluIGNoYW5uZWwgMCwgYW5kIGVuYWJsZSAxNn4zMSBpbiBjaGFubmVsIDEuIEFuZCAyIGlu
dGVycnVwdHMgb3V0cHV0LiBJZiBnZW5lcmF0ZSBpbnRlcnJ1cHQsIGF0IGxlYXN0IHdlIGNhbiBm
aW5kIGNoYW5uZWwgMCBvciBjaGFubmVsIDEgZmlyc3QuIFRoZW4gZmluZCAwfjE1IG9yIDE2fjMx
IGZpcnN0Lg0KDQpUaGlzIGlzIG15IHVuZGVyc3RhbmRpbmcgb2YgdGhlIGludGVycnVwdCBwcmlv
cml0eSBmcm9tIHRoaXMgaW50bXV4LCBJIGRvbid0IGtub3cgaWYgaXQgaXMgbXkgbWlzdW5kZXJz
dGFuZGluZy4NCg0KQmVzdCBSZWdhcmRzLA0KSm9ha2ltIFpoYW5nDQo+ICAgICAgICAgIE0uDQo+
IC0tDQo+IEphenogaXMgbm90IGRlYWQuIEl0IGp1c3Qgc21lbGxzIGZ1bm55Li4uDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
