Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D03B619A33C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 03:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EcAB3O0O3nzOL6LcweUxECPy5IUqwv7mwkqjX5qz+dA=; b=n2TEzhtvqb5ohO
	5Jb1KLmOTIwQYACuxDSjico5QdJUAt/emWjAFiJzavPVP4Jp0Yn50+byXOOSQhBmjgpaBr2Of4XrD
	t4OUY5CX/6tjFZRnUW7gzY6pr0jJuIZ5+HO0jc2x8EVDc3OD7Ls3aGz7wS1JrP2c++m4vp1A2jBL5
	ROiBltiR4J/VreEOiA/jmd7Pxh6szLhquSVPeiRsDUz5AmjK+oRjTntrNOFn4u809Pb1Wd5VH3qK+
	qe/fYoygYSI4jolWfE9HtPRgmKpZzIKf99LAUSxNhpOXZ6ZHYPRXBNUKxXnZ6HtuyfO0w5c5ehqzk
	6KbYNKcLsmSD6pHMOaCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJS2J-0001Eh-5P; Wed, 01 Apr 2020 01:19:19 +0000
Received: from mail-db8eur05on20629.outbound.protection.outlook.com
 ([2a01:111:f400:7e1a::629]
 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJS25-0001Dz-Mp
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 01:19:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zo/61yUI6obzLLxvgtxjGZKzNDYrxbzs3VUCpnAhnAvVKurheinmBGqXaUhDgcxdwuVyApxQtaWgdSKAw3g35rIR/xGaTSbk0cfLrICIFFeebfXavSLueV3Fncpq07jYBDNky7UZHJOB8/T7yCi6Q7bCSno6mVdZW/mJ8+8SmoteAEQMTJxm5Tzhz10KlXQHHCCXKfH7C5teOQh4ozCBH1LRFH0KQavK4BMHeN2y5/ncnu5DK8EkF4x/3Qk8ZQdxvNWNZcsJ6d0xR1e+6pciBvEnOTbFQECVhO3Wfyd4asBa9Tpmcavf9onuFYEtXX51+pvkpKgTm8+SdznMGWlTBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zvQ27LVnPhorFyyySscT6CqjD2qesFTSODUzJwbLUIg=;
 b=C7Jx0TEpJ/qAXf93cDWbu25o5wgcL0oWw9v6VVGTkfI5xGKGQTwRfPrxNRk0cltKIs6pV1Rr5plDroTI+y7nO7Y2arAVCQ31lR5P0QieJckOwPHJJhcHimpTB7J8UE63Trf4Y+ApN17DRgqH0/X/4sdi7s4a7hV/R2YmL8NwVHEgbi6FkrkT8AM354XKl9rOt3E4OsmYvQ1clAOl0GRDfVsaASc7hYiEZJypC2BjNIBDdMDyYt8cBEUWf4vkUnFnQar9e+S1dMIxq+PuaxJCz/5EoerR4L38bJ2gMyh1Uw823HYE5vjZw6QgybQwvvYLIVYTRm6M/JlLEWsBx1nIPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zvQ27LVnPhorFyyySscT6CqjD2qesFTSODUzJwbLUIg=;
 b=gI1NrXheuO63LAkwYo3d9JX+QmPoZsUL2xrWceErUjDe9aTfmH7uRYsuAAPzjMJwyTtY8Glo/3qBfgnpwfX23hxBLa0V5EjokXkocCHhO964uVEbsNaPJwGmuYEAnaGY8fzr8ds0kOM/3ho2SO20ositoa48Qa9cNLAo+czYLXg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5041.eurprd04.prod.outlook.com (20.176.214.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Wed, 1 Apr 2020 01:19:02 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 01:19:02 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: RE: [PATCH 4/4] firmware: arm_scmi: Drop checking for shmem property
 in parent node
Thread-Topic: [PATCH 4/4] firmware: arm_scmi: Drop checking for shmem property
 in parent node
Thread-Index: AQHWBFX4fz8BzO+8y0SQvB+3spqwcahjfbow
Date: Wed, 1 Apr 2020 01:19:02 +0000
Message-ID: <AM0PR04MB44815EBFA150E02604AFFB4A88C90@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20200327163654.13389-1-sudeep.holla@arm.com>
 <20200327163654.13389-5-sudeep.holla@arm.com>
In-Reply-To: <20200327163654.13389-5-sudeep.holla@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 798b4efa-60ef-4441-8055-08d7d5daaa0d
x-ms-traffictypediagnostic: AM0PR04MB5041:|AM0PR04MB5041:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5041D865A4956416E64A426688C90@AM0PR04MB5041.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 03607C04F0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(346002)(366004)(136003)(86362001)(52536014)(81166006)(81156014)(64756008)(66446008)(316002)(66476007)(4326008)(54906003)(66946007)(110136005)(66556008)(9686003)(8676002)(8936002)(7696005)(26005)(5660300002)(44832011)(2906002)(53546011)(186003)(55016002)(478600001)(33656002)(71200400001)(76116006)(6506007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MPcwlxzFwOwiIKumU09P1L+Vn56b3Q0vOTiv9hfLMXAYH/fbZ6lX6z9i57R/I7ojF5JT4ixG9vWzseKp53TsWTrrLW1euxgk/RHnJba5fX5axRDPWwKQP4QF8Tv7eSOqALnfi9e+4FZSEAQtAjP6dGYTQ22H1t+1zWReB1z4h5dWfuw0IjquRVlw03AyWZTWuixZ6HcIJcPD4V3ikDihOjrGKGKR3zrniXsKjVQ9KtgfL4xYMUvqlBG0XHYSxSVQfA2K/XTTF7bIXQ9ABqaizHtPdC3RHraAhTMgemY6hNvr2R9kINHGKliASHPb3yeRtwEY/y3LksiInbxUAP/vBEvpBHB2I5ZfWSlZaD6VexDf/D+BZDzi/sYyCf4MTGQ9ijy68ihcuvSaCQNHdxMxrCPDx1Oj+cbnLhTDvB+DJqyK9ORBz6VDxmL/Dt4l3moH
x-ms-exchange-antispam-messagedata: 3oIPC/6E7AIxRFzcz1Ge4A031LbX9xWilNkK8BQp1beqydsq8M8HaKwjtiM4pyXAXcHSjZTXu5MqxmxT7hrE/EIHoQKiUSCFCMciAn7SWZ9HcxuvUiewQlVn8fbzDObTGHMAhavR7venqjiJF7LZcw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 798b4efa-60ef-4441-8055-08d7d5daaa0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2020 01:19:02.7603 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z0+AXdmwpAnohI63T97MilKSkvpGg2OpayiCENfA9Ase59AanGfFozWYldf3BuctAlmkEHGJ7A6dDLV18LOKmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_181905_745431_E6F8EA04 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU3VkZWVwIEhvbGxhIDxz
dWRlZXAuaG9sbGFAYXJtLmNvbT4NCj4gU2VudDogMjAyMMTqM9TCMjjI1SAwOjM3DQo+IFRvOiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGRldmljZXRyZWVAdmdlci5rZXJu
ZWwub3JnOyBQZW5nDQo+IEZhbiA8cGVuZy5mYW5AbnhwLmNvbT4NCj4gQ2M6IFN1ZGVlcCBIb2xs
YSA8c3VkZWVwLmhvbGxhQGFybS5jb20+OyBmLmZhaW5lbGxpQGdtYWlsLmNvbTsNCj4gZGwtbGlu
dXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIDQvNF0gZmlybXdh
cmU6IGFybV9zY21pOiBEcm9wIGNoZWNraW5nIGZvciBzaG1lbSBwcm9wZXJ0eQ0KPiBpbiBwYXJl
bnQgbm9kZQ0KPiANCj4gVGhlIHNjbWkgcHJvdG9jb2wgY29yZSBkcml2ZXIgY2hlY2tzIGZvciB0
aGUgY2hhbm5lbCBhdmFpbGFiaWxpdHkgYmVmb3JlDQo+IGV2YWx1YXRpbmcgdGhlIHNobWVtIHBy
b3BlcnR5LiBJZiB0aGUgaW5kaXZpZHVhbCBwcm90b2NvbHMgZG9uJ3QgaGF2ZSBzZXBhcmF0ZQ0K
PiBjaGFubmVsIGFzc2lnbmVkIHRvIHRoZW0sIHRoZSBjaGFubmVsIGFsbG90ZWQgZm9yIHRoZSBC
QVNFIHByb3RvY29sIGlzIHJldXNlZA0KPiBhdXRvbWF0aWNhbGx5Lg0KPiANCj4gVGhlcmVmb3Jl
IHRoZXJlIGlzIG5vIG5lZWQgdG8gY2hlY2sgZm9yIHRoZSBzaG1lbSBwcm9wZXJ0eSBpbiB0aGUg
cGFyZW50DQo+IG5vZGUgaWYgaXQgaXMgYWJzZW50IGluIHRoZSBjaGlsZCBwcm90b2NvbCBub2Rl
Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFAYXJtLmNv
bT4NCg0KUmV2aWV3ZWQtYnk6IFBlbmcgRmFuIDxwZW5nLmZhbkBueHAuY29tPg0KDQo+IC0tLQ0K
PiAgZHJpdmVycy9maXJtd2FyZS9hcm1fc2NtaS9zbWMuYyB8IDIgLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZmlybXdhcmUv
YXJtX3NjbWkvc21jLmMNCj4gYi9kcml2ZXJzL2Zpcm13YXJlL2FybV9zY21pL3NtYy5jIGluZGV4
IDU5MjljNjY4ZGMxZC4uODMzZTc5M2I1MzkxDQo+IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2Zp
cm13YXJlL2FybV9zY21pL3NtYy5jDQo+ICsrKyBiL2RyaXZlcnMvZmlybXdhcmUvYXJtX3NjbWkv
c21jLmMNCj4gQEAgLTYwLDggKzYwLDYgQEAgc3RhdGljIGludCBzbWNfY2hhbl9zZXR1cChzdHJ1
Y3Qgc2NtaV9jaGFuX2luZm8gKmNpbmZvLA0KPiBzdHJ1Y3QgZGV2aWNlICpkZXYsDQo+ICAJCXJl
dHVybiAtRU5PTUVNOw0KPiANCj4gIAlucCA9IG9mX3BhcnNlX3BoYW5kbGUoY2Rldi0+b2Zfbm9k
ZSwgInNobWVtIiwgMCk7DQo+IC0JaWYgKCFucCkNCj4gLQkJbnAgPSBvZl9wYXJzZV9waGFuZGxl
KGRldi0+b2Zfbm9kZSwgInNobWVtIiwgMCk7DQo+ICAJcmV0ID0gb2ZfYWRkcmVzc190b19yZXNv
dXJjZShucCwgMCwgJnJlcyk7DQo+ICAJb2Zfbm9kZV9wdXQobnApOw0KPiAgCWlmIChyZXQpIHsN
Cj4gLS0NCj4gMi4xNy4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
