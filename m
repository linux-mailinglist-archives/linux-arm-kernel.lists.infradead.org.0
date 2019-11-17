Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA17FF854
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 08:21:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q6oqn2osPjkDp3tbmQYx0w1g4e09FAS5OUriu1DT/vg=; b=Jy87IRYKFvPbUF
	p2ysW9wGKfBHlOJKMkvLMM3hsQTduF876q9cliBPltsVrpAMgVJXKCcFMExUNDFjTli4MmNviYcRN
	iDxRCDwuQzZ4P40+nguGPSmXMyTUl7+HQsyqyFfUQeAYH5NGZrKjdQg09JGlS4mKGN0TWySeXl4cX
	65C2MqGZ3gr+ZatwZVob/kCde3RsZHdAhXHyZPwrD90CC+NK09Vr+knsH7ppZWVOH/Pf6hi1rvECV
	kuGH49obzzonTd+QgkS/gUtEpgTxMkvXJSzORs7mHKz+8KEuINxmWGUCaYrgLbMZlu/GwJnOcJz8Q
	aAU5nApHbdEsMOtA16Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWEsI-00086F-86; Sun, 17 Nov 2019 07:21:34 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWEs7-00083Z-6K; Sun, 17 Nov 2019 07:21:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D5C95B25F;
 Sun, 17 Nov 2019 07:21:20 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v3 4/8] ARM: dts: rtd1195: Introduce r-bus
Date: Sun, 17 Nov 2019 08:21:05 +0100
Message-Id: <20191117072109.20402-5-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191117072109.20402-1-afaerber@suse.de>
References: <20191117072109.20402-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_232123_389300_1F6DE684 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TW9kZWwgUmVhbHRlaydzIHJlZ2lzdGVyIGJ1cyBpbiBEVC4KClNpZ25lZC1vZmYtYnk6IEFuZHJl
YXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiB2MzogZnJvbSBSVEQxMzk1IHYxCiAq
IEZpeGVkIHItYnVzIHNpemUgZnJvbSAweDEwMDAwMCB0byAweDcwMDAwIGluIHJlZyBhbmQgcmFu
Z2VzIChKYW1lcykKICogUmVuYW1lZCBidXMgbm9kZSBmcm9tIHItYnVzIHRvIGJ1cyAoUm9iKQog
CiBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kgfCA1MiArKysrKysrKysrKysrKysrKysr
KysrKystLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCsp
LCAyMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1
LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kKaW5kZXggNGUzODY2ZmU4ZjZl
Li5mNTE3NGY4MjhhMjggMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRz
aQorKysgYi9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kKQEAgLTkyLDI4ICs5MiwzNiBA
QAogCQkgICAgICAgICA8MHgxODEwMDAwMCAweDE4MTAwMDAwIDB4MDEwMDAwMDA+LAogCQkgICAg
ICAgICA8MHg0MDAwMDAwMCAweDQwMDAwMDAwIDB4YzAwMDAwMDA+OwogCi0JCXdkdDogd2F0Y2hk
b2dAMTgwMDc2ODAgewotCQkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDEyOTUtd2F0Y2hkb2ci
OwotCQkJcmVnID0gPDB4MTgwMDc2ODAgMHgxMDA+OwotCQkJY2xvY2tzID0gPCZvc2MyN00+Owot
CQl9OwotCi0JCXVhcnQwOiBzZXJpYWxAMTgwMDc4MDAgewotCQkJY29tcGF0aWJsZSA9ICJzbnBz
LGR3LWFwYi11YXJ0IjsKLQkJCXJlZyA9IDwweDE4MDA3ODAwIDB4NDAwPjsKLQkJCXJlZy1zaGlm
dCA9IDwyPjsKLQkJCXJlZy1pby13aWR0aCA9IDw0PjsKLQkJCWNsb2NrLWZyZXF1ZW5jeSA9IDwy
NzAwMDAwMD47Ci0JCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwotCQl9OwotCi0JCXVhcnQxOiBzZXJp
YWxAMTgwMWIyMDAgewotCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKLQkJCXJl
ZyA9IDwweDE4MDFiMjAwIDB4MTAwPjsKLQkJCXJlZy1zaGlmdCA9IDwyPjsKLQkJCXJlZy1pby13
aWR0aCA9IDw0PjsKLQkJCWNsb2NrLWZyZXF1ZW5jeSA9IDwyNzAwMDAwMD47Ci0JCQlzdGF0dXMg
PSAiZGlzYWJsZWQiOworCQlyYnVzOiBidXNAMTgwMDAwMDAgeworCQkJY29tcGF0aWJsZSA9ICJz
aW1wbGUtYnVzIjsKKwkJCXJlZyA9IDwweDE4MDAwMDAwIDB4NzAwMDA+OworCQkJI2FkZHJlc3Mt
Y2VsbHMgPSA8MT47CisJCQkjc2l6ZS1jZWxscyA9IDwxPjsKKwkJCXJhbmdlcyA9IDwweDAgMHgx
ODAwMDAwMCAweDcwMDAwPjsKKworCQkJd2R0OiB3YXRjaGRvZ0A3NjgwIHsKKwkJCQljb21wYXRp
YmxlID0gInJlYWx0ZWsscnRkMTI5NS13YXRjaGRvZyI7CisJCQkJcmVnID0gPDB4NzY4MCAweDEw
MD47CisJCQkJY2xvY2tzID0gPCZvc2MyN00+OworCQkJfTsKKworCQkJdWFydDA6IHNlcmlhbEA3
ODAwIHsKKwkJCQljb21wYXRpYmxlID0gInNucHMsZHctYXBiLXVhcnQiOworCQkJCXJlZyA9IDww
eDc4MDAgMHg0MDA+OworCQkJCXJlZy1zaGlmdCA9IDwyPjsKKwkJCQlyZWctaW8td2lkdGggPSA8
ND47CisJCQkJY2xvY2stZnJlcXVlbmN5ID0gPDI3MDAwMDAwPjsKKwkJCQlzdGF0dXMgPSAiZGlz
YWJsZWQiOworCQkJfTsKKworCQkJdWFydDE6IHNlcmlhbEAxYjIwMCB7CisJCQkJY29tcGF0aWJs
ZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKKwkJCQlyZWcgPSA8MHgxYjIwMCAweDEwMD47CisJCQkJ
cmVnLXNoaWZ0ID0gPDI+OworCQkJCXJlZy1pby13aWR0aCA9IDw0PjsKKwkJCQljbG9jay1mcmVx
dWVuY3kgPSA8MjcwMDAwMDA+OworCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJCQl9OwogCQl9
OwogCiAJCWdpYzogaW50ZXJydXB0LWNvbnRyb2xsZXJAZmYwMTEwMDAgewotLSAKMi4xNi40CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
