Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077366365F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 15:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=55uPlcx8605BME+yn6xAT8NQStN3fNNQfhXuDS2GGsU=; b=ZbW2+lCSPFudOA
	JpSIf61AD7KQ9Afk1ccInNImDCgGtqfE86XsvhygoSTHFtILkNprRxiB9z6mnGj7Vx39xFLiqEtQA
	woA1G63Sct6RqH0FtpZ9RqBs5DYKBW+nYtZuKV1q2ikugLNz52e8MCSaYg81O+cef+5Cs4hmitzq7
	kSY9HhWoNKasPetsdkqgy7VC5oOAhEiA1SedzQa/N/w1GEgt7v93K/QA24aWKsR9G2V3LiNUBC2sO
	PZbTsE06IQDyNxzci3YCEZh3Yn9gCua1yVgwGG/Q9ECkTwjHDMs/ROrJOvx1b4nUN+6jN+Lq0faXp
	kEJ9o5CMgB1+zUsaM+kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpmF-0007N2-8U; Tue, 09 Jul 2019 13:03:23 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpm5-0007Mg-9y
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 13:03:14 +0000
Received: by mail-lj1-x241.google.com with SMTP id h10so19482020ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 06:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Yxx9emx1/I2cEY2sTHL1IF3iO56b8GLZ1Lsk/UYEGCM=;
 b=DdVE+VMTyZI5jxU+RJT+91H8y47HtVGyRN9sSB7J8DUPG/kIL7A+K0Ahr57yNI0wi7
 2rrdAnUbs97lhT4R/jtQGXFegji5UEtO30kB6qVCuJ3JpH2Kw1d4jCEk1VfJ3w5aAj8x
 cPN1x3DQZxJN6U/4f0EDnW8iUGk49BsJd/1FexYIxGvaBtM38wzLJU0AqAikHVobiu2P
 4/Q3WOKjyPfCF0dyvXURmuJwCXDeNrKAuuiTJPkLk5F9TEK5F7bwKjgx/4tBnITQh+HQ
 I0JdajHA0qkFu33QNhF/3BuxUi2FGvyLRm6eLb4/lA3k6ImBmbDaNXFrhJtA3qfsFxlT
 7LvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Yxx9emx1/I2cEY2sTHL1IF3iO56b8GLZ1Lsk/UYEGCM=;
 b=SuTYNPphJRvXw/g6+1oVfxs6SGb9wFnh/j/qW0SmvSCKG8i9k4zJ6+OOIcP+XTOfU1
 pTVP1ondhnt/dvKY2R9/YlhhOHaKrhsVgDCaE2spa6+RmW8L14oXivyvyhEeM6kuurc5
 SWyk9ruVX5QDubWAJIB+WPqKXaaJizERFu1AH4LpFrDOY8LQZh64d+sRPjdP/+2Nd/P9
 iRm/tgxpJSnT8bFEj5dIN4jyxUQGXBaSOsCRV4OP9vk14tbADPV2vrd0lcVFKswgyP8d
 rjfMmq1EkzrYOAe+CPrYM1r/40jkbkYN/Pp/ajXaYSqsCKiWYyJvZE40EzkK39Iolldj
 q26A==
X-Gm-Message-State: APjAAAW3h+luIvlETEVewkp1rsUTgJwXNTa7JisJgBJhOkdc3TSo0KAJ
 nWBcDxXe7nODwkLla8cN4XDalQ==
X-Google-Smtp-Source: APXvYqw1tpvgLeJdGjawJCw+wH/DIYEsyMJn6+k0aZ4w+nCpibb+lNHPNfv83fJbgG5gKHzwbm/q4w==
X-Received: by 2002:a2e:5dc6:: with SMTP id v67mr10528306lje.240.1562677391403; 
 Tue, 09 Jul 2019 06:03:11 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id q4sm4808037lje.99.2019.07.09.06.03.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 06:03:10 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Russell King <linux@arm.linux.org.uk>
Subject: [PATCH 1/2] ARM: boot: Explain the 8 nops
Date: Tue,  9 Jul 2019 15:03:00 +0200
Message-Id: <20190709130301.1916-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_060313_346917_F8C7FA29 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, Roy Franz <roy.franz@cavium.com>,
 linux-arm-kernel@lists.infradead.org, Nicolas Pitre <nico@fluxnic.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This was unclear to me until Russell explained the obvious
that 8 nops are added to offset an a.out image. Reading
git history reveals that thumb kernels first removed the
nops and then kept 7 of them (the last instruction being
a switch to thumb mode) as it turns out that some boot
loaders were using this as a "patch area". Also the magic
numbers after the initial nops and the jump of course
need to stay in the same offset for kernel file
detection.

Make the code easier to understand with a comment.

Cc: Nicolas Pitre <nico@fluxnic.net>
Cc: Roy Franz <roy.franz@cavium.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/compressed/head.S | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index e59d14679fb0..544450c90673 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -153,6 +153,18 @@
  AR_CLASS(	.arm	)
 start:
 		.type	start,#function
+		/*
+		 * These 7 nops along with the 1 nop immediately below for
+		 * !THUMB2 form 8 nops that make the compressed kernel bootable
+		 * on legacy ARM systems that were assuming the kernel in a.out
+		 * binary format. The boot loaders on these systems would
+		 * jump 32 bytes into the image to skip the a.out header.
+		 * with these 8 nops filling exactly 32 bytes, things still
+		 * work as expected on these legacy systems. Thumb2 mode keeps
+		 * 7 of the nops as it turns out that some boot loaders
+		 * were patching the initial instructions of the kernel, i.e
+		 * had started to exploit this "patch area".
+		 */
 		.rept	7
 		__nop
 		.endr
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
