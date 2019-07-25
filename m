Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DB574EE3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 15:13:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBTCUf4epWSS8E7vey8HUqIHwNGp1RxeAMs+Ruv8HvM=; b=VPMNIN/amRYN5n
	8sls9qeq1fgseHMSu+R8FuV+hCWdCNpuNvGC7csfW3yybH9i14NAtTojGdm9WYOrjLBGthzijfUBq
	N0vr0Cn+Tua12tXjzENB2sbB39w929KhGYHGSExZvgTa7c3jCaT9pmNGgHDod/7N7W3x9bNq4KmWO
	gqpV8ZhnG+elOtBig/Vx86QLumM/h9gpddE+dlz3LAis/4FOLQbIlaLcAAqBKfzmbyVT/gItDvH7b
	m7BxkUJlxLvFiZlYkIuHE4An+aFGga6soypUuWcAaGjmrHpAcNkerV7V7fKzhzmovq1sLL64AxE91
	1JB27ElLfsMjJJXADh8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdZ0-0002uw-Or; Thu, 25 Jul 2019 13:13:42 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdYQ-0002iO-MO
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 13:13:08 +0000
Received: by mail-wr1-x441.google.com with SMTP id n9so25663667wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 06:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X7EMLPA/uXshrhX8tUHlB7rWmq/Bv+vAhoVTbSln7+0=;
 b=Fv54TOX6FNJ//eMWDstY7AgTcgwfVv92yemrD2sdaPfTVJkl9bvR8YctNNHR7vFO8c
 4nlTgnbMX0MR5gO1wxfGjqPeFdLyUBpSZeAb19UdpJXpZDdvR0kPEKDVLjPkhOC5HnAg
 Tm5O5c8BqOIN68y9LBPn9fjxRpgLMXTVhTPA63MHvZdPIRml+TG0FnhiF+JtXpSjBhaF
 NmjFUf5xfeDe/0CqyrXSV7nLW8WgeJPH8OGpA/YGRm4/IDHcZc/WUfLm2EAKO4bwL+K6
 agWZrcuVeaztexlkKJQPKIuFrYKn0Z1+qF5UptZxyjWTe2Ng2S5K0UZwydjUxABAcpY2
 OWsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X7EMLPA/uXshrhX8tUHlB7rWmq/Bv+vAhoVTbSln7+0=;
 b=F+bww56T73gEhIYsMpNbsz+8kUkW/37Akj6j0luuZDqnDbBE0NcHJjyidmpgc7sciG
 dQg47BQcU8SroRVet9t5cHaYOzjtm/V/J6g2aJDO+xGJ/fWYtM3CWHQkjKkz9O3aqheq
 n7Wq/VjzqhXZo642xvdWOq8euS32sPtYiC/dz5PuyaUqcsu17rffnv1+L8qMbUS0GmGw
 n0lM1tYpgI1eBwmMpQbRWulXDS+bIZEffdiYh89K1JMxq3i7OZ+pktUIfzQEPmeY8LZQ
 8Q4a7KWjFscNn8D8wKU0NCnuJ7KT4N5cvcNFV27wrpEDZLfvXNUs55TpIhc9mRIHJWMU
 2ckg==
X-Gm-Message-State: APjAAAUszAu3MTa+1Ww4yQmiBtnMd2K7HCrZNxwwlE1csWaTk/Q6BM8b
 uBG9AZNIIowqr1UNcKYR4yM=
X-Google-Smtp-Source: APXvYqwhue3g07/6fWFKzYTLHvyOYNdW84QPVWg4Kj7bJgNFcVQJynkcYGxefKduUaJtACggHVm8Xg==
X-Received: by 2002:adf:ea45:: with SMTP id j5mr19767933wrn.11.1564060383337; 
 Thu, 25 Jul 2019 06:13:03 -0700 (PDT)
Received: from localhost.localdomain ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id
 z7sm47119735wrh.67.2019.07.25.06.13.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 06:13:02 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, David Lechner <david@lechnology.com>
Subject: [PATCH v2 1/5] staging: media/davinci_vpfe: fix pinmux setup
 compilation
Date: Thu, 25 Jul 2019 15:12:53 +0200
Message-Id: <20190725131257.6142-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190725131257.6142-1-brgl@bgdev.pl>
References: <20190725131257.6142-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_061306_743857_5B0AC15A 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>

This fixes the following build error in davinci_vpfe.

/git/arm-soc/drivers/staging/media/davinci_vpfe/dm365_isif.c: In function 'vpfe_isif_init':
/git/arm-soc/drivers/staging/media/davinci_vpfe/dm365_isif.c:2031:2: error: implicit declaration of function 'davinci_cfg_reg'; did you mean 'omap_cfg_reg'? [-Werror=implicit-function-declaration]
  davinci_cfg_reg(DM365_VIN_CAM_WEN);
  ^~~~~~~~~~~~~~~
  omap_cfg_reg
/git/arm-soc/drivers/staging/media/davinci_vpfe/dm365_isif.c:2031:18: error: 'DM365_VIN_CAM_WEN' undeclared (first use in this function); did you mean 'DM365_ISIF_MAX_CLDC'?
  davinci_cfg_reg(DM365_VIN_CAM_WEN);
                  ^~~~~~~~~~~~~~~~~

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/staging/media/davinci_vpfe/Makefile     | 5 -----
 drivers/staging/media/davinci_vpfe/dm365_isif.c | 8 +++-----
 drivers/staging/media/davinci_vpfe/dm365_isif.h | 2 --
 drivers/staging/media/davinci_vpfe/vpfe.h       | 2 ++
 4 files changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/Makefile b/drivers/staging/media/davinci_vpfe/Makefile
index 0ae8c5014f74..3b93e0583940 100644
--- a/drivers/staging/media/davinci_vpfe/Makefile
+++ b/drivers/staging/media/davinci_vpfe/Makefile
@@ -4,8 +4,3 @@ obj-$(CONFIG_VIDEO_DM365_VPFE) += davinci-vfpe.o
 davinci-vfpe-objs := \
 	dm365_isif.o dm365_ipipe_hw.o dm365_ipipe.o \
 	dm365_resizer.o dm365_ipipeif.o vpfe_mc_capture.o vpfe_video.o
-
-# Allow building it with COMPILE_TEST on other archs
-ifndef CONFIG_ARCH_DAVINCI
-ccflags-y += -I $(srctree)/arch/arm/mach-davinci/include/
-endif
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index 05a997f7aa5d..5cfd52ea3ba7 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -17,6 +17,7 @@
  */
 
 #include <linux/delay.h>
+#include "vpfe.h"
 #include "dm365_isif.h"
 #include "vpfe_mc_capture.h"
 
@@ -1983,6 +1984,7 @@ int vpfe_isif_init(struct vpfe_isif_device *isif, struct platform_device *pdev)
 	struct v4l2_subdev *sd = &isif->subdev;
 	struct media_pad *pads = &isif->pads[0];
 	struct media_entity *me = &sd->entity;
+	struct vpfe_config *cfg = pdev->dev.platform_data;
 	static resource_size_t res_len;
 	struct resource *res;
 	void __iomem *addr;
@@ -2023,11 +2025,7 @@ int vpfe_isif_init(struct vpfe_isif_device *isif, struct platform_device *pdev)
 		}
 		i++;
 	}
-	davinci_cfg_reg(DM365_VIN_CAM_WEN);
-	davinci_cfg_reg(DM365_VIN_CAM_VD);
-	davinci_cfg_reg(DM365_VIN_CAM_HD);
-	davinci_cfg_reg(DM365_VIN_YIN4_7_EN);
-	davinci_cfg_reg(DM365_VIN_YIN0_3_EN);
+	cfg->isif_setup_pinmux();
 
 	/* queue ops */
 	isif->video_out.ops = &isif_video_ops;
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.h b/drivers/staging/media/davinci_vpfe/dm365_isif.h
index 0e1fe472fb2b..82eeba9c24c2 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.h
@@ -21,8 +21,6 @@
 
 #include <linux/platform_device.h>
 
-#include <mach/mux.h>
-
 #include <media/davinci/vpfe_types.h>
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-device.h>
diff --git a/drivers/staging/media/davinci_vpfe/vpfe.h b/drivers/staging/media/davinci_vpfe/vpfe.h
index 1f8e011fc162..54ef6720ceeb 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe.h
@@ -74,6 +74,8 @@ struct vpfe_config {
 	char *card_name;
 	/* setup function for the input path */
 	int (*setup_input)(enum vpfe_subdev_id id);
+	/* point to dm365_isif_setup_pinmux() */
+	void (*isif_setup_pinmux)(void);
 	/* number of clocks */
 	int num_clocks;
 	/* clocks used for vpfe capture */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
