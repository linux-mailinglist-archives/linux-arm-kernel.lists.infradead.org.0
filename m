Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7166E464
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 12:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RLZFjPTs7lrZedW8tYUwE6r+FayAcW453L+IJKEV6Sk=; b=kuXEZLfBmgk2o4
	RqYPJfb8Vtatcv2dHf5E3cvACIQIbq+0UNJpAflw3RUvx62Zi+C8vVHVrTtF+/03aFCcEhaYBL66R
	4pIcykMHj++8WvwmxiJXRdcALIeWM/tePd8zu6Rk4rbLH+U7ntqXUXUN4vrXMbxkVq17TKsfLL5uv
	AD6mmM1Nwo1UTuJgS/HvFAJpUy5RARrVZ8Yo0d38iMBeMzqKphVPk55ujeCx4fJWv03GKj01+BsB7
	cp2jYVHSti4iD5gSAQGq9l4LJMeJoOAtO15BMCYiwUAYGpI69kiFGiNCJwmypCQuxjzq3FQbYptG4
	zPZ0tU2SWSoYHUVn+J3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoQCB-0005o2-DJ; Fri, 19 Jul 2019 10:32:59 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoQBw-0005nW-Kd
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 10:32:45 +0000
Received: by mail-pl1-x641.google.com with SMTP id t14so15395260plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 03:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h8qhnRgEZihilSgw7kKeGvUMgkb5ifMf+Eyiz0heXJs=;
 b=EsYFYhi5YLM2CYVaQbmamBSUnTVMml8zoraowbCu2noJpLEblOs1149Bnhj/0mSj8y
 w09uJ6DNfzL0wFZSLSVFs0iSvBiWKDNu2eEXXkduSOl06NoD/3q1AdVYp4BkidNYjLq+
 wlD7597+u9ukQKpU5FNxD2x5ZjMjABkfcvza2gDWFf7k7jfvjfg0AZerDQttBrGw7oZp
 o9clkP9OtbBSx6igyic2vp3vDwqcF9uipciVX+pe6ORBE61JAgU4KuPkeLOVhsivLCsn
 l4HaF+Us1nVeL2l2kMMkox7OE965ZfqEpk2sSaSLH4iWMzFwKPRe11oU9eR+zrLywQLa
 OFzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h8qhnRgEZihilSgw7kKeGvUMgkb5ifMf+Eyiz0heXJs=;
 b=Uym0g+4QrTbyBwFUAu5vg/aw7vAYUxWX8aQ2LgO4J/QlOZre9YaOkC2gyw5FqTu3PB
 6OF3FlOm9c9IzwmmIFnpznMrakSuo0PnwhcuZ4Z97qE39eJ5KmtGJ0s0YOsDi+HzTlA8
 8373OrqbuEYPL9IG+67aAxBOYU/0KMGXOGyPbnt3pKhKeQrSWd3eTAYh5nPbvjNT3W9h
 Z6ZB5ZjHpzvNmkesjWT3Zd+U/gSOXceKQ11U9AMz+xjLsvuFRNybfxp3pXZQHrGVWMkq
 NSsJ21u5WfLsZXI3GFkUomzZUSEgi41CsVUKM4M2+PdvwgjUC7Ni7waFscSLUHIrJ2X/
 Ie8w==
X-Gm-Message-State: APjAAAXYUAIfjObQk+L8D6VQxLTEbkv/Llg9pAzh3gd5HMMBpgwIaw5u
 10RgSvjlPqI7V3qpgaPES10=
X-Google-Smtp-Source: APXvYqwM5uX2Z3lxpUb1PgpPaYg4UrhdWy602Z/sInoOWoP2qM3MQBWuz62fdEs69wpXsM/tmvWoqQ==
X-Received: by 2002:a17:902:20c8:: with SMTP id
 v8mr56385548plg.284.1563532363495; 
 Fri, 19 Jul 2019 03:32:43 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id i15sm34029444pfd.160.2019.07.19.03.32.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 19 Jul 2019 03:32:42 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] drm/exynos: Use dev_get_drv_data
Date: Fri, 19 Jul 2019 18:31:09 +0800
Message-Id: <20190719103108.19998-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_033244_677716_A2FDFE9A 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 David Airlie <airlied@linux.ie>, Chuhong Yuan <hslester96@gmail.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dev_get_drvdata is a simpler implementation comparing
to to_platform_device + platform_get_drvdata.
This makes the code simpler.


Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/gpu/drm/exynos/exynos_drm_fimc.c | 2 +-
 drivers/gpu/drm/exynos/exynos_drm_gsc.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_fimc.c b/drivers/gpu/drm/exynos/exynos_drm_fimc.c
index a594ab7be2c0..164d914cbe9a 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_fimc.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_fimc.c
@@ -44,7 +44,7 @@ static unsigned int fimc_mask = 0xc;
 module_param_named(fimc_devs, fimc_mask, uint, 0644);
 MODULE_PARM_DESC(fimc_devs, "Alias mask for assigning FIMC devices to Exynos DRM");
 
-#define get_fimc_context(dev)	platform_get_drvdata(to_platform_device(dev))
+#define get_fimc_context(dev)	dev_get_drvdata(dev)
 
 enum {
 	FIMC_CLK_LCLK,
diff --git a/drivers/gpu/drm/exynos/exynos_drm_gsc.c b/drivers/gpu/drm/exynos/exynos_drm_gsc.c
index 1e4b21c49a06..1c524db9570f 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_gsc.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_gsc.c
@@ -58,7 +58,7 @@
 #define GSC_COEF_DEPTH	3
 #define GSC_AUTOSUSPEND_DELAY		2000
 
-#define get_gsc_context(dev)	platform_get_drvdata(to_platform_device(dev))
+#define get_gsc_context(dev)	dev_get_drvdata(dev)
 #define gsc_read(offset)		readl(ctx->regs + (offset))
 #define gsc_write(cfg, offset)	writel(cfg, ctx->regs + (offset))
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
