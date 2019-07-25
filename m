Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1745B747F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 09:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iaG5ZQmuuDEDAIK3EhoAdl5G4hmQOtevjzr1YLZaPJk=; b=ZklvSM2vH5iZ5e
	86UFeHTTlzQPF0cmvJJVxyTtqyS6J5ROuw7a1tp5x1nCvrR5HDvJAoQYw8taFA7Ob6cvBjn32APed
	yMh0+jxm7JjnLKErZlocozCD0TBz8bVwfS5E10DgmRfUM3rhJIm6nUq2tAWLepUFb0QM+YdWzSkgn
	2Sw7QnYlck5T66JU6aH5rYSvv+mR15RSSzdl1abSk4YW+qzOpGKmHeYBSG3u1x3J7xPCGnB/00b97
	uxuUGIHKVwvPXvxcz/ivpSS9tfoAkIG1S62ddeSkSCbEX4khkN8SysjIyiT2xk2jtBQYWrBovDRHu
	zro0pIKqZs3B8mIeo5pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqXyq-0007Vx-Br; Thu, 25 Jul 2019 07:16:00 +0000
Received: from mail-eopbgr10078.outbound.protection.outlook.com ([40.107.1.78]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqXyE-0007VD-Ji
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 07:15:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aeEWAlvGEqi9nRyIt2QEha4HoRYib/fLuHQ1IbKBap3ibqmLI30llO5E5qszl/yEWXo36p3VT6RvsxKjCBUYNkiyuuwsBqDpU5cnXOYodpx+zCmnlWY7dGXjpXafrb2zS5dwZnm0gAksXWx48qP0mSzSqGjnunyA8I6fW7J4bFu6HRICHusBNPPm//7mPKhzsbtPpB/9ESLjWTyP0GjwIBMfpGrYUlRIIBbJHraYHQyC0X26lyue63+Dls895ILZDahGXnF1TDxp7k/pN9iG4qk9ZAc3KsfbUpuNfB3ddLZo1PhECW53nETkC0AuZWV5gJHRuEYYzlupdb+HPc8Wkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MUr4/YdsZHN0xbhibVllT8MM4Xj5xZLVqOPggnDjfQU=;
 b=aH80x8ToMSLdCgkYdTJRm378jxwbEOUX0vIV9zJoM4Mt2H13fR0SceuWHpU5y8O6PZgFRPm5EnZi2OdmGEGrf8hzCt66s4hFsKv/xGH86+dFKO8i4fyjcHf6dIMoPKcjj5hVj6cD83HMAgN7U4KuGgWRWZ9/Q9tfXtKQeR8JOvvOJmD9DbzJjo7+7flBu6iSZBMqdJ9xUYQxeXSQjDCjaeHnJS+BmAyClP+AlwESs91inqvjg8diw7AY4EZqpDYLVVu4gTcs/zrqwvsGzId8kBUKCw4H++wdY6AX6akrMxEAen5Rpu6S6Yz2vR0WQ95NMumBJ3B1H+P+dXJVT1ixxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MUr4/YdsZHN0xbhibVllT8MM4Xj5xZLVqOPggnDjfQU=;
 b=FRVxWmKzp9KjiV9Hn1Gh33YDZXtrpQTfVoAsq751iXGeSXeiz6uJicKDL2O8KbYHQ2y1Ph7cvIac4X/ep4nWdEipmfsCuzYpRoQ8QZIh+qLxlnbABPWQMI/DJRaXQ3ECGdfN1/e/uwnK4yOCadSxuN8FbR5zsIyh3TfWSIAqy5Q=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4619.eurprd04.prod.outlook.com (52.135.138.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Thu, 25 Jul 2019 07:15:13 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b%5]) with mapi id 15.20.2094.013; Thu, 25 Jul 2019
 07:15:13 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Robin Murphy <robin.murphy@arm.com>, "will@kernel.org" <will@kernel.org>, 
 "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>
Subject: RE: [PATCH] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Topic: [PATCH] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Index: AQHVPgeES6AYZMH+7kCt15qSmASJMabRvKYAgAk3LUA=
Date: Thu, 25 Jul 2019 07:15:13 +0000
Message-ID: <DB7PR04MB4618F71B16CA353B010661BFE6C10@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20190719075421.11093-1-qiangqing.zhang@nxp.com>
 <da9c7509-fc37-c70a-51eb-12c852c735db@arm.com>
In-Reply-To: <da9c7509-fc37-c70a-51eb-12c852c735db@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f466a5ec-5172-4bcd-8491-08d710cfd66d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4619; 
x-ms-traffictypediagnostic: DB7PR04MB4619:
x-microsoft-antispam-prvs: <DB7PR04MB46197D363E44271F870BAFFBE6C10@DB7PR04MB4619.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(136003)(366004)(396003)(199004)(189003)(13464003)(66946007)(81166006)(102836004)(53546011)(229853002)(186003)(25786009)(6506007)(53936002)(68736007)(478600001)(9686003)(486006)(6636002)(446003)(110136005)(476003)(33656002)(81156014)(6436002)(55016002)(2906002)(26005)(14454004)(2501003)(54906003)(8676002)(305945005)(66556008)(5660300002)(52536014)(64756008)(14444005)(256004)(66446008)(6116002)(2201001)(4326008)(316002)(7736002)(71190400001)(99286004)(71200400001)(66066001)(76176011)(74316002)(11346002)(8936002)(7696005)(6246003)(66476007)(3846002)(76116006)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4619;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Io1qfNX7vvTrSr9Oj95sSEKoVjdaGldD04/ryxxgRy1Zt3Z15X/AOA18nNzddpnuPDj/E9/1QdfZ1Nt0OyvRITgWP3rZb5RSNzDZs/WXwhWMleyabbw9I3YprQlVVJUHfHySzxCtrfz3oigrXJk1Fy+tY+qfMjtDwKq6dDeuPaJFS7lWgz6hHDK0LNbINTwfsWYQ8tAMZ1MuwEzohRiICWEmkbIBddML+UxThchNk7g39EUs2qoHcpOejwsYFnjmAsbqeguHhltAjYNn43VDXFtPxl05ID2waHK50muK6ozAsz8OoP3JW3z2SHmthINxlFyp5tmdkOhecdmEI8tfVXgyBqkeMIwS8yjpCsioJjO0XwOU81TybAWr5cy8p8M+NgrqUuqd77DQhqbRVBysl2mqAKF7h/EfZ6J/a/saZ58=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f466a5ec-5172-4bcd-8491-08d710cfd66d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 07:15:13.6911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qiangqing.zhang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4619
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_001522_723024_9682548E 
X-CRM114-Status: GOOD (  25.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "kernel@pengutronix.de" <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFJvYmluIE11cnBoeSA8cm9i
aW4ubXVycGh5QGFybS5jb20+DQo+IFNlbnQ6IDIwMTnlubQ35pyIMTnml6UgMTg6MjYNCj4gVG86
IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+OyB3aWxsQGtlcm5lbC5vcmc7
DQo+IG1hcmsucnV0bGFuZEBhcm0uY29tOyBGcmFuayBMaSA8ZnJhbmsubGlAbnhwLmNvbT4NCj4g
Q2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgZGwtbGludXgtaW14IDxs
aW51eC1pbXhAbnhwLmNvbT47DQo+IGtlcm5lbEBwZW5ndXRyb25peC5kZQ0KPiBTdWJqZWN0OiBS
ZTogW1BBVENIXSBwZXJmOiBpbXg4X2Rkcl9wZXJmOiBhZGQgQVhJIElEIGZpbHRlciBzdXBwb3J0
DQo+IA0KPiBPbiAxOS8wNy8yMDE5IDA4OjU2LCBKb2FraW0gWmhhbmcgd3JvdGU6DQo+ID4gQVhJ
IGZpbHRlcmluZyBpcyB1c2VkIGJ5IENTViBtb2RlcyAweDQxIGFuZCAweDQyIHRvIGNvdW50IHJl
YWRzIG9yDQo+ID4gd3JpdGVzIHdpdGggYW4gQVJJRCBvciBBWElEIG1hdGNoaW5nIGZpbHRlciBz
ZXR0aW5nLiBHcmFudWxhcml0eSBpcyBhdA0KPiA+IHN1YnN5c3RlbSBsZXZlbC4gSW1wbGVtZW50
YXRpb24gZG9lcyBub3QgYWxsb3cgZmlsdHJpbmcgYmV0d2Vlbg0KPiA+IG1hc3RlcnMgd2l0aGlu
IGEgc3Vic3lzdGVtLiBGaWx0ZXIgaXMgZGVmaW5lZCB3aXRoIDIgY29uZmlndXJhdGlvbiByZWdp
c3RlcnMuDQo+ID4NCj4gPiAtLUFYSV9JRCBkZWZpbmVzIEF4SUQgbWF0Y2hpbmcgdmFsdWUNCj4g
PiAtLUFYSV9NQVNLSU5HIGRlZmluZXMgd2hpY2ggYml0cyBvZiBBeElEIGFyZSBtZWFuaW5nZnVs
IGZvciB0aGUNCj4gPiBtYXRjaGluZw0KPiA+DQo+ID4gV2hlbiBub24tbWFza2VkIGJpdHMgYXJl
IG1hdGNoaW5nIGNvcnJlc3BvbmRpbmcgQVhJX0lEIGJpdHMgdGhlbg0KPiA+IGNvdW50ZXIgaXMg
aW5jcmVtZW50ZWQuIFRoaXMgZmlsdGVyIGFsbG93cyBjb3VudGluZyByZWFkIG9yIHdyaXRlDQo+
ID4gYWNjZXNzIGZyb20gYSBzdWJzeXN0ZW0gb3IgbXVsdGlwbGUgc3Vic3lzdGVtcy4NCj4gPg0K
PiA+IFBlcmYgY291bnRlciBpcyBpbmNyZW1lbnRlZCBpZiBBeElEICYmIEFYSV9NQVNLSU5HID09
IEFYSV9JRCAmJg0KPiA+IEFYSV9NQVNLSU5HDQo+ID4NCj4gPiBBWElfSUQgYW5kIEFYSV9NQVNL
SU5HIGFyZSBtYXBwZWQgb24gRFBDUjEgcmVnaXN0ZXIgaW4gcGVyZm9ybWFuY2UNCj4gY291bnRl
ci4NCj4gPg0KPiA+IGUuZy4NCj4gPiBwZXJmIHN0YXQgLWEgLWUgaW14OF9kZHIwL2F4aS1pZC1y
ZWFkLGF4aV9pZD0weE1NTU1ERERELyBjbWQNCj4gPiBNTU1NOiBBWElfTUFTS0lORw0KPiA+IERE
REQ6IEFYSV9JRA0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9ha2ltIFpoYW5nIDxxaWFuZ3Fp
bmcuemhhbmdAbnhwLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvcGVyZi9mc2xfaW14OF9k
ZHJfcGVyZi5jIHwgMzgNCj4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0NCj4gPiAg
IDEgZmlsZSBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+DQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jDQo+ID4gYi9k
cml2ZXJzL3BlcmYvZnNsX2lteDhfZGRyX3BlcmYuYw0KPiA+IGluZGV4IDYzZmUyMTYwMDA3Mi4u
Y2QwNWYxMmVkNWM0IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJf
cGVyZi5jDQo+ID4gKysrIGIvZHJpdmVycy9wZXJmL2ZzbF9pbXg4X2Rkcl9wZXJmLmMNCj4gPiBA
QCAtNDIsOSArNDIsMjIgQEANCj4gPg0KPiA+ICAgc3RhdGljIERFRklORV9JREEoZGRyX2lkYSk7
DQo+ID4NCj4gPiArLyogRERSIFBlcmYgaGFyZHdhcmUgZmVhdHVyZSAqLw0KPiA+ICsjZGVmaW5l
IEREUl9DQVBfQVhJX0lEX0ZJTFRFUgkJMHgxCS8qIHN1cHBvcnQgQVhJIElEIGZpbHRlciAqLw0K
PiA+ICsNCj4gPiArc3RydWN0IGZzbF9kZHJfZGV2dHlwZV9kYXRhIHsNCj4gPiArCXVuc2lnbmVk
IGludCBxdWlya3M7CS8qIHF1aXJrcyBuZWVkZWQgZm9yIGRpZmZlcmVudCBERFIgUGVyZiBjb3Jl
ICovDQo+ID4gK307DQo+ID4gKw0KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGZzbF9kZHJfZGV2
dHlwZV9kYXRhIGlteDhfZGV2dHlwZV9kYXRhOw0KPiA+ICsNCj4gPiArc3RhdGljIGNvbnN0IHN0
cnVjdCBmc2xfZGRyX2RldnR5cGVfZGF0YSBpbXg4bV9kZXZ0eXBlX2RhdGEgPSB7DQo+ID4gKwku
cXVpcmtzID0gRERSX0NBUF9BWElfSURfRklMVEVSLA0KPiA+ICt9Ow0KPiA+ICsNCj4gPiAgIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlteF9kZHJfcG11X2R0X2lkc1tdID0gew0K
PiA+IC0JeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14OC1kZHItcG11Iix9LA0KPiA+IC0JeyAuY29t
cGF0aWJsZSA9ICJmc2wsaW14OG0tZGRyLXBtdSIsfSwNCj4gPiArCXsgLmNvbXBhdGlibGUgPSAi
ZnNsLGlteDgtZGRyLXBtdSIsIC5kYXRhID0gJmlteDhfZGV2dHlwZV9kYXRhfSwNCj4gPiArCXsg
LmNvbXBhdGlibGUgPSAiZnNsLGlteDhtLWRkci1wbXUiLCAuZGF0YSA9ICZpbXg4bV9kZXZ0eXBl
X2RhdGF9LA0KPiA+ICAgCXsgLyogc2VudGluZWwgKi8gfQ0KPiA+ICAgfTsNCj4gPg0KPiA+IEBA
IC01Nyw2ICs3MCw3IEBAIHN0cnVjdCBkZHJfcG11IHsNCj4gPiAgIAlzdHJ1Y3QgcGVyZl9ldmVu
dCAqZXZlbnRzW05VTV9DT1VOVEVSU107DQo+ID4gICAJaW50IGFjdGl2ZV9ldmVudHM7DQo+ID4g
ICAJZW51bSBjcHVocF9zdGF0ZSBjcHVocF9zdGF0ZTsNCj4gPiArCWNvbnN0IHN0cnVjdCBmc2xf
ZGRyX2RldnR5cGVfZGF0YSAqZGV2dHlwZV9kYXRhOw0KPiA+ICAgCWludCBpcnE7DQo+ID4gICAJ
aW50IGlkOw0KPiA+ICAgfTsNCj4gPiBAQCAtMTI4LDYgKzE0Miw4IEBAIHN0YXRpYyBzdHJ1Y3Qg
YXR0cmlidXRlICpkZHJfcGVyZl9ldmVudHNfYXR0cnNbXSA9IHsNCj4gPiAgIAlJTVg4X0REUl9Q
TVVfRVZFTlRfQVRUUihyZWZyZXNoLCAweDM3KSwNCj4gPiAgIAlJTVg4X0REUl9QTVVfRVZFTlRf
QVRUUih3cml0ZSwgMHgzOCksDQo+ID4gICAJSU1YOF9ERFJfUE1VX0VWRU5UX0FUVFIocmF3LWhh
emFyZCwgMHgzOSksDQo+ID4gKwlJTVg4X0REUl9QTVVfRVZFTlRfQVRUUihheGktaWQtcmVhZCwg
MHg0MSksDQo+ID4gKwlJTVg4X0REUl9QTVVfRVZFTlRfQVRUUihheGktaWQtd3JpdGUsIDB4NDIp
LA0KPiA+ICAgCU5VTEwsDQo+ID4gICB9Ow0KPiA+DQo+ID4gQEAgLTEzNyw5ICsxNTMsMTEgQEAg
c3RhdGljIHN0cnVjdCBhdHRyaWJ1dGVfZ3JvdXANCj4gZGRyX3BlcmZfZXZlbnRzX2F0dHJfZ3Jv
dXAgPSB7DQo+ID4gICB9Ow0KPiA+DQo+ID4gICBQTVVfRk9STUFUX0FUVFIoZXZlbnQsICJjb25m
aWc6MC03Iik7DQo+ID4gK1BNVV9GT1JNQVRfQVRUUihheGlfaWQsICJjb25maWcxOjAtMzEiKTsN
Cj4gPg0KPiA+ICAgc3RhdGljIHN0cnVjdCBhdHRyaWJ1dGUgKmRkcl9wZXJmX2Zvcm1hdF9hdHRy
c1tdID0gew0KPiA+ICAgCSZmb3JtYXRfYXR0cl9ldmVudC5hdHRyLA0KPiA+ICsJJmZvcm1hdF9h
dHRyX2F4aV9pZC5hdHRyLA0KPiA+ICAgCU5VTEwsDQo+ID4gICB9Ow0KPiA+DQo+ID4gQEAgLTI3
NCw2ICsyOTIsMTUgQEAgc3RhdGljIHZvaWQgZGRyX3BlcmZfZXZlbnRfc3RhcnQoc3RydWN0IHBl
cmZfZXZlbnQNCj4gKmV2ZW50LCBpbnQgZmxhZ3MpDQo+ID4gICAJc3RydWN0IGh3X3BlcmZfZXZl
bnQgKmh3YyA9ICZldmVudC0+aHc7DQo+ID4gICAJaW50IGNvdW50ZXIgPSBod2MtPmlkeDsNCj4g
Pg0KPiA+ICsJaWYgKHBtdS0+ZGV2dHlwZV9kYXRhLT5xdWlya3MgJiBERFJfQ0FQX0FYSV9JRF9G
SUxURVIpIHsNCj4gPiArCQlpZiAoZXZlbnQtPmF0dHIuY29uZmlnID09IDB4NDEgfHwNCj4gPiAr
CQkgICAgZXZlbnQtPmF0dHIuY29uZmlnID09IDB4NDIpIHsNCj4gPiArCQkJaW50IHZhbCA9IGV2
ZW50LT5hdHRyLmNvbmZpZzE7DQo+ID4gKw0KPiA+ICsJCQl3cml0ZWwodmFsLCBwbXUtPmJhc2Ug
KyBDT1VOVEVSX0RQQ1IxKTsNCj4gDQo+IEFzIHdhcyB0b3VjaGVkIHVwb24gaW4gdGhlIG9yaWdp
bmFsIGRyaXZlciByZXZpZXcsIGlmIHRoaXMgZmlsdGVyIGlzIHNoYXJlZA0KPiBiZXR3ZWVuIGNv
dW50ZXJzLCB0aGVuIHdoYXQgaGFwcGVucyBpZiB0aGUgdXNlciBzcGVjaWZpZXMgRVZFTlRfQVhJ
X1JFQUQNCj4gYW5kIEVWRU5UX0FYSV9XUklURSBhdCB0aGUgc2FtZSB0aW1lIGJ1dCB3aXRoIGRp
ZmZlcmVudCBtYXNrcz8NCg0KSGkgUm9iaW4sDQoNClllcywgeW91IGFyZSByaWdodC4gSXQgaXMg
YWN0dWFsbHkgYW4gaXNzdWUuIEkgd2lsbCBhZGQgbGltaXRhdGlvbiBmb3IgRVZFTlRfQVhJX1JF
QUQgYW5kIEVWRU5UX0FYSV9XUklURS4gSXQgd2lsbCBzaG93IGVycm9yIGxvZyBpZiB1c2VyIHNw
ZWNpZmllcyB0aGVzZSB0d28gZmlsdGVyIGV2ZW50IGF0IHRoZSBzYW1lIHRpbWUuDQoNCj4gPiAr
CQl9DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICAgCWxvY2FsNjRfc2V0KCZod2MtPnByZXZfY291bnQs
IDApOw0KPiA+DQo+ID4gICAJZGRyX3BlcmZfY291bnRlcl9lbmFibGUocG11LCBldmVudC0+YXR0
ci5jb25maWcsIGNvdW50ZXIsIHRydWUpOw0KPiBAQA0KPiA+IC00NDUsNiArNDcyLDcgQEAgc3Rh
dGljIGludCBkZHJfcGVyZl9vZmZsaW5lX2NwdSh1bnNpZ25lZCBpbnQgY3B1LA0KPiA+IHN0cnVj
dCBobGlzdF9ub2RlICpub2RlKQ0KPiA+DQo+ID4gICBzdGF0aWMgaW50IGRkcl9wZXJmX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQo+ID4gICB7DQo+ID4gKwljb25zdCBzdHJ1
Y3Qgb2ZfZGV2aWNlX2lkICpvZl9pZDsNCj4gPiAgIAlzdHJ1Y3QgZGRyX3BtdSAqcG11Ow0KPiA+
ICAgCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnA7DQo+ID4gICAJdm9pZCBfX2lvbWVtICpiYXNlOw0K
PiA+IEBAIC00NzIsNiArNTAwLDEyIEBAIHN0YXRpYyBpbnQgZGRyX3BlcmZfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZQ0KPiAqcGRldikNCj4gPiAgIAlpZiAoIW5hbWUpDQo+ID4gICAJCXJl
dHVybiAtRU5PTUVNOw0KPiA+DQo+ID4gKwlvZl9pZCA9IG9mX21hdGNoX2RldmljZShpbXhfZGRy
X3BtdV9kdF9pZHMsICZwZGV2LT5kZXYpOw0KPiA+ICsJaWYgKG9mX2lkKQ0KPiA+ICsJCXBtdS0+
ZGV2dHlwZV9kYXRhID0gb2ZfaWQtPmRhdGE7DQo+IA0KPiBVc2Ugb2ZfZGV2aWNlX2dldF9tYXRj
aF9kYXRhKCkuLi4NCj4gDQo+ID4gKwllbHNlDQo+ID4gKwkJcmV0dXJuIC1FTk9ERVY7DQo+IA0K
PiAuLi5hbmQgZWl0aGVyIHdheSB0aGlzIHNob3VsZCBiZSBpbXBvc3NpYmxlIC0gaWYgdGhlcmUg
d2FzIG5vIG1hdGNoLCB0aGUgT0YgY29kZQ0KPiB3b3VsZCBuZXZlciBoYXZlIGNhbGxlZCBvdXIg
cHJvYmUgcm91dGluZSBpbiB0aGUgZmlyc3QgcGxhY2UuDQoNCk9rYXksIEkgd2lsbCB1c2Ugb2Zf
ZGV2aWNlX2dldF9tYXRjaF9kYXRhKCkgaW5zdGVhZCBvZiBvZl9tYXRjaF9kZXZpY2UsIGFuZCBy
ZW1vdmUgdGhlIGNoZWNrIG9mIHRoZSByZXR1cm4gdmFsdWUuDQoNCkJlc3QgUmVnYXJkcywNCkpv
YWtpbSBaaGFuZw0KPiBSb2Jpbi4NCj4gDQo+ID4gKw0KPiA+ICAgCXBtdS0+Y3B1ID0gcmF3X3Nt
cF9wcm9jZXNzb3JfaWQoKTsNCj4gPiAgIAlyZXQgPSBjcHVocF9zZXR1cF9zdGF0ZV9tdWx0aShD
UFVIUF9BUF9PTkxJTkVfRFlOLA0KPiA+ICAgCQkJCSAgICAgIEREUl9DUFVIUF9DQl9OQU1FLA0K
PiA+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
