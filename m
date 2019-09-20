Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3EBB8F5A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 13:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DGajJZTUt9zdoefj0WjZGiPZ9HMxpDat5ZnqpGSLN04=; b=h4KoNUFqdGo8Rd
	DWIFmYfYPxFxRlF+QOKOS4vR9D0UgD2BcUj3hQ2UzPiLzy0gZr2jDesFFefmI94So+8iLpzfmFX/y
	18jt6TirdrgXbhKn21WY9QhO1ncxukcdQY1oIk4ITC59NlDcSoUEyx99grXyIxjBnLmzrn/b1pvGW
	7hceV4Ubm5/zrpyAK/9ePVlVgc0/+0zxsi6zjJfZloAGaFWp9MgBfonzAXWEZXxkIy6lj7FFgxDuP
	AlmThSBOHxJ6unPy8/sT8J4mqiTBv9h6vPudEw1EEBSJuMnFaq2ZVpPzBhyJzS9l3vCtLVwiRQ+Ip
	4++lZ7PLVZKvizUH9vAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBHXi-0005D0-Av; Fri, 20 Sep 2019 11:57:42 +0000
Received: from mail-eopbgr810055.outbound.protection.outlook.com
 ([40.107.81.55] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBHXa-0005Ca-TP
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 11:57:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AN71WBgrGBfT9m2Pl293Xkgdb8cu74zVVFWzzLDD4KAQL7t6jnzFOH3r7ntPQVVsf/DrB0CQ7PoAWjAHQVbExd4QxbsNXBvSPuf0FpLLRA2Cao78WgoUdji/J4zMFgEuh4uW1JJBqaeoLYxhLboOvqR7QxSyBT7IaKJLYvLqLoLr32fBU+VDy99S2qkcXqVCwCsMsWzLnyrboiVJgPqAMX/m2DEZi2BbDaIi9EsjDLJTbdc/cv08VS+GYTdPC8LIJSRpLZ20WTMQbrN0hiOEXnu5FZ+VCkPwXS/KTLxrXB6QTsY/nAeKs1ZsOnZK35OxiT06Va1VvG694pYFk5cEHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IwV8eZxnVt2kD0JJdNZIh3a5H6ZSCs86Vo0thaUQXak=;
 b=SqcJqlNgn/xsQbgW4FpWXDHg7UdeCZMvSg0xDqGkIqrvCXxmtKDdLZOBn0XdYKNa6bCtMrkKXG8vOebFxc2SHrQmTQGLMATaFLJrY8fttIQJqqO8OTs975CCyDjI42dc2aTDfsoPedrST3pRnQmDUb7QtKQqu1dbDrya4tmxlqQO6evxszucHBcVEmf85upzFsEVaGe0TVOcovKgBuKKHtS6GGaYx0hSziIxj6w2u45JA3SAvk53t7t7JHdODDiK38Fn6Zg/7E9mGDfqAUDJ2J7V6wVDtpFI7JNmk16YVTSmIlbc9uQeBfzjSLPyzKov/fsv6LaIVXohZ1Ov7yDCPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IwV8eZxnVt2kD0JJdNZIh3a5H6ZSCs86Vo0thaUQXak=;
 b=iCf7o6aM7BF9UZyQEgW4S+2C1IQV+VvG9vN4c93zxn4u/euFvY8UV19xx0RndWiA8BdbFY5vAf3GaEz1n/pjqspJGdKStkKlUtPcpPvJtoBgfJoD2tPq42CuZSW1uCX2noGbOdE09RkKAQY5bhiQ45qESSkpHpj7BIrVtJSY09M=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6359.namprd02.prod.outlook.com (52.132.230.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Fri, 20 Sep 2019 11:57:31 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::3515:e3a7:8799:73bd]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::3515:e3a7:8799:73bd%2]) with mapi id 15.20.2284.009; Fri, 20 Sep 2019
 11:57:31 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Markus Elfring <Markus.Elfring@web.de>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "David S. Miller"
 <davem@davemloft.net>, Michal Simek <michals@xilinx.com>
Subject: RE: [PATCH v2] ethernet: axienet: Use
 devm_platform_ioremap_resource() in axienet_probe()
Thread-Topic: [PATCH v2] ethernet: axienet: Use
 devm_platform_ioremap_resource() in axienet_probe()
Thread-Index: AQHVb6bYXz5zcje8nUqkBKSWkFX13Kc0dPsw
Date: Fri, 20 Sep 2019 11:57:31 +0000
Message-ID: <CH2PR02MB70007655B190BCBC9113BD4BC7880@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <af65355e-c2f8-9142-4d0b-6903f23a98b2@web.de>
 <CH2PR02MB700047AFFFE08FE5FD563541C78E0@CH2PR02MB7000.namprd02.prod.outlook.com>
 <604a6376-0298-ebcd-ee84-435945370374@web.de>
In-Reply-To: <604a6376-0298-ebcd-ee84-435945370374@web.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=radheys@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c28388b-9b6c-4d9f-d312-08d73dc1b779
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CH2PR02MB6359; 
x-ms-traffictypediagnostic: CH2PR02MB6359:|CH2PR02MB6359:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB635999699DA70B28D5330644C7880@CH2PR02MB6359.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1060;
x-forefront-prvs: 0166B75B74
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(346002)(376002)(136003)(366004)(39860400002)(396003)(13464003)(199004)(189003)(305945005)(71190400001)(71200400001)(7736002)(66066001)(966005)(476003)(11346002)(99286004)(74316002)(45080400002)(229853002)(54906003)(6116002)(4326008)(6636002)(478600001)(25786009)(3846002)(2906002)(14454004)(6506007)(5660300002)(53546011)(110136005)(2501003)(446003)(14444005)(81166006)(8936002)(33656002)(86362001)(9686003)(256004)(316002)(486006)(7696005)(66556008)(66476007)(52536014)(66446008)(64756008)(66946007)(76116006)(6436002)(8676002)(6246003)(81156014)(76176011)(6306002)(186003)(2201001)(102836004)(55016002)(26005)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6359;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: S6EDk92dKaHHQCISktxI+qE4Ki+Y+Q0FJOa2RaEk8ba/UJ7Q/idm7wdUKqN6xfAsQP5rKNJ5HY3/KC+dfCvYXpzSnRRviDdwBEgu3hgcoNlkO08unP0nkHoZTbQOgfeUg+UCdf2SLFYJoK5K9OnjSzfD+OfmN10Tcsw9BKndktUlrsVmPqgvagWiUq9Dx3LQihi2cF52yH0ncs44+w2qtZEPP/P/zAZscbofXMnzz9A9MCxIhjzDYilsIb9IOwzKV1jzC2xkKXtePM5ynPp7dyH4e65Sf/49PyUyW1R/to3zRkZ7raVdFCW0tZh10rEFy3gIz9uCI5EXJ1GKiigdvAiTV4oOZp1B6yK6ATdPP0FQqNJJNjnNyxzu+X7UzGyIadgEaSSELK0E225DPinrPP2uofk5qgR5CC/lohtZWYg=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c28388b-9b6c-4d9f-d312-08d73dc1b779
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2019 11:57:31.0780 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ES5bRtQg3KMCJmgzPewHyETqgatPHWWj1CCf4OJ/B8QjKLzL8EpAGofWcfKdBORVd3XwCopHdyK16aChtAvWqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6359
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_045734_950114_6FB9DA33 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNYXJrdXMgRWxmcmluZyA8TWFy
a3VzLkVsZnJpbmdAd2ViLmRlPg0KPiBTZW50OiBGcmlkYXksIFNlcHRlbWJlciAyMCwgMjAxOSA1
OjAxIFBNDQo+IFRvOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmc7IERhdmlkIFMuDQo+IE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5l
dD47IE1pY2hhbCBTaW1layA8bWljaGFsc0B4aWxpbnguY29tPjsNCj4gUmFkaGV5IFNoeWFtIFBh
bmRleSA8cmFkaGV5c0B4aWxpbnguY29tPg0KPiBDYzogTEtNTCA8bGludXgta2VybmVsQHZnZXIu
a2VybmVsLm9yZz47IGtlcm5lbC1qYW5pdG9yc0B2Z2VyLmtlcm5lbC5vcmcNCj4gU3ViamVjdDog
W1BBVENIIHYyXSBldGhlcm5ldDogYXhpZW5ldDogVXNlDQo+IGRldm1fcGxhdGZvcm1faW9yZW1h
cF9yZXNvdXJjZSgpIGluIGF4aWVuZXRfcHJvYmUoKQ0KPiANCj4gRnJvbTogTWFya3VzIEVsZnJp
bmcgPGVsZnJpbmdAdXNlcnMuc291cmNlZm9yZ2UubmV0Pg0KPiBEYXRlOiBGcmksIDIwIFNlcCAy
MDE5IDEzOjE3OjAxICswMjAwDQo+IA0KPiBTaW1wbGlmeSB0aGlzIGZ1bmN0aW9uIGltcGxlbWVu
dGF0aW9uIGJ5IHVzaW5nIHRoZSB3cmFwcGVyIGZ1bmN0aW9uDQo+IOKAnGRldm1fcGxhdGZvcm1f
aW9yZW1hcF9yZXNvdXJjZeKAnSBpbnN0ZWFkIG9mIGNhbGxpbmcgdGhlIGZ1bmN0aW9ucw0KPiDi
gJxwbGF0Zm9ybV9nZXRfcmVzb3VyY2XigJ0gYW5kIOKAnGRldm1faW9yZW1hcF9yZXNvdXJjZeKA
nSBkaXJlY3RseS4NCj4gDQo+ICogVGh1cyByZWR1Y2UgYWxzbyBhIGJpdCBvZiBleGNlcHRpb24g
aGFuZGxpbmcgY29kZSBoZXJlLg0KPiAqIERlbGV0ZSB0aGUgbG9jYWwgdmFyaWFibGUg4oCccmVz
4oCdLg0KPiANCj4gVGhpcyBpc3N1ZSB3YXMgZGV0ZWN0ZWQgYnkgdXNpbmcgdGhlIENvY2NpbmVs
bGUgc29mdHdhcmUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNYXJrdXMgRWxmcmluZyA8ZWxmcmlu
Z0B1c2Vycy5zb3VyY2Vmb3JnZS5uZXQ+DQoNClJldmlld2VkLWJ5OiBSYWRoZXkgU2h5YW0gUGFu
ZGV5IDxyYWRoZXkuc2h5YW0ucGFuZGV5QHhpbGlueC5jb20+DQoNClRoYW5rcyENCj4gLS0tDQo+
IA0KPiB2MjoNCj4gRnVydGhlciBjaGFuZ2VzIHdlcmUgcmVxdWVzdGVkIGJ5IFJhZGhleSBTaHlh
bSBQYW5kZXkuDQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvQ0gyUFIwMk1CNzAwMDQ3QUZG
RkUwOEZFNUZENTYzNTQxQzc4RTBAQw0KPiBIMlBSMDJNQjcwMDAubmFtcHJkMDIucHJvZC5vdXRs
b29rLmNvbS8NCj4gDQo+ICogVXBkYXRlcyBmb3IgdGhyZWUgbW9kdWxlcyB3ZXJlIHNwbGl0IGlu
dG8gYSBzZXBhcmF0ZSBwYXRjaCBmb3IgZWFjaCBkcml2ZXIuDQo+ICogVGhlIGNvbW1pdCBkZXNj
cmlwdGlvbiB3YXMgYWRqdXN0ZWQuDQo+IA0KPiANCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L3hp
bGlueC94aWxpbnhfYXhpZW5ldF9tYWluLmMgfCA5ICstLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxpbnhfYXhpZW5ldF9tYWluLmMNCj4gYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC94aWxpbngveGlsaW54X2F4aWVuZXRfbWFpbi5jDQo+IGluZGV4IDRm
YzYyN2ZiNGQxMS4uOTI3ODNhYWFhMGEyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC94aWxpbngveGlsaW54X2F4aWVuZXRfbWFpbi5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L3hpbGlueC94aWxpbnhfYXhpZW5ldF9tYWluLmMNCj4gQEAgLTE3ODcsMTQgKzE3ODcs
NyBAQCBzdGF0aWMgaW50IGF4aWVuZXRfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZQ0KPiAq
cGRldikNCj4gIAkJb2Zfbm9kZV9wdXQobnApOw0KPiAgCQlscC0+ZXRoX2lycSA9IHBsYXRmb3Jt
X2dldF9pcnEocGRldiwgMCk7DQo+ICAJfSBlbHNlIHsNCj4gLQkJLyogQ2hlY2sgZm9yIHRoZXNl
IHJlc291cmNlcyBkaXJlY3RseSBvbiB0aGUgRXRoZXJuZXQgbm9kZS4NCj4gKi8NCj4gLQkJc3Ry
dWN0IHJlc291cmNlICpyZXMgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2UocGRldiwNCj4gLQ0KPiBJ
T1JFU09VUkNFX01FTSwgMSk7DQo+IC0JCWlmICghcmVzKSB7DQo+IC0JCQlkZXZfZXJyKCZwZGV2
LT5kZXYsICJ1bmFibGUgdG8gZ2V0IERNQSBtZW1vcnkNCj4gcmVzb3VyY2VcbiIpOw0KPiAtCQkJ
Z290byBmcmVlX25ldGRldjsNCj4gLQkJfQ0KPiAtCQlscC0+ZG1hX3JlZ3MgPSBkZXZtX2lvcmVt
YXBfcmVzb3VyY2UoJnBkZXYtPmRldiwgcmVzKTsNCj4gKwkJbHAtPmRtYV9yZWdzID0gZGV2bV9w
bGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKHBkZXYsIDEpOw0KPiAgCQlscC0+cnhfaXJxID0gcGxh
dGZvcm1fZ2V0X2lycShwZGV2LCAxKTsNCj4gIAkJbHAtPnR4X2lycSA9IHBsYXRmb3JtX2dldF9p
cnEocGRldiwgMCk7DQo+ICAJCWxwLT5ldGhfaXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCAy
KTsNCj4gLS0NCj4gMi4yMy4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
