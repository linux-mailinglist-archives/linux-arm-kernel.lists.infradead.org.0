Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8C1DAB7B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 13:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPmEPOOW37U0Xi1hx7tsa3escLqVCwTukipZPa5M/Ac=; b=NNIESAhCgkD6Wb
	LxKXmaMXiLyUugKZKDTQ650u/1M9K1SzRsu9gtJCv24yp4KUqVy/ezrFnH2jf3Clp2Hgv44D58Adn
	+kUh+k3G/caT8O78STjyD82ppxU46QvX2kM7WGoUoTlwG71KQHL0wilFCIMzy/r/shvjBu/fsE3eb
	QFR8brJ8iveiGk5JbQ1yUlSd5UPUI6UPn1T3OGLEbpvTuid46Lo8/YQSJDwx516zCbdmqcuttaMkg
	7CFFKb+R8GHFUJJNPkVA0OISY5Bbc66S4uyEKWWJ5GoVM2P8IPM8jZqKiP3W05uIaxeOIgo0ZBSo8
	5q3DK8t6Tq/xhuFiM+Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL4Ho-0001tF-S6; Thu, 17 Oct 2019 11:49:44 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL4HL-0001hm-A8
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 11:49:16 +0000
Received: by mail-lj1-x241.google.com with SMTP id j19so2229930lja.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 04:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v8LKBRBxcaymYywQC1yoyW7qk1pLqld/GOLoE3N0/Gk=;
 b=Y94hZcrB1Y777DAYUOPKEcDZveCY0YSN4thc+ix3qgL9cYKMOVj69ctzDms1zp9Pck
 jt8E4tROWs+rMeMU4TR/buZTRzbxGNP4SpmvAyNhcttPsW8OXf3f21N6EyvoC2dhf+8l
 MMmTyDhdL9xm3opCRJRWwlpcbPUmnPAaUZ+As=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v8LKBRBxcaymYywQC1yoyW7qk1pLqld/GOLoE3N0/Gk=;
 b=dHGcCmEIEDBE4vyrFpB9Ta20NINcSWgGUMljKDQIwTdOlyyg0Z5O3zdeok2XyTcHBp
 /NPxHBb9ibM5PYrc7DHXUwubwW3Qd00Lv9gY4CyI/BPz9evxsAnk3sRMn+Q2rN9qfzT3
 iJvAK1CVrD4IfqK3lrjVptiHjJ0xDq/BnuT+Wp2rEAD2m2MLOW5qp9hAVZ+R+GR0lkzA
 Iil8wxylV1MWGpjRhfOjN6AirR/09/I1vE13WL2PTvIRb7+QZd+epJhy4eEKBKFYRPhL
 5mvoYJSYye2VZAo5IHTHuaCEZQ7T3lnKmvQGK4v5P+ccDjR5SaVtddTWRtyuq0L9714M
 xmhg==
X-Gm-Message-State: APjAAAX6jkGFVdlEm+z7mrtE77RJpFv4Nl+psqZQvXiCowQGFxjY5e78
 /8GLeBg7uZMIqIFDiQawozJ7iA==
X-Google-Smtp-Source: APXvYqwMm83t6Ayeaku/Uq23tNm6C0IkV0iS3pOoZUwg5XfkH0rI651FLIb5bwUm/9F+fKO8u6JQ3A==
X-Received: by 2002:a2e:8417:: with SMTP id z23mr2192660ljg.28.1571312953668; 
 Thu, 17 Oct 2019 04:49:13 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id x30sm920772ljd.39.2019.10.17.04.49.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 04:49:13 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andrew Morton <akpm@linux-foundation.org>, Gao Xiang <xiang@kernel.org>
Subject: [RFC PATCH 1/3] decompress/keepalive.h: prepare for watchdog
 keepalive during kernel decompression
Date: Thu, 17 Oct 2019 13:49:04 +0200
Message-Id: <20191017114906.30302-2-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191017114906.30302-1-linux@rasmusvillemoes.dk>
References: <20191017114906.30302-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_044915_347106_D13C17C0 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel@pengutronix.de, Linus Walleij <linus.walleij@linaro.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some boards have a hardware watchdog that (a) cannot be disabled
and (b) has a timeout short enough that there's no chance for the
kernel to get through decompression, let alone reach the
initialization of the appropriate watchdog device driver.

In order to allow booting such boards, the decompression routine needs
to service the watchdog in its main loop. This adds a header making it
easy to wire up each decompressor - just include this header and add a
decompress_keepalive() in the main loop.

Outside of the pre-boot stage, this is always a no-op.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 include/linux/decompress/keepalive.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 include/linux/decompress/keepalive.h

diff --git a/include/linux/decompress/keepalive.h b/include/linux/decompress/keepalive.h
new file mode 100644
index 000000000000..39caa7693624
--- /dev/null
+++ b/include/linux/decompress/keepalive.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef DECOMPRESS_KEEPALIVE_H
+#define DECOMPRESS_KEEPALIVE_H
+
+#ifdef PREBOOT
+
+#endif
+
+#ifndef decompress_keepalive
+#define decompress_keepalive() do { } while (0)
+#endif
+
+#endif /* DECOMPRESS_KEEPALIVE_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
