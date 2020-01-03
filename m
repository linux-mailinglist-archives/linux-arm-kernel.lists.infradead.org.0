Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1458012F3FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 06:07:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iiKxr1E0QgMhevb76uLsq0sG5DvIF7wKZuQy2eyKrNs=; b=lxOPEModvNgRIg
	XGZE5dwENevRL4wJYz0OA+sO8u+T8XUHuYgTuy+uXztbL5JgnNSEvuqjf6iLs1ix4ucFSiwmg2Cjc
	ViZV5yWakiAfLE22ZoMbmLurJZbhc6aIw9+kIIkHjDrxH/C3r0ZQcvMiG/vfYoZbPJbZur4dZbEtK
	ePSQu6UzRxYMW1LEjCEGwj31rSQWGXdz54Fj7m3r7l5Gh6JfPUFqLVSS9TlWdn5H/4Zp2uGFu3IaM
	LSgeieZLys1PLpgkKlr7db1w8oFGmfuUZn5z6f+OSumI9V+Kxw52iZDYheJCefcnp5n75HxIXpujY
	uCOlWmecgyhbGto8QYrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inFBf-0007Ur-JS; Fri, 03 Jan 2020 05:07:51 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1inFBO-0007Qm-45; Fri, 03 Jan 2020 05:07:35 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID 00357O1g010673,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS11.realtek.com.tw[172.21.6.12])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id 00357O1g010673
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 3 Jan 2020 13:07:24 +0800
Received: from RTEXDAG01.realtek.com.tw (172.21.6.100) by
 RTITCAS11.realtek.com.tw (172.21.6.12) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Fri, 3 Jan 2020 13:07:24 +0800
Received: from RTEXMB04.realtek.com.tw (172.21.6.97) by
 RTEXDAG01.realtek.com.tw (172.21.6.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Fri, 3 Jan 2020 13:07:24 +0800
Received: from RTEXMB04.realtek.com.tw ([fe80::d9c5:a079:495e:b999]) by
 RTEXMB04.realtek.com.tw ([fe80::d9c5:a079:495e:b999%6]) with mapi id
 15.01.1779.005; Fri, 3 Jan 2020 13:07:24 +0800
From: =?utf-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>
To: James Tai <james.tai@realtek.com>, =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?=
 <afaerber@suse.de>, "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [RFC 03/11] arm64: dts: realtek: rtd129x: Add chip info node
Thread-Topic: [RFC 03/11] arm64: dts: realtek: rtd129x: Add chip info node
Thread-Index: AQHVkedK7O6Ji1Cvt0Gs/gwTj0NGGKfXzwowgADzu9A=
Date: Fri, 3 Jan 2020 05:07:23 +0000
Message-ID: <bcaaec45356449e9bb98a103a6ec3c55@realtek.com>
References: <20191103013645.9856-1-afaerber@suse.de>
 <20191103013645.9856-4-afaerber@suse.de>
 <55c8692a0650426db7b78d5ce77ed08f@realtek.com>
In-Reply-To: <55c8692a0650426db7b78d5ce77ed08f@realtek.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.55]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_210734_303058_8E9AFCA0 
X-CRM114-Status: GOOD (  12.47  )
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

SGkgQW5kcmVhcywNCg0KVGhpcyBwYXRjaCBpcyB3b3JrIGluIG15IHBsYXRmb3JtLg0KDQo+IEFk
ZCBTdGFubGV5IENoYW5nIGZvciByZXZpZXcuDQo+IA0KPiA+IEFkZCBhIERUIG5vZGUgZm9yIGNo
aXAgaWRlbnRpZmljYXRpb24uDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJi
ZXIgPGFmYWVyYmVyQHN1c2UuZGU+DQo+ID4gLS0tDQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cmVhbHRlay9ydGQxMjl4LmR0c2kgfCA1ICsrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jl
YWx0ZWsvcnRkMTI5eC5kdHNpDQo+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRk
MTI5eC5kdHNpDQo+ID4gaW5kZXggNDQzMzExNDQ3NmY1Li4xNWE3YzI0OTE1NWQgMTAwNjQ0DQo+
ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQ0KPiA+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kNCj4gPiBAQCAtODQs
NiArODQsMTEgQEANCj4gPiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsNCj4gPiAgCQl9Ow0KPiA+
DQo+ID4gKwkJY2hpcC1pbmZvQDk4MDFhMjAwIHsNCj4gPiArCQkJY29tcGF0aWJsZSA9ICJyZWFs
dGVrLHJ0ZDExOTUtY2hpcCI7DQo+ID4gKwkJCXJlZyA9IDwweDk4MDFhMjAwIDB4OD47DQo+ID4g
KwkJfTsNCj4gPiArDQo+ID4gIAkJdWFydDE6IHNlcmlhbEA5ODAxYjIwMCB7DQo+ID4gIAkJCWNv
bXBhdGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7DQo+ID4gIAkJCXJlZyA9IDwweDk4MDFiMjAw
IDB4MTAwPjsNCj4gPiAtLQ0KPiA+IDIuMTYuNA0KPiA+DQoNClRlc3RlZC1ieTogU3RhbmxleSBD
aGFuZyA8c3RhbmxleV9jaGFuZ0ByZWFsdGVrLmNvbT4NClJldmlld2VkLWJ5OiBTdGFubGV5IENo
YW5nIDxzdGFubGV5X2NoYW5nQHJlYWx0ZWsuY29tPg0KDQpUaGFua3MsDQpTdGFubGV5DQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
