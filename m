Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46116700E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vntGyV9J5e7ibcUwbF3mn4IGWcSrS6BfGHLGzYXFv6o=; b=Va61hRooMq2c9O
	OubLhBFRdoR1wrNkp+lqf1TcqSaMyvPMcnnn+NpUFK/QbWvsJwLBvwFm8Cn7fe02JSuXqNInF+Jez
	fabrSQ8/IvfORSFRdHmkv4Bt/1xI3teK5anzilk1rnFSJtNAclrNBeZsPL3SeNr62B12ikKnvKcoF
	mkdZe69b63PokpQOeUsQDcfQwnclF1n+kY++Z9f8VIT7rJtHcoK9/QjrgbvcobGr66KoKBiLQwFoy
	CrLxK41lNDajNTyH0WF4qIjmBjD+hJbWAwXxVJqOJ9SNlHDG981pUxLB6pDUdR1BCPZ6hP6oI6qfd
	KA/DUPMS7Sh5qRSHapyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYF0-0006Uh-3U; Mon, 22 Jul 2019 13:20:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYCV-0004ma-Ef
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:18:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so39465938wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zOhvfud1UplL6dXW+3V5RKRSj+/QqrgOZPNk1aW9k94=;
 b=PQw+pP1iXX72GVQ9kohjgqtP+wTw65TQAgRYVrUlgLjAVsRxK4c4+l/lntTh00Q9M3
 8teC3SYE0xetvNP5nkU6e4YBh4V4GrB3q+Lq0BP4EqB2/wLVtArQllQ+r4GMx1RlKBBd
 puuo7oASjqffQkBoxzRoQkZtvjPdz2ZeysMOf+8UE5BM202tQ3SVxz7nl+GUjon+AEbI
 cUMLG2f1a00E9Hp4Szm87vNMnwxnJanc041SLIt4+l+9rU/XP4mOI5RDFmWLjEjorkPe
 pMLYh8h/tOOkwTzFMwBXpg9yuYlnTB00OPzHStXOCmQrEbb/lLFLR4Fx9+lPAKaV+zQX
 t9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zOhvfud1UplL6dXW+3V5RKRSj+/QqrgOZPNk1aW9k94=;
 b=najSJ69drdTME4Xxy9LqEx6V1LKnE4CYrSmNwOh5d96bSUxbFZ+969KLp3vBYkAvCh
 lgPJRjMDCW09aQX+ZPzbMeBxDjqSuMPKN0DXFyBTGa7LYo7NhdQVyi75JpMlcX3m+LB0
 r13XaSWBHsQ7bc4+j7QLNS3RafDmFb4dbXeCvUq0asWVFjRCNmBMCd6bCi1AZQ94Ibcp
 ZGjwq9+yGJ14cjD5InukPMeJR926RFbgIZus+u1Yr6xbhP/ISF+SZD5wwP86WR0rGdZx
 eJuaBWZ8kfr4IKjtUf7ROEsn/2MiDthO4lE3QryF/jVr0CXh+Myo3tNu5bVscxBa/N7g
 DoQg==
X-Gm-Message-State: APjAAAXS5WMbkEurikiIwPTAB4MmiTNrFd4Sas6QNdJ2w8Mq/5Jd5vxB
 Hx5CsXdOvo53Bx0ApX904aw=
X-Google-Smtp-Source: APXvYqw5kSAQACR7OW4MuKFZ+QqrkrmM83HBxycXSdQYRQePn0m/CpYbJW8RlJw372HR07CxxdrZxQ==
X-Received: by 2002:a5d:6709:: with SMTP id o9mr19402007wru.301.1563801477974; 
 Mon, 22 Jul 2019 06:17:57 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id z6sm34156657wrw.2.2019.07.22.06.17.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 06:17:57 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>,
	Kevin Hilman <khilman@kernel.org>
Subject: [RESEND PATCH 06/10] ARM: davinci: dm355: switch to using the
 clocksource driver
Date: Mon, 22 Jul 2019 15:17:44 +0200
Message-Id: <20190722131748.30319-7-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722131748.30319-1-brgl@bgdev.pl>
References: <20190722131748.30319-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_061759_630031_B17071E3 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 David Lechner <david@lechnology.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

We now have a proper clocksource driver for davinci. Switch the dm355
platform to using it.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Reviewed-by: David Lechner <david@lechnology.com>
---
 arch/arm/mach-davinci/dm355.c | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-davinci/dm355.c b/arch/arm/mach-davinci/dm355.c
index a38a3648345b..5de72d2fa8f0 100644
--- a/arch/arm/mach-davinci/dm355.c
+++ b/arch/arm/mach-davinci/dm355.c
@@ -30,7 +30,8 @@
 #include <mach/cputype.h>
 #include <mach/mux.h>
 #include <mach/serial.h>
-#include <mach/time.h>
+
+#include <clocksource/timer-davinci.h>
 
 #include "asp.h"
 #include "davinci.h"
@@ -620,15 +621,15 @@ static struct davinci_id dm355_ids[] = {
 };
 
 /*
- * T0_BOT: Timer 0, bottom:  clockevent source for hrtimers
- * T0_TOP: Timer 0, top   :  clocksource for generic timekeeping
- * T1_BOT: Timer 1, bottom:  (used by DSP in TI DSPLink code)
- * T1_TOP: Timer 1, top   :  <unused>
+ * Bottom half of timer0 is used for clockevent, top half is used for
+ * clocksource.
  */
-static struct davinci_timer_info dm355_timer_info = {
-	.timers		= davinci_timer_instance,
-	.clockevent_id	= T0_BOT,
-	.clocksource_id	= T0_TOP,
+static const struct davinci_timer_cfg dm355_timer_cfg = {
+	.reg = DEFINE_RES_IO(DAVINCI_TIMER0_BASE, SZ_4K),
+	.irq = {
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_TINT0_TINT12)),
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_TINT0_TINT34)),
+	},
 };
 
 static struct plat_serial8250_port dm355_serial0_platform_data[] = {
@@ -706,7 +707,6 @@ static const struct davinci_soc_info davinci_soc_info_dm355 = {
 	.pinmux_base		= DAVINCI_SYSTEM_MODULE_BASE,
 	.pinmux_pins		= dm355_pins,
 	.pinmux_pins_num	= ARRAY_SIZE(dm355_pins),
-	.timer_info		= &dm355_timer_info,
 	.sram_dma		= 0x00010000,
 	.sram_len		= SZ_32K,
 };
@@ -733,6 +733,7 @@ void __init dm355_init_time(void)
 {
 	void __iomem *pll1, *psc;
 	struct clk *clk;
+	int rv;
 
 	clk_register_fixed_rate(NULL, "ref_clk", NULL, 0, DM355_REF_FREQ);
 
@@ -748,7 +749,8 @@ void __init dm355_init_time(void)
 		return;
 	}
 
-	davinci_timer_init(clk);
+	rv = davinci_timer_register(clk, &dm355_timer_cfg);
+	WARN(rv, "Unable to register the timer: %d\n", rv);
 }
 
 static struct resource dm355_pll2_resources[] = {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
