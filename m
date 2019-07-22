Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7ED709A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:23:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s8X9OpMLQDlHWYn39tJVt26AoFhfwjKZ5a9pPAf5qkU=; b=pIGkF8sIMRhEP0
	+b3IEe8aft36m5YIWlskDl3CRrgcfVpY2Sj8m2EXMdbsDmuIXB5sHFbh6DGmh6nI/bmkNlvTbeTlj
	iNlsXA4l1cZ0SKH4HlpaCVEurs5CY0W3BqgK7suRKw+TB8WIPGFSSbSjINMfC7GHjHsvBQKu7BZS8
	PqMNoV4pxseKb8iXt6xhEcc4y9cReESlNQPffOOstNXIC/StOd7/kRd1JH/k/S+dKq6dpbdIrVA5O
	tGPodDjujdZby+B38Ujf7k0iE5shd6TR3BZL4dd3woYMftetBUMkPyeDCj9QY2T6lNhztTDG/PWDY
	TL9P+ids6u5L6alFgkuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdu1-0000LW-IZ; Mon, 22 Jul 2019 19:23:17 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdt9-00009M-9f
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 19:22:24 +0000
Received: by mail-lf1-x143.google.com with SMTP id p197so27461966lfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 12:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wnit4p85ORmgfnZn4hAkBjNauy9f4K7ibUxB6LLunYI=;
 b=OUXCvoenllByUjPJujE3BRthxEaq55rjTdMdDKZp1dI1QYrJTD2K8yttKXVEoegkQL
 S5TEfmkT0MGc9WDr6KJrdjXGkCsrYMQDp9Z4/n8X7I4PNIdtNP0IW1v1q5HLSytSq/ME
 c7+Hz9PGlgCvXv/XMZyoXv5XTIx0Z99iD9yGwJIQvDQ+Rh6DAf/9Kgn+jo/c0rLjhOFC
 3ifUNZTT9BKarFYuliptX8RhH1F3Oz2hSge3fxjwKJIyANBBy2z1VHE/NRJ9d/td9H7w
 +CdL0YySrgG8y3EXrz4n8d9JArm9kQ5VizLJXDawq1AbcZYduiTn0+avPqmNuhh/ZSZU
 XmZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wnit4p85ORmgfnZn4hAkBjNauy9f4K7ibUxB6LLunYI=;
 b=j6mDTO/sKDSOYl/sfqCJadShJ5EmPZoJkRT5ScyM+5CJ8O1jztkakld1vlAhclOloO
 FdjXNZFO0LGFBQBVfcxvQkuwfDOiklW+oMxr3FrEyxhvOIb3d/IP8CbjYAsV27L2yyZG
 Hpk0NsAJc7TkCG22xJgDXq86nAtsMrq/oGdABF3I7CIf96E6G45c+aNtzfOLzpEjjagN
 gHg7ssS2dq9VP8p2Wck2K8S4qfJRw14KctoHTzMYwOHqgL0YpH4vZFNKQY49RhkOyLnN
 AdwFEWQRfgtR1B1MF78hKDLHQ8PuMFpeXbQC57XTHNWDySQDoPkp5NICJld8zkSGjTlb
 TYQw==
X-Gm-Message-State: APjAAAWu/xRCslCv+X6sMHMZgHDoxFPt4cejwFTnXR4dqbY6vXphB52t
 5aL+iawFKkbX1XpbYF14Gx8=
X-Google-Smtp-Source: APXvYqzMcAxtvEzeZaLbMfwbcBn9qKi7e4zuAuT1RxXDnSo2B3PtPcOpAQp3OSoAIKssKwyHOq2Ljg==
X-Received: by 2002:ac2:563c:: with SMTP id b28mr20156125lff.93.1563823342006; 
 Mon, 22 Jul 2019 12:22:22 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id n124sm6129307lfd.46.2019.07.22.12.22.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 22 Jul 2019 12:22:21 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v6 2/3] serial: imx: set_mctrl(): correctly restore autoRTS
 state
Date: Mon, 22 Jul 2019 22:22:10 +0300
Message-Id: <1563823331-5629-3-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1563823331-5629-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563823331-5629-1-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_122223_344722_56474302 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sergey Organov <sorganov@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aW14X3VhcnRfc2V0X21jdHJsKCkgaGFwcGVuZWQgdG8gc2V0IFVDUjJfQ1RTQyBiaXQgd2hlbmV2
ZXIgVElPQ01fUlRTCndhcyBzZXQsIG5vIG1hdHRlciBpZiBSVFMvQ1RTIGhhbmRzaGFrZSBpcyBl
bmFibGVkIG9yIG5vdC4gTm93IGZpeGVkIGJ5CnR1cm5pbmcgaGFuZHNoYWtlIG9uIG9ubHkgd2hl
biBDUlRTQ1RTIGJpdCBmb3IgdGhlIHBvcnQgaXMgc2V0LgoKQWNrZWQtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+ClJldmlld2VkLWJ5OiBTYXNj
aGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+ClRlc3RlZC1ieTogU2FzY2hhIEhhdWVy
IDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgpTaWduZWQtb2ZmLWJ5OiBTZXJnZXkgT3JnYW5vdiA8
c29yZ2Fub3ZAZ21haWwuY29tPgotLS0KIGRyaXZlcnMvdHR5L3NlcmlhbC9pbXguYyB8IDE2ICsr
KysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYyBiL2RyaXZlcnMv
dHR5L3NlcmlhbC9pbXguYwppbmRleCAzMmYzNmQ4Li4wNTliYTM1IDEwMDY0NAotLS0gYS9kcml2
ZXJzL3R0eS9zZXJpYWwvaW14LmMKKysrIGIvZHJpdmVycy90dHkvc2VyaWFsL2lteC5jCkBAIC05
NzQsMTAgKzk3NCwyMiBAQCBzdGF0aWMgdm9pZCBpbXhfdWFydF9zZXRfbWN0cmwoc3RydWN0IHVh
cnRfcG9ydCAqcG9ydCwgdW5zaWduZWQgaW50IG1jdHJsKQogCWlmICghKHBvcnQtPnJzNDg1LmZs
YWdzICYgU0VSX1JTNDg1X0VOQUJMRUQpKSB7CiAJCXUzMiB1Y3IyOwogCisJCS8qCisJCSAqIFR1
cm4gb2ZmIGF1dG9SVFMgaWYgUlRTIGlzIGxvd2VyZWQgYW5kIHJlc3RvcmUgYXV0b1JUUworCQkg
KiBzZXR0aW5nIGlmIFJUUyBpcyByYWlzZWQuCisJCSAqLwogCQl1Y3IyID0gaW14X3VhcnRfcmVh
ZGwoc3BvcnQsIFVDUjIpOwogCQl1Y3IyICY9IH4oVUNSMl9DVFMgfCBVQ1IyX0NUU0MpOwotCQlp
ZiAobWN0cmwgJiBUSU9DTV9SVFMpCi0JCQl1Y3IyIHw9IFVDUjJfQ1RTIHwgVUNSMl9DVFNDOwor
CQlpZiAobWN0cmwgJiBUSU9DTV9SVFMpIHsKKwkJCXVjcjIgfD0gVUNSMl9DVFM7CisJCQkvKgor
CQkJICogVUNSMl9JUlRTIGlzIHVuc2V0IGlmIGFuZCBvbmx5IGlmIHRoZSBwb3J0IGlzCisJCQkg
KiBjb25maWd1cmVkIGZvciBDUlRTQ1RTLCBzbyB3ZSB1c2UgaW52ZXJ0ZWQgVUNSMl9JUlRTCisJ
CQkgKiB0byBnZXQgdGhlIHN0YXRlIHRvIHJlc3RvcmUgdG8uCisJCQkgKi8KKwkJCWlmICghKHVj
cjIgJiBVQ1IyX0lSVFMpKQorCQkJCXVjcjIgfD0gVUNSMl9DVFNDOworCQl9CiAJCWlteF91YXJ0
X3dyaXRlbChzcG9ydCwgdWNyMiwgVUNSMik7CiAJfQogCi0tIAoyLjEwLjAuMS5nNTdiMDFhMwoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
