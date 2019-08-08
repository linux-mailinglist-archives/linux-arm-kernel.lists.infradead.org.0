Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0169485C69
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 10:03:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VwSlbt8dU+JoUlOSNBT/9trQE497O/Z/yZNYSQIbEuA=; b=SYdjdbX7gqytMd
	sVuMa/S+wKblObiSFmggsXUZZf6mjmq+8zoWgtUcBVgnQjG6/hPUBQBF0C2rdUSLoIz4XbPHM8kRK
	UoLqRejyj3Ojy1LeU1nh3xOZHNnw81J3810e2uQ/hyKIAP2lwWtjEPFXkscquHfWHh+L4v0KLm+ZC
	XIYA2mjjlWzjxaPNsJXGh4ibA14Blg+WnaZ44Y6t99EMQaNXnbQEgYXidDDCbaJVIzaFvFogfTP5H
	prd6mFiLzitgIysLFDfiLfmwzkTfJIgbzkfS87xlgIzvBgyFChxH22x3cvCxirN0ag/uNsbPQYZ1K
	ExyqTew/tnBrFSYxFqsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdOi-0007Tf-DH; Thu, 08 Aug 2019 08:03:44 +0000
Received: from mail-eopbgr50102.outbound.protection.outlook.com
 ([40.107.5.102] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvdOS-0007Sd-Nd
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 08:03:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c3g0+4aaNilNgb3VHOTZL+7viSQWLJv/yeK8j1CarL77QD/hrlzjVBMgyvftrcg6Rzt6q/Lk9WpKc2rKme/OZ8pmcKiDBVeCPFXhINNTrCqbAKqMIFxvcVzIi3Fs70y7/XOFps7xtRMN4YlkLwD3qz+LNgp8Me40te3Qeu3hfg5Zk3M/a7RBbgRB9042K1sbF7XscNARbn9eURCytMxhZ66MjqViR8Ryc9C2LOKK12ysByB7t8v6MQ95ErDFL+RzrCp4MhhBBe3//b2RFZozV4VAIVO9kB53laiFJNVPtIRIVfQSyL6kRS+8ivn33m86J3jAZT7KlOVVinnNPjKbiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NnAVFm/UAhmseYR8FKUBhyGM0MpBfE0Koczz7uLHYm8=;
 b=k8WTlx3kEmCAbBsAvdxFck51F/rymzWMff0MUDQtYyuZEaIknxCvesQ9Mk0LijHLMk6E4TSBh8dO/g6P4BBTQwzVmmB8Sgptx2T9nhbVBnNGLJdoxO/a6Nj48o09WUwyoYfkdiBk1sPIBtulUhglNlKUv6VZoR/PZPYAbTmx68Plg4zEixSv13hbM0NZ5H/F87RKOTFYCkkz4BwmM1GM91XDuh3nQSjqveuipv+KHf/BCD700j1gipnTOfGLBWYjkt7Zzv/OqliKOqrWtYMul3iGh+f3TZVbr22fJAt97mfCOoGP5MUlP+puexS6eBkGI983fNwHg6zPYZqR/PN1zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NnAVFm/UAhmseYR8FKUBhyGM0MpBfE0Koczz7uLHYm8=;
 b=nbhdu/W7qYbvDdEPWjjsPsLscdxIINXMk8hd7vjrf36j8lBlVs1bAPayKler+3dpDRitpWlh/MPtDMekDPH6vbysHxlOiWwEsz/tJZnUjKwEg2Q0IaZalPkdkYFky79CUSBsJM+XqUE6gtzE4VbXqrU+taiQC4VgmRv8KTcttfc=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3631.eurprd05.prod.outlook.com (52.134.7.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Thu, 8 Aug 2019 08:03:23 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 08:03:22 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v3 09/21] ARM: dts: imx6qdl-colibri: add phy to fec
Thread-Topic: [PATCH v3 09/21] ARM: dts: imx6qdl-colibri: add phy to fec
Thread-Index: AQHVTPnMzs9IdJAHC02xaJ72tyIhqKbvghSAgAFjdYA=
Date: Thu, 8 Aug 2019 08:03:22 +0000
Message-ID: <9849ffad4a07b4ce90b412ccdada93ee45c5bc5d.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-10-philippe.schenker@toradex.com>
 <20190807105107.nqqltv64tjxprow6@pengutronix.de>
In-Reply-To: <20190807105107.nqqltv64tjxprow6@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a3e0140a-c9f4-4101-ff39-08d71bd6e243
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3631; 
x-ms-traffictypediagnostic: VI1PR0502MB3631:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB363193A5C3A2F10C9A3E1189F4D70@VI1PR0502MB3631.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:466;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(346002)(396003)(366004)(376002)(136003)(199004)(189003)(11346002)(2616005)(6436002)(26005)(478600001)(6506007)(2501003)(99286004)(7416002)(102836004)(3846002)(8676002)(186003)(25786009)(229853002)(6246003)(81166006)(71200400001)(2351001)(256004)(6486002)(53936002)(5640700003)(81156014)(6512007)(76176011)(7736002)(486006)(36756003)(305945005)(4326008)(6116002)(446003)(118296001)(8936002)(71190400001)(6916009)(2906002)(44832011)(14454004)(476003)(66946007)(66066001)(66556008)(91956017)(76116006)(86362001)(66476007)(66446008)(5660300002)(54906003)(316002)(64756008)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3631;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fKsA7H1giFn4WdP0oeHBR18f9tPqaMma4mDXnPpnP1AeWc7suIbBZe/OKVzEiRnX3M8Ya7f9ho+4notem+oSFHxXXnv9JuXlzq6yZl3rQxrGyVYASqwOG9tYX9rfW7GMfhhBKbD1YKAee2mQDbrHaxB+rUxlSw/y27oaAtUj6wZ7rbhdTDj8Ni/c/KSrnDPySgPWad8qCHuTv4XnG2bQNAYWCqP+ZcY006VmcuL5DPiOf+nnPK6ERRcsMb+YqNu2vICFD7aXwo5QUyqol5fBmZmA24JqDOYsa7uKfUsg9/TPA3TsO6ww3SoIgSwwcIcxzF4I72UqEuo7MSlAsvYQdf8BjHNnXy0qRioyo5Te/Eu6OjbiCFXLcRtwOMv5N+5CdGG86p4/VjGn7HDztCbt8RkZAviyX4C3XDMs4cYWokw=
Content-ID: <8092D70CEC74144BB6A1B117940CE27E@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3e0140a-c9f4-4101-ff39-08d71bd6e243
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 08:03:22.8223 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DeLtnfNXwVp0V/pl99L4i9HkKZaAowxKR4gzKLkoBSLXEPM8x0n7MPcjwTRImvUc8Jjuh4iwOrc7BcQLpgQA947uMLYGYu/3wZ/fSq5g9BA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3631
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_010328_949072_AC11CAC4 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.102 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.102 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "michal.vokac@ysoft.com" <michal.vokac@ysoft.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTA4LTA3IGF0IDEyOjUxICswMjAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90
ZToNCj4gT24gV2VkLCBBdWcgMDcsIDIwMTkgYXQgMDg6MjY6MjNBTSArMDAwMCwgUGhpbGlwcGUg
U2NoZW5rZXIgd3JvdGU6DQo+ID4gQWRkIHRoZSBwaHktbm9kZSBhbmQgbWRpbyBidXMgdG8gdGhl
IGZlYy1ub2RlLCByZXByZXNlbnRlZCBhcyBpcyBvbg0KPiA+IGhhcmR3YXJlLg0KPiA+IFRoaXMg
Y29tbWl0IGluY2x1ZGVzIG1pY3JlbCxsZWQtbW9kZSB0aGF0IGlzIHNldCB0byB0aGUgZGVmYXVs
dA0KPiA+IHZhbHVlLCBwcmVwYXJlZCBmb3Igc29tZW9uZSB3aG8gd2FudHMgdG8gY2hhbmdlIHRo
aXMuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogUGhpbGlwcGUgU2NoZW5rZXIgPHBoaWxpcHBl
LnNjaGVua2VyQHRvcmFkZXguY29tPg0KPiA+IC0tLQ0KPiA+IA0KPiA+IENoYW5nZXMgaW4gdjM6
IE5vbmUNCj4gPiBDaGFuZ2VzIGluIHYyOiBOb25lDQo+ID4gDQo+ID4gIGFyY2gvYXJtL2Jvb3Qv
ZHRzL2lteDZxZGwtY29saWJyaS5kdHNpIHwgMTEgKysrKysrKysrKysNCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDExIGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0v
Ym9vdC9kdHMvaW14NnFkbC1jb2xpYnJpLmR0c2kNCj4gPiBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lt
eDZxZGwtY29saWJyaS5kdHNpDQo+ID4gaW5kZXggMWJlYWMyMjI2NmVkLi4wMTlkZGE2Yjg4YWQg
MTAwNjQ0DQo+ID4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC1jb2xpYnJpLmR0c2kN
Cj4gPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLWNvbGlicmkuZHRzaQ0KPiA+IEBA
IC0xNDAsNyArMTQwLDE4IEBADQo+ID4gIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOw0KPiA+
ICAJcGluY3RybC0wID0gPCZwaW5jdHJsX2VuZXQ+Ow0KPiA+ICAJcGh5LW1vZGUgPSAicm1paSI7
DQo+ID4gKwlwaHktaGFuZGxlID0gPCZldGhwaHk+Ow0KPiA+ICAJc3RhdHVzID0gIm9rYXkiOw0K
PiA+ICsNCj4gPiArCW1kaW8gew0KPiA+ICsJCSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KPiA+ICsJ
CSNzaXplLWNlbGxzID0gPDA+Ow0KPiA+ICsNCj4gPiArCQlldGhwaHk6IGV0aGVybmV0LXBoeUAw
IHsNCj4gPiArCQkJcmVnID0gPDA+Ow0KPiA+ICsJCQltaWNyZWwsbGVkLW1vZGUgPSA8MD47DQo+
IA0KPiBEb2Vzbid0IHRoYXQgbmVlZCBhIGNvbXBhdGlibGUgZW50cnkgdG8gYmUgYWN0dWFsbHkg
dXNlZD8NCj4gDQo+IEJlc3QgcmVnYXJkcw0KPiBVd2UNCg0KSGkgVXdlIGFuZCB0aGFua3MgZm9y
IHBvaW50aW5nIHRoaXMgb3V0LiBJIGp1c3QgdHJpZWQgaXQgYW5kIGl0IHdvcmtzDQpmaW5lIHdp
dGhvdXQgdGhlIGNvbXBhdGlibGUuDQoNClBoaWxpcHBlDQoNCj4gPiANCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
