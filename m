Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2990B701AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5sfKG2uLKZ9Yb2rpw2vttCzT1Nu8Gc7jmIoz7TDP2HE=; b=XxO6WxDmP9i+S3
	o1pGPvgPV/aH6K6eJEtRA7b9BTaxd63XTtpwlvJHjv8td3jHkmKKs4xx5iCk+P2BmmChDBdEUaRYC
	Liz40I+ehN7/Xe5HVVmW/x77B6o2p74faJjCqHiYy0yW9W5LH8tOocok9UtoB+fU02+WZG+tNNs4X
	DZ0zxQOAtIbBhdzOO/d4eWm3ObjbVGsOm9/AMx3hoWvQY9TV5pmB0eONnBB12FvIfvcaAPdrb1U3/
	7V07d4YzNKZuufUTkyNPLYsl+OsiWH6DKjSVOz1SS5JzU9UQW2914c1iyNY3VVsk/O10d23jBDqlX
	I0UIaFmH5ZfhJLhACz1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYgf-0005i3-SS; Mon, 22 Jul 2019 13:49:09 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYcU-0001YG-6a
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:44:53 +0000
Received: by mail-wm1-x344.google.com with SMTP id 207so35256026wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jWheGXALa3QU6XJ4okjj1TMSdfEv0wcU+XMDpAi/P/4=;
 b=rVd3UGYLpnpiE7d7YNlI3ET5cbhQAhoqJOLIqM567rXb8R0JuSNY+GZ12K9dSNKFZ4
 dl5s5Jx5CpB5SVRzWyOMoTxhRuQ486dDy+IOe5n7GRP60Z/QxdFNnFTZq+X2qWesd+tQ
 68xC09YKoAIjDOa30G0pN5Wdl1aYP05UC/xJr1YOuir73Ug3MH+21e4Wuc8zXvn+LPoN
 MPGKQJSOoUPFhnonqd1vSWZtmNxpr0QdnqfZT/PRoV9YpazFmIObAyyTcj1GgdAHJdQM
 gmp068N6OqASdUbiM9rb03eyh0yElND1TFAVSEnQXvniCrOLzl+Y0bTbvr7Jjx6wbIoz
 HI6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jWheGXALa3QU6XJ4okjj1TMSdfEv0wcU+XMDpAi/P/4=;
 b=PT5W+nh6OqKZsNwZw7GVzVm66dZ74yLBxuxXf6LB4vsqXRSS4t63i5R93we+qIsVC6
 AahaIkH6jM8U293C/ijhEgfuc3QpeVzmFAOLT1fFXjUXz0MJxE0m3+Vb/fNdTfDB0YmD
 NEBru3UQjG0csyBcjbuSfAbpt9qDRH5VT1mlrVW+XaEUscSUB/8rKwJTAkMhnPJdgX8p
 EweDHn/TV21JhZn/nPTUZR3W9DyAOVQ8RILmXEZKjrmC4aqk8PXALdoKM2ltPXqjxJ+A
 V7rfMO2+n0hG6FGPUwl7xPPXw4hUdv6KCRsPmLfBnXMwKuXqX09g/cQ0R39u6jSCgyU+
 BRKQ==
X-Gm-Message-State: APjAAAVheM7f9YSMc2tN2Y0XxFqJFfFQaTrRHhSxGDVaLj9eSbPRjQ5R
 WUJA//kj7/k3G+qYSfvD+iM=
X-Google-Smtp-Source: APXvYqxCpsWqQ4zm4VmmUJy0WYCbbplgVH9qEJJDDHs04LIzglwRSQkeaNmUKXyrghagMF9BDt0qtA==
X-Received: by 2002:a1c:b604:: with SMTP id g4mr65271331wmf.111.1563803088790; 
 Mon, 22 Jul 2019 06:44:48 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id p6sm40652484wrq.97.2019.07.22.06.44.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 06:44:48 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 9/9] fbdev: da8xx: use resource management for dma
Date: Mon, 22 Jul 2019 15:44:23 +0200
Message-Id: <20190722134423.26555-10-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722134423.26555-1-brgl@bgdev.pl>
References: <20190722134423.26555-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_064450_486860_43BA7685 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

Use managed variants of dma alloc functions in the da8xx fbdev driver.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
---
 drivers/video/fbdev/da8xx-fb.c | 32 ++++++++++----------------------
 1 file changed, 10 insertions(+), 22 deletions(-)

diff --git a/drivers/video/fbdev/da8xx-fb.c b/drivers/video/fbdev/da8xx-fb.c
index d14ea6f91371..2d3dcc52fcf3 100644
--- a/drivers/video/fbdev/da8xx-fb.c
+++ b/drivers/video/fbdev/da8xx-fb.c
@@ -1087,10 +1087,6 @@ static int fb_remove(struct platform_device *dev)
 
 	unregister_framebuffer(info);
 	fb_dealloc_cmap(&info->cmap);
-	dma_free_coherent(par->dev, PALETTE_SIZE, par->v_palette_base,
-			  par->p_palette_base);
-	dma_free_coherent(par->dev, par->vram_size, par->vram_virt,
-			  par->vram_phys);
 	pm_runtime_put_sync(&dev->dev);
 	pm_runtime_disable(&dev->dev);
 	framebuffer_release(info);
@@ -1427,10 +1423,10 @@ static int fb_probe(struct platform_device *device)
 	par->vram_size = roundup(par->vram_size/8, ulcm);
 	par->vram_size = par->vram_size * LCD_NUM_BUFFERS;
 
-	par->vram_virt = dma_alloc_coherent(par->dev,
-					    par->vram_size,
-					    &par->vram_phys,
-					    GFP_KERNEL | GFP_DMA);
+	par->vram_virt = dmam_alloc_coherent(par->dev,
+					     par->vram_size,
+					     &par->vram_phys,
+					     GFP_KERNEL | GFP_DMA);
 	if (!par->vram_virt) {
 		dev_err(&device->dev,
 			"GLCD: kmalloc for frame buffer failed\n");
@@ -1448,20 +1444,20 @@ static int fb_probe(struct platform_device *device)
 		da8xx_fb_fix.line_length - 1;
 
 	/* allocate palette buffer */
-	par->v_palette_base = dma_alloc_coherent(par->dev, PALETTE_SIZE,
-						 &par->p_palette_base,
-						 GFP_KERNEL | GFP_DMA);
+	par->v_palette_base = dmam_alloc_coherent(par->dev, PALETTE_SIZE,
+						  &par->p_palette_base,
+						  GFP_KERNEL | GFP_DMA);
 	if (!par->v_palette_base) {
 		dev_err(&device->dev,
 			"GLCD: kmalloc for palette buffer failed\n");
 		ret = -EINVAL;
-		goto err_release_fb_mem;
+		goto err_release_fb;
 	}
 
 	par->irq = platform_get_irq(device, 0);
 	if (par->irq < 0) {
 		ret = -ENOENT;
-		goto err_release_pl_mem;
+		goto err_release_fb;
 	}
 
 	da8xx_fb_var.grayscale =
@@ -1479,7 +1475,7 @@ static int fb_probe(struct platform_device *device)
 
 	ret = fb_alloc_cmap(&da8xx_fb_info->cmap, PALETTE_SIZE, 0);
 	if (ret)
-		goto err_release_pl_mem;
+		goto err_release_fb;
 	da8xx_fb_info->cmap.len = par->palette_sz;
 
 	/* initialize var_screeninfo */
@@ -1533,14 +1529,6 @@ static int fb_probe(struct platform_device *device)
 err_dealloc_cmap:
 	fb_dealloc_cmap(&da8xx_fb_info->cmap);
 
-err_release_pl_mem:
-	dma_free_coherent(par->dev, PALETTE_SIZE, par->v_palette_base,
-			  par->p_palette_base);
-
-err_release_fb_mem:
-	dma_free_coherent(par->dev, par->vram_size, par->vram_virt,
-		          par->vram_phys);
-
 err_release_fb:
 	framebuffer_release(da8xx_fb_info);
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
