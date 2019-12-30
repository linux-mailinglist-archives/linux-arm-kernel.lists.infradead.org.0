Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA2112D14A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:55:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQkUa/tRsj5FqzX7IcRFMJ4WCJcV7LLd8kjiP2gSGqg=; b=mk2joSvnqlCqIB
	55ZpwirLI5EUSyJ+YLaJX6LjNhjLTvgufWQY3CXjRLpuOtOCBATHkW6H72nzX8xQ7MPXHmYdFv2FE
	KIckNvQcLH4rMvHA5HYYTSrJnpDQs6TJwEIQ4ZArFsfJKf/DbKYJ3G8hl3932pAXBERSNNV/iF45X
	OtAM9+aHk47vtGZX4KT0A4U47ncWcSvDyzs8+IYgtwk0DfwDqD/XPPTn3pZEc3qJdFHXAs3Sa7gpF
	wlE4kdtq0nOwxP4RopwnqwOfq69nfCtTK+mMBJdBXnbxdLuOVhsm7GANAHTnpbETNXxkfag5v39v7
	F682QmPimUlK/sqcrhrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwSN-0001v0-Du; Mon, 30 Dec 2019 14:55:43 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ilwSD-0001s4-9Q; Mon, 30 Dec 2019 14:55:34 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xBUEtK3u018777,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS11.realtek.com.tw[172.21.6.12])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xBUEtK3u018777
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 30 Dec 2019 22:55:21 +0800
Received: from RTEXDAG02.realtek.com.tw (172.21.6.101) by
 RTITCAS11.realtek.com.tw (172.21.6.12) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Mon, 30 Dec 2019 22:55:20 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXDAG02.realtek.com.tw (172.21.6.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Mon, 30 Dec 2019 22:55:20 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Mon, 30 Dec 2019 22:55:20 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [PATCH 14/14] dt-bindings: reset: rtd1295: Add SB2 reset
Thread-Topic: [PATCH 14/14] dt-bindings: reset: rtd1295: Add SB2 reset
Thread-Index: AQHVqT34B9KUPlrEBUCEIqQuxCatIafS76Sw
Date: Mon, 30 Dec 2019 14:55:20 +0000
Message-ID: <f5affd5149364bd0b94600f631821ef4@realtek.com>
References: <20191202182205.14629-1-afaerber@suse.de>
 <20191202182205.14629-15-afaerber@suse.de>
In-Reply-To: <20191202182205.14629-15-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.37.128.25]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_065533_456071_87E11271 
X-CRM114-Status: GOOD (  11.05  )
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

PiBBZGQgYSBjb25zdGFudCBmb3IgcmVzZXQzIFNCMiwgYmFzZWQgb24gZG93bnN0cmVhbSBjcnRf
c3lzX3JlZy5oLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJl
ckBzdXNlLmRlPg0KPiAtLS0NCj4gIGluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvcmVhbHRlayxy
dGQxMjk1LmggfCAzICsrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvcmVhbHRlayxydGQxMjk1
LmgNCj4gYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3JlYWx0ZWsscnRkMTI5NS5oDQo+IGlu
ZGV4IDJjMGNiNmFmZTgxNi4uZGQ4OWU0YzgwMjY0IDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2R0
LWJpbmRpbmdzL3Jlc2V0L3JlYWx0ZWsscnRkMTI5NS5oDQo+ICsrKyBiL2luY2x1ZGUvZHQtYmlu
ZGluZ3MvcmVzZXQvcmVhbHRlayxydGQxMjk1LmgNCj4gQEAgLTc1LDYgKzc1LDkgQEANCj4gICNk
ZWZpbmUgUlREMTI5NV9SU1ROX0NCVVNfVFgJCTMwDQo+ICAjZGVmaW5lIFJURDEyOTVfUlNUTl9T
RFNfUEhZCQkzMQ0KPiANCj4gKy8qIHNvZnQgcmVzZXQgMyAqLw0KPiArI2RlZmluZSBSVEQxMjk1
X1JTVE5fU0IyCQkwDQo+ICsNCj4gIC8qIHNvZnQgcmVzZXQgNCAqLw0KPiAgI2RlZmluZSBSVEQx
Mjk1X1JTVE5fRENQSFlfQ1JUCQkwDQo+ICAjZGVmaW5lIFJURDEyOTVfUlNUTl9EQ1BIWV9BTEVS
VF9SWAkxDQo+IC0tDQo+IDIuMTYuNA0KPiANCg0KQWNrZWQtYnk6IEphbWVzIFRhaSA8amFtZXMu
dGFpQHJlYWx0ZWsuY29tPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
