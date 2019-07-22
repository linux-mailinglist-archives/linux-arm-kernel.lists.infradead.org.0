Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A81A9701A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:48:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=inKiQ5UDJLM5a7bvuBFeVtoTlOi8LEextO9vuWDCQys=; b=WixM/Sj6+8NR+0
	K0Vq71HACUj/+6mZYwLfGzqUubR2NUaTfCw79g/py/VVjnlUZMQcvexw0ZLUkp/DBYpHbqeMnpWRc
	xmajU0l5InBr8pSRfDRk0XrpoqkcsJRvafBB81GgMYBR1Z5WpqvfIUWu2vs1WkoNIId9fWeiXl25K
	W1GUUZu7J+9wlpXRbokGdvVYpDJXTTchgEqjxh/x4y4otqre73wDasjr+eM21qkI6s7jol+/sGOTi
	9cJRoLoFwPuQnObm1i0qm71PZI3BxmgOd5tIjz4iV7hhamuyA9BlK49FuDfu6LtGWz5F10Pb53fuE
	Cr8adZ9yQcuZ74waDPdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYgN-0005UO-9m; Mon, 22 Jul 2019 13:48:51 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYcS-0001X5-Uk
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:44:51 +0000
Received: by mail-wr1-x442.google.com with SMTP id x1so24496503wrr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dZNZSpaofSdzivT5ozjQLNdDnvzWvkLxf6Z+OYHBPIw=;
 b=MhJkVrilHvUFduWmegELGsRt7I/OQwOf1FOT3pw5wugJ7nLEtyl76vP+nEwYRmsNOG
 PYvtnBgquBU/LKh20yz0cR9e+iNJJLuPUAIo5lgXVvaKOZvZs7hKYSoEBpbOUlakY9vZ
 sq6xsMEX6FldnBJz1SXE798wmMgJcFhDL7ecdv3j/QqW6MTJyi3wykulnM351jrBSEEd
 NMsIv9ZJB+/KNvxr/Vz1GSJxkSzE1LjU2AkGCCN8cu82Uyle3KRHRQPp91w6PR6i6q99
 bG2BF2RgI00HTBrGMWPe4/ioIrBWaIkJVOgNrpsrQWuLICJMBfwIyLJCPe72El/dS3FR
 O37Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dZNZSpaofSdzivT5ozjQLNdDnvzWvkLxf6Z+OYHBPIw=;
 b=GeySguJC6PK+lgA+u4W4EVz7BsYNnh9xPZG1Zf/6LYrUMSBBWRxV0clBncEZfdvvNd
 H1gg/r3V8s0nUhlVnRYaFhlMRviWjRoEEs6lznGOZyn/nRS2fJdgfuN8+6awrLzaN5ni
 7+UsRLDUOgnFwgu6zFhmwWk7hLKl3K91Q+ygDmc1i/vIfiOtXheyIycYPTX75MUcerk2
 aKYxEThZrRDi1IPMNMiON106XY2diWqvpfjJzOTCz77BAfG7Reaq/MttAPhB62WVCSWB
 Ytk8aMNVPmqRRO2YJjpdIRe8NpqHJqLAkTdWsgQnhDJwjldPxLRi9+XWjqJqZarKl32q
 QW/w==
X-Gm-Message-State: APjAAAWY7Fre6RS5pCAFHFZ3Tb6bWmr6ABRiYjaDTBC0pNCPi2P4L6y5
 wL4mC56B+4YNMSnM/Oqr44w=
X-Google-Smtp-Source: APXvYqx7ZF2KX08BrvxXBHPWpYJULmcDpJjOv+ofaB2WjURPPsnMfzA7/Oi1Okbc2rYIOo4Wwzbb5w==
X-Received: by 2002:a5d:680d:: with SMTP id w13mr76330087wru.141.1563803087790; 
 Mon, 22 Jul 2019 06:44:47 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id p6sm40652484wrq.97.2019.07.22.06.44.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 06:44:47 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 8/9] fbdev: da8xx-fb: drop a redundant if
Date: Mon, 22 Jul 2019 15:44:22 +0200
Message-Id: <20190722134423.26555-9-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722134423.26555-1-brgl@bgdev.pl>
References: <20190722134423.26555-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_064449_144370_716E670A 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
 linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The driver data is always set in probe. The remove() callback won't be
called if probe failed which is the only way for it to be NULL. Remove
the redundant if.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
---
 drivers/video/fbdev/da8xx-fb.c | 43 ++++++++++++++++------------------
 1 file changed, 20 insertions(+), 23 deletions(-)

diff --git a/drivers/video/fbdev/da8xx-fb.c b/drivers/video/fbdev/da8xx-fb.c
index f2f66605e8fb..d14ea6f91371 100644
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
