Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F8A1FE15
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 05:24:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qn5H1EMfJ0bX/28S4M3XZhscPPTJlx++LXOKRn66qo0=; b=CLyVhZrSuNX6of
	zpR6GSZqMydTibBAfPO4yRVBRuC/aC9g/TdVdM+ySOTQ5zsWPMozjK1JQDrHD57wteKyNIAD1/H4M
	3bo03WAhdnRuUliUH77tSMV+XwlVgYtebe02/jXSWjjhBbuTA8im87jCsa6TQwsoSCCY/kZOCYJnY
	PSXiwFpkEQ6MghP20U+/aDWAzJMO3YBqzu8HSueFYsWu8UWdaEUsWsaTG+5ltGuGRMaxsu8EYmwBA
	RSN6pzkuRqaNScbi8So76Moa7QtXM9yw1hQO8zjGNu4jet5ZQkb5sK4oA5DQercRDLIRCUjHpVJAg
	H6QkbNunvJ0KMhyAaqxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR70J-0006pl-Eg; Thu, 16 May 2019 03:24:23 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR705-0006lM-Uc; Thu, 16 May 2019 03:24:11 +0000
X-UUID: ac10f544c8864821943d4eb5cee17568-20190515
X-UUID: ac10f544c8864821943d4eb5cee17568-20190515
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <daoyuan.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1247990672; Wed, 15 May 2019 19:24:00 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 May 2019 20:23:58 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 11:23:57 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 16 May 2019 11:23:57 +0800
From: Daoyuan Huang <daoyuan.huang@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <mchehab@kernel.org>
Subject: [RFC v2 3/4] media: platform: Add Mediatek MDP3 driver KConfig
Date: Thu, 16 May 2019 11:23:31 +0800
Message-ID: <20190516032332.56844-4-daoyuan.huang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190516032332.56844-1-daoyuan.huang@mediatek.com>
References: <20190516032332.56844-1-daoyuan.huang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_202409_992088_A0F9ECCE 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com, Rynn.Wu@mediatek.com,
 srv_heupstream@mediatek.com, daoyuan huang <daoyuan.huang@mediatek.com>,
 holmes.chiou@mediatek.com, Jerry-ch.Chen@mediatek.com, jungo.lin@mediatek.com,
 sj.huang@mediatek.com, yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 Ping-Hsun Wu <ping-hsun.wu@mediatek.com>, zwisler@chromium.org,
 christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: daoyuan huang <daoyuan.huang@mediatek.com>

This patch adds Kconfig for Mediatek Media Data Path 3 (MDP3)
driver. MDP3 is used to do scaling and color format conversion.

Signed-off-by: Ping-Hsun Wu <ping-hsun.wu@mediatek.com>
Signed-off-by: daoyuan huang <daoyuan.huang@mediatek.com>
---
 drivers/media/platform/Kconfig  | 18 ++++++++++++++++++
 drivers/media/platform/Makefile |  2 ++
 2 files changed, 20 insertions(+)

diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
index a505e9f5a1e2..6e8b594a1569 100644
--- a/drivers/media/platform/Kconfig
+++ b/drivers/media/platform/Kconfig
@@ -244,6 +244,24 @@ config VIDEO_MEDIATEK_MDP
 	    To compile this driver as a module, choose M here: the
 	    module will be called mtk-mdp.
 
+config VIDEO_MEDIATEK_MDP3
+	tristate "Mediatek MDP v3 driver"
+	depends on MTK_IOMMU || COMPILE_TEST
+	depends on VIDEO_DEV && VIDEO_V4L2
+	depends on ARCH_MEDIATEK || COMPILE_TEST
+	depends on HAS_DMA
+	select VIDEOBUF2_DMA_CONTIG
+	select V4L2_MEM2MEM_DEV
+	select VIDEO_MEDIATEK_VPU
+	select MTK_CMDQ
+	default n
+	help
+	    It is a v4l2 driver and present in Mediatek MT8183 SoC.
+	    The driver supports for scaling and color space conversion.
+
+	    To compile this driver as a module, choose M here: the
+	    module will be called mtk-mdp3.
+
 config VIDEO_MEDIATEK_VCODEC
 	tristate "Mediatek Video Codec driver"
 	depends on MTK_IOMMU || COMPILE_TEST
diff --git a/drivers/media/platform/Makefile b/drivers/media/platform/Makefile
index e6deb2597738..1e2cb92bc6da 100644
--- a/drivers/media/platform/Makefile
+++ b/drivers/media/platform/Makefile
@@ -92,6 +92,8 @@ obj-$(CONFIG_VIDEO_MEDIATEK_VCODEC)	+= mtk-vcodec/
 
 obj-$(CONFIG_VIDEO_MEDIATEK_MDP)	+= mtk-mdp/
 
+obj-$(CONFIG_VIDEO_MEDIATEK_MDP3)	+= mtk-mdp3/
+
 obj-$(CONFIG_VIDEO_MEDIATEK_JPEG)	+= mtk-jpeg/
 
 obj-$(CONFIG_VIDEO_QCOM_CAMSS)		+= qcom/camss/
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
