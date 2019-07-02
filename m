Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 420C65CC52
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 11:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MUII5KHmb2g4xW5f7dTQchP26RGCKW406te+slIOHHA=; b=qR4PUAcAEs3HXX
	QoeesYl3dBdZULWFBADzm1PGzkcCtYoDOW9eQeXc5O1Rc1VgmkAahm266Yl0YxwvY9hwWCgzowxoh
	VIcN+J6fsuZDYa8PLSqdR6ATBPTcsb9vlQqZgCXta/RJ7a5hNPwSxMhANNxjN6FCj1updVp88hqQK
	ZiKbeQZKq0WQX9pIXVystLTmsYGdbIvPQO4bKpXxxRboYr4beZb7DkUVbUXrM0RLk4vkbj2lJ7tzw
	+2jg4O3XbNYFTNuTHBEIx69cZ0HAN3B9SKmoMc+CNn2Srn2z5AFz6XstP/3NEtcGK5bcFLTa0UNno
	8Mo5S59k1QjNpyAK1L1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiEhx-0002cN-PG; Tue, 02 Jul 2019 09:04:13 +0000
Received: from mail-eopbgr40088.outbound.protection.outlook.com ([40.107.4.88]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiEhl-0002bc-Vr
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 09:04:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QAjOxXxVXc5VPLLcb/dHyXfMTUeODVEKWaZKOX/5Rio=;
 b=KMr7ykY6ewJMY9Vd0MZIckdGVBQ11GXKdaB9wFyA1dSA8P7J4H6ZEiKXMFDIPEyyftOQMFnNSSIsvQ6hVapon/r+PiY6jTnnsf85Gb1UgsytE+o2GhU+E6U9csDry96ZiiNLY5giMwYC8RFvTimieyZ232w12uKJFdO52l+iZh0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3852.eurprd04.prod.outlook.com (52.134.71.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.15; Tue, 2 Jul 2019 09:03:53 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 09:03:53 +0000
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
Thread-Index: AQHVMKzI5vm2kro3VEayuYp4cUHC7Ka2+NMAgAAMX4A=
Date: Tue, 2 Jul 2019 09:03:52 +0000
Message-ID: <DB3PR0402MB39166F04BAF9BA9D6C75B3A8F5F80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190702075513.17451-1-Anson.Huang@nxp.com>
 <c7ff76e5-d73d-e71e-c3f4-445bdd2c5b93@linaro.org>
In-Reply-To: <c7ff76e5-d73d-e71e-c3f4-445bdd2c5b93@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4ab916d8-bfbf-45cb-6abb-08d6fecc34c7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3852; 
x-ms-traffictypediagnostic: DB3PR0402MB3852:
x-microsoft-antispam-prvs: <DB3PR0402MB38525138B8FED766AF9BAF7AF5F80@DB3PR0402MB3852.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(396003)(366004)(376002)(189003)(199004)(6506007)(53546011)(6436002)(110136005)(76116006)(66946007)(73956011)(2501003)(81166006)(68736007)(7696005)(81156014)(53936002)(33656002)(8676002)(76176011)(99286004)(74316002)(4326008)(8936002)(6116002)(3846002)(229853002)(6246003)(476003)(446003)(11346002)(256004)(102836004)(14444005)(7736002)(186003)(316002)(305945005)(55016002)(5660300002)(71200400001)(71190400001)(86362001)(9686003)(478600001)(52536014)(7416002)(66066001)(14454004)(2201001)(44832011)(25786009)(486006)(64756008)(66556008)(66446008)(26005)(66476007)(2906002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3852;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gKpj+Xk4JnexUovvtcMvtqLCiSgybhuKggPWHDBXndgeklFx0CRioTTrpJnCIgTJz4wMhF9Wc90y514GIqudApMqp9hv46kiWOvBBVCY3ZZyWcn6R8W9tnucY1T+8I3eLLXPv4W3D9m4lT+yA6nNGQTs/Yvm/vWXJ6ok5Z0lxww9btvAZuVuL+kbKUW6s+u4lrvcr35V/CALzYx8t08Sy2hTHStRonxoQ/8r6JgThKJ35TFZ9V+6VFRnIlIvjQ+NPhCVtnqwsk0O9L3TSamgG6c1n0PE5ivEAODJfSoQoVe5KU+nfQcv3nH6+FfhfTSJIIME5EyEoXprFY4wPPPrd8hwPMLP0IBmQPZPGgyjTkSW5unjbK9/hBmA8rYSgZKF96W15ROdcYtm2t+0Sh2rbZOsr36Sl+H9miFJ1wmF+jw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ab916d8-bfbf-45cb-6abb-08d6fecc34c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 09:03:52.9722 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3852
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_020402_034109_5426C841 
X-CRM114-Status: GOOD (  23.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

SGksIERhbmllbA0KDQo+IEhpIEFuc29uLA0KPiANCj4gd2h5IGRpZCB5b3UgcmVzZW5kIHRoZSBz
ZXJpZXM/DQoNClByZXZpb3VzIHBhdGNoIHNlcmllcyBoYXMgYnVpbGQgd2FybmluZyBhbmQgSSBk
aWQgTk9UIG5vdGljZSwgc29ycnkgZm9yIHRoYXQsDQoNCmRyaXZlcnMvY2xvY2tzb3VyY2UvdGlt
ZXItb2YuYzogSW4gZnVuY3Rpb24g4oCYdGltZXJfb2ZfaW5pdOKAmToNCmRyaXZlcnMvY2xvY2tz
b3VyY2UvdGltZXItb2YuYzoxODU6MzA6IHdhcm5pbmc6IHN1Z2dlc3QgcGFyZW50aGVzZXMgYXJv
dW5kIGNvbXBhcmlzb24gaW4gb3BlcmFuZCBvZiDigJgm4oCZIFstV3BhcmVudGhlc2VzXQ0KICBp
ZiAodG8tPmZsYWdzICYgY2xvY2tfZmxhZ3MgPT0gY2xvY2tfZmxhZ3MpDQogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBeDQoNCnNvIEkgcmVzZW5kIHRoZSBwYXRjaCBzZXJpZXMgd2l0aCBi
ZWxvdywgc29ycnkgZm9yIG1pc3NpbmcgbWVudGlvbiBvZiB0aGUgY2hhbmdlcyBpbiByZXNlbnQg
cGF0Y2ggc2VyaWVzLg0KDQogKwlpZiAoKHRvLT5mbGFncyAmIGNsb2NrX2ZsYWdzKSA9PSBjbG9j
a19mbGFncykNCg0KU29ycnkgZm9yIG1haWwgc3Rvcm0uLi4NCg0KVGhhbmtzLA0KQW5zb24NCg0K
PiANCj4gDQo+IE9uIDAyLzA3LzIwMTkgMDk6NTUsIEFuc29uLkh1YW5nQG54cC5jb20gd3JvdGU6
DQo+ID4gRnJvbTogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+DQo+ID4NCj4gPiBN
b3JlIGFuZCBtb3JlIHBsYXRmb3JtcyB1c2UgcGxhdGZvcm0gZHJpdmVyIG1vZGVsIGZvciBjbG9j
ayBkcml2ZXIsIHNvDQo+ID4gdGhlIGNsb2NrIGRyaXZlciBpcyBOT1QgcmVhZHkgZHVyaW5nIHRp
bWVyIGluaXRpYWxpemF0aW9uIHBoYXNlLCBpdA0KPiA+IHdpbGwgY2F1c2UgdGltZXIgaW5pdGlh
bGl6YXRpb24gZmFpbGVkLg0KPiA+DQo+ID4gVG8gc3VwcG9ydCB0aG9zZSBwbGF0Zm9ybXMgd2l0
aCB1cHBlciBzY2VuYXJpbywgaW50cm9kdWNpbmcgYSBuZXcgZmxhZw0KPiA+IFRJTUVSX09GX0NM
T0NLX0ZSRVFVRU5DWSB3aGljaCBpcyBtdXR1YWxseSBleGNsdXNpdmUgd2l0aA0KPiA+IFRJTUVS
X09GX0NMT0NLIGZsYWcgdG8gc3VwcG9ydCBnZXR0aW5nIHRpbWVyIGNsb2NrIGZyZXF1ZW5jeSBm
cm9tIERUJ3MNCj4gPiB0aW1lciBub2RlLCB0aGUgcHJvcGVydHkgbmFtZSBzaG91bGQgYmUgImNs
b2NrLWZyZXF1ZW5jeSIsIHRoZW4gb2ZfY2xrDQo+ID4gb3BlcmF0aW9ucyBjYW4gYmUgc2tpcHBl
ZC4NCj4gPg0KPiA+IFVzZXIgbmVlZHMgdG8gc2VsZWN0IGVpdGhlciBUSU1FUl9PRl9DTE9DS19G
UkVRVUVOQ1kgb3INCj4gVElNRVJfT0ZfQ0xPQ0sNCj4gPiBmbGFnIGlmIHdhbnQgdG8gdXNlIHRp
bWVyLW9mIGRyaXZlciB0byBpbml0aWFsaXplIHRoZSBjbG9jayByYXRlLg0KPiA+DQo+ID4gU2ln
bmVkLW9mZi1ieTogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+DQo+ID4gLS0tDQo+
ID4gQ2hhbmdlcyBzaW5jZSBWMzoNCj4gPiAJLSB1c2UgaGFyZGNvZGVkICJjbG9jay1mcmVxdWVu
Y3kiIGluc3RlYWQgb2YgYWRkaW5nIG5ldyB2YXJpYWJsZQ0KPiBwcm9wX25hbWU7DQo+ID4gCS0g
YWRkIHByZS1jb25kaXRpb24gY2hlY2sgZm9yIFRJTUVSX09GX0NMT0NLIGFuZA0KPiBUSU1FUl9P
Rl9DTE9DS19GUkVRVUVOQ1ksIHRoZXkgTVVTVCBiZSBleGNsdXNpdmUuDQo+ID4gLS0tDQo+ID4g
IGRyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItb2YuYyB8IDI5ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrDQo+ID4gZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1vZi5oIHwgIDcgKysrKy0t
LQ0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0p
DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1vZi5jDQo+
ID4gYi9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLW9mLmMgaW5kZXggODA1NDIyOC4uODU4ZjY4
NCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLW9mLmMNCj4gPiAr
KysgYi9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLW9mLmMNCj4gPiBAQCAtMTYxLDExICsxNjEs
MzAgQEAgc3RhdGljIF9faW5pdCBpbnQgdGltZXJfb2ZfYmFzZV9pbml0KHN0cnVjdA0KPiBkZXZp
Y2Vfbm9kZSAqbnAsDQo+ID4gIAlyZXR1cm4gMDsNCj4gPiAgfQ0KPiA+DQo+ID4gK3N0YXRpYyBf
X2luaXQgaW50IHRpbWVyX29mX2Nsa19mcmVxdWVuY3lfaW5pdChzdHJ1Y3QgZGV2aWNlX25vZGUg
Km5wLA0KPiA+ICsJCQkJCSAgICAgIHN0cnVjdCBvZl90aW1lcl9jbGsgKm9mX2Nsaykgew0KPiA+
ICsJaW50IHJldDsNCj4gPiArCXUzMiByYXRlOw0KPiA+ICsNCj4gPiArCXJldCA9IG9mX3Byb3Bl
cnR5X3JlYWRfdTMyKG5wLCAiY2xvY2stZnJlcXVlbmN5IiwgJnJhdGUpOw0KPiA+ICsJaWYgKCFy
ZXQpIHsNCj4gPiArCQlvZl9jbGstPnJhdGUgPSByYXRlOw0KPiA+ICsJCW9mX2Nsay0+cGVyaW9k
ID0gRElWX1JPVU5EX1VQKHJhdGUsIEhaKTsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwlyZXR1cm4g
cmV0Ow0KPiA+ICt9DQo+ID4gKw0KPiA+ICBpbnQgX19pbml0IHRpbWVyX29mX2luaXQoc3RydWN0
IGRldmljZV9ub2RlICpucCwgc3RydWN0IHRpbWVyX29mICp0bykNCj4gPiB7DQo+ID4gKwl1bnNp
Z25lZCBsb25nIGNsb2NrX2ZsYWdzID0gVElNRVJfT0ZfQ0xPQ0sgfA0KPiA+ICtUSU1FUl9PRl9D
TE9DS19GUkVRVUVOQ1k7DQo+ID4gIAlpbnQgcmV0ID0gLUVJTlZBTDsNCj4gPiAgCWludCBmbGFn
cyA9IDA7DQo+ID4NCj4gPiArCWlmICgodG8tPmZsYWdzICYgY2xvY2tfZmxhZ3MpID09IGNsb2Nr
X2ZsYWdzKQ0KPiA+ICsJCXJldHVybiByZXQ7DQo+ID4gKw0KPiA+ICAJaWYgKHRvLT5mbGFncyAm
IFRJTUVSX09GX0JBU0UpIHsNCj4gPiAgCQlyZXQgPSB0aW1lcl9vZl9iYXNlX2luaXQobnAsICZ0
by0+b2ZfYmFzZSk7DQo+ID4gIAkJaWYgKHJldCkNCj4gPiBAQCAtMTgwLDYgKzE5OSwxMyBAQCBp
bnQgX19pbml0IHRpbWVyX29mX2luaXQoc3RydWN0IGRldmljZV9ub2RlICpucCwNCj4gc3RydWN0
IHRpbWVyX29mICp0bykNCj4gPiAgCQlmbGFncyB8PSBUSU1FUl9PRl9DTE9DSzsNCj4gPiAgCX0N
Cj4gPg0KPiA+ICsJaWYgKHRvLT5mbGFncyAmIFRJTUVSX09GX0NMT0NLX0ZSRVFVRU5DWSkgew0K
PiA+ICsJCXJldCA9IHRpbWVyX29mX2Nsa19mcmVxdWVuY3lfaW5pdChucCwgJnRvLT5vZl9jbGsp
Ow0KPiA+ICsJCWlmIChyZXQpDQo+ID4gKwkJCWdvdG8gb3V0X2ZhaWw7DQo+ID4gKwkJZmxhZ3Mg
fD0gVElNRVJfT0ZfQ0xPQ0tfRlJFUVVFTkNZOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiAgCWlmICh0
by0+ZmxhZ3MgJiBUSU1FUl9PRl9JUlEpIHsNCj4gPiAgCQlyZXQgPSB0aW1lcl9vZl9pcnFfaW5p
dChucCwgJnRvLT5vZl9pcnEpOw0KPiA+ICAJCWlmIChyZXQpDQo+ID4gQEAgLTIwMSw2ICsyMjcs
OSBAQCBpbnQgX19pbml0IHRpbWVyX29mX2luaXQoc3RydWN0IGRldmljZV9ub2RlICpucCwNCj4g
c3RydWN0IHRpbWVyX29mICp0bykNCj4gPiAgCWlmIChmbGFncyAmIFRJTUVSX09GX0NMT0NLKQ0K
PiA+ICAJCXRpbWVyX29mX2Nsa19leGl0KCZ0by0+b2ZfY2xrKTsNCj4gPg0KPiA+ICsJaWYgKGZs
YWdzICYgVElNRVJfT0ZfQ0xPQ0tfRlJFUVVFTkNZKQ0KPiA+ICsJCXRvLT5vZl9jbGsucmF0ZSA9
IDA7DQo+ID4gKw0KPiA+ICAJaWYgKGZsYWdzICYgVElNRVJfT0ZfQkFTRSkNCj4gPiAgCQl0aW1l
cl9vZl9iYXNlX2V4aXQoJnRvLT5vZl9iYXNlKTsNCj4gPiAgCXJldHVybiByZXQ7DQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItb2YuaA0KPiA+IGIvZHJpdmVycy9j
bG9ja3NvdXJjZS90aW1lci1vZi5oIGluZGV4IGE1NDc4ZjMuLmEwOGUxMDggMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1vZi5oDQo+ID4gKysrIGIvZHJpdmVycy9j
bG9ja3NvdXJjZS90aW1lci1vZi5oDQo+ID4gQEAgLTQsOSArNCwxMCBAQA0KPiA+DQo+ID4gICNp
bmNsdWRlIDxsaW51eC9jbG9ja2NoaXBzLmg+DQo+ID4NCj4gPiAtI2RlZmluZSBUSU1FUl9PRl9C
QVNFCTB4MQ0KPiA+IC0jZGVmaW5lIFRJTUVSX09GX0NMT0NLCTB4Mg0KPiA+IC0jZGVmaW5lIFRJ
TUVSX09GX0lSUQkweDQNCj4gPiArI2RlZmluZSBUSU1FUl9PRl9CQVNFCQkJMHgxDQo+ID4gKyNk
ZWZpbmUgVElNRVJfT0ZfQ0xPQ0sJCQkweDINCj4gPiArI2RlZmluZSBUSU1FUl9PRl9JUlEJCQkw
eDQNCj4gPiArI2RlZmluZSBUSU1FUl9PRl9DTE9DS19GUkVRVUVOQ1kJMHg4DQo+ID4NCj4gPiAg
c3RydWN0IG9mX3RpbWVyX2lycSB7DQo+ID4gIAlpbnQgaXJxOw0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
