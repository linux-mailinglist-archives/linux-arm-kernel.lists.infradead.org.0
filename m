Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 289A112FB73
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 18:15:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0i7LFm5Kg9GKlW60smmEdvMwXYGbJFA+tVAJV1eW+Rs=; b=to2B7rcY3aAwO0XjAJshclyUJ1
	tY/o5FgceWInHTxPTfAZKSMWcs9GJDoidKkDo7Bqo1Qux3iZ+jTiA/rAikJh5yqEHVlr0uAyS2aVc
	HD8ohQOo2KObqcU/H7Um1xLGj9d+Y1pJzGukotifjPZuKHbjkhDR8rSoDBCxySs9QgRM4WyuRx+Ag
	VCC96rHm9d1e1lW+VJSj4YZy/GmLjEzN8k/tZ7MvH9Bt2SXn0oYp1Bk0Hi6Cgh9x68Lw4tYoKEM1l
	rvbfHLUVj3/edYp9QTNlWnW767OneDEOkSganiYPEQd3e9c2qXZj16M92IMAY00xa+ZqaqmV0yPIk
	DyEXbfog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inQXa-0003Xo-Gu; Fri, 03 Jan 2020 17:15:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inQVF-0001ZH-T0
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 17:12:51 +0000
Received: from localhost.localdomain (unknown [194.230.155.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 153B720866;
 Fri,  3 Jan 2020 17:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578071569;
 bh=cwVHC9cbVgplkseh61brdp4+7/gA+lKOKfHqQ/RsvbM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LDWUO1BeIbtHXfzfz80n/TMXUm1Sp+3S1rpv9hBpxZuFyXeRwqa255W8aJeEQwa3i
 PsHKhgPVV/Xo74F8o5XMYc6+e+V92iuKYZAugFybIWNiG0xggxnWiNQgLO4/xobIWB
 It8jxy/ZBKAMT99Q0iaUm9/rNCZqEXwoNV8C8Y1U=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 13/19] drm/exynos: Rename Exynos to lowercase
Date: Fri,  3 Jan 2020 18:11:25 +0100
Message-Id: <20200103171131.9900-14-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200103171131.9900-1-krzk@kernel.org>
References: <20200103171131.9900-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_091250_014607_FD4C3166 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Krzysztof Kozlowski <krzk@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix up inconsistent usage of upper and lowercase letters in "Exynos"
name.

"EXYNOS" is not an abbreviation but a regular trademarked name.
Therefore it should be written with lowercase letters starting with
capital letter.

The lowercase "Exynos" name is promoted by its manufacturer Samsung
Electronics Co., Ltd., in advertisement materials and on website.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/gpu/drm/exynos/Kconfig | 6 +++---
 include/uapi/drm/exynos_drm.h  | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/exynos/Kconfig b/drivers/gpu/drm/exynos/Kconfig
index 6f7d3b3b3628..6417f374b923 100644
--- a/drivers/gpu/drm/exynos/Kconfig
+++ b/drivers/gpu/drm/exynos/Kconfig
@@ -1,13 +1,13 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config DRM_EXYNOS
-	tristate "DRM Support for Samsung SoC EXYNOS Series"
+	tristate "DRM Support for Samsung SoC Exynos Series"
 	depends on OF && DRM && (ARCH_S3C64XX || ARCH_S5PV210 || ARCH_EXYNOS || ARCH_MULTIPLATFORM || COMPILE_TEST)
 	depends on MMU
 	select DRM_KMS_HELPER
 	select VIDEOMODE_HELPERS
 	select SND_SOC_HDMI_CODEC if SND_SOC
 	help
-	  Choose this option if you have a Samsung SoC EXYNOS chipset.
+	  Choose this option if you have a Samsung SoC Exynos chipset.
 	  If M is selected the module will be called exynosdrm.
 
 if DRM_EXYNOS
@@ -62,7 +62,7 @@ config DRM_EXYNOS_DSI
 	  This enables support for Exynos MIPI-DSI device.
 
 config DRM_EXYNOS_DP
-	bool "EXYNOS specific extensions for Analogix DP driver"
+	bool "Exynos specific extensions for Analogix DP driver"
 	depends on DRM_EXYNOS_FIMD || DRM_EXYNOS7_DECON
 	select DRM_ANALOGIX_DP
 	default DRM_EXYNOS
diff --git a/include/uapi/drm/exynos_drm.h b/include/uapi/drm/exynos_drm.h
index 45c6582b3df3..a51aa1c618c1 100644
--- a/include/uapi/drm/exynos_drm.h
+++ b/include/uapi/drm/exynos_drm.h
@@ -394,7 +394,7 @@ struct drm_exynos_ioctl_ipp_commit {
 #define DRM_IOCTL_EXYNOS_IPP_COMMIT		DRM_IOWR(DRM_COMMAND_BASE + \
 		DRM_EXYNOS_IPP_COMMIT, struct drm_exynos_ioctl_ipp_commit)
 
-/* EXYNOS specific events */
+/* Exynos specific events */
 #define DRM_EXYNOS_G2D_EVENT		0x80000000
 #define DRM_EXYNOS_IPP_EVENT		0x80000002
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
