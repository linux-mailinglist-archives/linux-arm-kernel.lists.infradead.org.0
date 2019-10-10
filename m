Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 965E0D32EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uAKngXDet0a2jE1SCaY9PNm+Q1TI9EZpQ384cvmnjl0=; b=p+Y/S6iS7R13YO
	3KlNpB+eC38Km7qaJ94UgLplsmsvi1oE3rrvYKAeuDC+hoAzNX0LhrhfK2w1pfd917WswxO+MHxpW
	+XSAtHs5t+CtMxOCrYuPlK/J5gF/pBbr363tTnkbhWVeWO3QL8/xIVt9cZAKLpyVd7zkuFwIqHOIS
	Z6lMtpiU2wkiq1+unuFh9Mee+Z4MOK4KGfKe3du+7lKizqkBSXnq28qg9pZOueHrC2V87Ce++OI3v
	5m4zRGZcw4EYqqIjCuOh/Oacm9fhl03GSJUO+0iK6FQELFWDqov4pLQK7gfJ+0UDfs4aMB+pQPT3a
	1OUpPXKEwimWyIxsbzZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfPv-00006E-L2; Thu, 10 Oct 2019 20:52:11 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfPZ-0008SL-Vj
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:51:54 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MElhb-1iK3Fg1ttL-00GGXZ; Thu, 10 Oct 2019 22:51:47 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>
Subject: [PATCH 29/36] ARM: s3c: cpufreq: split out registers
Date: Thu, 10 Oct 2019 22:30:13 +0200
Message-Id: <20191010203043.1241612-29-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:bYQlhXWih+C+Vcg6wO+eWmRG6N2NRKtj6W4Hj2uqCeTtCslL0ZM
 9F8De2sKc7IKBqRY2Nooec09SugipJalqwYSBuom/M0Q7jMOU80rbBavRj/rupElvHljI9R
 7wVD6N+xlArvPcXU7uItBt/J/DMkMKw+rjtCrZ6Dvks52NCAIf/R/bydDOuefGky+4kj3uG
 5FzyYB+d0Q7IUdCX/eR3w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2I5d1BQgx7M=:/O1F8DhCPGZVpo6kO5MbB/
 qMPymzDv9efv3DZA3gPjkQK1K3WnXOpZs8B/HcC7sj9w95ARoeV5v//SqkJ/2bc0oxufpc4uV
 Udphzs7KpKDwHAQaSUw8X7PcsBoIjtBencMvhaDlS0ac+pqCSoHLx81VaNagzEnjlGR466nyo
 Y7BT3EJ3TnYITjiEYYhD9N1ikODxKBNDCopdUAVhSY+ljf5ecCiQf9SM0us40TuIQ8y2k6ENf
 UWacDF3jEYZfZIBnFX1pUOKWQYUA3ogZ22s0JCT9m0RBW6IHejwo9Q3Gl8EGZpoUdFLryWLqU
 Cl1dzvkaQ59rkGl+LgVqZF/67QhRhp1qaZQuJyIcvi4ooCmZ2efq3JY4HMAijLAf4jY9soaAz
 sP9PIhvkudaX1CfiRIjwiovnkg2HtpVt8Z6w9kpEZzQolrzZff/strXT7rRG6OiWa/Qhude6O
 gW3ahYATIlh4MsukJGXTxDN/GdjzuaYyr9pP7OEpMIYPqAldBUXZHH3yRKvbyCII27zAW2SBR
 yjIylHgLS98O67iGjD6hLQLgRWMd4CxH12bJXckcZwwco9rbVtOKblDUlFH3bExyPj+5+bmAq
 LbbUSesRDUasSBaaJcs/R+LOAmGiUjX7tJQQ26drw9NqRu0D3AaB1v1b4KnswjhV63TBmIrqv
 lEeEiEStguiEVr218efJgCJu9BsJAopwwmhq4hh3JYwurzqeXQ2zVd/0DpW48FzAS61Z3IdRs
 NPKMd2BAn+/iM/8I7XmpPAEtQHrgXC9r0f422rSDMG4thRdLPiAFpk66T/cAQuZonxIRLUR86
 vZOOG31X8p5OoyumdQtQIEpd3ef2mVWOHU2KCwOURMkByefla25RlWmrS4bSwVMHFXxAGEhUJ
 1lpOGF9ABUlW1DKygohw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_135150_352850_A608FDE4 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-pm@vger.kernel.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each of the cpufreq drivers uses a fixed set of register
bits, copy those definitions into the drivers to avoid
including mach/regs-clock.h.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/cpufreq/s3c2410-cpufreq.c | 11 +++++++++--
 drivers/cpufreq/s3c2412-cpufreq.c | 20 +++++++++++++++++++-
 drivers/cpufreq/s3c2440-cpufreq.c | 24 ++++++++++++++++++++++--
 drivers/cpufreq/s3c24xx-cpufreq.c |  4 +++-
 4 files changed, 53 insertions(+), 6 deletions(-)

diff --git a/drivers/cpufreq/s3c2410-cpufreq.c b/drivers/cpufreq/s3c2410-cpufreq.c
index 0c4f2ccd7e22..5c6cb590b63f 100644
--- a/drivers/cpufreq/s3c2410-cpufreq.c
+++ b/drivers/cpufreq/s3c2410-cpufreq.c
@@ -20,11 +20,18 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
 
-#include <mach/regs-clock.h>
-
 #include <plat/cpu.h>
 #include <plat/cpu-freq-core.h>
 
+#include <mach/map.h>
+
+#define S3C2410_CLKREG(x) ((x) + S3C24XX_VA_CLKPWR)
+
+#define S3C2410_CLKDIVN	    S3C2410_CLKREG(0x14)
+
+#define S3C2410_CLKDIVN_PDIVN	     (1<<0)
+#define S3C2410_CLKDIVN_HDIVN	     (1<<1)
+
 /* Note, 2410A has an extra mode for 1:4:4 ratio, bit 2 of CLKDIV */
 
 static void s3c2410_cpufreq_setdivs(struct s3c_cpufreq_config *cfg)
diff --git a/drivers/cpufreq/s3c2412-cpufreq.c b/drivers/cpufreq/s3c2412-cpufreq.c
index 53385a9ab957..d922d0d47c80 100644
--- a/drivers/cpufreq/s3c2412-cpufreq.c
+++ b/drivers/cpufreq/s3c2412-cpufreq.c
@@ -23,12 +23,30 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
 
-#include <mach/regs-clock.h>
 #include <mach/s3c2412.h>
 
 #include <plat/cpu.h>
 #include <plat/cpu-freq-core.h>
 
+#include <mach/map.h>
+
+#define S3C2410_CLKREG(x) ((x) + S3C24XX_VA_CLKPWR)
+
+#define S3C2410_CLKDIVN	    S3C2410_CLKREG(0x14)
+
+#define S3C2412_CLKDIVN_PDIVN		(1<<2)
+#define S3C2412_CLKDIVN_HDIVN_MASK	(3<<0)
+#define S3C2412_CLKDIVN_ARMDIVN		(1<<3)
+#define S3C2412_CLKDIVN_DVSEN		(1<<4)
+#define S3C2412_CLKDIVN_HALFHCLK	(1<<5)
+#define S3C2412_CLKDIVN_USB48DIV	(1<<6)
+#define S3C2412_CLKDIVN_UARTDIV_MASK	(15<<8)
+#define S3C2412_CLKDIVN_UARTDIV_SHIFT	(8)
+#define S3C2412_CLKDIVN_I2SDIV_MASK	(15<<12)
+#define S3C2412_CLKDIVN_I2SDIV_SHIFT	(12)
+#define S3C2412_CLKDIVN_CAMDIV_MASK	(15<<16)
+#define S3C2412_CLKDIVN_CAMDIV_SHIFT	(16)
+
 /* our clock resources. */
 static struct clk *xtal;
 static struct clk *fclk;
diff --git a/drivers/cpufreq/s3c2440-cpufreq.c b/drivers/cpufreq/s3c2440-cpufreq.c
index 3f772ba8896e..5fe7a891fa13 100644
--- a/drivers/cpufreq/s3c2440-cpufreq.c
+++ b/drivers/cpufreq/s3c2440-cpufreq.c
@@ -24,11 +24,31 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
 
-#include <mach/regs-clock.h>
-
 #include <plat/cpu.h>
 #include <plat/cpu-freq-core.h>
 
+#include <mach/map.h>
+
+#define S3C2410_CLKREG(x) ((x) + S3C24XX_VA_CLKPWR)
+#define S3C2410_CLKDIVN	    S3C2410_CLKREG(0x14)
+#define S3C2440_CAMDIVN	    S3C2410_CLKREG(0x18)
+
+#define S3C2440_CLKDIVN_PDIVN	     (1<<0)
+#define S3C2440_CLKDIVN_HDIVN_MASK   (3<<1)
+#define S3C2440_CLKDIVN_HDIVN_1      (0<<1)
+#define S3C2440_CLKDIVN_HDIVN_2      (1<<1)
+#define S3C2440_CLKDIVN_HDIVN_4_8    (2<<1)
+#define S3C2440_CLKDIVN_HDIVN_3_6    (3<<1)
+#define S3C2440_CLKDIVN_UCLK         (1<<3)
+
+#define S3C2440_CAMDIVN_CAMCLK_MASK  (0xf<<0)
+#define S3C2440_CAMDIVN_CAMCLK_SEL   (1<<4)
+#define S3C2440_CAMDIVN_HCLK3_HALF   (1<<8)
+#define S3C2440_CAMDIVN_HCLK4_HALF   (1<<9)
+#define S3C2440_CAMDIVN_DVSEN        (1<<12)
+
+#define S3C2442_CAMDIVN_CAMCLK_DIV3  (1<<5)
+
 static struct clk *xtal;
 static struct clk *fclk;
 static struct clk *hclk;
diff --git a/drivers/cpufreq/s3c24xx-cpufreq.c b/drivers/cpufreq/s3c24xx-cpufreq.c
index ed0e713b1b57..c786e1197d3c 100644
--- a/drivers/cpufreq/s3c24xx-cpufreq.c
+++ b/drivers/cpufreq/s3c24xx-cpufreq.c
@@ -28,9 +28,11 @@
 #include <plat/cpu.h>
 #include <plat/cpu-freq-core.h>
 
-#include <mach/regs-clock.h>
+#include <mach/map.h>
 
 /* note, cpufreq support deals in kHz, no Hz */
+#define S3C2410_CLKREG(x) ((x) + S3C24XX_VA_CLKPWR)
+#define S3C2410_MPLLCON     S3C2410_CLKREG(0x04)
 
 static struct cpufreq_driver s3c24xx_driver;
 static struct s3c_cpufreq_config cpu_cur;
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
