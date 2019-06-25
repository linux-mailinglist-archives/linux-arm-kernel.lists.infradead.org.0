Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51701554C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2gWho1iQcNhOATeTqjXRrZ3CUhvjKHCZA0t9LKm1HxY=; b=S/6fEmEkr7T7cH
	Me7Zf0/LYH7TrBW28107rWOqK8ZRjFUBR0Y2w/eulH5He7Y6pi94qQHnONjD7ZwPAudbCAKcK4hK0
	erLSQn/l2aGCLG6cBw+MqSaPYE2Q2wN6c1QNLdpQaTrOTDaw7gP4arvKdZHew3jSDqmwxOHzEbj5/
	S3XR9uKcIeqEf60xRGUaytCmiPNj5wRRRdnvxZjlEQkD6YDR9iIFSRVcmHJshjcY2+p/f1DoYuUcC
	ogl26lQ3VY86yPL6YsLj1OKA2y2qJcPJpPB0/l4fLiOZwTwGNhBBSA3PlMWsXWtFbrRQv7h0lx37Q
	LpQ7Yp6k6ZzHXnmmAzlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoXb-0007b2-FQ; Tue, 25 Jun 2019 16:43:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoPT-0002Fx-Mf
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:35:11 +0000
Received: by mail-wr1-x441.google.com with SMTP id k11so18663433wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bAOkVHO1BfkTnSJLTBWlqsTsKKDk8gdZ6nODPU4c1tE=;
 b=i50TzhxoE0EVWRZb7FuSgJwILA4rx2iPG77Mv3xcrrEJhVN4B/h7MPBBWVugqYxWp2
 z/toOghI0xFLzo4j20BFkcTCK+t9oS1ur5Zxjuv68/EUxdI7HLW8oC2Nj9IGNwbxlkcf
 ppV6VXclq/A8Z0b+pcsB0R3xp2T8dBZGYEgPFrzfJRHQCawfFi+1EpUaRPuEwp5oe/TE
 cjUFukQoM00ogBXYvTqt763tfq4G+xwbOAaEuus8bhR4jpNdbtNk1PP3kxzDeiAC6IY4
 zhd+wjbHvP1qPE3kwpdpje4Jp/GVei4mLQW7Kg6+P3xNN65ClIzjaWSbuQstQ63Hv5H+
 570A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bAOkVHO1BfkTnSJLTBWlqsTsKKDk8gdZ6nODPU4c1tE=;
 b=C8MW+X4wd6t438RHFJGVbLL8YYbSMRia8dmkr9lTRmRkipO6OaVhetW02rCnksi3gb
 jH6iKw5dCsRLJu1fd7GtnTUjB1dXtI8j9QR4EboSSCbqasbvFRj24BtxnohDDsxd+4Sj
 XHoIA2we4R6s/1ODjRI32oc6ZzeiTQ3TfgeOQ5D3wprMqb2PkrqBKKYutPEEMwzY4pGT
 fqH5nqkcUoXF6BkTZn+q0Zmnot2EVJajAesdaZWwderBdOAdDmQUQUhduzWRDC0SioiM
 L2fT/HrwKF5dvvhu7JyjVk3I0LZfs1crAzar6MgBidSqcGw7tVBkW1EL1tAoReYax25i
 OytA==
X-Gm-Message-State: APjAAAWwb/3G31IoJu6mZZs3D9BXseJmtqtbPcSVbdWHuHwJpz9MmQ/6
 kqZ8QZfav6FTEfR5W2vMdmAxVA==
X-Google-Smtp-Source: APXvYqytytlRfo6YGBjwFJZaCuSVzWH7Bv4+NP+iZBeBXrfYOEHyoR/Ueaj3FUGfeHDYPIHfHNmD2A==
X-Received: by 2002:adf:e691:: with SMTP id r17mr62365819wrm.67.1561480505225; 
 Tue, 25 Jun 2019 09:35:05 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id g8sm2683795wme.20.2019.06.25.09.35.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 09:35:04 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 11/12] fbdev: da8xx-fb: drop a redundant if
Date: Tue, 25 Jun 2019 18:34:33 +0200
Message-Id: <20190625163434.13620-12-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625163434.13620-1-brgl@bgdev.pl>
References: <20190625163434.13620-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_093509_196922_EA1C6176 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The driver data is always set in probe. The remove() callback won't be
called if probe failed which is the only way for it to be NULL. Remove
the redundant if.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/video/fbdev/da8xx-fb.c | 43 ++++++++++++++++------------------
 1 file changed, 20 insertions(+), 23 deletions(-)

diff --git a/drivers/video/fbdev/da8xx-fb.c b/drivers/video/fbdev/da8xx-fb.c
index 4dda194d6b8f..6b11a8108108 100644
--- a/drivers/video/fbdev/da8xx-fb.c
+++ b/drivers/video/fbdev/da8xx-fb.c
@@ -1067,37 +1067,34 @@ static void lcd_da8xx_cpufreq_deregister(struct da8xx_fb_par *par)
 static int fb_remove(struct platform_device *dev)
 {
 	struct fb_info *info = dev_get_drvdata(&dev->dev);
+	struct da8xx_fb_par *par = info->par;
 	int ret;
 
-	if (info) {
-		struct da8xx_fb_par *par = info->par;
-
 #ifdef CONFIG_CPU_FREQ
-		lcd_da8xx_cpufreq_deregister(par);
+	lcd_da8xx_cpufreq_deregister(par);
 #endif
-		if (par->lcd_supply) {
-			ret = regulator_disable(par->lcd_supply);
-			if (ret)
-				return ret;
-		}
+	if (par->lcd_supply) {
+		ret = regulator_disable(par->lcd_supply);
+		if (ret)
+			return ret;
+	}
 
-		lcd_disable_raster(DA8XX_FRAME_WAIT);
-		lcdc_write(0, LCD_RASTER_CTRL_REG);
+	lcd_disable_raster(DA8XX_FRAME_WAIT);
+	lcdc_write(0, LCD_RASTER_CTRL_REG);
 
-		/* disable DMA  */
-		lcdc_write(0, LCD_DMA_CTRL_REG);
+	/* disable DMA  */
+	lcdc_write(0, LCD_DMA_CTRL_REG);
 
-		unregister_framebuffer(info);
-		fb_dealloc_cmap(&info->cmap);
-		dma_free_coherent(par->dev, PALETTE_SIZE, par->v_palette_base,
-				  par->p_palette_base);
-		dma_free_coherent(par->dev, par->vram_size, par->vram_virt,
-				  par->vram_phys);
-		pm_runtime_put_sync(&dev->dev);
-		pm_runtime_disable(&dev->dev);
-		framebuffer_release(info);
+	unregister_framebuffer(info);
+	fb_dealloc_cmap(&info->cmap);
+	dma_free_coherent(par->dev, PALETTE_SIZE, par->v_palette_base,
+			  par->p_palette_base);
+	dma_free_coherent(par->dev, par->vram_size, par->vram_virt,
+			  par->vram_phys);
+	pm_runtime_put_sync(&dev->dev);
+	pm_runtime_disable(&dev->dev);
+	framebuffer_release(info);
 
-	}
 	return 0;
 }
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
