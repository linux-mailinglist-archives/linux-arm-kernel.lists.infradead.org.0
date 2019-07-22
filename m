Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82731700EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+zLgAG3opmkg+lxhlklrv7jlTqQDISmoLStCHFbAik=; b=Po87ZG1AFI/DDy
	Z5aRIbSfxA/tzQDEC7Zb9c4EGQcF017u6KZphUcENKYKaju1F1iEpPBAK97SOeP+7PnKvQRilS5/U
	NuEoDNAQpsMZVMX/yAMET0vwCY/4aYIaMvva45ELfH1N42XQWC4mGw4xSSCkNkz4cuAU2Ca9T+haf
	I75kR8sN28jNZ+xTcqWcDpASueeimxsyRw63FvNkmUsJeq+bFdi/m7rtmCdQa0s5bMf7YzmEv06TZ
	km3bISWax6kk08BEWmOtJ8zYfgyz+UOBeQrD3evzwZNw5TJIy21uPFP1E5x06dXmsbTtIrvlK2/4p
	Wum1LwsgsCyanUYPhAfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYGa-00084d-SK; Mon, 22 Jul 2019 13:22:12 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYCX-0004oa-1T
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:18:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id c2so36193235wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=550rdQvPEpXRICt57j9lxMM5hxSHkZtM5UQc6a6drbE=;
 b=GSo6+MOVPcgHTb7xbyvoyhWlDXlsu4/zI6ivXXcgl85lYOIGmZx2/jvT8mhZUACRiT
 h3ZZfHoiSds/60N6vj96oXVCSZ0TOeBDEU2W78+W2lJUrIdeAfjKaGWhYKxlHciGYV03
 gG1in5QvaGNEypqRhOBeWWr6Wbqy1bmZmm/x7BsW6PM68SeKiX4mnhADT+mmFwdxroE4
 YsLaJJIleuAv+2C+jrQsg/Ymg8xobbI/i//FGAHpYX5re5/+4QjO9vYzT0c7L4RBaigH
 RUks7rJF6oRgx68nqVpOmg2+EoBFQFfIPsWj4tqtbKLjCXG2mOKSjJy7VTIijAxazQDJ
 /uIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=550rdQvPEpXRICt57j9lxMM5hxSHkZtM5UQc6a6drbE=;
 b=kbd5o4U/E3xmJLU+kCbg8ILJFfDpgQCuu/yqMw5yt1BxHuF5EG4ULJqEliqwZhfbGM
 xGo6YIduvBPqZnCnkGEuxJEpMtOvcjN2NoyUEss9XAP3CGoyJF3YvfE3/xT7NHkMK7LQ
 DaL1zJgZ5fAF3nhpBTm2Bo2OeTXN+Uol3+83Ay5pMJr9DLD3nL+vcAiVHjsdhyFitE1+
 jZ98qKtdbPmG26JMrbcdbSdujW9hnmNTVNAkwGRgIIWE+HeN1n74GrS5bQqo1yxVfLle
 w0hylZiKPikYYUwkFbeonjtrmVtFaHoqtS1K75EUsqt/dvHEP2V/Lf73wnkySOW6B4xt
 NGgQ==
X-Gm-Message-State: APjAAAW+1S1UWavCyDBgYtuzj1p2uqLvcd8kfjFGIUPM9y8xzu9mf9qF
 wQFMBkpk+UrOE9tsnAglFVdFou0g
X-Google-Smtp-Source: APXvYqzXZRF64uLK/Lk8tIovJHppdfZWIS3sBB241bHdwb7Mo3MMlQp00WuciSsyOrKeoxESAqltuA==
X-Received: by 2002:adf:cd04:: with SMTP id w4mr24072931wrm.230.1563801479923; 
 Mon, 22 Jul 2019 06:17:59 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id z6sm34156657wrw.2.2019.07.22.06.17.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 06:17:59 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>,
	Kevin Hilman <khilman@kernel.org>
Subject: [RESEND PATCH 08/10] ARM: davinci: dm644x: switch to using the
 clocksource driver
Date: Mon, 22 Jul 2019 15:17:46 +0200
Message-Id: <20190722131748.30319-9-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722131748.30319-1-brgl@bgdev.pl>
References: <20190722131748.30319-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_061801_236917_B3731F26 
X-CRM114-Status: GOOD (  13.72  )
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

We now have a proper clocksource driver for davinci. Switch the dm644x
platform to using it.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Reviewed-by: David Lechner <david@lechnology.com>
---
 arch/arm/mach-davinci/dm644x.c | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-davinci/dm644x.c b/arch/arm/mach-davinci/dm644x.c
index 7a6b5a48cae5..24988939ae46 100644
--- a/arch/arm/mach-davinci/dm644x.c
+++ b/arch/arm/mach-davinci/dm644x.c
@@ -27,7 +27,8 @@
 #include <mach/cputype.h>
 #include <mach/mux.h>
 #include <mach/serial.h>
-#include <mach/time.h>
+
+#include <clocksource/timer-davinci.h>
 
 #include "asp.h"
 #include "davinci.h"
@@ -561,15 +562,15 @@ static struct davinci_id dm644x_ids[] = {
 };
 
 /*
- * T0_BOT: Timer 0, bottom:  clockevent source for hrtimers
- * T0_TOP: Timer 0, top   :  clocksource for generic timekeeping
- * T1_BOT: Timer 1, bottom:  (used by DSP in TI DSPLink code)
- * T1_TOP: Timer 1, top   :  <unused>
+ * Bottom half of timer0 is used for clockevent, top half is used for
+ * clocksource.
  */
-static struct davinci_timer_info dm644x_timer_info = {
-	.timers		= davinci_timer_instance,
-	.clockevent_id	= T0_BOT,
-	.clocksource_id	= T0_TOP,
+static const struct davinci_timer_cfg dm644x_timer_cfg = {
+	.reg = DEFINE_RES_IO(DAVINCI_TIMER0_BASE, SZ_4K),
+	.irq = {
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_TINT0_TINT12)),
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_TINT0_TINT34)),
+	},
 };
 
 static struct plat_serial8250_port dm644x_serial0_platform_data[] = {
@@ -647,7 +648,6 @@ static const struct davinci_soc_info davinci_soc_info_dm644x = {
 	.pinmux_base		= DAVINCI_SYSTEM_MODULE_BASE,
 	.pinmux_pins		= dm644x_pins,
 	.pinmux_pins_num	= ARRAY_SIZE(dm644x_pins),
-	.timer_info		= &dm644x_timer_info,
 	.emac_pdata		= &dm644x_emac_pdata,
 	.sram_dma		= 0x00008000,
 	.sram_len		= SZ_16K,
@@ -669,6 +669,7 @@ void __init dm644x_init_time(void)
 {
 	void __iomem *pll1, *psc;
 	struct clk *clk;
+	int rv;
 
 	clk_register_fixed_rate(NULL, "ref_clk", NULL, 0, DM644X_REF_FREQ);
 
@@ -684,7 +685,8 @@ void __init dm644x_init_time(void)
 		return;
 	}
 
-	davinci_timer_init(clk);
+	rv = davinci_timer_register(clk, &dm644x_timer_cfg);
+	WARN(rv, "Unable to register the timer: %d\n", rv);
 }
 
 static struct resource dm644x_pll2_resources[] = {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
