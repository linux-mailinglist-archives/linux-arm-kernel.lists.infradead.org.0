Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6643A554C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:43:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qlYDkhlj5l7xrcDB0omD6WRaggR2wRvQtm2doDUlvDQ=; b=Gu3Yby7J+XrAcz
	OtT9EtAJuwkzECdDSXo9BA5cS5K7o5jqer2hMeYV3bZ1qoBfVwTCGWRziESqQBJj7PU9xFmSxBe10
	fXkCYxRsicRD1fQdbrZ6JZITcmNMt7WI7f2NU2dwRVEg5kBdqY5gozqZVN7cAb15+fyAc5pX3gXpU
	cA3jZXzwsa7f4ZQaDNsC9nCYjYY54PWVkNRIv6G71lpfD0kVswdNfiY0P5wl0iW1m6e5m3tudBSor
	GN5enVuiJjLdZoA0MGq9HgRM8z7R3Y+E6fPJJA6kO9lpptPPL/RfZYvGgBcw5HmXQIkU+kTBorEPS
	DJ/pyc6avOzMb1eiob1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoXy-0007oX-B1; Tue, 25 Jun 2019 16:43:54 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoPU-0002OF-8K
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:35:11 +0000
Received: by mail-wr1-x443.google.com with SMTP id x4so18611635wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ga+YwIrD2LqYZ2tJvuqiZTtIXkFbIASL3x6BxdYUV7E=;
 b=AHkej/B1mfm2h6OHO9LRjul+QcnubPRDTF056QLWkadd6YmPrnjIQ0undO3cGCLteJ
 vDiXd6NaEvKkuA/Ov1EU6GibR2fq54JcogmaTLJSE1w8VxFhBCKMQa6nMSc7ama2AQUQ
 MXjYRzIQXao10HPHfkljNhFskfJ1miN0PiAO2WXQdrS+ZTVMirEH1Q6Xpg47b+c9njcv
 +AACxr8d7oedC2TVbLqVhCM7LVV6mcxDlsoJqTfbUea3qLJwtE8gHdguCFLj0gCiAbWC
 v37fEvz+TIlhi8gACKPDc1wJUhIQBhzZpszZhnPvYhMiEv2bxIIzjLBufGN9GEE3sxzT
 cfTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ga+YwIrD2LqYZ2tJvuqiZTtIXkFbIASL3x6BxdYUV7E=;
 b=Vnt0Ld++AZNAP+JcdNf/GhbG2d4/luCGbTM/VeRKqBR8G/tScP7zDf4Rasn9VesuUr
 8pt95rM501mkCshjINkDxKG2iW7IOKxLen1D1hJ8ncn6u8nEav0zicuLg58nEucjzECU
 xbuIp8X1kIzn5iHFp05SiovDDIWxME9RGdpy/TIk3btwjsgyI9LdUme9cdTbteWdnhg+
 ivq6Ky8pjIEJjVA0dfcXkCE0H7kv9tmUjNjMsGJsfMFQ+0159s2ufQ8F27YqHh7rSt00
 83tPWprOqkdIxcNwjk337F2nZ+dZk8PidmUbluRe7Pr6xB8cniN+50NgHbvIy8REQoxw
 Y2pQ==
X-Gm-Message-State: APjAAAVVJ79GTcWsc4gY5pvYE93dF0ewjLm4rEZjAysb7Og2+VMJnk9c
 9ieGO3Cwa+cWPqq2v24otB5Kvg==
X-Google-Smtp-Source: APXvYqyvWx9JbKk03RcDjA3pShyMvYT0hK97AL2s1HrAwQ3kyP6xBm3hM8uqoOdedFI3inNXlGh+zw==
X-Received: by 2002:a5d:528b:: with SMTP id c11mr299403wrv.25.1561480506602;
 Tue, 25 Jun 2019 09:35:06 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id g8sm2683795wme.20.2019.06.25.09.35.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 09:35:06 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 12/12] fbdev: da8xx: use resource management for dma
Date: Tue, 25 Jun 2019 18:34:34 +0200
Message-Id: <20190625163434.13620-13-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625163434.13620-1-brgl@bgdev.pl>
References: <20190625163434.13620-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_093509_196922_82E54B6E 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

Use managed variants of dma alloc functions in the da8xx fbdev driver.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/video/fbdev/da8xx-fb.c | 32 ++++++++++----------------------
 1 file changed, 10 insertions(+), 22 deletions(-)

diff --git a/drivers/video/fbdev/da8xx-fb.c b/drivers/video/fbdev/da8xx-fb.c
index 6b11a8108108..22f79b3c2326 100644
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
@@ -1428,10 +1424,10 @@ static int fb_probe(struct platform_device *device)
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
@@ -1449,20 +1445,20 @@ static int fb_probe(struct platform_device *device)
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
@@ -1480,7 +1476,7 @@ static int fb_probe(struct platform_device *device)
 
 	ret = fb_alloc_cmap(&da8xx_fb_info->cmap, PALETTE_SIZE, 0);
 	if (ret)
-		goto err_release_pl_mem;
+		goto err_release_fb;
 	da8xx_fb_info->cmap.len = par->palette_sz;
 
 	/* initialize var_screeninfo */
@@ -1534,14 +1530,6 @@ static int fb_probe(struct platform_device *device)
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
