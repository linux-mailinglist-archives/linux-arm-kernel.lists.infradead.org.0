Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DD381493
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 10:59:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hPBpb/4NUpl7E8SpF/RzUCPPSxBT8L9Oq+ER/n+u0gM=; b=sZz/1qMznJftvp
	4YkaKLOgLpy4pN/ya7vQxhrPqoz4hCBHNXvKjYoRA2IfiQReQ1JLtsARY5OEB+S247xBJhYht6m2Y
	TIg+2DihvM5WsEDdKfjG2t+o4bDXefYM55d5ethp1f0IMxjZfVDVvp3EbNx0faoWu+JFELGagk8MN
	FYGBSdlndZ3I768UrESOCCz+ay9ljLNIqSSxlBf2oqJTQIrGZt7Dd4SMwfPnZeAg0ZbCmFmNSe1AC
	CwEBpWgfkMwEYQqjs8igytx2fA/o5Xq2K56OutH9ME0b1+87p3PEi/U4cyjMkcuKtR+2HN7BWMs9b
	98J3WDv9pwzF33kRGXUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYq4-0005vT-QH; Mon, 05 Aug 2019 08:59:33 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYpd-0005js-PS
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 08:59:07 +0000
Received: by mail-lj1-x242.google.com with SMTP id d24so78608495ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 01:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XS8NSKoh+CguW/bz0NOSFtpL/Lk0LcQIGEWD1T1/JOM=;
 b=TaJN+q5ENJDArezn6ZlerbgxeGiw7w3OKzEjj/3FnWUanN6/R+IL+cMVEdjLJZxQKc
 gUp7dFwr2lelmvLY8MA1Lzkjc2rbXkWEz+2YndDZtEYMQ/DaEoT7EZpBFX/n19VW4Ie+
 +ILJrk4AS9SkeW0SDceOJ+UXb0dspph9y/Io5YiEXGInLxSVNs3dkanwW/qQkFRFI6vQ
 LdJYfz3GgDcxXLcNrfe7ZTBalXzR+8vwMik8VihO5yKajOM6Wssw5zBwiCnFgOnbYhpM
 9+oJB3B2qD5ftS/VSXFeBvX1RtXMbZK6Uy/ZexLrVVDZL5z0HYMh5Uevd5QNyBXYTPqQ
 pOJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XS8NSKoh+CguW/bz0NOSFtpL/Lk0LcQIGEWD1T1/JOM=;
 b=XcVIAs7NjIXBBS38nI9c9Tcrt+0UkF6/GiKOa1IUC3McBQe0R05WOXAghMIURMlpz1
 RAONY13oBf34J5vSHAtl7HkqYCsyJcfY5IDX/Q6RyFn7jcL+Rga0lL8/nVC+XzV4IDaD
 62mAMogFESv3gCiNjtc8odcJ92qsDzcw5ot4mLRkX5pkSdsR63z8x22+OhQI3hSUqy4w
 wfY0mlNuPBaSbabwuLJPioGLzQF3deBscEAo7+Mmq9FwQmwpiFghz+iEZWBY+qBx5dAl
 Vm5Z6xpDvOlHEmJ3W0M2E5ptdMjEwXecF6rYOqj9LqpTBdPXYaS0PzuHggYAFyAtaidk
 vIbw==
X-Gm-Message-State: APjAAAXyp0oLJKqWHZvwOghkcu0KTWnyjaeI6hb7jTuMFm9FsmAq4wSm
 oycKaHiiiV1VH/NeDr+MCpMc2Q==
X-Google-Smtp-Source: APXvYqyT7JCeHt1WLbylCyF2z+2x7MRYAh/2OgpnQbB7X9M0R32wIXpIVsQv++GkFVnlRjUJmLHDGA==
X-Received: by 2002:a2e:8495:: with SMTP id b21mr59894302ljh.149.1564995544322; 
 Mon, 05 Aug 2019 01:59:04 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id b20sm234500lfc.17.2019.08.05.01.59.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 01:59:03 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Daniel Tang <dt.tangr@gmail.com>,
	Fabian Vogt <fabian@ritter-vogt.de>
Subject: [PATCH 1/4 v2] drm/pl111: Support grayscale
Date: Mon,  5 Aug 2019 10:58:44 +0200
Message-Id: <20190805085847.25554-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190805085847.25554-1-linus.walleij@linaro.org>
References: <20190805085847.25554-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_015905_827237_C2D2F106 
X-CRM114-Status: GOOD (  16.60  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Migrating the TI nspire calculators to use the PL111 driver for
framebuffer requires grayscale support for the elder panel
which uses 8bit grayscale only.

DRM does not support 8bit grayscale framebuffers in memory,
but by defining the bus format to be MEDIA_BUS_FMT_Y8_1X8 we
can get the hardware to turn on a grayscaling feature and
convert the RGB framebuffer to grayscale for us.

Cc: Daniel Tang <dt.tangr@gmail.com>
Cc: Fabian Vogt <fabian@ritter-vogt.de>
Tested-by: Fabian Vogt <fabian@ritter-vogt.de>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Now tested
---
 drivers/gpu/drm/pl111/pl111_display.c | 29 +++++++++++++++++++++++++--
 include/linux/amba/clcd-regs.h        |  1 +
 2 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/pl111/pl111_display.c b/drivers/gpu/drm/pl111/pl111_display.c
index 450166d167f6..1751fca6f6f5 100644
--- a/drivers/gpu/drm/pl111/pl111_display.c
+++ b/drivers/gpu/drm/pl111/pl111_display.c
@@ -126,6 +126,7 @@ static void pl111_display_enable(struct drm_simple_display_pipe *pipe,
 	struct drm_framebuffer *fb = plane->state->fb;
 	struct drm_connector *connector = priv->connector;
 	struct drm_bridge *bridge = priv->bridge;
+	bool grayscale = false;
 	u32 cntl;
 	u32 ppl, hsw, hfp, hbp;
 	u32 lpp, vsw, vfp, vbp;
@@ -185,6 +186,20 @@ static void pl111_display_enable(struct drm_simple_display_pipe *pipe,
 		if (connector->display_info.bus_flags &
 		    DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE)
 			tim2 |= TIM2_IPC;
+
+		if (connector->display_info.num_bus_formats == 1 &&
+		    connector->display_info.bus_formats[0] ==
+		    MEDIA_BUS_FMT_Y8_1X8)
+			grayscale = true;
+
+		/*
+		 * The AC pin bias frequency is set to max count when using
+		 * grayscale so at least once in a while we will reverse
+		 * polarity and get rid of any DC built up that could
+		 * damage the display.
+		 */
+		if (grayscale)
+			tim2 |= TIM2_ACB_MASK;
 	}
 
 	if (bridge) {
@@ -216,8 +231,18 @@ static void pl111_display_enable(struct drm_simple_display_pipe *pipe,
 
 	writel(0, priv->regs + CLCD_TIM3);
 
-	/* Hard-code TFT panel */
-	cntl = CNTL_LCDEN | CNTL_LCDTFT | CNTL_LCDVCOMP(1);
+	/*
+	 * Detect grayscale bus format. We do not support a grayscale mode
+	 * toward userspace, instead we expose an RGB24 buffer and then the
+	 * hardware will activate its grayscaler to convert to the grayscale
+	 * format.
+	 */
+	if (grayscale)
+		cntl = CNTL_LCDEN | CNTL_LCDMONO8;
+	else
+		/* Else we assume TFT display */
+		cntl = CNTL_LCDEN | CNTL_LCDTFT | CNTL_LCDVCOMP(1);
+
 	/* On the ST Micro variant, assume all 24 bits are connected */
 	if (priv->variant->st_bitmux_control)
 		cntl |= CNTL_ST_CDWID_24;
diff --git a/include/linux/amba/clcd-regs.h b/include/linux/amba/clcd-regs.h
index 516a6fda83c5..421b0fa90d6a 100644
--- a/include/linux/amba/clcd-regs.h
+++ b/include/linux/amba/clcd-regs.h
@@ -42,6 +42,7 @@
 #define TIM2_PCD_LO_MASK	GENMASK(4, 0)
 #define TIM2_PCD_LO_BITS	5
 #define TIM2_CLKSEL		(1 << 5)
+#define TIM2_ACB_MASK		GENMASK(10, 6)
 #define TIM2_IVS		(1 << 11)
 #define TIM2_IHS		(1 << 12)
 #define TIM2_IPC		(1 << 13)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
