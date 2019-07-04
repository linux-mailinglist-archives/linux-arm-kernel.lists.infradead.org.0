Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 748385F173
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 04:36:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tXqVVrO+LzRCOZ3EPOj4XnlIn3kSzHIrbQsC6z9XaSM=; b=oJc
	Nwd1fFjG4xcn1GF+yo5AFKTkRO3VxQZ1XTapCBRAhV+l23xMTp2vE9jYiV5F+hwbXp1pC3y9dLOm2
	a5vhPlzBZ7XNXZNax9iyjFuf/VPVU99YOkIB8T0Erky298fjAGO/WJsEvjDJZMSNAOdiFe7t4JI9N
	HnWjLRSuXnC0458gVpxD9csPPKDbLqVgGpFYqY297xom0kihGLP5wwzCCiYLl62XsILNRoSar10l6
	peWshsYciiLl0QkdrhOQN7aQ9aivvqC7thFwIoddEHJhKRvu+qUwPaTSpTW8jPYgbxfBzT9dWGXiZ
	HxMdfs6jHHfUNS+kD+zssNuSuUsKlIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hirbT-0002mn-AO; Thu, 04 Jul 2019 02:36:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hirb9-0002lo-38
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 02:35:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id g15so2155934pgi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 19:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=nXTmk+pxDZGbrpmbWYwCZvMXWZKHwPkgM46QtmxM/i8=;
 b=WnIDVSNyFN+GFsu8DtLMgP1OsUuRcgcaIdWOIZtK3QToQE396D3VbYxv2O9LJU8wrx
 wsa95FllqQ0c4hUs2NKqBQob5D+7UbsUtGWtxeizU8MaQAT5cSJHwbyeQ5tIS5RKljXH
 O4v1+nazHVba494UkGKurdi5JV1XV/scsmsw3C+Jim0B5gfAvFXtRn6wJuIKP+w+7+iq
 XsA02FqL7QfjMtgWch+KcYCakNjHnX6wdIj30NGyhh9/zl6WAmVBu4funKKKMeDDrGXF
 KJHPV9X+tbBKUb/1EoXCWK292IEU41XbsDiTjH8TUIWIrNxz1VZI7G8N0WP/GIsK/r6Z
 T31A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nXTmk+pxDZGbrpmbWYwCZvMXWZKHwPkgM46QtmxM/i8=;
 b=liYmyv+psd58c8ku9krbmG0du44PmbZC79BkgOQhy2+f6WPfKEHqQouMAdymsnOfK1
 6iSznAYvTx64h/080V4Zor4WHlBtbF/qyOldBuUrBcdroPBtm/ueEbePo8ceZ1+WFE5b
 fZOPSXeEJWMp4srK/Bh4puMbsRHRrMb3SnQC/57S+lJX+cF2d7qe1jrOcPZkwrumJcb8
 paMRNABFdaRAC4pFH17c8xjh7xiUoLKT9mcfapv3JXjDGeDJ7kfmSv6H+fsOBXS/Mq83
 O6pKg+CKzKVqCQwZB6f2nrVjJMoArmB6b3Jh0H6BNFl4RuX4TWqkAWFfAGFKIkCwU0Qo
 hHwg==
X-Gm-Message-State: APjAAAWh19/CFLt9J4BABep33DegwitkLTWRy4Hx1EjLA8NqplakeA6r
 WUijWmfdMpXSj9qrHjASPIk=
X-Google-Smtp-Source: APXvYqwhSeJvwMwPkanmGKWfOj1GnT7T88Rpk3rP16X1l5uBpm5SOtUz1DniCqkcur/49sEn0+h7Tw==
X-Received: by 2002:a17:90a:a09:: with SMTP id
 o9mr16504796pjo.95.1562207745651; 
 Wed, 03 Jul 2019 19:35:45 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id y68sm3715500pfy.164.2019.07.03.19.35.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 19:35:45 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [Patch v2 01/10] drm/exynos: using dev_get_drvdata directly
Date: Thu,  4 Jul 2019 10:34:36 +0800
Message-Id: <20190704023436.4456-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_193547_167837_9946D3A1 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Inki Dae <inki.dae@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Fuqian Huang <huangfq.daxian@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Several drivers cast a struct device pointer to a struct
platform_device pointer only to then call platform_get_drvdata().
To improve readability, these constructs can be simplified
by using dev_get_drvdata() directly.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
Changes in v2:
  - Make the commit message more clearly.

 drivers/gpu/drm/exynos/exynos_drm_fimc.c | 2 +-
 drivers/gpu/drm/exynos/exynos_drm_gsc.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_fimc.c b/drivers/gpu/drm/exynos/exynos_drm_fimc.c
index 0db29690ede3..c79eafc9457e 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_fimc.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_fimc.c
@@ -43,7 +43,7 @@ static unsigned int fimc_mask = 0xc;
 module_param_named(fimc_devs, fimc_mask, uint, 0644);
 MODULE_PARM_DESC(fimc_devs, "Alias mask for assigning FIMC devices to Exynos DRM");
 
-#define get_fimc_context(dev)	platform_get_drvdata(to_platform_device(dev))
+#define get_fimc_context(dev)	dev_get_drvdata(dev)
 
 enum {
 	FIMC_CLK_LCLK,
diff --git a/drivers/gpu/drm/exynos/exynos_drm_gsc.c b/drivers/gpu/drm/exynos/exynos_drm_gsc.c
index 05b0fe21b81e..6399d89c3f9f 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_gsc.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_gsc.c
@@ -57,7 +57,7 @@
 #define GSC_COEF_DEPTH	3
 #define GSC_AUTOSUSPEND_DELAY		2000
 
-#define get_gsc_context(dev)	platform_get_drvdata(to_platform_device(dev))
+#define get_gsc_context(dev)	dev_get_drvdata(dev)
 #define gsc_read(offset)		readl(ctx->regs + (offset))
 #define gsc_write(cfg, offset)	writel(cfg, ctx->regs + (offset))
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
