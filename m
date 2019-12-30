Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA8312D146
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:54:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhdRJlCc6aHfWMvdI0mEwpYTe1w77riXRqsljCByLpQ=; b=FT0A8RAvV9xoMJ
	E44d6ioLpy6//N0Yi7iITTPH+e0wILeANzl3aM8RKq8W6f4dJQDpmqwgBkcipeyQbNZ1D/UGxxJp8
	vF9s7n36mzvl65h1Iz8IBKZPsbQgAYGPjY/2dx2lF4goj00E6pj3pNaFKrCG9tr6O4jM09OyDuDwm
	/Sy92COL5pIjV+x63VscH62GRgMnaJPxvcIvBfXCmQVjZz3uGhzCYOnt6bYsXKZ4Ld5oLuIwnzabz
	EwrTsxqc8avJzCYn37Kdy9ltjW9n5+1/6KiBilKmf19MTW2pODD6qNq+3AXwdfafD2eJQ65UfdYS3
	FhEyWaAaEBb5jDO9qv3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwRH-00080M-Vz; Mon, 30 Dec 2019 14:54:36 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ilwIV-0007DA-Qa; Mon, 30 Dec 2019 14:45:34 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xBUEjMx7017383,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS11.realtek.com.tw[172.21.6.12])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xBUEjMx7017383
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 30 Dec 2019 22:45:22 +0800
Received: from RTEXMB01.realtek.com.tw (172.21.6.94) by
 RTITCAS11.realtek.com.tw (172.21.6.12) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Mon, 30 Dec 2019 22:45:22 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB01.realtek.com.tw (172.21.6.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Mon, 30 Dec 2019 22:45:22 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Mon, 30 Dec 2019 22:45:22 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [PATCH 13/14] arm64: dts: realtek: rtd16xx: Add SB2 and SCPU
 Wrapper syscon nodes
Thread-Topic: [PATCH 13/14] arm64: dts: realtek: rtd16xx: Add SB2 and SCPU
 Wrapper syscon nodes
Thread-Index: AQHVqT1xZxfGDYhqBUG4SVUl9UytQ6fS7OYA
Date: Mon, 30 Dec 2019 14:45:21 +0000
Message-ID: <ea1e0d3edab44092a9ecd9d3557bb977@realtek.com>
References: <20191202182205.14629-1-afaerber@suse.de>
 <20191202182205.14629-14-afaerber@suse.de>
In-Reply-To: <20191202182205.14629-14-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.37.128.25]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064532_042263_AD5507F8 
X-CRM114-Status: GOOD (  11.41  )
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
 Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBBZGQgc3lzY29uIG1mZCBub2RlcyBmb3IgU0IyIGFuZCBTQ1BVIFdyYXBwZXIgdG8gUlREMTZ4
eCBEVC4NCj4gDQo+IENjOiBKYW1lcyBUYWkgPGphbWVzLnRhaUByZWFsdGVrLmNvbT4NCj4gU2ln
bmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPg0KPiAtLS0NCj4g
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxNnh4LmR0c2kgfCAxOCArKysrKysrKysr
KysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDE2eHguZHRzaQ0KPiBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxNnh4LmR0c2kNCj4gaW5kZXggNzc2ZWZjMTBi
YWIyLi5iYzg4Y2Y3NDlmMzMgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVh
bHRlay9ydGQxNnh4LmR0c2kNCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0
ZDE2eHguZHRzaQ0KPiBAQCAtMTM2LDYgKzEzNiwxNSBAQA0KPiAgCQkJCXJhbmdlcyA9IDwweDAg
MHg3MDAwIDB4MTAwMD47DQo+ICAJCQl9Ow0KPiANCj4gKwkJCXNiMjogc3lzY29uQDFhMDAwIHsN
Cj4gKwkJCQljb21wYXRpYmxlID0gInN5c2NvbiIsICJzaW1wbGUtbWZkIjsNCj4gKwkJCQlyZWcg
PSA8MHgxYTAwMCAweDEwMDA+Ow0KPiArCQkJCXJlZy1pby13aWR0aCA9IDw0PjsNCj4gKwkJCQkj
YWRkcmVzcy1jZWxscyA9IDwxPjsNCj4gKwkJCQkjc2l6ZS1jZWxscyA9IDwxPjsNCj4gKwkJCQly
YW5nZXMgPSA8MHgwIDB4MWEwMDAgMHgxMDAwPjsNCj4gKwkJCX07DQo+ICsNCj4gIAkJCW1pc2M6
IHN5c2NvbkAxYjAwMCB7DQo+ICAJCQkJY29tcGF0aWJsZSA9ICJzeXNjb24iLCAic2ltcGxlLW1m
ZCI7DQo+ICAJCQkJcmVnID0gPDB4MWIwMDAgMHgxMDAwPjsNCj4gQEAgLTE0NCw2ICsxNTMsMTUg
QEANCj4gIAkJCQkjc2l6ZS1jZWxscyA9IDwxPjsNCj4gIAkJCQlyYW5nZXMgPSA8MHgwIDB4MWIw
MDAgMHgxMDAwPjsNCj4gIAkJCX07DQo+ICsNCj4gKwkJCXNjcHVfd3JhcHBlcjogc3lzY29uQDFk
MDAwIHsNCj4gKwkJCQljb21wYXRpYmxlID0gInN5c2NvbiIsICJzaW1wbGUtbWZkIjsNCj4gKwkJ
CQlyZWcgPSA8MHgxZDAwMCAweDEwMDA+Ow0KPiArCQkJCXJlZy1pby13aWR0aCA9IDw0PjsNCj4g
KwkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsNCj4gKwkJCQkjc2l6ZS1jZWxscyA9IDwxPjsNCj4g
KwkJCQlyYW5nZXMgPSA8MHgwIDB4MWQwMDAgMHgxMDAwPjsNCj4gKwkJCX07DQo+ICAJCX07DQo+
IA0KPiAgCQlnaWM6IGludGVycnVwdC1jb250cm9sbGVyQGZmMTAwMDAwIHsNCj4gLS0NCj4gMi4x
Ni40DQo+IA0KPiANCg0KQWNrZWQtYnk6IEphbWVzIFRhaSA8amFtZXMudGFpQHJlYWx0ZWsuY29t
Pg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
