Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CDD13BABB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 09:13:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MarYyctDB7lbt+iLfJx0g7xnuZN9K4vqQbrD1CGv+Ao=; b=mv5NH8JRI9O6bW
	LIYas98g/+m4stJA/c+BynAbjw11jTtE/zJ6nECNQtscMrY+gZm108tib49ntn1JJ5ZdPRmjnCSP4
	oJ0VZnKCttb2xMaegC2zlHCmq5IA5/4+ci1EUY8l/Sp5n+V0OUiQ01VV9DbackxqarDvqXMcF8TXH
	mwgyiaMDbZ+P9Ucwo6tfCoHecINEE2kwNOSpiqbLUOmEJ5iZS/VqqBw865u45sMy3y4yYBX/T/k6i
	v1H2rFfPgT039CEY7XXSC+vUXcpN9b+zPddo4fVItMCk8LPOtSow9Ly3wbJKEEba/eJc8Uq2iRxWI
	lik5YRSALALGlblQsUZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irdnz-00079Q-QZ; Wed, 15 Jan 2020 08:13:35 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1irdno-00078V-Ab; Wed, 15 Jan 2020 08:13:28 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID 00F8D6kv026743,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id 00F8D6kv026743
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 15 Jan 2020 16:13:06 +0800
Received: from RTEXMB04.realtek.com.tw (172.21.6.97) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Wed, 15 Jan 2020 16:13:05 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB04.realtek.com.tw (172.21.6.97) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Wed, 15 Jan 2020 16:13:05 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Wed, 15 Jan 2020 16:13:05 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [PATCH] arm64: dts: realtek: rtd16xx: Add memory reservations
Thread-Topic: [PATCH] arm64: dts: realtek: rtd16xx: Add memory reservations
Thread-Index: AQHVwfu36TqhHnURlUOpX7OuLPDS7qfrcuCg
Date: Wed, 15 Jan 2020 08:13:05 +0000
Message-ID: <51cf409ed1a44f038a5f1df133986063@realtek.com>
References: <20200103060441.1109-1-afaerber@suse.de>
In-Reply-To: <20200103060441.1109-1-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.154]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_001324_505131_C1E8A39A 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

PiBSZXNlcnZlIG1lbW9yeSByZWdpb25zIGZvciBSUEMgYW5kIFRFRS4NCj4gDQo+IEZpeGVzOiBl
NWE5ZTIzNzYwOGQgKCJhcm02NDogZHRzOiByZWFsdGVrOiBBZGQgUlREMTYxOSBTb0MgYW5kIFJl
YWx0ZWsNCj4gTWpvbG5pciBFVkIiKQ0KPiBDYzogSmFtZXMgVGFpIDxqYW1lcy50YWlAcmVhbHRl
ay5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5k
ZT4NCj4gLS0tDQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTZ4eC5kdHNpIHwg
MTkgKysrKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMo
KykNCj4gDQo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTZ4
eC5kdHNpDQo+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDE2eHguZHRzaQ0KPiBp
bmRleCAzYzcwYTBkYTMyOWUuLjRkYzZjOWYxM2M0MyAxMDA2NDQNCj4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9yZWFsdGVrL3J0ZDE2eHguZHRzaQ0KPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JlYWx0ZWsvcnRkMTZ4eC5kdHNpDQo+IEBAIC0xNCw2ICsxNCwyNSBAQA0KPiAgCSNhZGRy
ZXNzLWNlbGxzID0gPDE+Ow0KPiAgCSNzaXplLWNlbGxzID0gPDE+Ow0KPiANCj4gKwlyZXNlcnZl
ZC1tZW1vcnkgew0KPiArCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsNCj4gKwkJI3NpemUtY2VsbHMg
PSA8MT47DQo+ICsJCXJhbmdlczsNCj4gKw0KPiArCQlycGNfY29tbTogcnBjQDJmMDAwIHsNCj4g
KwkJCXJlZyA9IDwweDJmMDAwIDB4MTAwMD47DQo+ICsJCX07DQo+ICsNCj4gKwkJcnBjX3Jpbmdi
dWY6IHJwY0AxZmZlMDAwIHsNCj4gKwkJCXJlZyA9IDwweDFmZmUwMDAgMHg0MDAwPjsNCj4gKwkJ
fTsNCj4gKw0KPiArCQl0ZWU6IHRlZUAxMDEwMDAwMCB7DQo+ICsJCQlyZWcgPSA8MHgxMDEwMDAw
MCAweGYwMDAwMD47DQo+ICsJCQluby1tYXA7DQo+ICsJCX07DQo+ICsJfTsNCj4gKw0KPiAgCWNw
dXMgew0KPiAgCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsNCj4gIAkJI3NpemUtY2VsbHMgPSA8MD47
DQo+IC0tDQo+IDIuMTYuNA0KPiANCj4gDQpBY2tlZC1ieTogSmFtZXMgVGFpIDxqYW1lcy50YWlA
cmVhbHRlay5jb20+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
