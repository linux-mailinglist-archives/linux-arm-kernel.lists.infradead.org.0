Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAA05CC6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 11:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2gU1C2gZv0EpyYeSCr+8g8eXLfZNYPOJJCEIrj1Ss0=; b=BV2KLkjAHRwHIJ
	/Mh2DkWX8C1iMIui9aJVJ5Fo86J/MtkuzmegcJnh5aOEeqCFE0HkPhnt8TZZzsWjcli/7fPYptgX6
	z/uDMQNS21XjhT7Io7Kt5oM61q66yEMaV1FvCkB3Ho8jUCYETyLFa99rhJM7C4PkX/T/2pxKfCS1h
	8QdMUHl+VoKYqDBsmOciH9kE7FjM5wKb0HMwWy53fAsf65Lx0JcahS1vZc9ruA0AyzSeSHqkHE28C
	SZFBwp95033OYOtw1YrEeAYN4vHA4qB0Js1uxLuYHCXe+883tIZVYPJ0ZrM9WdBTJMJChN/n/un7f
	dWcmxReT5hRRRYQ7i4eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiEo3-0006YQ-UE; Tue, 02 Jul 2019 09:10:31 +0000
Received: from mail-am5eur02on060d.outbound.protection.outlook.com
 ([2a01:111:f400:fe07::60d]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiEnl-000652-NW
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 09:10:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sG1XeOdLg0fdLJ+hXZFLe7lkX1Od/+Pmk+XeSS4KQAY=;
 b=hfIRCE1BLK8H8L47MX4Orm97Tm1yqFikrZA1ii9v8H75iGJVHbwWUPprze13W0UBHNnb/3dNx60PaHCU0lsOcN24NfqVeQqrpRjDaWNxqXBanuWAv9CDXEfbEPzp174tniTQMkRv14JE+u715QcP4ZrGnEHCrquYJ9MYhTJC0E4=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3898.eurprd04.prod.outlook.com (52.134.65.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Tue, 2 Jul 2019 09:10:07 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 09:10:07 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>, Daniel Baluta
 <daniel.baluta@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel Vesa
 <abel.vesa@nxp.com>, "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>, "angus@akkea.ca"
 <angus@akkea.ca>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH RESEND V4 1/5] clocksource: timer-of: Support getting
 clock frequency from DT
Thread-Topic: [PATCH RESEND V4 1/5] clocksource: timer-of: Support getting
 clock frequency from DT
Thread-Index: AQHVMKzI5vm2kro3VEayuYp4cUHC7Ka2+NMAgAAMX4CAAASnAIAAAF5Q
Date: Tue, 2 Jul 2019 09:10:07 +0000
Message-ID: <DB3PR0402MB3916D80505D5C5CBA82348B3F5F80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190702075513.17451-1-Anson.Huang@nxp.com>
 <c7ff76e5-d73d-e71e-c3f4-445bdd2c5b93@linaro.org>
 <DB3PR0402MB39166F04BAF9BA9D6C75B3A8F5F80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <0540a255-93e5-d68f-5bf5-31f9043fb3ad@linaro.org>
In-Reply-To: <0540a255-93e5-d68f-5bf5-31f9043fb3ad@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 16ebaffd-2291-4342-30d6-08d6fecd13b7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3898; 
x-ms-traffictypediagnostic: DB3PR0402MB3898:
x-microsoft-antispam-prvs: <DB3PR0402MB38987E89B608892C1ABC2128F5F80@DB3PR0402MB3898.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(396003)(136003)(39860400002)(346002)(199004)(189003)(2501003)(476003)(14444005)(74316002)(7416002)(11346002)(7736002)(256004)(66066001)(76116006)(229853002)(478600001)(68736007)(52536014)(2906002)(486006)(2201001)(33656002)(86362001)(66556008)(64756008)(66446008)(4744005)(66946007)(73956011)(446003)(44832011)(9686003)(76176011)(5660300002)(3846002)(102836004)(53936002)(8676002)(99286004)(7696005)(14454004)(6436002)(26005)(6506007)(4326008)(110136005)(25786009)(71190400001)(53546011)(316002)(6116002)(6246003)(305945005)(71200400001)(81156014)(66476007)(186003)(8936002)(55016002)(81166006)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3898;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Tb5hT/ZL3yOxxbTzKJVyxbsjZiH3xMFxnFx/ScIz41w1w1kWG3oxQoC7K7KLLdu+FlQ8BqbRNubfYpQtqsDDFfUzj3urWNJzj592+Q69b5UVXSDMiNtFKz+paN3xfaBd9ljznJE4qE+qj1aIv/47/4nzxveeuarWY627hUGDpKmSpKoNC1CAJ63L3o/eMGc6PgcdQpExB2Mdz2Abeww6XKjEUnA+EIyGUhz9xcf0LNr/iQ93u29XOhNw+dEXzXyGKSTTk/RUyWaATU16QsmXCqRPuoAMadbfm20L/XGXZ3TB3O1B6YAS4p01HrqIO/LBYCUgqgO2rYqWVo4yu85HZAtHtXOmdvs5DQ2PJ9w7u0zPUxR22msAEOFts5PKgiwTI15qnt5fGqbmg77HEpCpL44tlIB5d375AYNatH/LCho=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16ebaffd-2291-4342-30d6-08d6fecd13b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 09:10:07.0937 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3898
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_021013_781223_2B44D28E 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe07:0:0:0:60d listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

SGksIERhbmllbA0KDQo+IE9uIDAyLzA3LzIwMTkgMTE6MDMsIEFuc29uIEh1YW5nIHdyb3RlOg0K
PiA+IEhpLCBEYW5pZWwNCj4gPg0KPiA+PiBIaSBBbnNvbiwNCj4gPj4NCj4gPj4gd2h5IGRpZCB5
b3UgcmVzZW5kIHRoZSBzZXJpZXM/DQo+ID4NCj4gPiBQcmV2aW91cyBwYXRjaCBzZXJpZXMgaGFz
IGJ1aWxkIHdhcm5pbmcgYW5kIEkgZGlkIE5PVCBub3RpY2UsIHNvcnJ5DQo+ID4gZm9yIHRoYXQs
DQo+ID4NCj4gPiBkcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLW9mLmM6IEluIGZ1bmN0aW9uIOKA
mHRpbWVyX29mX2luaXTigJk6DQo+ID4gZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1vZi5jOjE4
NTozMDogd2FybmluZzogc3VnZ2VzdCBwYXJlbnRoZXNlcw0KPiBhcm91bmQgY29tcGFyaXNvbiBp
biBvcGVyYW5kIG9mIOKAmCbigJkgWy1XcGFyZW50aGVzZXNdDQo+ID4gICBpZiAodG8tPmZsYWdz
ICYgY2xvY2tfZmxhZ3MgPT0gY2xvY2tfZmxhZ3MpDQo+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgXg0KPiA+DQo+ID4gc28gSSByZXNlbmQgdGhlIHBhdGNoIHNlcmllcyB3aXRoIGJl
bG93LCBzb3JyeSBmb3IgbWlzc2luZyBtZW50aW9uIG9mIHRoZQ0KPiBjaGFuZ2VzIGluIHJlc2Vu
dCBwYXRjaCBzZXJpZXMuDQo+ID4NCj4gPiAgKwlpZiAoKHRvLT5mbGFncyAmIGNsb2NrX2ZsYWdz
KSA9PSBjbG9ja19mbGFncykNCj4gPg0KPiA+IFNvcnJ5IGZvciBtYWlsIHN0b3JtLi4uDQo+IA0K
PiBObyBwcm9ibGVtIGF0IGFsbCwgSSBwcmVmZXIgdGhpcyBjYXVnaHQgYW5kIGZpeGVkIGVhcmx5
IDopDQo+IA0KPiBOZXh0IHRpbWUganVzdCBzZW5kIGEgVjUgYmVjYXVzZSAncmVzZW5kJyBtZWFu
cyB0aGVyZSBpcyBubyBjaGFuZ2UgYnV0DQo+IHRoZXJlIHdhcyBhIHByb2JsZW0gd2l0aCB0aGUg
ZW1haWwgKGNvdWxkIGJlIGFsc28gaW50ZXJwcmV0ZWQgYXMgYSBnZW50bGUNCj4gcGluZykuDQoN
Ck9LLCB3aWxsIGtlZXAgaXQgaW4gbWluZCwgdGhhbmtzIGZvciBzaGFyaW5nIHVzZWZ1bCBleHBl
cmllbmNlIQ0KDQpUaGFua3MsDQpBbnNvbg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
