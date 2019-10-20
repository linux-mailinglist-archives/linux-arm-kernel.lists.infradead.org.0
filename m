Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD90EDE06E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 22:35:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QoxxYg3TvWY3JZQFgf5z/wFm5gy7p1ypIplPjZGxJQg=; b=UZsvhhKcs6fm1h
	xEkSzaGsIsOKEgV1WdXDmjDtq/HFisYemM67w9lZ4cswi5H5I2zNAq8mXiEEkeLodQAo5DtYuYcup
	qJRNjD9HtmdJW9bRYvyu7+8rDuyq0m+OQ1ZGUX2qYKpRYiUv8SQmb1M+lzbAyXeQEP5eMgTcn+e7H
	yYdwCojUUhOr96P4NCz1o6ppSeDYIhbN+zvAfD2ZBhUDLoUwN0onyqdIDOPugoEWw+3uwp2d1tzmk
	NcKFUshJTMEaq3ARFyD9pV9BrJPIFcNAi0DiQSd9SJ+4Xe0Uopbw8neu+SRjhAqgCZO7CZvOZnTTf
	B2pB3n+lr/Ji1k0AsQEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMHuW-0005qq-Vl; Sun, 20 Oct 2019 20:34:44 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMHuJ-0005HX-EI
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 20:34:33 +0000
Received: by mail-lj1-x241.google.com with SMTP id f5so11103393ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 13:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ye1QdFc2HG6Bs/Phl7WOBKeZvuv3ZW6GRUU9gkkbJF0=;
 b=cBXYtI/62OK7Ws6TxcjxcrmodFX2ghsFMh8zhT4y/fjPQdUfUXR59PHtY6vDdUAgr+
 nsK2rjmXwU3BJQDMxBStoaw63bLpp71zH4K03Tp7sWSJp2eycUKxC46DcjK6+I5TtLK4
 44gj6+zmfE0ILZhWsyuX5oGg3mmWSVPyxqF7LFLPS2K6EVF2plgr+8uVBU82ulF/5HYI
 TzBsnQxjC8grYTCo743ByCl9wRZvWXP/h8/1DxIU42Iq1u8+v1Ol3VzcV11Ru9BBV4G6
 ozCTs5gH8tRgkKU4HXPdQ/VJhozI23OReryocWs33Len/OwF9Gb4t3WERT4BNjlhgVhn
 w8MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ye1QdFc2HG6Bs/Phl7WOBKeZvuv3ZW6GRUU9gkkbJF0=;
 b=INwTgs0oZO3J/X2BdWe/+FSipFwu4RBSechIQ+A+rmWPEBr96e2lmZC+M5k9bAEHfE
 DNyHixgJmPDycFaue9t73WaZ90yEcO/bMT3UPgBacmCschLEw+G0Iz4x/Uk82ITtgiN9
 rgZR00FMfkhvLKiguyczfc9+E67RVNANvYgfE6hxd2sg/CV9Upr8MEQCaZMoNfB4iP/4
 Eia3i3krynyvLVAuPNR80YYSvW5iwTy7qrExSFln/cziIqjV6SPTWox+7UUMToeqBQ+I
 FjeKpx8NOscSZqi1YLjSfr3zqNvf83EbqHwlV+s0ORSyWtnDvLkHd8s10dzRLDicUHCl
 wpxg==
X-Gm-Message-State: APjAAAUXT8n9Xq+lBuofwKBlzOecv3j73G+TiW5jDJa6mQI0+M586Fyo
 /MbQ+kbBumM9MmybYy71tMO0fw==
X-Google-Smtp-Source: APXvYqxDGh9W21UIEW0nIPERdzp7zQY8Ml62fpVUFLqGJ8gIzW2ijBDgLoWBZjEV+AxmDqJExsNMVg==
X-Received: by 2002:a2e:6a04:: with SMTP id f4mr12351538ljc.97.1571603665694; 
 Sun, 20 Oct 2019 13:34:25 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-79c8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.200.121])
 by smtp.gmail.com with ESMTPSA id m17sm15032290lje.0.2019.10.20.13.34.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Oct 2019 13:34:24 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH] drm/mcde: Improve pixel fetcher FIFO depth setting
Date: Sun, 20 Oct 2019 22:34:18 +0200
Message-Id: <20191020203418.23921-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_133431_505775_58E93BF7 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pixel fetcher FIFO depth was just hardcoded to 48
which works fine as long as the framebuffer is 32BPP
and the DSI output is RGB888.

We will need more elaborate handling for some buffer
formats and displays, so start to improve this function
by setting reasonable defaults for 32, 24 and 16 BPP
framebuffers.

Cc: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/mcde/mcde_display.c | 34 +++++++++++++++++++++++++----
 1 file changed, 30 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/mcde/mcde_display.c b/drivers/gpu/drm/mcde/mcde_display.c
index 751454ae3cd1..423bc72a4778 100644
--- a/drivers/gpu/drm/mcde/mcde_display.c
+++ b/drivers/gpu/drm/mcde/mcde_display.c
@@ -333,7 +333,7 @@ static void mcde_configure_overlay(struct mcde *mcde, enum mcde_overlay ovl,
 				   enum mcde_extsrc src,
 				   enum mcde_channel ch,
 				   const struct drm_display_mode *mode,
-				   u32 format)
+				   u32 format, int cpp)
 {
 	u32 val;
 	u32 conf1;
@@ -342,6 +342,7 @@ static void mcde_configure_overlay(struct mcde *mcde, enum mcde_overlay ovl,
 	u32 ljinc;
 	u32 cr;
 	u32 comp;
+	u32 pixel_fetcher_watermark;
 
 	switch (ovl) {
 	case MCDE_OVERLAY_0:
@@ -426,8 +427,33 @@ static void mcde_configure_overlay(struct mcde *mcde, enum mcde_overlay ovl,
 			format);
 		break;
 	}
-	/* The default watermark level for overlay 0 is 48 */
-	val |= 48 << MCDE_OVLXCONF2_PIXELFETCHERWATERMARKLEVEL_SHIFT;
+
+	/*
+	 * Pixel fetch watermark level is max 0x1FFF pixels.
+	 * Two basic rules should be followed:
+	 * 1. The value should be at least 256 bits.
+	 * 2. The sum of all active overlays pixelfetch watermark level
+	 *    multiplied with bits per pixel, should be lower than the
+	 *    size of input_fifo_size in bits.
+	 * 3. The value should be a multiple of a line (256 bits).
+	 */
+	switch (cpp) {
+	case 2:
+		pixel_fetcher_watermark = 128;
+		break;
+	case 3:
+		pixel_fetcher_watermark = 96;
+		break;
+	case 4:
+		pixel_fetcher_watermark = 48;
+		break;
+	default:
+		pixel_fetcher_watermark = 48;
+		break;
+	}
+	dev_dbg(mcde->dev, "pixel fetcher watermark level %d pixels\n",
+		pixel_fetcher_watermark);
+	val |= pixel_fetcher_watermark << MCDE_OVLXCONF2_PIXELFETCHERWATERMARKLEVEL_SHIFT;
 	writel(val, mcde->regs + conf2);
 
 	/* Number of bytes to fetch per line */
@@ -908,7 +934,7 @@ static void mcde_display_enable(struct drm_simple_display_pipe *pipe,
 	 * channel 0
 	 */
 	mcde_configure_overlay(mcde, MCDE_OVERLAY_0, MCDE_EXTSRC_0,
-			       MCDE_CHANNEL_0, mode, format);
+			       MCDE_CHANNEL_0, mode, format, cpp);
 
 	/*
 	 * Configure pixel-per-line and line-per-frame for channel 0 and then
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
