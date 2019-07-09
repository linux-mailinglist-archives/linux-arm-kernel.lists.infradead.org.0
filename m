Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 749A8632F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 10:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qfXom4qOayXxixpnOsF1clR2sg/nsO4YLqtJvXG/k8=; b=o2dCQ0zyyBNKBS
	BtRuwdR4EVf9aydc8qj+Yb2H3DRa47UETO8MWiZ4+SOGcYzPlrb+zvDSA1qLHBqQYzpGyyBkoLYfR
	94NiKln981Vel4zQkN2J9lDeP2N63ukSNLF0cgjgbNnAhUU37kli5J8ZChxMuQyJd2PFmfRCRUtRd
	PYX4rk1GlWICbFbas0SlbX/3okUQYDJLlxfzvV1/TMoh59g1AELxMSylGlO+gS3SfiJJPwlGUhvf4
	tZFxu7u2meAEJ26zOd20aDEVc6DqAX0ITsdKdHrbZ4Rttv/CkE0Wmq/2SWY3Czyo52ccXGX/4k9+m
	bDjn0er95lfPR6tXGreQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hklhk-0003u1-Na; Tue, 09 Jul 2019 08:42:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hklhV-0003sb-LA; Tue, 09 Jul 2019 08:42:15 +0000
X-UUID: c5db9559523b4390aa71e552e2bede20-20190709
X-UUID: c5db9559523b4390aa71e552e2bede20-20190709
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1775780986; Tue, 09 Jul 2019 00:42:05 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 9 Jul 2019 01:42:03 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 9 Jul 2019 16:41:55 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 9 Jul 2019 16:41:55 +0800
From: Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <mchehab@kernel.org>
Subject: [RFC PATCH V2 3/4] media: platform: Add Mediatek FD driver KConfig
Date: Tue, 9 Jul 2019 16:41:11 +0800
Message-ID: <1562661672-22439-4-git-send-email-Jerry-Ch.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1562661672-22439-1-git-send-email-Jerry-Ch.chen@mediatek.com>
References: <1562661672-22439-1-git-send-email-Jerry-Ch.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_014213_701981_CE53C3CA 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 Rynn.Wu@mediatek.com, srv_heupstream@mediatek.com, po-yang.huang@mediatek.com,
 suleiman@chromium.org, Jerry-ch Chen <jerry-ch.chen@mediatek.com>,
 jungo.lin@mediatek.com, sj.huang@mediatek.com, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>

This patch adds KConfig for Mediatek Face Detection driver (FD).
FD is embedded in Mediatek SoCs. It can provide hardware
accelerated face detection function.

Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
---
 drivers/media/platform/Kconfig            |  2 ++
 drivers/media/platform/mtk-isp/fd/Kconfig | 17 +++++++++++++++++
 2 files changed, 19 insertions(+)
 create mode 100644 drivers/media/platform/mtk-isp/fd/Kconfig

diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
index a505e9f..ae99258e 100644
--- a/drivers/media/platform/Kconfig
+++ b/drivers/media/platform/Kconfig
@@ -32,6 +32,8 @@ source "drivers/media/platform/davinci/Kconfig"
 
 source "drivers/media/platform/omap/Kconfig"
 
+source "drivers/media/platform/mtk-isp/fd/Kconfig"
+
 config VIDEO_ASPEED
 	tristate "Aspeed AST2400 and AST2500 Video Engine driver"
 	depends on VIDEO_V4L2
diff --git a/drivers/media/platform/mtk-isp/fd/Kconfig b/drivers/media/platform/mtk-isp/fd/Kconfig
new file mode 100644
index 0000000..0c5eaf0
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/fd/Kconfig
@@ -0,0 +1,17 @@
+config VIDEO_MEDIATEK_FD
+	bool "Mediatek face detection processing function"
+	select DMA_SHARED_BUFFER
+	select VIDEOBUF2_DMA_CONTIG
+	select VIDEOBUF2_CORE
+	select VIDEOBUF2_V4L2
+	select VIDEOBUF2_MEMOPS
+	select VIDEOBUF2_VMALLOC
+	select MEDIA_CONTROLLER
+
+	default n
+	help
+		Support the Face Detectioin (FD) feature.
+
+		FD driver is a V4L2 memory-to-memory device driver which
+		provides hardware accelerated face detection function,
+		it can detect different sizes of faces in a raw image.
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
