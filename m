Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6B75AB46
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 15:02:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9vXConflJKt262yE99H1njpt9cTet5mxIrw/SQmeBZw=; b=CNoqkHoNnZSbHU
	Diz4crBYvhh/TedjJMGlNoowgco6uBhGV0EXsujAlWsSAWPCCaw/F+qrq4j7zFC+gebspqEQzGQnI
	XNIzZ6oTuzFG7xok/Q2OBMuQnXjpLQxoABXxaubwnDY5/BtjErz/4tarLSJEnQi+B/bCgKTvaqcif
	kv2StguNPomDyVDiKorx0slb4DlHLzOugS0RTkj9ZyC/n5ptQ3F0V0uwn2UEYw3j515FGVlgoAqm5
	DHs6FYee84lqsOjSAj6uPq1l3E8hDGoqJ+TftUFBEHPeJQldL/1PzW9SBtAUQbArycXg4AgbgaJN+
	U1v9/NX3ck/imL3TECNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhD05-00056n-IP; Sat, 29 Jun 2019 13:02:41 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCzQ-0004hi-LF
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 13:02:02 +0000
Received: by mail-lf1-x143.google.com with SMTP id y17so5790547lfe.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Jun 2019 06:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ji8jAojLPl8vD+gcsy1dZ2LAcjvPmFSVJ5glNsjtSak=;
 b=nAjmGaNaoXOfVZnFCs0LUWx0cgkIpWqrZKexDYARBy6576kyG3UYP+U3tLv6Z7mbun
 3mza7Rr4HNinHrz/Z+ZS8QeQeD2ig1Wuy5eIgVPImRlRcCxR6UE3d6lvjrMrektszXS+
 0CG3ahmSPlVFxu3mFx0uVQqdq4jNPLcFg8BC+yVu43Um7D3UMfNOpakEUcEVn6MuC8Ry
 X4Gx9ihORnId7aLMGMVG+MYoXUZ7qMgU1CSiYsMEXSOfdUiBe/5UWIg8MwtVDMvToc9k
 2kG/2Li5Bv+dVCPKpJYsQ5s5V65k/L9JNU0oyZMgdR84ds/6gyw5txkGZP6EpXJbSn72
 8DlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ji8jAojLPl8vD+gcsy1dZ2LAcjvPmFSVJ5glNsjtSak=;
 b=rL08BhgqVK+LpfI2iKbjPSz+UHvrwJyW+5A1Q/Ew32oFThj62ImGpvKBQALs1+ZBOA
 rU0HKSINP22W+8RZu2JMOBNirtV/heqhRUbkkr0leJSbdkQ5gR8eSrU92J175I683MfH
 33MD+usWluTGivn4WENJcZ4M1Cr2Dkh9FvLr8bkt61wTPClmk4GTzS4jvFKHUll7/oif
 OhH2o/G11cRDYKFpTJZIRMVWLyhzh2w9z/YPj67WiHR2R7q8Dnmi8dztimPTgYG2KzpD
 K+IcZFHCm3scyNWNiC6fWXlmmX2r4rbs9N7Yq63voVIrTD0qktogn5Hqh9HzcB7Ch1VB
 nMNQ==
X-Gm-Message-State: APjAAAXb9YNRODbnefWwopKz+YtbOrlp0ol7NuEsHCUvuL8QvHcpN4L1
 Hb2Y9jA+OW6XQOcPszGYgw6l2Q==
X-Google-Smtp-Source: APXvYqw4JVg2KbWLoxvVW9U6jPqYrcYh2H4AXq4ph9NDkiYzD2Bg7mSbg0zvS+exFIzcUH3D8CLeKg==
X-Received: by 2002:a19:f601:: with SMTP id x1mr7523920lfe.182.1561813318996; 
 Sat, 29 Jun 2019 06:01:58 -0700 (PDT)
Received: from localhost.localdomain
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id v2sm1354500lfi.52.2019.06.29.06.01.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 29 Jun 2019 06:01:57 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH 3/7] drm/msm/dpu: Drop unused GPIO code
Date: Sat, 29 Jun 2019 14:59:29 +0200
Message-Id: <20190629125933.679-3-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190629125933.679-1-linus.walleij@linaro.org>
References: <20190629125933.679-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_060200_709027_A557B236 
X-CRM114-Status: GOOD (  13.65  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-msm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 freedreno@lists.freedesktop.org, Rob Clark <robdclark@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DPU has some kind of idea that it wants to be able to
bring up power using GPIO lines. The struct dss_gpio is however
completely unused and should this be done, it should be done
using the GPIO descriptor framework rather than this API
which relies on the global GPIO numberspace. Delete this
code before anyone hurt themselves.

The inclusion of <linux/gpio.h> was abused to get some OF
and IRQ headers implicitly included into the DPU utilities,
make these includes explicit and push them down into the actual
implementation.

Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <sean@poorly.run>
Cc: linux-arm-msm@vger.kernel.org
Cc: freedreno@lists.freedesktop.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c | 1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.h | 9 ---------
 drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c    | 4 ++++
 3 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c
index 78833c2c27f8..78f04147839f 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c
@@ -15,6 +15,7 @@
 #include <linux/clk/clk-conf.h>
 #include <linux/err.h>
 #include <linux/delay.h>
+#include <linux/of.h>
 
 #include <drm/drm_print.h>
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.h
index bc07381d7429..a0498c7bd677 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.h
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.h
@@ -13,7 +13,6 @@
 #ifndef __DPU_IO_UTIL_H__
 #define __DPU_IO_UTIL_H__
 
-#include <linux/gpio.h>
 #include <linux/platform_device.h>
 #include <linux/types.h>
 
@@ -22,12 +21,6 @@
 #define DEV_WARN(fmt, args...)  pr_warn(fmt, ##args)
 #define DEV_ERR(fmt, args...)   pr_err(fmt, ##args)
 
-struct dss_gpio {
-	unsigned int gpio;
-	unsigned int value;
-	char gpio_name[32];
-};
-
 enum dss_clk_type {
 	DSS_CLK_AHB, /* no set rate. rate controlled through rpm */
 	DSS_CLK_PCLK,
@@ -42,8 +35,6 @@ struct dss_clk {
 };
 
 struct dss_module_power {
-	unsigned int num_gpio;
-	struct dss_gpio *gpio_config;
 	unsigned int num_clk;
 	struct dss_clk *clk_config;
 };
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c
index 7316b4ab1b85..9baabadc62bb 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c
@@ -3,6 +3,10 @@
  * Copyright (c) 2018, The Linux Foundation
  */
 
+#include <linux/irq.h>
+#include <linux/irqchip.h>
+#include <linux/irqdesc.h>
+#include <linux/irqchip/chained_irq.h>
 #include "dpu_kms.h"
 
 #define to_dpu_mdss(x) container_of(x, struct dpu_mdss, base)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
