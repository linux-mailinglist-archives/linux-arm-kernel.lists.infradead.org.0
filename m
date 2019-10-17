Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B29F4DAB7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 13:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+gcb46LZgQ3nH1hbRvD+UVhMgWjvidqNt/Ae7MoQa7I=; b=lO72zNat9eJKjr
	tyHHrzDkIxBymrNiWDho/bz5CvQ/eECbkCg9chmp7D9awvgb5f//RoAoG0xxqfKBfDbqymSwzezI2
	BOzP9zpNkMa4WPdeL8KeW/9R0FGsYyEP3l0g85FQ1AMiKftHHt4wsi9FWqy6JMmg9DdfMIvm+9xBN
	FC+vR6DTqDpGVMaRTBm/Q9SeBFbgIyW5DBlzBDt2IKdCA0MbN0rniFeFqy/ZQhJ9mgVR2akN7ktcD
	oxkOYgJS70Qrephn+VB3Z/KpQPOSTv65ngyUNdvS3NNCeZLOiP2PkzXRd8JSeCgttc1Uql9LY+4D9
	rgz3G07/6bXLIIQ5o4ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL4IN-0002N0-Ao; Thu, 17 Oct 2019 11:50:19 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL4HN-0001iZ-R6
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 11:49:19 +0000
Received: by mail-lj1-x242.google.com with SMTP id d1so2164080ljl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 04:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a+GxmprIIlivls+xiiE2BlDUBLKsv4nmlWzvKE4aR9Y=;
 b=SBcX2tI4x4/1Q7OpymRwhlxB/kdYjwCirEuibHX7DawgeJTuPaHyxNMLNh4W9MVyBF
 letoHX64UHC4ruCNszUwvKalaZpVG78M22y3d3Vq8FVk+S+V7nQJVOE9LlNTM/rcST4N
 OLyB3dRj3YA71fYRagSSWlZZTUNlAHC7+YCZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a+GxmprIIlivls+xiiE2BlDUBLKsv4nmlWzvKE4aR9Y=;
 b=cFZlqqL9f4Bh46AU0AC3LcVvq61Baca+rhHOfkIjNnlbW/cT4HL/Az3npdYp9Yxnx8
 Ilzz/Oi4ElvEqtcJjBOcmYuUQ8MKUcZWXLFLk12FroXIIjuo+kB/AbRliQvxpr3Q8sev
 QHjM73GoGom11OUUzbJ+mqB5uctrLBJQq+3i9FKuRjiUjT+HqZHYFEMgbpt51Y0nOGas
 BnAiRmeqDzD2q3AmipzeQN0IFprJ0qnnLeubjGIDDXQdyeZ5ApW68SN9S1pYGQCy82Gq
 w4tMAzqBo7bJYcsze7zzk0KZ+/KebbNzoNh8mVQGlYotCkeJXtmbfmoS1DkvuJXwTZmN
 +0RQ==
X-Gm-Message-State: APjAAAX1IPor5XS5VoaQTrlkPMVy/zsNBIFUPU6j4q8sULpawXkzdRD1
 fxZ4VC/2Dtw4vVDmOI8SmLdQCJMuP12Jffd3
X-Google-Smtp-Source: APXvYqxGLJtJkNX4m2MxleJ2gGPlrbCblZIvrattCDK3O6KMUbntqKBn9afoSuGTNTeqmCY1Gi1qOw==
X-Received: by 2002:a05:651c:8b:: with SMTP id 11mr2229402ljq.98.1571312956132; 
 Thu, 17 Oct 2019 04:49:16 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id x30sm920772ljd.39.2019.10.17.04.49.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 04:49:15 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andrew Morton <akpm@linux-foundation.org>, Gao Xiang <xiang@kernel.org>
Subject: [RFC PATCH 3/3] decompress/keepalive.h: add config option for
 toggling a set of bits
Date: Thu, 17 Oct 2019 13:49:06 +0200
Message-Id: <20191017114906.30302-4-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191017114906.30302-1-linux@rasmusvillemoes.dk>
References: <20191017114906.30302-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_044917_893349_B480770B 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

It's quite common to have an external watchdog which is serviced via
flipping a GPIO, with the value of that GPIO being settable directly
in a memory-mapped register. So add kconfig options defining the
physical address of such a register as well as a mask to have the
decompressor periodically xor into that register.

If and when other decompress_keepalive methods are added, this can be
made into a "choice DECOMPRESS_KEEPALIVE".

Since only LZ4 is wired up currently, this is "depends on KERNEL_LZ4"
for now. Also, prevent this option from being shown to the average
user.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 include/linux/decompress/keepalive.h |  8 +++++++
 init/Kconfig                         | 33 ++++++++++++++++++++++++++++
 2 files changed, 41 insertions(+)

diff --git a/include/linux/decompress/keepalive.h b/include/linux/decompress/keepalive.h
index 39caa7693624..c62e49bee7cf 100644
--- a/include/linux/decompress/keepalive.h
+++ b/include/linux/decompress/keepalive.h
@@ -5,6 +5,14 @@
 
 #ifdef PREBOOT
 
+#ifdef CONFIG_DECOMPRESS_KEEPALIVE_TOGGLE
+#define decompress_keepalive() do {					\
+		long addr = CONFIG_DECOMPRESS_KEEPALIVE_TOGGLE_REG;	\
+		volatile unsigned *reg = (volatile unsigned *)addr;	\
+		*reg ^= CONFIG_DECOMPRESS_KEEPALIVE_TOGGLE_MASK;	\
+} while (0)
+#endif
+
 #endif
 
 #ifndef decompress_keepalive
diff --git a/init/Kconfig b/init/Kconfig
index b4daad2bac23..8a894d9fdd77 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -289,6 +289,39 @@ config KERNEL_UNCOMPRESSED
 
 endchoice
 
+config DECOMPRESS_KEEPALIVE_TOGGLE
+	depends on KERNEL_LZ4
+	depends on EXPERT
+	bool "Toggle some bits while decompressing"
+	help
+	  Some embedded boards have an always-running hardware
+	  watchdog with a timeout short enough that the board is reset
+	  during decompression, thus preventing the board from ever
+	  booting.
+
+	  Enable this to toggle certain bits in a memory register
+	  while decompressing the kernel. This can for example be used
+	  in the common case of an external watchdog serviced via a
+	  memory-mapped GPIO.
+
+	  Say N unless you know you need this.
+
+if DECOMPRESS_KEEPALIVE_TOGGLE
+
+config DECOMPRESS_KEEPALIVE_TOGGLE_REG
+	hex "Address of register to modify while decompressing"
+	help
+	  Set this to a physical address of a 32-bit memory word to
+	  modify while decompressing.
+
+config DECOMPRESS_KEEPALIVE_TOGGLE_MASK
+	hex "Bit mask to toggle while decompressing"
+	help
+	  The register selected above will periodically be xor'ed with
+	  this value during decompression.
+
+endif
+
 config DEFAULT_HOSTNAME
 	string "Default hostname"
 	default "(none)"
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
