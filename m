Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B62C3554C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SXvj6aoIpRZJJ1LsiaypUOJKQfec98gNUVGI0DuDNfU=; b=czKkr2UaVMmfcW
	9VXHQS6lMms47c9EV8mg1rxE+7wSOBPFZx6NrYfvoaKcDvWtp2nmpLL+DUhUfSPtZnlhypYWlK1p5
	s7Km3opCBvwBgIacC8DtdTIHAOZWcPIQMmSbp8K/E6h3UKOhhzw6+AD+GHrc/Lvlvb4wGl3bBGVdW
	VPqltMuSX0yIsdaR5R8GBbsnPey6zUNIdvXvfVzzIQqwHCoVyIj3e1pXBkEjcKqRrMtJ2dtqMnfPG
	mbN4AOxm25uWDPor0KWj24my3uMW0Vk0JL0WjpsVLww0ZjcOHTIilR5LmrPYAhHL0xG2z3O2IC86M
	CzMIMy+lC9TuG5xUA6TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoX7-0007JI-9C; Tue, 25 Jun 2019 16:43:01 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoPR-00027A-KZ
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:35:08 +0000
Received: by mail-wm1-x341.google.com with SMTP id v19so3618449wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xjvgqiqZzglCEryM8XBbJiMmioEThPc/Ew98mkOW+30=;
 b=dsz03gRN+B8sj18/khuc/IOGJ4ZAac3MpDKb3Zv/Bc9PoYBZsScWcIBR66+WT13q4A
 tN8EW3Vfjzl0srOYa1HtJEj4YWDxKeLJeFxcOpAU1yqzULbgKdw7lI1k9uJYS2TLwLfq
 nJu10QxZk+xzeoc8TdS7m0YAZ+oQffTcRYbFO9YXz55433gHQs5zlWTN1V3cyKJa1Q2A
 iPJuT54NssEe53FbS36r8nVdcdRnBqTyep+QMieQHsg6JfL23Iqv4l0ggpRn13oHMR0p
 AZG9QARW/pNBZ52Cg4cBykzft5A+BRios2hbeleUvawVzlsiZYnAcBm99WZBoCSgvzcU
 PqsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xjvgqiqZzglCEryM8XBbJiMmioEThPc/Ew98mkOW+30=;
 b=fPK+7igcZ1GZ8kcJVHAOEVvxIQ259mrLFMJWKfxzUS9tm5SD0H+Qj21Fsqyei/kt1M
 M6VXW/PMkdDQgo26ip72w9xj2J+kw8QKKOjGRS3EYFvfPbFH7ju32pHurXm9ZBtcpvAr
 YinimzIJ+C759ljETxkCtjfIgrVb7Mer/RsOZifgP/C+QrWu5wtKp9Nsh79epH/q1AGU
 3I2T3sysaCHwDayuOIAVnMKi0eqGGGgNi2PbO0WXl4+RdhzPppP6ron6xw1AOXBvfzlg
 ztOLgkziJitwtTmPXDaZiZcA2drhW8dm4GSJAImAidwtHryJpGLiQUzqji+9euVKbKCg
 J91Q==
X-Gm-Message-State: APjAAAU+le8G7zUQ2Jv5L9n1iv8hAa76zoL7PxWZdYey/M31XUtSWd1s
 g209j8Le1fmbAJlbhaPkUbNGLg==
X-Google-Smtp-Source: APXvYqz13wXYAnILJ9E9trPlEzD6Yeo7CCy/mNFNreUVqazy0miJn87+1vh+k2XQcsjx0bfSNxAnqA==
X-Received: by 2002:a1c:c74a:: with SMTP id x71mr20501151wmf.121.1561480504153; 
 Tue, 25 Jun 2019 09:35:04 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id g8sm2683795wme.20.2019.06.25.09.35.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 09:35:03 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 10/12] fbdev: da8xx-fb: use devm_platform_ioremap_resource()
Date: Tue, 25 Jun 2019 18:34:32 +0200
Message-Id: <20190625163434.13620-11-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625163434.13620-1-brgl@bgdev.pl>
References: <20190625163434.13620-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_093506_959491_144DD92D 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

Shrink the code a bit by using the new helper wrapping the calls to
platform_get_resource() and devm_ioremap_resource() together.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/video/fbdev/da8xx-fb.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/video/fbdev/da8xx-fb.c b/drivers/video/fbdev/da8xx-fb.c
index 328de29c4933..4dda194d6b8f 100644
--- a/drivers/video/fbdev/da8xx-fb.c
+++ b/drivers/video/fbdev/da8xx-fb.c
@@ -1339,7 +1339,6 @@ static int fb_probe(struct platform_device *device)
 {
 	struct da8xx_lcdc_platform_data *fb_pdata =
 						dev_get_platdata(&device->dev);
-	struct resource *lcdc_regs;
 	struct lcd_ctrl_config *lcd_cfg;
 	struct fb_videomode *lcdc_info;
 	struct fb_info *da8xx_fb_info;
@@ -1357,8 +1356,7 @@ static int fb_probe(struct platform_device *device)
 	if (lcdc_info == NULL)
 		return -ENODEV;
 
-	lcdc_regs = platform_get_resource(device, IORESOURCE_MEM, 0);
-	da8xx_fb_reg_base = devm_ioremap_resource(&device->dev, lcdc_regs);
+	da8xx_fb_reg_base = devm_platform_ioremap_resource(device, 0);
 	if (IS_ERR(da8xx_fb_reg_base))
 		return PTR_ERR(da8xx_fb_reg_base);
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
