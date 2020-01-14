Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5DE13A30D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 09:37:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7l7Y5yZXhLnW015dKq+Ik5AKf9EJcqj6aBgfjJNgFAk=; b=s7k4rWzwqFHeTL
	lSVNwiAj/bctbvO3lqvsBnKD4Y/4u0ImDnlVi9ol1Q+HLQFxfB/4Jmup4tIEhFwxJwO1l9mEfd8gy
	hV2wJ5JDaiNd1/8k7lFWSGonscF6qF4sJ7VGgtXS9NZLt9yiFBI9HumVNUbzTm+ogpvO380HVtww7
	IgfIaYegzwj4J2TbLmnoTOEudU3Rz2UYHShZPDYHw1UIoo/nDKTj4AlIl5CYHgxrLS0paHMkbHsC+
	hl6QMnQ7FJ2kLUPTEVQoEYa8HDMS23vrGWvM3lOvpvkCmp0xxor/ECpmXeO832xNONMiOUnoEeFzI
	m/hg02A+0Tk9fiiVTfIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irHhn-00075z-6X; Tue, 14 Jan 2020 08:37:43 +0000
Received: from mail-eopbgr10081.outbound.protection.outlook.com ([40.107.1.81]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irHhd-00070z-6T
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 08:37:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a5Swj6kx9iNV3CcS045bzGK81nwSkoK/Qw0ZwotdNFLzwinh9PzRz4xjlGVuYAttk3qXWFGumJN3Djsl1v732TeEo/F0JzBH8/gURXez573o7tyR4GpY7H4ga1tYVlZws+g4ga+x+r9FFRjVhZO6L6ydC0R1ewTdCJ33E8RnZUz56OhS6f6IlXW78npnI74b+Qi9XEVVa1rOHPrlhz+VWRt9+VQGiTxD1HvEOFRR/UkhCKhIlNm6nCG/0mwgG43cfEhUXhkDRUkCJ4xNYWrXgyNPjSHCgHja/WqoPX2RtJO50CxFlkPRdEu2DyF4BlPVAahjnizAeWvoTYseyK2ohg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oNmq2DLJ9YUvO4xrxNPqTG84XdF314sDx65w0hgjieM=;
 b=Xokdw6jJOwvqwoyLtgkGXGAI1EWunk+MoUeQCace6stu/zwJSNC7PCNi1WYHzhIgszN+Kd67ye1tCFh/DTeOU2hmR32REbYNI1ZmGCJDMfXew43pNGmNTc32/nvZcd6YrG59jbyJLZb30fwH8ksLRt7AIPUt5CJkT3XJnHOMBSMD1FBtxP6Q2N4tWIcarRkOLT9+fUpHwZqnoEe90oe1s2Thxk5fDjeqybNKYgfGkH6rWr9JMlnmE1Yi2ChljoR18XXlnhRjRyQORAgZy9/ck2abcFIkOAvHb144ZbpFz/o0k8ra6eIO6qksu/vbi1LsDkS610RB1rFmgleu+LJXKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oNmq2DLJ9YUvO4xrxNPqTG84XdF314sDx65w0hgjieM=;
 b=dWneBnK+xH5GUm9Tgfn9PYOHIlS6mJVJEviB+VV7h7ATD9DwXy83j375GFc4XnhQ/A9UJN4nlsz81h16NECZDZi2fg1hPL9vwwXQlJBtgEAUNrmx10u9qdicOUEIhuQesePNbeiRw0/eed71+KucqiaB1McMWJjiJoB5nhBwSn4=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5068.eurprd04.prod.outlook.com (20.176.233.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.13; Tue, 14 Jan 2020 08:22:12 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca%7]) with mapi id 15.20.2623.017; Tue, 14 Jan 2020
 08:22:12 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH V4 RESEND 1/2] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
Thread-Topic: [PATCH V4 RESEND 1/2] dt-bindings/irq: add binding for NXP
 INTMUX interrupt multiplexer
Thread-Index: AQHVyeDroUXufH5Iq0+ZDldne7GnO6fpFh8AgABbg+CAAF+x4A==
Date: Tue, 14 Jan 2020 08:22:12 +0000
Message-ID: <DB7PR04MB4618E5E7ACE8698BBE24E989E6340@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <1578899321-1365-1-git-send-email-qiangqing.zhang@nxp.com>
 <1578899321-1365-2-git-send-email-qiangqing.zhang@nxp.com>
 <20200113210344.GA4615@bogus>
 <DB7PR04MB461863B36162325EF1BB6251E6340@DB7PR04MB4618.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB461863B36162325EF1BB6251E6340@DB7PR04MB4618.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: de09856d-8369-4aa2-e8d8-08d798cadb80
x-ms-traffictypediagnostic: DB7PR04MB5068:|DB7PR04MB5068:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB50680825967E305858F10CECE6340@DB7PR04MB5068.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(376002)(39860400002)(396003)(366004)(136003)(346002)(189003)(199004)(54906003)(316002)(71200400001)(33656002)(86362001)(2940100002)(8936002)(6916009)(81156014)(9686003)(186003)(26005)(478600001)(7696005)(7416002)(45080400002)(53546011)(81166006)(6506007)(8676002)(55016002)(52536014)(5660300002)(66476007)(4326008)(76116006)(2906002)(66556008)(66946007)(66446008)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5068;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Mc3j23ie6zEfGtCCInAr5AauqTTUvTITtBY/s+6w7JJthAowwywSzSvIjYN9EI5Cj3peQ5AWKf/zDeG/ym6cBrBpfAwyJI+3TCgmcIjU3jqgMlxN/LAu0zasMlQbJo6evs+MJkXH2gHPgKemAWkNaBAUZp2uCcBPB1Eh4dI24gELWwSckUiN2I9eccLb6glkA0nMedRH1hJ9Qeb0MClgUf8W91Kzu5EebCMTGCNWYHrVxO2Vm5k/1BrH3lm4yERqfnmTEmJbFhsKHwwg18E9efoe+4BHudrdP5jBRR8zkinH+oztHq9GT9LQTDyxL5/UCSqjrkPn132NhQNtutfCg+bzRVF38zHsFdz9oM+gfNo1VTv1M9WoOmaj53r2pwQcHSDihfvswT5BNHGyLHjo1FhUDvZY7kVPTm7F4PFOp7NGp3ctyRG/wA/MYv2m2WlavslYpHlQ8iylIHu4eAmaZhrvo9RyMVvm0H14WVKeuw8CyBPVOjsSpNH+pRL5Gy6JndGo4lAJ9UqDDQCWBtf8ia0j7b+J5dR32krAAk1eimks+RCPXlfyOWX4fpdE4EF+FsmmQyk7IoqTOPYQQcYq4A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de09856d-8369-4aa2-e8d8-08d798cadb80
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 08:22:12.7829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XHCsNs1bIN0etBLf6BSXVTPGTTTlu7/dV06Nftr/T2xksD44CM9Nw3lsifY9obkKbEFYDlSOo4JW5RYGTOTjAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_003733_412975_ECF2FC8F 
X-CRM114-Status: GOOD (  25.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 "festevam@gmail.com" <festevam@gmail.com>, Andy Duan <fugang.duan@nxp.com>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "maz@kernel.org" <maz@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvYWtpbSBaaGFuZyA8cWlh
bmdxaW5nLnpoYW5nQG54cC5jb20+DQo+IFNlbnQ6IDIwMjDE6jHUwjE0yNUgMTA6NDQNCj4gVG86
IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+DQo+IENjOiBtYXpAa2VybmVsLm9yZzsgamFz
b25AbGFrZWRhZW1vbi5uZXQ7IHRnbHhAbGludXRyb25peC5kZTsNCj4gbWFyay5ydXRsYW5kQGFy
bS5jb207IHNoYXduZ3VvQGtlcm5lbC5vcmc7IHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU7DQo+IGtl
cm5lbEBwZW5ndXRyb25peC5kZTsgZmVzdGV2YW1AZ21haWwuY29tOyBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnOw0KPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBkbC1saW51eC1pbXgNCj4gPGxpbnV4LWlteEBueHAu
Y29tPjsgQW5keSBEdWFuIDxmdWdhbmcuZHVhbkBueHAuY29tPg0KPiBTdWJqZWN0OiBSRTogW1BB
VENIIFY0IFJFU0VORCAxLzJdIGR0LWJpbmRpbmdzL2lycTogYWRkIGJpbmRpbmcgZm9yIE5YUA0K
PiBJTlRNVVggaW50ZXJydXB0IG11bHRpcGxleGVyDQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+DQo+
ID4gU2VudDogMjAyMMTqMdTCMTTI1SA1OjA0DQo+ID4gVG86IEpvYWtpbSBaaGFuZyA8cWlhbmdx
aW5nLnpoYW5nQG54cC5jb20+DQo+ID4gQ2M6IG1hekBrZXJuZWwub3JnOyBqYXNvbkBsYWtlZGFl
bW9uLm5ldDsgdGdseEBsaW51dHJvbml4LmRlOw0KPiA+IG1hcmsucnV0bGFuZEBhcm0uY29tOyBz
aGF3bmd1b0BrZXJuZWwub3JnOyBzLmhhdWVyQHBlbmd1dHJvbml4LmRlOw0KPiA+IGtlcm5lbEBw
ZW5ndXRyb25peC5kZTsgZmVzdGV2YW1AZ21haWwuY29tOw0KPiA+IGxpbnV4LWtlcm5lbEB2Z2Vy
Lmtlcm5lbC5vcmc7IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOw0KPiA+IGxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgZGwtbGludXgtaW14DQo+ID4gPGxpbnV4LWlteEBu
eHAuY29tPjsgQW5keSBEdWFuIDxmdWdhbmcuZHVhbkBueHAuY29tPg0KPiA+IFN1YmplY3Q6IFJl
OiBbUEFUQ0ggVjQgUkVTRU5EIDEvMl0gZHQtYmluZGluZ3MvaXJxOiBhZGQgYmluZGluZyBmb3IN
Cj4gPiBOWFAgSU5UTVVYIGludGVycnVwdCBtdWx0aXBsZXhlcg0KPiA+DQo+ID4gT24gTW9uLCBK
YW4gMTMsIDIwMjAgYXQgMDM6MDg6NDBQTSArMDgwMCwgSm9ha2ltIFpoYW5nIHdyb3RlOg0KPiA+
ID4gVGhpcyBwYXRjaCBhZGRzIHRoZSBEVCBiaW5kaW5ncyBmb3IgdGhlIE5YUCBJTlRNVVggaW50
ZXJydXB0DQo+ID4gPiBtdWx0aXBsZXhlciBmb3IgaS5NWDggZmFtaWx5IFNvQ3MuDQo+ID4gPg0K
PiA+ID4gU2lnbmVkLW9mZi1ieTogSm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNv
bT4NCj4gPiA+IC0tLQ0KPiA+ID4gIC4uLi9pbnRlcnJ1cHQtY29udHJvbGxlci9mc2wsaW50bXV4
LnlhbWwgICAgICB8IDc3DQo+ICsrKysrKysrKysrKysrKysrKysNCj4gPiA+ICAxIGZpbGUgY2hh
bmdlZCwgNzcgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NA0KPiA+ID4g
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2Zz
bCxpbnRtdXgueWENCj4gPiA+IG1sDQo+ID4NCj4gPiBQbGVhc2UgcnVuICdtYWtlIGR0X2JpbmRp
bmdfY2hlY2snIGFuZCBmaXggdGhlIGVycm9yczoNCj4gPg0KPiA+IERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9mc2wsaW50bXV4LnlhbWw6DQo+
ID4gd2hpbGUgc2Nhbm5pbmcgZm9yIHRoZSBuZXh0IHRva2VuIGZvdW5kIGNoYXJhY3RlciB0aGF0
IGNhbm5vdCBzdGFydCBhbnkgdG9rZW4NCj4gPiAgIGluICI8dW5pY29kZSBzdHJpbmc+IiwgbGlu
ZSA2MCwgY29sdW1uIDENCj4gR290IGl0LiBXaWxsIGtlZXAgaW4gbWluZC4gVGhhbmtzLg0KPiAN
Cj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0DQo+ID4gPiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9mc2wsaW50bXV4Lg0KPiA+ID4geWENCj4g
PiA+IG1sDQo+ID4gPiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1
cHQtY29udHJvbGxlci9mc2wsaW50bXV4Lg0KPiA+ID4geWENCj4gPiA+IG1sDQo+ID4gPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NA0KPiA+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi40ZGJhNTMyZmUwYmQN
Cj4gPiA+IC0tLSAvZGV2L251bGwNCj4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9mc2wsaW50DQo+ID4gPiArKysgbXUNCj4g
PiA+ICsrKyB4LnlhbWwNCj4gPiA+IEBAIC0wLDAgKzEsNzcgQEANCj4gPiA+ICsjIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBPUiBCU0QtMi1DbGF1c2UpICVZQU1MIDEuMg0KPiA+
ID4gKy0tLQ0KPiA+ID4gKyRpZDoNCj4gPiA+ICtodHRwczovL2V1cjAxLnNhZmVsaW5rcy5wcm90
ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cCUzQSUyRiUyRmRlDQo+ID4gPiArdmkNCj4gPiA+
DQo+ID4NCj4gK2NldHJlZS5vcmclMkZzY2hlbWFzJTJGaW50ZXJydXB0LWNvbnRyb2xsZXIlMkZm
c2wlMkNpbnRtdXgueWFtbCUyMyZhDQo+ID4gbQ0KPiA+ID4NCj4gPg0KPiArcDtkYXRhPTAyJTdD
MDElN0NxaWFuZ3FpbmcuemhhbmclNDBueHAuY29tJTdDZGMyNDQzZGMxMTExNDk4MDVjNw0KPiA+
IDIwOGQ3DQo+ID4gPg0KPiA+DQo+ICs5ODZjMTU3ZiU3QzY4NmVhMWQzYmMyYjRjNmZhOTJjZDk5
YzVjMzAxNjM1JTdDMCU3QzAlN0M2MzcxNDU0Ng0KPiA+IDIyOTE5MzQNCj4gPiA+DQo+ID4NCj4g
KzQ5MiZhbXA7c2RhdGE9QW80aXVqMkQ0OEtBZUMlMkZ2UXZKcVVVeEdKRWpTWTBIeUw1WmxUMlhy
U3JnJTNEJg0KPiA+IGFtcDtyZQ0KPiA+ID4gK3NlcnZlZD0wDQo+ID4gPiArJHNjaGVtYToNCj4g
PiA+ICtodHRwczovL2V1cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9
aHR0cCUzQSUyRiUyRmRlDQo+ID4gPiArdmkNCj4gPiA+DQo+ID4NCj4gK2NldHJlZS5vcmclMkZt
ZXRhLXNjaGVtYXMlMkZjb3JlLnlhbWwlMjMmYW1wO2RhdGE9MDIlN0MwMSU3Q3FpYQ0KPiA+IG5n
cWluZw0KPiA+ID4NCj4gPg0KPiArLnpoYW5nJTQwbnhwLmNvbSU3Q2RjMjQ0M2RjMTExMTQ5ODA1
YzcyMDhkNzk4NmMxNTdmJTdDNjg2ZWExZDNiDQo+ID4gYzJiNGM2DQo+ID4gPg0KPiA+DQo+ICtm
YTkyY2Q5OWM1YzMwMTYzNSU3QzAlN0MwJTdDNjM3MTQ1NDYyMjkxOTM0NDkyJmFtcDtzZGF0YT1Z
b0hiDQo+ID4gVE81QzhObHENCj4gPiA+ICtZWW9XVE51ZmFJeG52ZHRQVVphS3p2d0s0OUk5WmRj
JTNEJmFtcDtyZXNlcnZlZD0wDQo+ID4gPiArDQo+ID4gPiArdGl0bGU6IEZyZWVzY2FsZSBJTlRN
VVggaW50ZXJydXB0IG11bHRpcGxleGVyDQo+ID4gPiArDQo+ID4gPiArbWFpbnRhaW5lcnM6DQo+
ID4gPiArICAtIE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+DQo+ID4gPiArDQo+ID4gPiAr
cHJvcGVydGllczoNCj4gPiA+ICsgIGNvbXBhdGlibGU6DQo+ID4gPiArICAgIGl0ZW1zOg0KPiA+
ID4gKyAgICAgIGNvbnN0OiBmc2wsaW14LWludG11eA0KPiA+ID4gKw0KPiA+ID4gKyAgcmVnOg0K
PiA+ID4gKyAgICBtYXhJdGVtczogMQ0KPiA+ID4gKw0KPiA+ID4gKyAgaW50ZXJydXB0czoNCj4g
PiA+ICsgICAgbWluSXRlbXM6IDENCj4gPiA+ICsgICAgbWF4SXRlbXM6IDgNCj4gPiA+ICsgICAg
ZGVzY3JpcHRpb246IHwNCj4gPiA+ICsgICAgICBTaG91bGQgY29udGFpbiB0aGUgcGFyZW50IGlu
dGVycnVwdCBsaW5lcyAodXAgdG8gOCkgdXNlZCB0byBtdWx0aXBsZXgNCj4gPiA+ICsgICAgICB0
aGUgaW5wdXQgaW50ZXJydXB0cy4NCj4gPiA+ICsNCj4gPiA+ICsgIGludGVycnVwdC1jb250cm9s
bGVyOiB0cnVlDQo+ID4gPiArDQo+ID4gPiArICAnI2ludGVycnVwdC1jZWxscyc6DQo+ID4gPiAr
ICAgIGNvbnN0OiAyDQo+ID4gPiArDQo+ID4gPiArICBjbG9ja3M6DQo+ID4gPiArICAgIG1heEl0
ZW1zOiAxDQo+ID4gPiArICAgIGRlc2NyaXB0aW9uOiBpcGcgY2xvY2suDQo+ID4gPiArDQo+ID4g
PiArICBjbG9jay1uYW1lczoNCj4gPiA+ICsgICAgaXRlbXM6DQo+ID4gPiArICAgICAgY29uc3Q6
IGlwZw0KPiA+ID4gKw0KPiA+ID4gKyAgZnNsLGludG11eF9jaGFuczoNCj4gPg0KPiA+IERvbid0
IHVzZSAnXycgaW4gcHJvcGVydHkgbmFtZXMuDQo+IEdvdCBpdC4NCj4gDQo+ID4gSXMgdGhpcyBh
bnkgZGlmZmVyZW50IGZyb20gdGhlIGxlbmd0aCBvZiAnaW50ZXJydXB0cycgd2hpY2ggeW91IGNh
biBjb3VudD8NCj4gQSBiaXQgZGlmZmVyZW50LiBTdWNoIGFzLCB0aGUgbGVuZ3RoIG9mICdpbnRl
cnJ1cHRzJyBpcyA4LCBidXQgd2UgY2FuIHNldA0KPiBmc2wsaW50bXV4X2NoYW5zIHZhbHVlIGlz
IDQuIFRoYXQgbWVhbnMgdGhlcmUgYXJlIDggY2hhbm5lbHMsIGJ1dCBhY3R1YWxseSB3ZQ0KPiBv
bmx5IHVzZSA0IGNoYW5uZWxzLg0KPiBJZiB5b3UgdGhpbmsgdGhpcyBtYWtlIG5vIHNlbnNlLCBk
dWUgdG8gd2UgY2FuIGFzc2lnbiA0IGl0ZW1zIGZvciAnaW50ZXJydXB0cycgdG8NCj4gZ2V0IHRo
ZSBzYW1lIHJlc3VsdC4gU28gd2UgY2FuIGNvdW50IHRoZSBsZW5ndGggb2YgJ2ludGVycnVwdHMn
IHRvIGdldCB0aGUNCj4gY2hhbm5lbHMgY29uZmlndXJlZCwgdGhlbiB0aGlzIHByb3BlcnR5IGlz
IG5vIG5lZWQuDQo+IFdoaWNoIG9uZSBkbyB5b3UgdGhpbmsgaXMgYmV0dGVyPw0KPiAJCWludGVy
cnVwdHMgPSA8R0lDX1NQSSAxNiBJUlFfVFlQRV9MRVZFTF9ISUdIPiwNCj4gCQkJICAgICA8R0lD
X1NQSSAxNyBJUlFfVFlQRV9MRVZFTF9ISUdIPiwNCj4gCQkJICAgICA8R0lDX1NQSSAxOCBJUlFf
VFlQRV9MRVZFTF9ISUdIPiwNCj4gCQkJICAgICA8R0lDX1NQSSAxOSBJUlFfVFlQRV9MRVZFTF9I
SUdIPiwNCj4gCQkJICAgICA8R0lDX1NQSSAyMCBJUlFfVFlQRV9MRVZFTF9ISUdIPiwNCj4gCQkJ
ICAgICA8R0lDX1NQSSAyMSBJUlFfVFlQRV9MRVZFTF9ISUdIPiwNCj4gCQkJICAgICA8R0lDX1NQ
SSAyMiBJUlFfVFlQRV9MRVZFTF9ISUdIPiwNCj4gCQkJICAgICA8R0lDX1NQSSAyMyBJUlFfVFlQ
RV9MRVZFTF9ISUdIPjsNCj4gCQlmc2wsaW50bXV4X2NoYW5zID0gPDQ+Ow0KDQpPbmUgbW9yZSBh
ZGQsIHRoZSBudW1iZXIgb2YgY2hhbm5lbHMgaXMgZml4ZWQgdG8gOC4gSXQgd2lsbCBtYWtlIG1v
cmUgY2xlYXIgdG8gdXNlcnMgdGhhdCBpdCBzdXBwb3J0cyA4IGNoYW5uZWxzIHdpdGggOCBpdGVt
cyBmb3IgJ2ludGVycnVwdHMnLCBhbmQgdXNlcnMgY2FuIGRlY2lkZSBob3cgbWFueQ0KY2hhbm5l
bHMgdGhleSB1c2Ugd2l0aCAnZnNsLGludG11eF9jaGFucycgcHJvcGVydHkuDQoNCkJlc3QgUmVn
YXJkcywNCkpvYWtpbSBaaGFuZw0KPiBCZXN0IFJlZ2FyZHMsDQo+IEpvYWtpbSBaaGFuZw0KPiA+
ID4gKyAgICBtYXhJdGVtczogMQ0KPiA+ID4gKyAgICBkZXNjcmlwdGlvbjogfA0KPiA+ID4gKyAg
ICAgIFRoZSBudW1iZXIgb2YgY2hhbm5lbHMgdXNlZCBmb3IgaW50ZXJydXB0IHNvdXJjZS4gVGhl
IE1heGltdW0NCj4gPiB2YWx1ZSBpcyA4Lg0KPiA+ID4gKyAgICAgIElmIHRoaXMgcHJvcGVydHkg
aXMgbm90IHNldCBpbiBEVCB0aGVuIGRyaXZlciB1c2VzIDEgY2hhbm5lbCBieQ0KPiBkZWZhdWx0
Lg0KPiA+ID4gKw0KPiA+ID4gK3JlcXVpcmVkOg0KPiA+ID4gKyAgLSBjb21wYXRpYmxlDQo+ID4g
PiArICAtIHJlZw0KPiA+ID4gKyAgLSBpbnRlcnJ1cHRzDQo+ID4gPiArICAtIGludGVycnVwdC1j
b250cm9sbGVyDQo+ID4gPiArICAtICcjaW50ZXJydXB0LWNlbGxzJw0KPiA+ID4gKyAgLSBjbG9j
a3MNCj4gPiA+ICsgIC0gY2xvY2stbmFtZQ0KPiA+ID4gKyAgLSBmc2wsaW50bXV4X2NoYW5zDQo+
ID4gPiArDQo+ID4gPiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlDQo+ID4gPiArDQo+ID4g
PiArRXhhbXBsZToNCj4gPiA+ICsNCj4gPiA+ICsJaW50bXV4QDM3NDAwMDAwIHsNCj4gPg0KPiA+
IGludGVycnVwdC1jb250cm9sbGVyQC4uLg0KPiA+DQo+ID4gPiArCQljb21wYXRpYmxlID0gImZz
bCxpbXgtaW50bXV4IjsNCj4gPiA+ICsJCXJlZyA9IDwweDM3NDAwMDAwIDB4MTAwMD47DQo+ID4g
PiArCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTYgSVJRX1RZUEVfTEVWRUxfSElHSD4sDQo+ID4g
PiArCQkJICAgICA8R0lDX1NQSSAxNyBJUlFfVFlQRV9MRVZFTF9ISUdIPiwNCj4gPiA+ICsJCQkg
ICAgIDxHSUNfU1BJIDE4IElSUV9UWVBFX0xFVkVMX0hJR0g+LA0KPiA+ID4gKwkJCSAgICAgPEdJ
Q19TUEkgMTkgSVJRX1RZUEVfTEVWRUxfSElHSD4sDQo+ID4gPiArCQkJICAgICA8R0lDX1NQSSAy
MCBJUlFfVFlQRV9MRVZFTF9ISUdIPiwNCj4gPiA+ICsJCQkgICAgIDxHSUNfU1BJIDIxIElSUV9U
WVBFX0xFVkVMX0hJR0g+LA0KPiA+ID4gKwkJCSAgICAgPEdJQ19TUEkgMjIgSVJRX1RZUEVfTEVW
RUxfSElHSD4sDQo+ID4gPiArCQkJICAgICA8R0lDX1NQSSAyMyBJUlFfVFlQRV9MRVZFTF9ISUdI
PjsNCj4gPiA+ICsJCWludGVycnVwdC1jb250cm9sbGVyOw0KPiA+ID4gKwkJI2ludGVycnVwdC1j
ZWxscyA9IDwyPjsNCj4gPiA+ICsJCWNsb2NrcyA9IDwmY2xrIElNWDhRTV9DTTQwX0lQR19DTEs+
Ow0KPiA+ID4gKwkJY2xvY2stbmFtZXMgPSAiaXBnIjsNCj4gPiA+ICsJCWZzbCxpbnRtdXhfY2hh
bnMgPSA8OD47DQo+ID4gPiArCX07DQo+ID4gPiArDQo+ID4gPiAtLQ0KPiA+ID4gMi4xNy4xDQo+
ID4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
