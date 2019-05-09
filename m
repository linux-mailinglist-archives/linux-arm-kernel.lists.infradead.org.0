Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC85188B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 13:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dktn0bHVZo5wINSo7goYKkHZZ5hW2UzQ8w6rztC4RqE=; b=bWoOT8s0SEYHoW+NujKOumO/Xi
	w9L2HUFzFyKxTlMPNjyekCKTedhuYyKv3nGzE31317/kY2Pd462cTI/MayjmEiA9JFxhIJSA/GbUC
	eXwptbe/UvcK66X6yWEz8eR3YKdtpf9yIpv6SQBcoazk7H1Tb0QBTH3EyZTjgi3BvjjvpxWtc/fFT
	R0epWbcTi4j2zlb53isuDP6GdY68AFzFjlRGJDJ3x8x04PO8XKTF4bq0RVYGsKBn4qBWzLLBPVPn8
	R8h1elEwZS0Lx/CfrTDFv5RKy9aT9fIRfG3g5RdrVD3WecVyvW0iuQUtJ39rLjQ6lDVl74n5wPUgu
	b20H2HCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOgxv-0008Pg-Vg; Thu, 09 May 2019 11:11:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOgxd-0008EV-63
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 11:11:40 +0000
Received: by mail-wr1-x444.google.com with SMTP id w8so39226wrl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 04:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OrI1DkG8hXh5qOzNYuZ9U1o4Js7uyFKM86UkARAQjFU=;
 b=dDaPI9k3tcMtll47Djpz/rdtUGEzwzvLyyL0l//cu8cVR2Rt99lGVVkca4bXCWy+bF
 6cA0oko1TzN6KJydKoxqLaE6azX6lRuedbrSJPew3NWRjR7BLke3Fqi8giw2uDhne1qD
 qKVThZQ/j3dwNLYKXGIjM4SUk48jDT86z07FLXGIg3JuxV1uIUCtgXMDgPR09ZZMfZr+
 TNHzhK3fyYN/vr3k/3/WP6pHTR+hO1AntaTqGiyZ0TU+Wlnzh8TPRxANcXf0ShFml+vx
 o70PgJlW2nxCNS2TKkr488HT9y5XauThy5EedX37kOz98RiqhvvRoUuaPW9l7sXT3Nbm
 Qhkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OrI1DkG8hXh5qOzNYuZ9U1o4Js7uyFKM86UkARAQjFU=;
 b=WPdn5jVn2XXOkp1gaSK2OEEuS9VXQtgswyDBeKXjFIj3EPDPyh2H95twdRMwI2U32A
 /m8YEY86aG0sih9WtFnSVpLZTrn3Fxzk1wQhd4pEAUtY2mEn3LlP8jXvk/6idLJ3VlIp
 mTklM4CNNg+qmRBREy2gLUyiXbhZHPAZAChMI0eQhFbvhrWdqME6rQ1Dzv+RgN85I1+Q
 1abUbKJrZdjaGD+dDId6Uyvf9kxM8Z2Y1FmopzsMiIvfckiohE0/TlghKEbxAqxskRlO
 pS3q6BrqFBmcdim5HieS+PZNk0hs/+5LxVPuof1UUtc9MJVmv68P/bmPSFpcnEUTny0c
 MY3Q==
X-Gm-Message-State: APjAAAXDW5Mw5xngMiDON1sNS0C4jVxPSV08CILUpU54cKbIKQZfz4cV
 Yy4C+Qfxgw/KD29ukChGqKHjZQ==
X-Google-Smtp-Source: APXvYqzkFCRg/4jV4ymjIhFIzAV05l1GgTMsLu+5AiktxlCAcReCeZs1b3mYSzdsAI2AeT9bdLmVAw==
X-Received: by 2002:adf:9c87:: with SMTP id d7mr2643806wre.68.1557400295729;
 Thu, 09 May 2019 04:11:35 -0700 (PDT)
Received: from mai.irit.fr ([141.115.39.235])
 by smtp.gmail.com with ESMTPSA id z7sm2299778wme.26.2019.05.09.04.11.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 04:11:35 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 07/15] ARM: at91: move SoC specific definitions to SoC folder
Date: Thu,  9 May 2019 13:10:40 +0200
Message-Id: <20190509111048.11151-7-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509111048.11151-1-daniel.lezcano@linaro.org>
References: <7e786ba3-a664-8fd9-dd17-6a5be996a712@linaro.org>
 <20190509111048.11151-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_041137_346412_07A77D07 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "open list:PWM SUBSYSTEM" <linux-pwm@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "moderated list:ATM" <linux-atm-general@lists.sourceforge.net>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thierry Reding <thierry.reding@gmail.com>, Chas Williams <3chas3@gmail.com>,
 "open list:ATM" <netdev@vger.kernel.org>,
 "moderated list:MICROCHIP TIMER COUNTER TC AND CLOCKSOURCE DR..."
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

Move linux/atmel_tc.h to the SoC specific folder include/soc/at91.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Acked-by: Thierry Reding <thierry.reding@gmail.com>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/clocksource/tcb_clksrc.c                   | 2 +-
 drivers/misc/atmel_tclib.c                         | 2 +-
 drivers/pwm/pwm-atmel-tcb.c                        | 2 +-
 include/{linux/atmel_tc.h => soc/at91/atmel_tcb.h} | 4 ++--
 4 files changed, 5 insertions(+), 5 deletions(-)
 rename include/{linux/atmel_tc.h => soc/at91/atmel_tcb.h} (99%)

diff --git a/drivers/clocksource/tcb_clksrc.c b/drivers/clocksource/tcb_clksrc.c
index 43f4d5c4d6fa..138a12090149 100644
--- a/drivers/clocksource/tcb_clksrc.c
+++ b/drivers/clocksource/tcb_clksrc.c
@@ -11,7 +11,7 @@
 #include <linux/io.h>
 #include <linux/platform_device.h>
 #include <linux/syscore_ops.h>
-#include <linux/atmel_tc.h>
+#include <soc/at91/atmel_tcb.h>
 
 
 /*
diff --git a/drivers/misc/atmel_tclib.c b/drivers/misc/atmel_tclib.c
index ac24a4bd63f7..194f774ab3a1 100644
--- a/drivers/misc/atmel_tclib.c
+++ b/drivers/misc/atmel_tclib.c
@@ -1,4 +1,3 @@
-#include <linux/atmel_tc.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <linux/init.h>
@@ -10,6 +9,7 @@
 #include <linux/slab.h>
 #include <linux/export.h>
 #include <linux/of.h>
+#include <soc/at91/atmel_tcb.h>
 
 /*
  * This is a thin library to solve the problem of how to portably allocate
diff --git a/drivers/pwm/pwm-atmel-tcb.c b/drivers/pwm/pwm-atmel-tcb.c
index 0d0f8376bc35..7da1fdb4d269 100644
--- a/drivers/pwm/pwm-atmel-tcb.c
+++ b/drivers/pwm/pwm-atmel-tcb.c
@@ -17,10 +17,10 @@
 #include <linux/ioport.h>
 #include <linux/io.h>
 #include <linux/platform_device.h>
-#include <linux/atmel_tc.h>
 #include <linux/pwm.h>
 #include <linux/of_device.h>
 #include <linux/slab.h>
+#include <soc/at91/atmel_tcb.h>
 
 #define NPWM	6
 
diff --git a/include/linux/atmel_tc.h b/include/soc/at91/atmel_tcb.h
similarity index 99%
rename from include/linux/atmel_tc.h
rename to include/soc/at91/atmel_tcb.h
index 468fdfa643f0..c3c7200ce151 100644
--- a/include/linux/atmel_tc.h
+++ b/include/soc/at91/atmel_tcb.h
@@ -7,8 +7,8 @@
  * (at your option) any later version.
  */
 
-#ifndef ATMEL_TC_H
-#define ATMEL_TC_H
+#ifndef __SOC_ATMEL_TCB_H
+#define __SOC_ATMEL_TCB_H
 
 #include <linux/compiler.h>
 #include <linux/list.h>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
