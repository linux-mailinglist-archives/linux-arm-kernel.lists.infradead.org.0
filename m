Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F7538D0F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=59zfmQMZ2o+I15CJSaBjryut0WJ9jK+ilhpvKDdt/Aw=; b=ME3gTAtKLMvglY
	1HqVyRnQtx/lEby1xaGPKs1vTyMmjDVdUK6kOwlxUD3XFkC8477AvFja0QUbHBKW/ZnZNC0gH7BNE
	weJI9/b7XkR4RINNTDqr89+1/5ry3ukc8aIovbvrY8EQxeH7rZZAJqCgN6SX32McWlti1gDZSiL+U
	0ZbDV1gdLvKnRwGWFoPgtpkWJzDTmtAQbo1XJcxliaspnTyzIUW4sfxN0JSMkfsPgha30Gp4VT8kN
	VaqNrvEt27zR+qc6WQhpISk+ICtIlBQRKNPDvsUOPGjykjPDMVPa1YJtWuQmVcbyo1ST+zkYK1qgS
	59CEn1omCo0WTNhn3crA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZFwg-0001Yx-3f; Fri, 07 Jun 2019 14:34:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZFwX-0001Y4-DB
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:34:12 +0000
Received: by mail-wr1-x444.google.com with SMTP id m3so2427674wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 07:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nRZZPd4CuOKccCO9n20pj6NCx0PtOoXNGKdvtL/yQh8=;
 b=ATAqjNbD3zSQ0mn1U+NeswlrlhdcptQ0U1v6/qsZKIIS8bxBmp4qpT9bwU3cwpsbc7
 lFKJwrsnKY+MMG02u/ivCJHvzk+Q8vbC0gkep7WB5VhjPoAsOQv2bjDPPpOCnL94XJ9x
 rN4wfb+Of4sR6npFW4RO65+j0dfHovQyaQ66c0bau89xx1jrwvRJfmNeMxeD0cWIQR3n
 y9Kb/F+6uPHzfDTVBJ9uV0Qeu79vaJvVdA2UHBHTFzN3FVRgDdAThjGsWW2S5PAlLglX
 0NaaTDbgXYpa+El8EXdEZApR8VnI3twXzIJd+fgS/+iDzgA4R1EWAZ8GAvtx5D0AjdtU
 vv9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nRZZPd4CuOKccCO9n20pj6NCx0PtOoXNGKdvtL/yQh8=;
 b=swSmvQJT4XPOubHcAj4L75jji7He+2WQUhcsZodTilShl9ycKIu1nqGmaeeef/WPgu
 1JRwG5T4HsjFUMxPQ4GJ/5O7rkZixYgMzdx0BvrsYZDnGBOyVh9NLsZu6Kn0rFfw4SmQ
 pKnysMpVDE86+ca9PlG1o9bj2oDbpa/IyesX1NTPY658HRCDCM3ML2QJ4kv7wECB8s56
 IWxxLBxBg/fZtbUvpihaWynzlqWyrCxEe4SBt6vqOIggwd7RUoEaim/7F0LwyhJ2zB4E
 ij/CQlEOO+ahZQVBfZQKhfB2YffPNRDF3efk45ltXXGphgN1bjGcMF1YTWhvseE0hseA
 shSg==
X-Gm-Message-State: APjAAAVhA8tGVM+irjHg2DdWgok7c/+oqO5a/pknfnvUYVTfnvhRY3qu
 WDROu/3+u80arxD8IyKOsllh3w==
X-Google-Smtp-Source: APXvYqzjPX0uTbJ4XdCTSAmUg9f2YMBqtaes35JdoKkeprFZ5Dvejyh+ekMdSkshyFKJ1LzaXyHy+g==
X-Received: by 2002:adf:e34e:: with SMTP id n14mr14515474wrj.169.1559918046002; 
 Fri, 07 Jun 2019 07:34:06 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id h90sm4348456wrh.15.2019.06.07.07.34.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 07:34:05 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>,
	Kevin Hilman <khilman@kernel.org>
Subject: [PATCH] ARM: davinci: da8xx: specify dma_coherent_mask for lcdc
Date: Fri,  7 Jun 2019 16:33:50 +0200
Message-Id: <20190607143350.11214-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_073409_508793_375FE4D4 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The lcdc device is missing the dma_coherent_mask definition causing the
following warning on da850-evm:

da8xx_lcdc da8xx_lcdc.0: found Sharp_LK043T1DG01 panel
------------[ cut here ]------------
WARNING: CPU: 0 PID: 1 at kernel/dma/mapping.c:247 dma_alloc_attrs+0xc8/0x110
Modules linked in:
CPU: 0 PID: 1 Comm: swapper Not tainted 5.2.0-rc3-00077-g16d72dd4891f #18
Hardware name: DaVinci DA850/OMAP-L138/AM18x EVM
[<c000fce8>] (unwind_backtrace) from [<c000d900>] (show_stack+0x10/0x14)
[<c000d900>] (show_stack) from [<c001a4f8>] (__warn+0xec/0x114)
[<c001a4f8>] (__warn) from [<c001a634>] (warn_slowpath_null+0x3c/0x48)
[<c001a634>] (warn_slowpath_null) from [<c0065860>] (dma_alloc_attrs+0xc8/0x110)
[<c0065860>] (dma_alloc_attrs) from [<c02820f8>] (fb_probe+0x228/0x5a8)
[<c02820f8>] (fb_probe) from [<c02d3e9c>] (platform_drv_probe+0x48/0x9c)
[<c02d3e9c>] (platform_drv_probe) from [<c02d221c>] (really_probe+0x1d8/0x2d4)
[<c02d221c>] (really_probe) from [<c02d2474>] (driver_probe_device+0x5c/0x168)
[<c02d2474>] (driver_probe_device) from [<c02d2728>] (device_driver_attach+0x58/0x60)
[<c02d2728>] (device_driver_attach) from [<c02d27b0>] (__driver_attach+0x80/0xbc)
[<c02d27b0>] (__driver_attach) from [<c02d047c>] (bus_for_each_dev+0x64/0xb4)
[<c02d047c>] (bus_for_each_dev) from [<c02d1590>] (bus_add_driver+0xe4/0x1d8)
[<c02d1590>] (bus_add_driver) from [<c02d301c>] (driver_register+0x78/0x10c)
[<c02d301c>] (driver_register) from [<c000a5c0>] (do_one_initcall+0x48/0x1bc)
[<c000a5c0>] (do_one_initcall) from [<c05cae6c>] (kernel_init_freeable+0x10c/0x1d8)
[<c05cae6c>] (kernel_init_freeable) from [<c048a000>] (kernel_init+0x8/0xf4)
[<c048a000>] (kernel_init) from [<c00090e0>] (ret_from_fork+0x14/0x34)
Exception stack(0xc6837fb0 to 0xc6837ff8)
7fa0:                                     00000000 00000000 00000000 00000000
7fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
7fe0: 00000000 00000000 00000000 00000000 00000013 00000000
---[ end trace 8a8073511be81dd2 ]---

Add a 32-bit mask to the platform device's definition.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/mach-davinci/devices-da8xx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-davinci/devices-da8xx.c b/arch/arm/mach-davinci/devices-da8xx.c
index 9ff02de448c6..767cc6f7834c 100644
--- a/arch/arm/mach-davinci/devices-da8xx.c
+++ b/arch/arm/mach-davinci/devices-da8xx.c
@@ -683,6 +683,9 @@ static struct platform_device da8xx_lcdc_device = {
 	.id		= 0,
 	.num_resources	= ARRAY_SIZE(da8xx_lcdc_resources),
 	.resource	= da8xx_lcdc_resources,
+	.dev		= {
+		.coherent_dma_mask	= DMA_BIT_MASK(32)
+	}
 };
 
 int __init da8xx_register_lcdc(struct da8xx_lcdc_platform_data *pdata)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
