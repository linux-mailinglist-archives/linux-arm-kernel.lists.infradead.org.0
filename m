Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC80FA29A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RESVKA57JqNYJzSRk7gLguX4OhjzO+UTMnQWm/ro/fo=; b=uaZ8sJLGXoDn7/
	/oJUduY2DYpmxNTlkjAMjCd2g3ZZHNlPPOKOA29wFbNCsKuHMxSfP/woeOsBfeHRwADA6OLCulZhc
	NB+QYRT7YOUql8wT58z16egyJ8TZsQa07/yr90KuITXOtihL0O2TDj3WfrQY+IOkNgW2Il000Z9tO
	ajsQuzx2KceW5AU9pm5Hg0j5nM7RrRKkHUn9GyZal0U3P/u/5qcIb9lZfxlOI9S2enOkguqIlmFAa
	NU5SDq7XxzKZHweiJMXj1FJu90RpNTEYrc3CuKNIgWQeEZOVXWAeXq7gplaRuvSvH8pNl/WdC/uxd
	wF/PhQWCDCz6bIVVq3JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3SmY-0007em-Eh; Thu, 29 Aug 2019 22:20:42 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3SlK-0005P2-8C
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:19:27 +0000
Received: by mail-ed1-x544.google.com with SMTP id l26so5139412edr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 15:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AQPujerQOkg9j+eRABYeA6b+a5Y23tZKqHKGuL35Zl4=;
 b=HSvB2BBtVOdt5kXjFyEVz0MRhkImsE381IcFy+pMc5QLazoLSIaM7H4MflY5BU0ebe
 jelt53n20erCnBOi3CkFxAvMrTNfxknk5SPJTN8zVmfoBwXj6/U8weEvcY0tKBhyy6JF
 KR9MNb4u8jZKyHPSmlucSmMpKfnkDHCTN6+xoyfCmnZ3pIGm2pLhGH/mHAzvKFiSqDYQ
 anN0nbPPQKnYY1bTHGlwnAGvZpviry2kkf6ZSBIO+b5BuuNm2WOV3JTNmpy1acu+zIoa
 sJKFFV2OVE+U1FMhYA8Yny5TtvolzmosjxPg4CQH12aEhVkVby/RP0va9c8wDRacB8qW
 KI3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AQPujerQOkg9j+eRABYeA6b+a5Y23tZKqHKGuL35Zl4=;
 b=PkNwHvUF5Gfdkt+TgJM/Bg/fSeTKHE7q4Ans5r3/9jUje2EIKQ8dBXB0M9sVgPysFi
 eLSW0vpgLua4Jz16o7nQIzPTnNX8T/sKl/tisVIWIh1ycent1Gwg/aCubJLFKOcx73Sg
 qy1lgw6MR6LUdDG6+mRpozKy0FDBIrv+tZfAQ+nvRjeLfcK+lvfP9dVU3n0Iya9kKiI3
 We6AVCtvOVHcxIwL1Kx9PNOykjj5ndgKiGPj119M/oGOjlLl0YCUmFsrjPGVi3vvpCqk
 rw6/UJv0V/jKd2+Wzwz+OUEFfwihH6dfQPkUCpbDP1HFBX5oaRA9FtjEzJp+2Tu/ysp/
 lt8Q==
X-Gm-Message-State: APjAAAV1AdA0qXBdA5luWsUDxFFACDm09yUoX+Ljra+pNa0vgDtBoOlX
 +h45/heqZEffMV4JGo3OxRo=
X-Google-Smtp-Source: APXvYqyd8/Pk9UTGjdgAsiT+fJninnrmPTpt8q83YCbdhH4aR8r52P0DdFr+KHFOfnqv3B0vSFBhLg==
X-Received: by 2002:a17:906:1cce:: with SMTP id
 i14mr10505321ejh.7.1567117164939; 
 Thu, 29 Aug 2019 15:19:24 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id bq18sm440804ejb.84.2019.08.29.15.19.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 15:19:24 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 5/7] drm/nouveau: tegra: Use nvmem API
Date: Fri, 30 Aug 2019 00:19:09 +0200
Message-Id: <20190829221911.24876-6-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190829221911.24876-1-thierry.reding@gmail.com>
References: <20190829221911.24876-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_151926_324856_716CFBDB 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, Nagarjuna Kristam <nkristam@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Instead of using the custom Tegra FUSE API to read the calibration fuse
for the clock on GM20B, use the nvmem API. This makes the dependency
between the two devices more explicit and decouples the driver from one
another.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c
index b284e949f732..096a8b4b9bb5 100644
--- a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c
+++ b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c
@@ -20,6 +20,8 @@
  * DEALINGS IN THE SOFTWARE.
  */
 
+#include <linux/nvmem-consumer.h>
+
 #include <subdev/clk.h>
 #include <subdev/volt.h>
 #include <subdev/timer.h>
@@ -929,7 +931,6 @@ gm20b_clk_new_speedo0(struct nvkm_device *device, int index,
 }
 
 /* FUSE register */
-#define FUSE_RESERVED_CALIB0	0x204
 #define FUSE_RESERVED_CALIB0_INTERCEPT_FRAC_SHIFT	0
 #define FUSE_RESERVED_CALIB0_INTERCEPT_FRAC_WIDTH	4
 #define FUSE_RESERVED_CALIB0_INTERCEPT_INT_SHIFT	4
@@ -945,14 +946,17 @@ static int
 gm20b_clk_init_fused_params(struct gm20b_clk *clk)
 {
 	struct nvkm_subdev *subdev = &clk->base.base.subdev;
+	struct nvkm_device *device = subdev->device;
 	u32 val = 0;
 	u32 rev = 0;
+	int ret;
+
+	ret = nvmem_cell_read_u32(device->dev, "calibration", &val);
+	if (ret < 0)
+		return ret;
 
-#if IS_ENABLED(CONFIG_ARCH_TEGRA)
-	tegra_fuse_readl(FUSE_RESERVED_CALIB0, &val);
 	rev = (val >> FUSE_RESERVED_CALIB0_FUSE_REV_SHIFT) &
 	      MASK(FUSE_RESERVED_CALIB0_FUSE_REV_WIDTH);
-#endif
 
 	/* No fused parameters, we will calibrate later */
 	if (rev == 0)
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
