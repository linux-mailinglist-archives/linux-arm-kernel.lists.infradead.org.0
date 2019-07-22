Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DC2701A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vAss8xSLY/UR/CaxeCUuTachOwRHA2zF+3mwwjRsQmw=; b=IEgA7hADvFZ1OL
	s08mAPL3ANZlAM5t3LgIVKwZ3q39yLRWEtVMzdwooF9EJbyloz+I+XnpGzx5k1hEumMKDMeiXIabV
	7FjOU275E4a6trGAAI52WXuILlMYT3iwyi4gacmkLLFPixEvMqAcdEwxR9Mq5ytRPioUYNlnNQMpi
	AeKq/Yyz8UifviJ9z9sjHKIjYQB7Lv/fxMpODQkV+cfJWuHIS0BxckjhC7yzd2B3kXIHqIYzia56J
	disbXVZsQrSAKW+zPBnTO798jj34LUnSGbo1H2TyeT97HbmRRebENCeLVL5gC4NbVq/7qFBcgh7Up
	vIhOhMEu50AkoD4Lbknw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYfy-0005Bd-Le; Mon, 22 Jul 2019 13:48:26 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYcR-0001Vn-Ov
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:44:49 +0000
Received: by mail-wm1-x341.google.com with SMTP id h19so28824992wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D4loNub9lZdf1BYbpDmPVljkc5Kvved+HB+y+7xouaI=;
 b=oH8iUy0oCnaW2Mj2oJVlsoemIUP8GHJDmj4c0Hhq1B7mUftxPx8dg/swAXck0y7vVj
 Mho02HKkJP6iU/GOP71E8UtNkq3htYFze5MLOpgnEfIZulqm56DRXeb0yfpW0Ih/mA0y
 mA20gdd2iFt1rhmUHR5ogbyAGbfismVQWV+0YvUHKq1Ph3dvkjlljMELrAqpr0pFQq6y
 /pOvdpePXRbqz5XSN8fVri9t/pbpajVy6F0yvwaEN2IsyLVtRxecIsdnK5vKZHPrLCST
 EkfiZmroKigK9Qqc/f4QQoSkUMi98Z336uS79OAMdWTiaS+50eHOcnu7JmL4MJ8OCYkm
 y6pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D4loNub9lZdf1BYbpDmPVljkc5Kvved+HB+y+7xouaI=;
 b=I57xOOUfKxR2YL/mNv2L4hkVvcTrVTvzxKMToUjNm3opzD4hauh6HVELSXm/i5N5DQ
 DJaBBC2k9EUGGyOHbIXUXmVjqYtEFil4GD4m2Z2FdDK8hwd7CpwDIPofxNjPl/bf/9fe
 Yi19K6gszJ25fghdmR7+Lft9t+6uDTa0gnjj21+LN3WVD0ZwiAxpb4CIrY0PpbHzlaU6
 jXLiA+BQ3W2Tf7npOIwhcFZffJI1xypJbTcRIHHq6OLk7NqQLg+xMAvrf42o1vbQscs7
 hmPwkuA5MRhC0tR1D4Qe3LwQU4QH2urjDdQPSWl++VRtwAVoLkLcaDH+Ld6VTcU9N9ef
 kKwg==
X-Gm-Message-State: APjAAAUvyot/4whITgdiPycpCUsMG1IS3e3IHkz26d6pNK+xHOVqkWvO
 6r4tSVlvDvpOSJSlOkPb10w=
X-Google-Smtp-Source: APXvYqxy+WVOLlDEGPN7MS1uXI0lN7nEos9pc3ewXzM+Z/h/Dxcsr3WmJetxjWHaQPwMOxDUXEh+Pw==
X-Received: by 2002:a1c:f918:: with SMTP id x24mr61496788wmh.132.1563803086629; 
 Mon, 22 Jul 2019 06:44:46 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id p6sm40652484wrq.97.2019.07.22.06.44.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 06:44:46 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 7/9] fbdev: da8xx-fb: use devm_platform_ioremap_resource()
Date: Mon, 22 Jul 2019 15:44:21 +0200
Message-Id: <20190722134423.26555-8-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722134423.26555-1-brgl@bgdev.pl>
References: <20190722134423.26555-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_064448_092993_4F384469 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

Shrink the code a bit by using the new helper wrapping the calls to
platform_get_resource() and devm_ioremap_resource() together.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
---
 drivers/video/fbdev/da8xx-fb.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/video/fbdev/da8xx-fb.c b/drivers/video/fbdev/da8xx-fb.c
index 19ed9889c8f8..f2f66605e8fb 100644
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
