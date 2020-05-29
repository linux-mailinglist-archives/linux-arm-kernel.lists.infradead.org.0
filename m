Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2301E88C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 22:17:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aqAaHHNdvBXXKdDFvK/caYvKjskUaXSBuzs6kxCafeM=; b=ES7AUiNdUG0sbW
	7/XX+sAdEIuBQedQ18yhZRdO7nIhA0MEKbJIEtRMQvwSq31NTyyZbDMpcogrWafSUq2O3HdEJSrFe
	paNfkOcdOiicErRoUgZaZS6opEFgHN5daJvAyhUKvlXjwI8fzuULdA2zJEc2SqtK/uHGasSAfPuXR
	eBZAR9YN8ZH2dGh4OTGb7BJOYn7uT3CAI479JNUXAXsQevQeIwfNgYCjbzYf/6zOLQy8pFbQ9FtYL
	lokzf2wZTWeK08hLSI3sLqM48unnxQ/BwsW2fLSFMISgLH9wKNuA/2mIrpr8ErPAf/kf19d14Zmea
	XlB/3e+4DzOKuPnZO4Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jelRL-0001Tv-Pc; Fri, 29 May 2020 20:17:15 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jelRE-0001TY-1q
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 20:17:09 +0000
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MW9zm-1jUDqv0gJu-00XYHs; Fri, 29 May 2020 22:17:03 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, Tony Lindgren <tony@atomide.com>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] ARM: omap2: fix omap5_realtime_timer_init definition
Date: Fri, 29 May 2020 22:16:45 +0200
Message-Id: <20200529201701.521933-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:ut68jkWxMSIDqAasDiMgUP+u+uDANBHpvLSMe6e4VwoMh+BBJ1H
 6Kxz2dmuXAjOQIIkVylBW6gkceAiNHOa1Q/0HTxAtd0fF/P6JL5BotRHd7vQUzfsgcuQq0a
 jBiMg7G0mw9wVJT+vTVsJOhCEmr9XTWf9ZBe1jzmtR5A6AHrD9w5zhB+g/KISb7ZVB8nvP8
 XcGA37J8aG+/Xfk6TpDfw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RV+VlsD9mj0=:39W2qi7gLz+rPUcP8FiYu0
 dIY5zhEyc2SD7tgBgRTvqfUCkKQ1CnYi8w2pstLLUg5NTxb7tmZBiKid4hqudW2MFUmlccFAt
 NwAz00C7oPqiAr6n3CGsHG0oLlRE5xfNmG5nZUwZekAk+pWVeMFxbmEX7fPVf5aDyY/eQAQNG
 z2V9lgwCHGJq5ZCbcJSjjjtZdxxn26ToRMu1GLJYEOLBMhyHmF9XNsHRwYQTasTuDtyo+E3py
 1CVFY6ka3gZH/munkTb2gCVViIXFAil09LfbYpo0IfDCCG+zfyHUZkwUzU8bDC4h+hBfszw3q
 2r+HndlWYOc+1M06N8hEbTDi6D1ESWqak18RxsTh81k2te507wbGg9UOtPm/Zo/vwR2vTG4Qv
 ohrgOjS/pcX/DkyIgkOZM+WnAqfJI8AKnQhXSnn6g3yq9XfEjnGjX0MiJCtKhwIA1ECiJuW73
 riXterVEddNJrM7B03jtoqVxsJLk/lbGlm3bk3mYXSqpzFyw/drBksv4OJpoxfAoHNXmfYAT0
 0ocv1S8mkJTkcdyvqcmo8+IzTZzFo8rVFIkAOnKrxXX9L7SHusVrZIlhiUc5sNbhIGywnj9Xf
 RxTqqfIaZ1oKH/raHd9pdAIgs4S0aNJFBXOgSoFfOWyTsm1zUeia9+mcWBhIt8PanyLnSZDt/
 DyME012+dNBR5w1Kz8HIkcCRo+jxI8FMfO7s4nPez3Ssz5Fjkfjw812TkgTYdojcubf7PDasF
 HQAT9VZychqXF6poAMAzms3Gmq5my/P+/OpS6ibTh8AF0iAU/SYs3+6yNnT09UiY9tjaBAuFt
 WCguLiMJT77gtQUt/uc0WpEDfRAahJ8u57UWcU49SaoVkUvfmQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_131708_386103_EC1477BF 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
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
Cc: Olof Johansson <olof@lixom.net>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Stefan Agner <stefan@agner.ch>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is one more regression introduced by the last build fix:

arch/arm/mach-omap2/timer.c:170:6: error: attribute declaration must precede definition [-Werror,-Wignored-attributes]
void __init omap5_realtime_timer_init(void)
     ^
arch/arm/mach-omap2/common.h:118:20: note: previous definition is here
static inline void omap5_realtime_timer_init(void)
                   ^
arch/arm/mach-omap2/timer.c:170:13: error: redefinition of 'omap5_realtime_timer_init'
void __init omap5_realtime_timer_init(void)
            ^
arch/arm/mach-omap2/common.h:118:20: note: previous definition is here
static inline void omap5_realtime_timer_init(void)

Address this by removing the now obsolete #ifdefs in that file and
just building the entire file based on the flag that controls the
omap5_realtime_timer_init function declaration.

Fixes: d86ad463d670 ("ARM: OMAP2+: Fix regression for using local timer on non-SMP SoCs")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
If this looks ok, I'd apply it directly on top again for the merge window.
---
 arch/arm/mach-omap2/Makefile |  6 +++---
 arch/arm/mach-omap2/timer.c  | 10 ----------
 2 files changed, 3 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-omap2/Makefile b/arch/arm/mach-omap2/Makefile
index 40898b1fd7da..732e614c56b2 100644
--- a/arch/arm/mach-omap2/Makefile
+++ b/arch/arm/mach-omap2/Makefile
@@ -46,9 +46,9 @@ obj-$(CONFIG_SOC_OMAP5)			+= $(omap-4-5-common) $(smp-y) sleep44xx.o
 obj-$(CONFIG_SOC_AM43XX)		+= $(omap-4-5-common)
 obj-$(CONFIG_SOC_DRA7XX)		+= $(omap-4-5-common) $(smp-y) sleep44xx.o
 
-omap5-dra7-common			=  timer.o
-obj-$(CONFIG_SOC_OMAP5)			+= $(omap5-dra7-common)
-obj-$(CONFIG_SOC_DRA7XX)		+= $(omap5-dra7-common)
+omap5-dra7-common-$(CONFIG_SOC_HAS_REALTIME_COUNTER) =  timer.o
+obj-$(CONFIG_SOC_OMAP5)			+= $(omap5-dra7-common-y)
+obj-$(CONFIG_SOC_DRA7XX)		+= $(omap5-dra7-common-y)
 
 # Functions loaded to SRAM
 obj-$(CONFIG_SOC_OMAP2420)		+= sram242x.o
diff --git a/arch/arm/mach-omap2/timer.c b/arch/arm/mach-omap2/timer.c
index c1737e737a94..620ba69c8f11 100644
--- a/arch/arm/mach-omap2/timer.c
+++ b/arch/arm/mach-omap2/timer.c
@@ -39,8 +39,6 @@
 #define INCREMENTER_DENUMERATOR_RELOAD_OFFSET		0x14
 #define NUMERATOR_DENUMERATOR_MASK			0xfffff000
 
-#ifdef CONFIG_SOC_HAS_REALTIME_COUNTER
-
 static unsigned long arch_timer_freq;
 
 void set_cntfreq(void)
@@ -159,14 +157,6 @@ static void __init realtime_counter_init(void)
 	iounmap(base);
 }
 
-#else
-
-static inline void realtime_counter_init(void)
-{
-}
-
-#endif	/* CONFIG_SOC_HAS_REALTIME_COUNTER */
-
 void __init omap5_realtime_timer_init(void)
 {
 	omap_clk_init();
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
