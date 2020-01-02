Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AB112E740
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 15:33:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8W7lvEzuW/sjo9v2qBmfKLaIdiT+p1i8QJIieawbAPI=; b=Zmoo/pOr3/KbAz
	bNo148WdREmclU3xgSe0x+7RUcSx0/+jBavC8PF2gygAOuw3BBQuYrqmcdgWeCcujpxUIy8BkZF1d
	e+GKdg0TAp7dle7WdAKs2OLYJEHKnDI0aVkLPZIN1Sf7I9Hf5esM3OkmLqa/T1XsYKcgx6ISgWvfw
	6CRlQ1Rim+GZoKgHXQUXJekN3FTIugFIIRvObKSwKHcjSkQ26p86w1AV1tdvvixsDRk3pyDtZ3zFL
	QnPfH85ip4ktRyq+Oc2XOfy8TJCRGq000ifddygozUGKTc3euzcMF0Z7f7LE5TkWJwNJ4PXJU8Wds
	c5vlo1CRe+sppWMYKXgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in1X0-0002BC-Ak; Thu, 02 Jan 2020 14:32:58 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1in1Ws-0002Ak-Jb; Thu, 02 Jan 2020 14:32:52 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID 002EWdLl015008,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV02.realtek.com.tw[172.21.6.19])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id 002EWdLl015008
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 2 Jan 2020 22:32:39 +0800
Received: from RTEXMB04.realtek.com.tw (172.21.6.97) by
 RTITCASV02.realtek.com.tw (172.21.6.19) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Thu, 2 Jan 2020 22:32:39 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB04.realtek.com.tw (172.21.6.97) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Thu, 2 Jan 2020 22:32:39 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Thu, 2 Jan 2020 22:32:39 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [RFC 03/11] arm64: dts: realtek: rtd129x: Add chip info node
Thread-Topic: [RFC 03/11] arm64: dts: realtek: rtd129x: Add chip info node
Thread-Index: AQHVkedK7O6Ji1Cvt0Gs/gwTj0NGGKfXzwow
Date: Thu, 2 Jan 2020 14:32:39 +0000
Message-ID: <55c8692a0650426db7b78d5ce77ed08f@realtek.com>
References: <20191103013645.9856-1-afaerber@suse.de>
 <20191103013645.9856-4-afaerber@suse.de>
In-Reply-To: <20191103013645.9856-4-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.37.143.250]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_063250_770176_8805AF83 
X-CRM114-Status: GOOD (  14.29  )
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

QWRkIFN0YW5sZXkgQ2hhbmcgZm9yIHJldmlldy4NCg0KPiBBZGQgYSBEVCBub2RlIGZvciBjaGlw
IGlkZW50aWZpY2F0aW9uLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxh
ZmFlcmJlckBzdXNlLmRlPg0KPiAtLS0NCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9y
dGQxMjl4LmR0c2kgfCA1ICsrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXgu
ZHRzaQ0KPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kNCj4gaW5k
ZXggNDQzMzExNDQ3NmY1Li4xNWE3YzI0OTE1NWQgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kNCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQ0KPiBAQCAtODQsNiArODQsMTEgQEANCj4gIAkJCXN0YXR1
cyA9ICJkaXNhYmxlZCI7DQo+ICAJCX07DQo+IA0KPiArCQljaGlwLWluZm9AOTgwMWEyMDAgew0K
PiArCQkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDExOTUtY2hpcCI7DQo+ICsJCQlyZWcgPSA8
MHg5ODAxYTIwMCAweDg+Ow0KPiArCQl9Ow0KPiArDQo+ICAJCXVhcnQxOiBzZXJpYWxAOTgwMWIy
MDAgew0KPiAgCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsNCj4gIAkJCXJlZyA9
IDwweDk4MDFiMjAwIDB4MTAwPjsNCj4gLS0NCj4gMi4xNi40DQo+IA0KPiANCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gbGludXgtcmVhbHRlay1z
b2MgbWFpbGluZyBsaXN0DQo+IGxpbnV4LXJlYWx0ZWstc29jQGxpc3RzLmluZnJhZGVhZC5vcmcN
Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yZWFs
dGVrLXNvYw0KPiANCj4gLS0tLS0tUGxlYXNlIGNvbnNpZGVyIHRoZSBlbnZpcm9ubWVudCBiZWZv
cmUgcHJpbnRpbmcgdGhpcyBlLW1haWwuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
