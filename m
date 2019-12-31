Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A952A12D762
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 10:26:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ugRJ0SFfH5eeuvMDb6m/nBxvcpSgeg1DeANfELLoGUk=; b=tAFrrRxFT2Gv+k
	svfgTFe3HpHzCWvn4t+8kP9WpULJEjkc4kGLfboT36H3jBLEYQanvbg+dov+NCwrnmuPAJ9AcDCKF
	6cz8MlQR+ynrJzxW1ydLxK+iLxlsFFsf03RPkWAQlgjr47Q/TyoOjo9sZUDOBouvFw8qjZ2I1mCAf
	imfdp61pppBpECSTbSqxQdZDKL9UwSdfwpapZpWQ3C5MHL3s3oo7oe5JiO6Nhw6Yggzp5oSUOApJL
	jsHeDR+7Zp/IG2V7mKRd5Tti+TDHI+U32WtLSekNCtC/JpnXBXo3LvcXrgZcjWBGdWBP1o81GirZI
	f+wQWtOLlVBhmr4pQJhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imDn3-0005sV-9r; Tue, 31 Dec 2019 09:26:13 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1imDmt-0005ru-W3; Tue, 31 Dec 2019 09:26:05 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xBV9Pp7m029306,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS11.realtek.com.tw[172.21.6.12])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xBV9Pp7m029306
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 31 Dec 2019 17:25:52 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTITCAS11.realtek.com.tw (172.21.6.12) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Tue, 31 Dec 2019 17:25:51 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB03.realtek.com.tw (172.21.6.96) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 31 Dec 2019 17:25:51 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Tue, 31 Dec 2019 17:25:51 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [PATCH 06/14] dt-bindings: reset: Add Realtek RTD1195
Thread-Topic: [PATCH 06/14] dt-bindings: reset: Add Realtek RTD1195
Thread-Index: AQHVqT33UyBET913+UCfJNYfDE38aKfUJdjg
Date: Tue, 31 Dec 2019 09:25:50 +0000
Message-ID: <7d794ee055c74c6aae473073a094de29@realtek.com>
References: <20191202182205.14629-1-afaerber@suse.de>
 <20191202182205.14629-7-afaerber@suse.de>
In-Reply-To: <20191202182205.14629-7-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_012604_161359_59242196 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBBZGQgYSBoZWFkZXIgd2l0aCBzeW1ib2xpYyByZXNldCBpbmRpY2VzIGZvciBSZWFsdGVrIFJU
RDExOTUgU29DLg0KPiBOYW1pbmcgd2FzIGRlcml2ZWQgZnJvbSBCU1AgcmVnaXN0ZXIgZGVzY3Jp
cHRpb24gaGVhZGVycy4NCj4gDQo+IEFja2VkLWJ5OiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBl
bmd1dHJvbml4LmRlPg0KPiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9y
Zz4NCj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPg0K
PiAtLS0NCj4gIHYxOiBGcm9tIFJURDExOTUgdjQgc2VyaWVzDQo+IA0KPiAgaW5jbHVkZS9kdC1i
aW5kaW5ncy9yZXNldC9yZWFsdGVrLHJ0ZDExOTUuaCB8IDc0DQo+ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgNzQgaW5zZXJ0aW9ucygrKQ0KPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvcmVhbHRlayxydGQxMTk1
LmgNCj4gDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3JlYWx0ZWss
cnRkMTE5NS5oDQo+IGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC9yZWFsdGVrLHJ0ZDExOTUu
aA0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAwMDAuLjI3OTAyYWJm
OTM1Yg0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQv
cmVhbHRlayxydGQxMTk1LmgNCj4gQEAgLTAsMCArMSw3NCBAQA0KPiArLyogU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IChHUEwtMi4wLW9yLWxhdGVyIE9SIEJTRC0yLUNsYXVzZSkgKi8NCj4gKy8q
DQo+ICsgKiBSZWFsdGVrIFJURDExOTUgcmVzZXQgY29udHJvbGxlcnMNCj4gKyAqDQo+ICsgKiBD
b3B5cmlnaHQgKGMpIDIwMTcgQW5kcmVhcyBGw6RyYmVyDQo+ICsgKi8NCj4gKyNpZm5kZWYgRFRf
QklORElOR1NfUkVTRVRfUlREMTE5NV9IDQo+ICsjZGVmaW5lIERUX0JJTkRJTkdTX1JFU0VUX1JU
RDExOTVfSA0KPiArDQo+ICsvKiBzb2Z0IHJlc2V0IDEgKi8NCj4gKyNkZWZpbmUgUlREMTE5NV9S
U1ROX01JU0MJCTANCj4gKyNkZWZpbmUgUlREMTE5NV9SU1ROX1JORwkJMQ0KPiArI2RlZmluZSBS
VEQxMTk1X1JTVE5fVVNCM19QT1cJCTINCj4gKyNkZWZpbmUgUlREMTE5NV9SU1ROX0dTUEkJCTMN
Cj4gKyNkZWZpbmUgUlREMTE5NV9SU1ROX1VTQjNfUDBfTURJTwk0DQo+ICsjZGVmaW5lIFJURDEx
OTVfUlNUTl9WRV9IMjY1CQk1DQo+ICsjZGVmaW5lIFJURDExOTVfUlNUTl9VU0IJCTYNCj4gKyNk
ZWZpbmUgUlREMTE5NV9SU1ROX1VTQl9QSFkwCQk4DQo+ICsjZGVmaW5lIFJURDExOTVfUlNUTl9V
U0JfUEhZMQkJOQ0KPiArI2RlZmluZSBSVEQxMTk1X1JTVE5fSERNSVJYCQkxMQ0KPiArI2RlZmlu
ZSBSVEQxMTk1X1JTVE5fSERNSQkJMTINCj4gKyNkZWZpbmUgUlREMTE5NV9SU1ROX0VUTgkJMTQN
Cj4gKyNkZWZpbmUgUlREMTE5NV9SU1ROX0FJTwkJMTUNCj4gKyNkZWZpbmUgUlREMTE5NV9SU1RO
X0dQVQkJMTYNCj4gKyNkZWZpbmUgUlREMTE5NV9SU1ROX1ZFX0gyNjQJCTE3DQo+ICsjZGVmaW5l
IFJURDExOTVfUlNUTl9WRV9KUEVHCQkxOA0KPiArI2RlZmluZSBSVEQxMTk1X1JTVE5fVFZFCQkx
OQ0KPiArI2RlZmluZSBSVEQxMTk1X1JTVE5fVk8JCQkyMA0KPiArI2RlZmluZSBSVEQxMTk1X1JT
VE5fTFZEUwkJMjENCj4gKyNkZWZpbmUgUlREMTE5NV9SU1ROX1NFCQkJMjINCj4gKyNkZWZpbmUg
UlREMTE5NV9SU1ROX0RDVQkJMjMNCj4gKyNkZWZpbmUgUlREMTE5NV9SU1ROX0RDX1BIWQkJMjQN
Cj4gKyNkZWZpbmUgUlREMTE5NV9SU1ROX0NQCQkJMjUNCj4gKyNkZWZpbmUgUlREMTE5NV9SU1RO
X01ECQkJMjYNCj4gKyNkZWZpbmUgUlREMTE5NV9SU1ROX1RQCQkJMjcNCj4gKyNkZWZpbmUgUlRE
MTE5NV9SU1ROX0FFCQkJMjgNCj4gKyNkZWZpbmUgUlREMTE5NV9SU1ROX05GCQkJMjkNCj4gKyNk
ZWZpbmUgUlREMTE5NV9SU1ROX01JUEkJCTMwDQo+ICsNCj4gKy8qIHNvZnQgcmVzZXQgMiAqLw0K
PiArI2RlZmluZSBSVEQxMTk1X1JTVE5fQUNQVQkJMA0KPiArI2RlZmluZSBSVEQxMTk1X1JTVE5f
VkNQVQkJMQ0KPiArI2RlZmluZSBSVEQxMTk1X1JTVE5fUENSCQk5DQo+ICsjZGVmaW5lIFJURDEx
OTVfUlNUTl9DUgkJCTEwDQo+ICsjZGVmaW5lIFJURDExOTVfUlNUTl9FTU1DCQkxMQ0KPiArI2Rl
ZmluZSBSVEQxMTk1X1JTVE5fU0RJTwkJMTINCj4gKyNkZWZpbmUgUlREMTE5NV9SU1ROX0kyQ181
CQkxOA0KPiArI2RlZmluZSBSVEQxMTk1X1JTVE5fUlRDCQkyMA0KPiArI2RlZmluZSBSVEQxMTk1
X1JTVE5fSTJDXzQJCTIzDQo+ICsjZGVmaW5lIFJURDExOTVfUlNUTl9JMkNfMwkJMjQNCj4gKyNk
ZWZpbmUgUlREMTE5NV9SU1ROX0kyQ18yCQkyNQ0KPiArI2RlZmluZSBSVEQxMTk1X1JTVE5fSTJD
XzEJCTI2DQo+ICsjZGVmaW5lIFJURDExOTVfUlNUTl9VUjEJCTI4DQo+ICsNCj4gKy8qIHNvZnQg
cmVzZXQgMyAqLw0KPiArI2RlZmluZSBSVEQxMTk1X1JTVE5fU0IyCQkwDQo+ICsNCj4gKy8qIGlz
byBzb2Z0IHJlc2V0ICovDQo+ICsjZGVmaW5lIFJURDExOTVfSVNPX1JTVE5fVkZECQkwDQo+ICsj
ZGVmaW5lIFJURDExOTVfSVNPX1JTVE5fSVIJCTENCj4gKyNkZWZpbmUgUlREMTE5NV9JU09fUlNU
Tl9DRUMwCQkyDQo+ICsjZGVmaW5lIFJURDExOTVfSVNPX1JTVE5fQ0VDMQkJMw0KPiArI2RlZmlu
ZSBSVEQxMTk1X0lTT19SU1ROX0RQCQk0DQo+ICsjZGVmaW5lIFJURDExOTVfSVNPX1JTVE5fQ0JV
U1RYCQk1DQo+ICsjZGVmaW5lIFJURDExOTVfSVNPX1JTVE5fQ0JVU1JYCQk2DQo+ICsjZGVmaW5l
IFJURDExOTVfSVNPX1JTVE5fRUZVU0UJCTcNCj4gKyNkZWZpbmUgUlREMTE5NV9JU09fUlNUTl9V
UjAJCTgNCj4gKyNkZWZpbmUgUlREMTE5NV9JU09fUlNUTl9HTUFDCQk5DQo+ICsjZGVmaW5lIFJU
RDExOTVfSVNPX1JTVE5fR1BIWQkJMTANCj4gKyNkZWZpbmUgUlREMTE5NV9JU09fUlNUTl9JMkNf
MAkJMTENCj4gKyNkZWZpbmUgUlREMTE5NV9JU09fUlNUTl9JMkNfNgkJMTINCj4gKyNkZWZpbmUg
UlREMTE5NV9JU09fUlNUTl9DQlVTCQkxMw0KPiArDQo+ICsjZW5kaWYNCj4gLS0NCj4gMi4xNi40
DQo+IA0KQWNrZWQtYnk6IEphbWVzIFRhaSA8amFtZXMudGFpQHJlYWx0ZWsuY29tPg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
