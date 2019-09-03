Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 371D9A64E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 11:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xYRUVNO/EKWuwK7gmY9QpKgXwAdszCdDT+FwqQTHRUQ=; b=sduYfkawugQFab
	eOGCYtpjc/Kg0DKB3GBzTbc9BGyhoxihgGvSA1z+Fa+uIbHxh0uIL1bp4+WQEB1gtr9roXP5FjG62
	K24FGS/MRP2Xgp/umbyIh8AvLFEfUaOciuhgwaGKpS2UYWD9Z9r/be8LPIk+n6IBHsP50IPxcMirx
	XSQ77DboclRX4LdAW5AQwjbyQYRovBZaMco/acNIj2v8hnKpupL0f+p7XOkBRYzZeWzyan3WsjUYN
	BFMmtJAI1U+w+r9t4PD8Zeys6iJ5BgQbvijoWZ40fLMstWhsr1I+1uPIBOsGERafD0R/nSxCK0Dc3
	5pcEXjWgXByguIou9hRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i54uS-0005hQ-UH; Tue, 03 Sep 2019 09:15:33 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i54uG-0005h5-VH
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 09:15:22 +0000
Received: by mail-lf1-x143.google.com with SMTP id w6so6896009lfl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 02:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7tH0D9nnd+Hl0Tr4TMT+Gha56g1J28sGI/YzziuksxQ=;
 b=l7JkE62qR1PPR9V2AgJprFiXike3IM8gqJIfX+p6FrZcmCl2ln3+dCpusghe9gx4xI
 aQmLNRCoJHP6foPcXe7vKRa+UPfHdvKlfB8T79Nioxpesx24+MLTUL8N2Hd5mFaPTPAj
 XdjdAbyYPKeP/9x9U0B8RE1uzwd3KD1muhr8va6t3PNmD/ygvPcM7dNJUdVsK7fvt5H1
 Q1oz0ExGJfQT7mVup8O4totHX2++EYdcfReXZFAWR540NFiNa4s0uq6a+1mcw5kXyJDx
 sAvrzLqNq1kDZx4Y09zjM8aZAfQMqm20+uQUBUr+Cz/63Y5sAkT/jKGJ+2nR1Up/SAwL
 iamA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7tH0D9nnd+Hl0Tr4TMT+Gha56g1J28sGI/YzziuksxQ=;
 b=K2+36liWJssGmfs28OzaeZpmVk7kPGd2KAPC4wb2BsiXQcA0nTqVFibgArp2RDXeq4
 gE+lsn5zNhXEuIBtCSoVRPY3EDlPtICOvy3McpXA+mz2eg94uGdXFR6QdsjsMt1NjA6W
 g6JXyufvBXLb5LjRhEqGdOm3atHnIpp8aKrUOwEIX4jd38Hqpdw9zS51IBJU/fih31CJ
 0zxtHCq4D3G6xKSg6xHXJM9VyBq3zo9Z7MAQXuq6yFPL3bVlfnpOoHLpF33nLqw0lBKd
 0rAF5sHZzt/CWaNnLxIDxK3KxxEs6vTn/lOGoQAUslkbju7S2qtr3+JoRikIivj1Svag
 FWNw==
X-Gm-Message-State: APjAAAVX7tTrL7QJ/xc+MNQ9XTpHRij+rHju65JO+iA8UMhtB3z8/Mx5
 7+JNO+15H3R1oCNLHO72BYDmog==
X-Google-Smtp-Source: APXvYqxf09Q2wwIgk+5B1xl1CYuJg9QDoHaKfTSPgiLreNxsXuM0fe1w6bE4DNrEeKsw08tHAVVBwQ==
X-Received: by 2002:a19:644c:: with SMTP id b12mr2813213lfj.104.1567502119106; 
 Tue, 03 Sep 2019 02:15:19 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id b7sm2783387ljk.80.2019.09.03.02.15.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 02:15:18 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH v2] drm/mcde: Some fixes to handling video mode
Date: Tue,  3 Sep 2019 11:15:12 +0200
Message-Id: <20190903091512.15780-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_021521_044635_B2CBC3FA 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The video DSI mode had not really been tested. These fixes makes
it more likely to work on real hardware:
- Set the HS clock to something the video mode reported by the
  panel can handle rather than the max HS rate.
- Put the active width (x width) in the right bits and the VSA
  (vertical sync active) in the right bits (those were swapped).
- Calculate the packet sizes in bytes as in the vendor driver,
  rather than in bits.
- Handle negative result in front/back/sync packages and fall
  back to zero like in the vendor driver.

Cc: Stephan Gerhold <stephan@gerhold.net>
Fixes: 5fc537bfd000 ("drm/mcde: Add new driver for ST-Ericsson MCDE")
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Fix some more comments so we understand what is going on.
- Set up the maximum line limit size in the right register
  instead of setting it in the burst size register portion.
- Set some default wakeup time other than zero (still need
  fixing more).
---
 drivers/gpu/drm/mcde/mcde_dsi.c | 75 ++++++++++++++++++++++-----------
 1 file changed, 50 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_dsi.c
index cd261c266f35..5c65cd70fcd3 100644
--- a/drivers/gpu/drm/mcde/mcde_dsi.c
+++ b/drivers/gpu/drm/mcde/mcde_dsi.c
@@ -365,11 +365,12 @@ void mcde_dsi_te_request(struct mipi_dsi_device *mdsi)
 static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
 				      const struct drm_display_mode *mode)
 {
-	u8 bpp = mipi_dsi_pixel_format_to_bpp(d->mdsi->format);
+	/* cpp, characters per pixel, number of bytes per pixel */
+	u8 cpp = mipi_dsi_pixel_format_to_bpp(d->mdsi->format) / 8;
 	u64 bpl;
-	u32 hfp;
-	u32 hbp;
-	u32 hsa;
+	int hfp;
+	int hbp;
+	int hsa;
 	u32 blkline_pck, line_duration;
 	u32 blkeol_pck, blkeol_duration;
 	u32 val;
@@ -408,11 +409,11 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
 		return;
 	}
 
-	/* TODO: TVG could be enabled here */
+	/* TODO: TVG (test video generator) could be enabled here */
 
-	/* Send blanking packet */
+	/* During blanking: go to LP mode */
 	val |= DSI_VID_MAIN_CTL_REG_BLKLINE_MODE_LP_0;
-	/* Send EOL packet */
+	/* During EOL: go to LP mode */
 	val |= DSI_VID_MAIN_CTL_REG_BLKEOL_MODE_LP_0;
 	/* Recovery mode 1 */
 	val |= 1 << DSI_VID_MAIN_CTL_RECOVERY_MODE_SHIFT;
@@ -420,13 +421,13 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
 	writel(val, d->regs + DSI_VID_MAIN_CTL);
 
 	/* Vertical frame parameters are pretty straight-forward */
-	val = mode->vdisplay << DSI_VID_VSIZE_VSA_LENGTH_SHIFT;
+	val = mode->vdisplay << DSI_VID_VSIZE_VACT_LENGTH_SHIFT;
 	/* vertical front porch */
 	val |= (mode->vsync_start - mode->vdisplay)
 		<< DSI_VID_VSIZE_VFP_LENGTH_SHIFT;
 	/* vertical sync active */
 	val |= (mode->vsync_end - mode->vsync_start)
-		<< DSI_VID_VSIZE_VACT_LENGTH_SHIFT;
+		<< DSI_VID_VSIZE_VSA_LENGTH_SHIFT;
 	/* vertical back porch */
 	val |= (mode->vtotal - mode->vsync_end)
 		<< DSI_VID_VSIZE_VBP_LENGTH_SHIFT;
@@ -437,21 +438,25 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
 	 * horizontal resolution is given in pixels and must be re-calculated
 	 * into bytes since this is what the hardware expects.
 	 *
+	 * hfp = horizontal front porch in bytes
+	 * hbp = horizontal back porch in bytes
+	 * hsa = horizontal sync active in bytes
+	 *
 	 * 6 + 2 is HFP header + checksum
 	 */
-	hfp = (mode->hsync_start - mode->hdisplay) * bpp - 6 - 2;
+	hfp = (mode->hsync_start - mode->hdisplay) * cpp - 6 - 2;
 	if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE) {
 		/*
 		 * 6 is HBP header + checksum
 		 * 4 is RGB header + checksum
 		 */
-		hbp = (mode->htotal - mode->hsync_end) * bpp - 4 - 6;
+		hbp = (mode->htotal - mode->hsync_end) * cpp - 4 - 6;
 		/*
 		 * 6 is HBP header + checksum
 		 * 4 is HSW packet bytes
 		 * 4 is RGB header + checksum
 		 */
-		hsa = (mode->hsync_end - mode->hsync_start) * bpp - 4 - 4 - 6;
+		hsa = (mode->hsync_end - mode->hsync_start) * cpp - 4 - 4 - 6;
 	} else {
 		/*
 		 * HBP includes both back porch and sync
@@ -459,11 +464,23 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
 		 * 4 is HSW packet bytes
 		 * 4 is RGB header + checksum
 		 */
-		hbp = (mode->htotal - mode->hsync_start) * bpp - 4 - 4 - 6;
-		/* HSA is not considered in this mode and set to 0 */
+		hbp = (mode->htotal - mode->hsync_start) * cpp - 4 - 4 - 6;
+		/* HSA is not present in this mode and set to 0 */
+		hsa = 0;
+	}
+	if (hfp < 0) {
+		dev_info(d->dev, "hfp negative, set to 0\n");
+		hfp = 0;
+	}
+	if (hbp < 0) {
+		dev_info(d->dev, "hbp negative, set to 0\n");
+		hbp = 0;
+	}
+	if (hsa < 0) {
+		dev_info(d->dev, "hsa negative, set to 0\n");
 		hsa = 0;
 	}
-	dev_dbg(d->dev, "hfp: %u, hbp: %u, hsa: %u\n",
+	dev_dbg(d->dev, "hfp: %u, hbp: %u, hsa: %u bytes\n",
 		hfp, hbp, hsa);
 
 	/* Frame parameters: horizontal sync active */
@@ -474,8 +491,8 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
 	val |= hfp << DSI_VID_HSIZE1_HFP_LENGTH_SHIFT;
 	writel(val, d->regs + DSI_VID_HSIZE1);
 
-	/* RGB data length (bytes on one scanline) */
-	val = mode->hdisplay * (bpp / 8);
+	/* RGB data length (visible bytes on one scanline) */
+	val = mode->hdisplay * cpp;
 	writel(val, d->regs + DSI_VID_HSIZE2);
 
 	/* TODO: further adjustments for TVG mode here */
@@ -507,37 +524,43 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
 	}
 
 	line_duration = (blkline_pck + 6) / d->mdsi->lanes;
-	dev_dbg(d->dev, "line duration %u\n", line_duration);
+	dev_dbg(d->dev, "line duration %u bytes\n", line_duration);
 	val = line_duration << DSI_VID_DPHY_TIME_REG_LINE_DURATION_SHIFT;
 	/*
 	 * This is the time to perform LP->HS on D-PHY
 	 * FIXME: nowhere to get this from: DT property on the DSI?
+	 * values like 48 and 72 seen in the vendor code.
 	 */
-	val |= 0 << DSI_VID_DPHY_TIME_REG_WAKEUP_TIME_SHIFT;
+	val |= 48 << DSI_VID_DPHY_TIME_REG_WAKEUP_TIME_SHIFT;
 	writel(val, d->regs + DSI_VID_DPHY_TIME);
 
 	/* Calculate block end of line */
-	blkeol_pck = bpl - mode->hdisplay * bpp - 6;
+	blkeol_pck = bpl - mode->hdisplay * cpp - 6;
 	blkeol_duration = (blkeol_pck + 6) / d->mdsi->lanes;
-	dev_dbg(d->dev, "blkeol pck: %u, duration: %u\n",
-		 blkeol_pck, blkeol_duration);
+	dev_dbg(d->dev, "blkeol pck: %u bytes, duration: %u bytes\n",
+		blkeol_pck, blkeol_duration);
 
 	if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {
 		/* Set up EOL clock for burst mode */
 		val = readl(d->regs + DSI_VID_BLKSIZE1);
 		val |= blkeol_pck << DSI_VID_BLKSIZE1_BLKEOL_PCK_SHIFT;
 		writel(val, d->regs + DSI_VID_BLKSIZE1);
-		writel(blkeol_pck, d->regs + DSI_VID_VCA_SETTING2);
+		writel((blkeol_pck & DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_MASK)
+		       << DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_SHIFT,
+		       d->regs + DSI_VID_VCA_SETTING2);
 
 		writel(blkeol_duration, d->regs + DSI_VID_PCK_TIME);
+		/* Max burst limit */
 		writel(blkeol_duration - 6, d->regs + DSI_VID_VCA_SETTING1);
 	}
 
 	/* Maximum line limit */
 	val = readl(d->regs + DSI_VID_VCA_SETTING2);
+	val &= ~DSI_VID_VCA_SETTING2_MAX_LINE_LIMIT_MASK;
 	val |= blkline_pck <<
-		DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_SHIFT;
+		DSI_VID_VCA_SETTING2_MAX_LINE_LIMIT_SHIFT;
 	writel(val, d->regs + DSI_VID_VCA_SETTING2);
+	dev_dbg(d->dev, "blkline pck: %u bytes\n", blkline_pck);
 
 	/* Put IF1 into video mode */
 	val = readl(d->regs + DSI_MCTL_MAIN_DATA_CTL);
@@ -699,7 +722,9 @@ static void mcde_dsi_bridge_mode_set(struct drm_bridge *bridge,
 		lp_freq = d->mdsi->lp_rate;
 	else
 		lp_freq = DSI_DEFAULT_LP_FREQ_HZ;
-	if (d->mdsi->hs_rate)
+	if (pixel_clock_hz)
+		hs_freq = pixel_clock_hz;
+	else if (d->mdsi->hs_rate)
 		hs_freq = d->mdsi->hs_rate;
 	else
 		hs_freq = DSI_DEFAULT_HS_FREQ_HZ;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
