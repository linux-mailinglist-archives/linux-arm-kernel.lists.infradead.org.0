Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D97E111C44D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:45:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uskCswOcY9MxtsGcN0aA0bq93SiPKO9Hc5X/WYvH4A=; b=LnmANsTMTRy23N
	O47qlQpTHlfuRzJpJqkAxunlUrfDtn9Sqn+74ks1IBJUT3+2hrVDLmG7z+ZM84ZriU9MkyqfLVHVo
	RGzgdb6ZI1F7iJPU5Ed4kv8WXYIYICyy7Ztf0W1n8ALc5PHjjzEmr1segZu6BozDrxQ9QhKQro78H
	VAUzLlmgGyEOOVqUgD7VbUcM8bjr3pjRiuENCQWQarY/wrvqD/VA9JN7lJXhnjZwK0OF620bdpBpY
	Z5J2Wh7Mj9hklxhq58OsewOrSBtsGgW7yH+s09YVvxQfSDW8WuN067UzxfgNWsztSDJqrqYToP7Qc
	xiumLI+ZFJddhvRyhdqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFPx-0007gU-Bh; Thu, 12 Dec 2019 03:45:33 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFKj-0000r7-Hp; Thu, 12 Dec 2019 03:40:16 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6AD9EAF99;
 Thu, 12 Dec 2019 03:40:06 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
	linux-leds@vger.kernel.org
Subject: [RFC 20/25] arm64: dts: realtek: rtd1295-zidoo-x9s: Add display to
 TM1628
Date: Thu, 12 Dec 2019 04:39:47 +0100
Message-Id: <20191212033952.5967-21-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_194010_056023_0FCE76F4 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Roc He <hepeng@zidoo.tv>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgY2hpbGQgbm9kZSBmb3IgNC1kaWdpdCA3LXNlZ21lbnQgZGlzcGxheS4KCkNjOiBSb2Mg
SGUgPGhlcGVuZ0B6aWRvby50dj4KU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFl
cmJlckBzdXNlLmRlPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LXpp
ZG9vLXg5cy5kdHMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS16aWRvby14OXMu
ZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTUtemlkb28teDlzLmR0cwpp
bmRleCAyMTliNDk4NzQxMmMuLjZjMjMzN2U5MjgyZiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yZWFsdGVrL3J0ZDEyOTUtemlkb28teDlzLmR0cworKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS16aWRvby14OXMuZHRzCkBAIC02NCw2ICs2NCwxMCBAQAog
CQkJI2FkZHJlc3MtY2VsbHMgPSA8Mj47CiAJCQkjc2l6ZS1jZWxscyA9IDwwPjsKIAorCQkJZGlz
cGxheUAwLDEwIHsKKwkJCQlyZWcgPSA8MCAxMD4sIDwwIDk+LCA8MCA4PiwgPDAgNz47CisJCQl9
OworCiAJCQljb2xvbkA1LDQgewogCQkJCXJlZyA9IDw1IDQ+OwogCQkJCWNvbG9yID0gPExFRF9D
T0xPUl9JRF9XSElURT47Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
