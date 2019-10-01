Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 210D2C2F16
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YdQq82rtU9cICYr2RMzhMM8XtgiF/zi3vbS1m+dRbB4=; b=u+GNEKc7SW/S+r
	tODmj/8DZHp5A/Yu6KhrlEDzVb2/sJyLL3RMIwX7GmsAJnHGsEwEIW6p1EpT9NTWZLkZPgP24YFcq
	GarOqcYI0Evf34bFjWJRuSMHZ28zWiimtpfhs8+0ZYK4APg8CbqPoiw4zAbl3O9KcAcCvdPF3Mbme
	53mO8hoakPUxV2m1Bd2O0ASPSjbUOwrNH0z5OyAT9hLBGetEo+gXEpw27tOKcCMmn6vIBJoPbB5u+
	qv4grrVIU/eB1Ug7zbSTR3rJtNIXnBcB6gdI+6byTA0mlSMDozNIL+Vp69RSd6RALko1d/E2AAJeD
	r2oSjJwNq/Pj5P6LZkDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFDlS-0004uA-GN; Tue, 01 Oct 2019 08:44:10 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDlJ-0004tC-Vv
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:44:04 +0000
Received: by mail-lj1-x244.google.com with SMTP id b20so12432856ljj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 01:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nmZx+sXxvaFWDY9JqGbwwKWF9KaJsMK4bdeJTuJz5O0=;
 b=nhqPBPEx7a6cPZl7gE39gBxqI9/wzRlSbTij8jd3JvqGMjJdtGQ9QYwg50IU1C4cVQ
 dZ9+6m8/WrjUIyTF0n7UqBoE1GGg0imSitsIlmW7Zv9vjgm8dqxsvBDfOpR2vm99JAOg
 jS7MSiptXEfsaZ7Cs86R2tVY/9Cabcxy/CAaA3qQZON0fbiGRPtQ9JXFNm3Y7xJXKj77
 zeu5PGq2OBx9fqV3JQzs1prMYU/J0OQ2Q6wYCq4/GYOc0w7a6CtsIyl5GTihagCT8OUt
 /KNnScEIAR5JniskuztTO/iStFjar9R0P++o+YlH0dEv14uiONhuOL6/tUHtsyHq/B3S
 /TZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nmZx+sXxvaFWDY9JqGbwwKWF9KaJsMK4bdeJTuJz5O0=;
 b=qTGqzTai8no7EEM0llqXwL5ZO1hFZicfvU9DNaM0znwB81ODbw09SMoMqBav2/GWAb
 E+Jv1rsVXPwTRWeAiFaBcxjKxxZ4gQGQWMzZosz++cgc4TYWbaVUyi4RlXOSOqugbQLg
 jg5RQp57LIPkMb93H/6b5v3I0gjCaAZwFdV+mj43MSl2qyvwf2EunqUOwHNH6lizRC1Z
 Cp3zb7MXSPAW2hCleCUyk3cHpjZjOIDnIjFppoIjKMfo7IoDMWNnqTHeDcH6N37bFxGn
 tuzJRF/XGevqQbn6Vye2RtZX+Uqh5aMsGhW2sWhpriwZisWb+l058Jgqy8Me6EuIJiSB
 cR5Q==
X-Gm-Message-State: APjAAAWJuPjju81PTJsSq5Vty7wZBpD6kXcNZuS7DiY4TlBr9DdVPk6J
 ZG6dYmIgtsZcAXikzK57j76UaA==
X-Google-Smtp-Source: APXvYqyNYKX8uGkMoRPscu3X3Hj2Vdo1IsseU3iZMteHo/ZpnlG7wofQBgUCquDoMTnJzP7vLyiw6Q==
X-Received: by 2002:a2e:9014:: with SMTP id h20mr14887837ljg.154.1569919440023; 
 Tue, 01 Oct 2019 01:44:00 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id d25sm3674013lfj.15.2019.10.01.01.43.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 01:43:58 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH v3] drm/mcde: Some fixes to handling video mode
Date: Tue,  1 Oct 2019 10:43:54 +0200
Message-Id: <20191001084354.20630-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_014402_037354_9D3D4EDC 
X-CRM114-Status: GOOD (  25.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
- Put the active width (x width) in the right bits and the VSA
  (vertical sync active) in the right bits (those were swapped).
- Calculate the packet sizes in bytes as in the vendor driver,
  rather than in bits. Test the calculations agains a
  spreadsheet and confirmed by debug prints to be reasonable.
- Error out if the current mode and refresh frequency doesn't
  work out. (In the future we may simply want to scale down
  the vrefresh.)
- Handle negative result in front/back/sync packages and fall
  back to zero like in the vendor driver.

Cc: Stephan Gerhold <stephan@gerhold.net>
Fixes: 5fc537bfd000 ("drm/mcde: Add new driver for ST-Ericsson MCDE")
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v2->v3:
- Rename the "bpp" variable to "cpp" since it is "chars per pixel"
  this was confusingly named in the vendor driver and it got
  carried over.
- Assign the SETTING2_EXACT_BURST_LIMIT by first shifting
  then masking.
- Also mask with the inverse of DSI_VID_BLKSIZE1_BLKEOL_PCK_MASK
  before writing blkeol into DSI_VID_BLKSIZE1, so we make sure
  to zero these bits first.
- Also mask with DSI_VID_BLKSIZE1_BLKLINE_EVENT_PCK_MASK
  when writing event package length.
- Comb through the code and compare it to vendor code and try
  to get closer to doing what the vendor driver is doing. Compare
  calculated byte packet sizes to the sizes calculated in a
  spreadsheet.
ChangeLog v1->v2:
- Fix some more comments so we understand what is going on.
- Set up the maximum line limit size in the right register
  instead of setting it in the burst size register portion.
- Set some default wakeup time other than zero (still need
  fixing more).
---
 drivers/gpu/drm/mcde/mcde_dsi.c | 178 ++++++++++++++++++++++++--------
 1 file changed, 134 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_dsi.c
index f9c9e32b299c..a31c6ec79016 100644
--- a/drivers/gpu/drm/mcde/mcde_dsi.c
+++ b/drivers/gpu/drm/mcde/mcde_dsi.c
@@ -365,13 +365,15 @@ void mcde_dsi_te_request(struct mipi_dsi_device *mdsi)
 static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
 				      const struct drm_display_mode *mode)
 {
-	u8 bpp = mipi_dsi_pixel_format_to_bpp(d->mdsi->format);
+	/* cpp, characters per pixel, number of bytes per pixel */
+	u8 cpp = mipi_dsi_pixel_format_to_bpp(d->mdsi->format) / 8;
+	u64 pclk;
 	u64 bpl;
-	u32 hfp;
-	u32 hbp;
-	u32 hsa;
+	int hfp;
+	int hbp;
+	int hsa;
 	u32 blkline_pck, line_duration;
-	u32 blkeol_pck, blkeol_duration;
+	int blkeol_pck, blkeol_duration;
 	u32 val;
 
 	val = 0;
@@ -408,11 +410,11 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
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
@@ -420,13 +422,13 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
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
@@ -434,36 +436,54 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
 
 	/*
 	 * Horizontal frame parameters:
-	 * horizontal resolution is given in pixels and must be re-calculated
-	 * into bytes since this is what the hardware expects.
+	 * horizontal resolution is given in pixels but must be re-calculated
+	 * into bytes since this is what the hardware expects, these registers
+	 * define the payload size of the packet.
+	 *
+	 * hfp = horizontal front porch in bytes
+	 * hbp = horizontal back porch in bytes
+	 * hsa = horizontal sync active in bytes
 	 *
 	 * 6 + 2 is HFP header + checksum
 	 */
-	hfp = (mode->hsync_start - mode->hdisplay) * bpp - 6 - 2;
+	hfp = (mode->hsync_start - mode->hdisplay) * cpp - 6 - 2;
 	if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE) {
 		/*
+		 * Use sync pulse for sync: explicit HSA time
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
-		 * HBP includes both back porch and sync
+		 * Use event for sync: HBP includes both back porch and sync
 		 * 6 is HBP header + checksum
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
@@ -474,70 +494,142 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
 	val |= hfp << DSI_VID_HSIZE1_HFP_LENGTH_SHIFT;
 	writel(val, d->regs + DSI_VID_HSIZE1);
 
-	/* RGB data length (bytes on one scanline) */
-	val = mode->hdisplay * (bpp / 8);
+	/* RGB data length (visible bytes on one scanline) */
+	val = mode->hdisplay * cpp;
 	writel(val, d->regs + DSI_VID_HSIZE2);
+	dev_dbg(d->dev, "RGB length, visible area on a line: %u bytes\n", val);
 
-	/* TODO: further adjustments for TVG mode here */
+	/*
+	 * EOL packet length from bits per line calculations.
+	 *
+	 * Calculate the time between two pixels in picoseconds using
+	 * the supplied refresh rate and total resolution including
+	 * porches and sync.
+	 */
+	/* (ps/s) / (pixels/s) = ps/pixels */
+	pclk = DIV_ROUND_UP_ULL(1000000000000,
+				(mode->vrefresh * mode->htotal * mode->vtotal));
+	dev_dbg(d->dev, "picoseconds between two pixels: %llu\n",
+		pclk);
 
 	/*
-	 * EOL packet length from bits per line calculations: pixel clock
-	 * is given in kHz, calculate the time between two pixels in
-	 * picoseconds.
+	 * How many bytes per line will this update frequency yield?
+	 *
+	 * Calculate the number of picoseconds for one scanline (1), then
+	 * divide by 1000000000000 (2) to get in pixels per second we
+	 * want to output.
+	 *
+	 * Multiply with number of bytes per second at this video display
+	 * frequency (3) to get number of bytes transferred during this
+	 * time. Notice that we use the frequency the display wants,
+	 * not what we actually get from the DSI PLL, which is hs_freq.
+	 *
+	 * These arithmetics are done in a different order to avoid
+	 * overflow.
 	 */
-	bpl = mode->clock * mode->htotal;
-	bpl *= (d->hs_freq / 8);
-	do_div(bpl, 1000000); /* microseconds */
-	do_div(bpl, 1000000); /* seconds */
+	bpl = pclk * mode->htotal; /* (1) picoseconds per line */
+	dev_info(d->dev, "picoseconds per line: %llu\n", bpl);
+	/* Multiply with bytes per second (3) */
+	bpl *= ((mode->clock * 1000) / 8);
+	/* Pixels per second (2) */
+	bpl = DIV_ROUND_DOWN_ULL(bpl, 1000000); /* microseconds */
+	bpl = DIV_ROUND_DOWN_ULL(bpl, 1000000); /* seconds */
+	/* parallel transactions in all lanes */
 	bpl *= d->mdsi->lanes;
-	dev_dbg(d->dev, "calculated bytes per line: %llu\n", bpl);
+	dev_dbg(d->dev, "calculated bytes per line: %llu @ %d Hz\n",
+		bpl, mode->vrefresh);
+
 	/*
 	 * 6 is header + checksum, header = 4 bytes, checksum = 2 bytes
 	 * 4 is short packet for vsync/hsync
 	 */
 	if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE) {
-		/* Fixme: isn't the hsync width in pixels? */
+		/* Set the event packet size to 0 (not used) */
+		writel(0, d->regs + DSI_VID_BLKSIZE1);
+		/*
+		 * FIXME: isn't the hsync width in pixels? The porch and
+		 * sync area size is in pixels here, but this -6
+		 * seems to be for bytes. It looks like this in the vendor
+		 * code though. Is it completely untested?
+		 */
 		blkline_pck = bpl - (mode->hsync_end - mode->hsync_start) - 6;
 		val = blkline_pck << DSI_VID_BLKSIZE2_BLKLINE_PULSE_PCK_SHIFT;
 		writel(val, d->regs + DSI_VID_BLKSIZE2);
 	} else {
+		/* Set the sync pulse packet size to 0 (not used) */
+		writel(0, d->regs + DSI_VID_BLKSIZE2);
+		/* Specifying payload size in bytes (-4-6 from manual) */
 		blkline_pck = bpl - 4 - 6;
 		val = blkline_pck << DSI_VID_BLKSIZE1_BLKLINE_EVENT_PCK_SHIFT;
+		val &= DSI_VID_BLKSIZE1_BLKLINE_EVENT_PCK_MASK;
 		writel(val, d->regs + DSI_VID_BLKSIZE1);
 	}
 
-	line_duration = (blkline_pck + 6) / d->mdsi->lanes;
-	dev_dbg(d->dev, "line duration %u\n", line_duration);
+	/*
+	 * The line duration is used to scale back the frequency from
+	 * the max frequency supported by the HS clock to the desired
+	 * update frequency in vrefresh.
+	 */
+	line_duration = blkline_pck + 6;
+	/*
+	 * The datasheet contains this complex condition to decreasing
+	 * the line duration by 1 under very specific circumstances.
+	 * Here we also imply that LP is used during burst EOL.
+	 */
+	if (d->mdsi->lanes == 2 && (hsa & 0x01) && (hfp & 0x01)
+	    && (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST))
+		line_duration--;
+	line_duration = DIV_ROUND_CLOSEST(line_duration, d->mdsi->lanes);
+	dev_dbg(d->dev, "line duration %u bytes per lane\n", line_duration);
 	val = line_duration << DSI_VID_DPHY_TIME_REG_LINE_DURATION_SHIFT;
 	/*
 	 * This is the time to perform LP->HS on D-PHY
 	 * FIXME: nowhere to get this from: DT property on the DSI?
+	 * The manual says this is "system dependent".
+	 * values like 48 and 72 seen in the vendor code.
 	 */
-	val |= 0 << DSI_VID_DPHY_TIME_REG_WAKEUP_TIME_SHIFT;
+	val |= 48 << DSI_VID_DPHY_TIME_REG_WAKEUP_TIME_SHIFT;
 	writel(val, d->regs + DSI_VID_DPHY_TIME);
 
 	/* Calculate block end of line */
-	blkeol_pck = bpl - mode->hdisplay * bpp - 6;
-	blkeol_duration = (blkeol_pck + 6) / d->mdsi->lanes;
-	dev_dbg(d->dev, "blkeol pck: %u, duration: %u\n",
-		 blkeol_pck, blkeol_duration);
+	blkeol_pck = bpl - mode->htotal * cpp - 6;
+	if (blkeol_pck < 0) {
+		dev_err(d->dev, "video block does not fit on line!\n");
+		dev_err(d->dev, "calculated bytes per line: %llu @ %d Hz\n",
+			bpl, mode->vrefresh);
+		dev_err(d->dev, "bytes per line (blkline_pck) %u bytes\n",
+			blkline_pck);
+		dev_err(d->dev, "blkeol_pck becomes %d bytes\n", blkeol_pck);
+		return;
+	}
+	blkeol_duration = DIV_ROUND_UP(blkeol_pck + 6, d->mdsi->lanes);
+	dev_dbg(d->dev, "blkeol pck: %d bytes, duration: %d bytes\n",
+		blkeol_pck, blkeol_duration);
 
 	if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {
 		/* Set up EOL clock for burst mode */
 		val = readl(d->regs + DSI_VID_BLKSIZE1);
+		val &= ~DSI_VID_BLKSIZE1_BLKEOL_PCK_MASK;
 		val |= blkeol_pck << DSI_VID_BLKSIZE1_BLKEOL_PCK_SHIFT;
 		writel(val, d->regs + DSI_VID_BLKSIZE1);
-		writel(blkeol_pck, d->regs + DSI_VID_VCA_SETTING2);
+		/* Use the same value for exact burst limit */
+		val = blkeol_pck <<
+			DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_SHIFT;
+		val &= DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_MASK;
+		writel(val, d->regs + DSI_VID_VCA_SETTING2);
 
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
+	dev_dbg(d->dev, "blkline pck: %d bytes\n", blkline_pck);
 
 	/* Put IF1 into video mode */
 	val = readl(d->regs + DSI_MCTL_MAIN_DATA_CTL);
@@ -679,7 +771,6 @@ static void mcde_dsi_bridge_mode_set(struct drm_bridge *bridge,
 				     const struct drm_display_mode *adj)
 {
 	struct mcde_dsi *d = bridge_to_mcde_dsi(bridge);
-	unsigned long pixel_clock_hz = mode->clock * 1000;
 	unsigned long hs_freq, lp_freq;
 	u32 val;
 	int ret;
@@ -688,9 +779,8 @@ static void mcde_dsi_bridge_mode_set(struct drm_bridge *bridge,
 		dev_err(d->dev, "no DSI device attached to encoder!\n");
 		return;
 	}
-
-	dev_info(d->dev, "set DSI master to %dx%d %lu Hz %s mode\n",
-		 mode->hdisplay, mode->vdisplay, pixel_clock_hz,
+	dev_info(d->dev, "set DSI master to %dx%d %d Hz %s mode\n",
+		 mode->hdisplay, mode->vdisplay, mode->clock * 1000,
 		 (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO) ? "VIDEO" : "CMD"
 		);
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
