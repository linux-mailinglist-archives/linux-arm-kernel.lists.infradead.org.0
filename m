Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 318527197A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6jDmdqeKV2AVfg5ZXXqn4QWUA1HBWtHEzMdlHOqVGI=; b=Fyx+svc4LmXe/D
	AQBxLNMPVKMAIhUZKDGdNA+HD3UWzOQZeRRpbrheE9HCK7vlCYpV+96YDBasGVxCbGjf8fY+DojF+
	+xM6fHRzy2ymKX4sVVgAuwu0bm3RqOhjSxVDNZOPGKP7DbzvLC+LrmlUqVA5tCSP8am1RoV9GGVZm
	brbHdGM6g2ivuQhtE9M1D40KDfqtu1QSAZYlRKtrJijN9Gv1Bb2hDzTBtJHGQGVRYVZm669TvN1A1
	2Q4PDZ4X/BJvqN/dMYw827vl4HXlbiOpfa6h5Fy+oscJeozcx43RlsbZa1R6ypPG9a2d+h85A29dh
	y1qersIJXwSufIkG7X2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpv0I-0005YJ-TC; Tue, 23 Jul 2019 13:38:54 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuzW-000581-Cr
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 13:38:08 +0000
Received: by mail-lj1-x244.google.com with SMTP id m23so41008674lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 06:38:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GyBL54uJUg2m+QxxPgdjICGLYK38bj57Ff5SS54KJ84=;
 b=uIYvb8MvC9wkOgu4ZqcZpMAUdOOoYxGs9AUNUM+zaZBCT/7x26riSySUpBm1+h8d5/
 6L7bpN7N2U3zMDv/tJoo4NZ43xQV1KQrSJxmlwYkCeWHuTuThw+a9StzvdgAWum+S6eL
 4MRUO5OxI0DZ9NXXeW11cbLH/5kj3xI5aV5/UGGPWcM7EgDybtPMAeYNsd3JdkyN+1az
 Uc1EbIliEURo8r21lV/2ifhyBJfvIQveik0y9wkR3B7yECd/bWVEUIedXTXx3mAw2350
 KMxKZgoCe0+DYaArMg0b9b/SY6GLNTNn04+yvKy4P/xyTTC9qlcuw3hjQ3eKay6M4pnq
 TvJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GyBL54uJUg2m+QxxPgdjICGLYK38bj57Ff5SS54KJ84=;
 b=MpG8zBNkxsflXfbiIQpAmdqBNYPAXzE18CwME3a8rjk85d/4dFP8U/SuG9h2Cx7+qf
 GIUBSgEkuQyvY1Pq7sROVXrFj2uyo5HPclQteosWoItCY1HeE3i3qwU4urhHCn8hSTN8
 txC3ycCMBp8eHZZE/mwwEnkJSiZ3QV8zxBhCby72ZU2Y/5KsWKOgTrrZg5iyz0vsvRkw
 2xekGqPcteScpy7uB3WoLX+aNJtgCTc8Jx+dT56xrLAzM/FL1zHGBMXw7cajmwKGMsm0
 rVJ9v7HTRfwK/HETX4oVejHfVrggo0vDfr+ksTTXExnbz57R4Pq2lfw3wqHCFwTuPAHs
 GVcw==
X-Gm-Message-State: APjAAAVfkSHg6rwekSEvQYkOgWTMBh6mqL07XBMC5zDmR/K3ZggFWE6t
 ns0DwM5wq6kuGzo5+qKuLLKcOw==
X-Google-Smtp-Source: APXvYqzGir2Qt5qxQ+5S5zcanbbG7bQz8sJnAmsCJJKqOXEHkxbEdtfpLObO+UInqTKVqt98wUTPew==
X-Received: by 2002:a2e:781a:: with SMTP id t26mr39491275ljc.28.1563889084464; 
 Tue, 23 Jul 2019 06:38:04 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id l24sm8069411lji.78.2019.07.23.06.38.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 06:38:03 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Daniel Tang <dt.tangr@gmail.com>,
	Fabian Vogt <fabian@ritter-vogt.de>
Subject: [PATCH 1/3] RFT: drm/pl111: Support grayscale
Date: Tue, 23 Jul 2019 15:37:53 +0200
Message-Id: <20190723133755.22677-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723133755.22677-1-linus.walleij@linaro.org>
References: <20190723133755.22677-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_063806_668240_B6FE49DB 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
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
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/pl111/pl111_display.c | 28 +++++++++++++++++++++++++--
 include/linux/amba/clcd-regs.h        |  1 +
 2 files changed, 27 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/pl111/pl111_display.c b/drivers/gpu/drm/pl111/pl111_display.c
index 15d2755fdba4..587b4d148c18 100644
--- a/drivers/gpu/drm/pl111/pl111_display.c
+++ b/drivers/gpu/drm/pl111/pl111_display.c
@@ -126,12 +126,17 @@ static void pl111_display_enable(struct drm_simple_display_pipe *pipe,
 	struct drm_framebuffer *fb = plane->state->fb;
 	struct drm_connector *connector = priv->connector;
 	struct drm_bridge *bridge = priv->bridge;
+	bool grayscale = false;
 	u32 cntl;
 	u32 ppl, hsw, hfp, hbp;
 	u32 lpp, vsw, vfp, vbp;
 	u32 cpl, tim2;
 	int ret;
 
+	if (connector->display_info.num_bus_formats == 1 &&
+	    connector->display_info.bus_formats[0] == MEDIA_BUS_FMT_Y8_1X8)
+		grayscale = true;
+
 	ret = clk_set_rate(priv->clk, mode->clock * 1000);
 	if (ret) {
 		dev_err(drm->dev,
@@ -185,6 +190,15 @@ static void pl111_display_enable(struct drm_simple_display_pipe *pipe,
 		if (connector->display_info.bus_flags &
 		    DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE)
 			tim2 |= TIM2_IPC;
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
@@ -216,8 +230,18 @@ static void pl111_display_enable(struct drm_simple_display_pipe *pipe,
 
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
