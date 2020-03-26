Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 476CF1942EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 16:21:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nsxgw6LZR5IMTP+lj66wW6YtePpd6d+KU1C+H2ovXmk=; b=UK4X0kJpeYx8Xt
	1AFbPsQPCK5oaC1N234E1E9ujZqvdobqzOq8LcLOZWTzUHtrKXlU9y4RV87tO12O4A4hV9SWGE8Ke
	eQCCfYGGtDhgJa4UGuavFn7gFj6YJgpvmyR8QXqOTxE9EGwo4jzDYuAzw5RaZa94V+KCXCN1VjrAl
	e5nY6CR2r/X1quv5HFReO91JHRHqIQYD7Dv38ZZjbBfAb9TUIGU7+eg423v0Hy5fubBXcoeV4fe0j
	BW4knsCHx7zxBGtrNDtJRPBrjkE/+pzHS7ydbC3fUIufw2YuS7Kg7UaCWE8ep1Jsid10iZF6Uo3oS
	IrzrfylDaXQNvMByoN7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHUKI-0002F9-T2; Thu, 26 Mar 2020 15:21:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHUK8-0002EO-2P
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 15:21:37 +0000
Received: from mail.kernel.org (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 883B92078B;
 Thu, 26 Mar 2020 15:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585236095;
 bh=1TfvecVNsnrRPGYjwIJib8LOYw3hNDQWOsABSBfYq1k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=c+j0D6dfQY7bS74yuW2Bw7xfSzXqji7LPRfi3QcqZiUT8c8Lsgw2f+XGKodXRyJiM
 JMyl5Ly4vLDhnHvnx6HXK+bGgzkZKxV6iId1TViWPTbioCLGlYChWy695zigrPGynQ
 wAV2/4JkCsO1tCBXXzb65Qc6MELEKQUFm5Ic9mlk=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jHUK5-003dj8-Rf; Thu, 26 Mar 2020 16:21:33 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 7/7] media: add SPDX headers on Kconfig and Makefile files
Date: Thu, 26 Mar 2020 16:21:32 +0100
Message-Id: <3016f7ee1b738f7a61705816963ca315a1c9bc63.1585235736.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1585235736.git.mchehab+huawei@kernel.org>
References: <cover.1585235736.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_082136_159316_4CCF0D79 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Most of media Kconfig/Makefile files already has SPDX,
but there are a few ones still missing. Add it to them.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/media/dvb-frontends/Kconfig             | 2 ++
 drivers/media/mc/Kconfig                        | 2 ++
 drivers/media/platform/sunxi/Kconfig            | 2 ++
 drivers/media/platform/sunxi/Makefile           | 2 ++
 drivers/media/platform/sunxi/sun4i-csi/Kconfig  | 2 ++
 drivers/media/platform/sunxi/sun4i-csi/Makefile | 2 ++
 drivers/staging/media/hantro/Makefile           | 2 ++
 drivers/staging/media/rkisp1/Makefile           | 2 ++
 8 files changed, 16 insertions(+)

diff --git a/drivers/media/dvb-frontends/Kconfig b/drivers/media/dvb-frontends/Kconfig
index 1f45808d94da..aa24506257b3 100644
--- a/drivers/media/dvb-frontends/Kconfig
+++ b/drivers/media/dvb-frontends/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 if MEDIA_DIGITAL_TV_SUPPORT
 
 comment "DVB Frontend drivers hidden by 'Autoselect ancillary drivers'"
diff --git a/drivers/media/mc/Kconfig b/drivers/media/mc/Kconfig
index b3579d6c9e32..002a918c4c75 100644
--- a/drivers/media/mc/Kconfig
+++ b/drivers/media/mc/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 #
 # Media controller
 #	Selectable only for webcam/grabbers, as other drivers don't use it
diff --git a/drivers/media/platform/sunxi/Kconfig b/drivers/media/platform/sunxi/Kconfig
index 71808e93ac2e..7151cc249afa 100644
--- a/drivers/media/platform/sunxi/Kconfig
+++ b/drivers/media/platform/sunxi/Kconfig
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
+
 source "drivers/media/platform/sunxi/sun4i-csi/Kconfig"
 source "drivers/media/platform/sunxi/sun6i-csi/Kconfig"
diff --git a/drivers/media/platform/sunxi/Makefile b/drivers/media/platform/sunxi/Makefile
index ff0993f70dc3..fc537c9f5ca9 100644
--- a/drivers/media/platform/sunxi/Makefile
+++ b/drivers/media/platform/sunxi/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 obj-y		+= sun4i-csi/
 obj-y		+= sun6i-csi/
 obj-y		+= sun8i-di/
diff --git a/drivers/media/platform/sunxi/sun4i-csi/Kconfig b/drivers/media/platform/sunxi/sun4i-csi/Kconfig
index 5054e7b0d1ac..903c6152f6e8 100644
--- a/drivers/media/platform/sunxi/sun4i-csi/Kconfig
+++ b/drivers/media/platform/sunxi/sun4i-csi/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 config VIDEO_SUN4I_CSI
 	tristate "Allwinner A10 CMOS Sensor Interface Support"
 	depends on VIDEO_V4L2 && COMMON_CLK  && HAS_DMA
diff --git a/drivers/media/platform/sunxi/sun4i-csi/Makefile b/drivers/media/platform/sunxi/sun4i-csi/Makefile
index 7c790a57f5ee..5062b006d63e 100644
--- a/drivers/media/platform/sunxi/sun4i-csi/Makefile
+++ b/drivers/media/platform/sunxi/sun4i-csi/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 sun4i-csi-y += sun4i_csi.o
 sun4i-csi-y += sun4i_dma.o
 sun4i-csi-y += sun4i_v4l2.o
diff --git a/drivers/staging/media/hantro/Makefile b/drivers/staging/media/hantro/Makefile
index 496b30c3c396..a558cb0623dc 100644
--- a/drivers/staging/media/hantro/Makefile
+++ b/drivers/staging/media/hantro/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 obj-$(CONFIG_VIDEO_HANTRO) += hantro-vpu.o
 
 hantro-vpu-y += \
diff --git a/drivers/staging/media/rkisp1/Makefile b/drivers/staging/media/rkisp1/Makefile
index 69ca59c7ef34..ab32a77db8f7 100644
--- a/drivers/staging/media/rkisp1/Makefile
+++ b/drivers/staging/media/rkisp1/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 obj-$(CONFIG_VIDEO_ROCKCHIP_ISP1) += rockchip-isp1.o
 rockchip-isp1-objs += 	rkisp1-capture.o \
 			rkisp1-common.o \
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
