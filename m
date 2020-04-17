Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F59E1AE78D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 23:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0ETXTv20hXKlmexERXLv8dyG9XSN+IgRPYf6es4mz6g=; b=p9+/sJiEJliasl
	7p2VCNk126CHjZHI0vGzC+pxN6+9jDgf1pKuRSdX9Ja2F2CvUmCS8s5kcChOzj9r68L8Qzz2ikzk1
	RNbfILWN10nHLuBO3Vu8Px2WtAdN/bJxSpkFrfZ2inlVkD+iEJ6H7OZXbOWYz7QccdU9BjhXMLWhU
	FwXrcE/V4ksAqBSkB16br7rFIyj6e+BIHizQtpc8Au2fXFUnh5oOC78NW/YGT6BjSLzU1xPh/mefR
	DedHkEXdaJGzyZpxokmQXvD2qjoYuACqb5Tg1bl3I9NIvPNxX7GduTMvNSXBe1MmkAUbs7u/SLt0h
	f9TInUDgFaxsG070ScSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPYWv-0007xG-5x; Fri, 17 Apr 2020 21:28:09 +0000
Received: from mail-yb1-f194.google.com ([209.85.219.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPYWm-0007wt-Oc
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 21:28:02 +0000
Received: by mail-yb1-f194.google.com with SMTP id e17so1799536ybq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 14:27:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OQ8VvxT9+3crfVwlWJJzfFn2WYEKasdv8UrQD4Rcn8E=;
 b=fXYl4kNExCGBOi5BqfhPDB8nMzffdvRKH+vg0KxiLE13Gj1PwP1mjwSSI8pXNbg2Vv
 ZMD1u3P0+TQ9qe/viLvV1108cQRQvlAJQur7BDQtwoOoi8HHQs9iNzteb3MTtLP4aMKO
 K0KPg9tu8g8srs3Or8YItTL1QcgjiE+RUOPA/Q+cBHsiOTv2VxzN7vyeQuhnygrjYNTY
 fpJgOfrNMUtGXHxs+vokXbDCcqFEA/X0PrwMHBxAYKE+VYxgnq8vYdjPakGUt8Tv1etF
 pzp7bXMcJaALyOfaB3g4nSqKwz/1cU2c0NR1K2nNssQtEkN5+rdz9sFULOjfo6BVOcf1
 cGZw==
X-Gm-Message-State: AGi0PuZXaO+/8SIcOTjpDzVWG+T5QymH1SVP5mJPGvljK5tkfgS+EqRW
 j4V/f+nMkmR2Y/GnDXH/h1jnr6U=
X-Google-Smtp-Source: APiQypL6rSQWWm4O/O5NIKoI2/iuASc9VsPq/xS33QzFkpBAH2PsJauehqGS19xsRxbxU0NhZf8WBA==
X-Received: by 2002:a4a:2c8c:: with SMTP id o134mr4247569ooo.77.1587158446862; 
 Fri, 17 Apr 2020 14:20:46 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id s25sm3651476ooh.22.2020.04.17.14.20.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 14:20:46 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH] clocksource: versatile: Allow CONFIG_CLKSRC_VERSATILE to be
 disabled
Date: Fri, 17 Apr 2020 16:20:45 -0500
Message-Id: <20200417212045.16917-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_142800_799755_AC66D548 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: 2.4 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The timer-versatile driver provides a sched_clock for certain Arm Ltd.
reference platforms. Specifically, it is used on Versatile and 32-bit
VExpress. It is not needed for those platforms with an arch timer (all
the 64-bit ones) yet CONFIG_MFD_VEXPRESS_SYSREG does still need to be
enabled. In that case, the timer-versatile can only be disabled when
COMPILE_TEST is enabled which is not desirable. Let's use the sub-arch
kconfig symbols instead.

Realview platforms don't have the sysregs that this driver uses so
correct the help text.

Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
This is part of a larger effort to modularize Versatile Express support, 
but this change doesn't have any dependency, so it can be applied 
independently.

Rob

 drivers/clocksource/Kconfig | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index f2142e6bbea3..679b35fc07a8 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -562,12 +562,11 @@ config CLKSRC_VERSATILE
 	bool "ARM Versatile (Express) reference platforms clock source" if COMPILE_TEST
 	depends on GENERIC_SCHED_CLOCK && !ARCH_USES_GETTIMEOFFSET
 	select TIMER_OF
-	default y if MFD_VEXPRESS_SYSREG
+	default y if (ARCH_VEXPRESS || ARCH_VERSATILE) && ARM
 	help
 	  This option enables clock source based on free running
 	  counter available in the "System Registers" block of
-	  ARM Versatile, RealView and Versatile Express reference
-	  platforms.
+	  ARM Versatile and Versatile Express reference platforms.
 
 config CLKSRC_MIPS_GIC
 	bool
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
