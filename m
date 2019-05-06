Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FA3144F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 09:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jbWBYpSzraieOWVTN3wSb6DHsKIHvlGcVhjbxcIsAO0=; b=rVSpfoWeGjmG4dzwo9X6obFSFn
	DUY4ggA7ckrM9LrC5k7cLTZpTRYtr65mNKa2LRwTK84/FKraYdhy5ZXx8Tfmkx7L//gDvb53P5IfF
	hErWVrnDIQQk9CD1PaV6DuUCyo7H6Wylx04SUPgPX0Yyibq159J1iMQM4CcKiu18L4bmg/SZ3sQYH
	jhHohrDKaUtjw4+PDiRqvVifIN4Mm/wkLHO/26AM+932nQZFJuVu5qoADWEuw7A1mnx7BjYvWyCtt
	uYmSqiyDK+7qmtlLiEJEBtvl1UG7+tZm2EKzn+6OBg/Th/UXG1ugC4/hKX6/VlT2BlcgabP2HFEBd
	SSaJmbWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNXhZ-0001Nw-6T; Mon, 06 May 2019 07:06:17 +0000
Received: from mxhk.zte.com.cn ([63.217.80.70])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXh2-00080B-64
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 07:05:47 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.30.14.239])
 by Forcepoint Email with ESMTPS id AC99646E20D2C3CA686D;
 Mon,  6 May 2019 15:03:36 +0800 (CST)
Received: from notes_smtp.zte.com.cn ([10.30.1.239])
 by mse-fl2.zte.com.cn with ESMTP id x4673RgY076284;
 Mon, 6 May 2019 15:03:27 +0800 (GMT-8)
 (envelope-from wen.yang99@zte.com.cn)
Received: from fox-host8.localdomain ([10.74.120.8])
 by szsmtp06.zte.com.cn (Lotus Domino Release 8.5.3FP6)
 with ESMTP id 2019050615033117-10027951 ;
 Mon, 6 May 2019 15:03:31 +0800 
From: Wen Yang <wen.yang99@zte.com.cn>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] media: xilinx: fix leaked of_node references
Date: Mon, 6 May 2019 15:05:18 +0800
Message-Id: <1557126318-21487-5-git-send-email-wen.yang99@zte.com.cn>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1557126318-21487-1-git-send-email-wen.yang99@zte.com.cn>
References: <1557126318-21487-1-git-send-email-wen.yang99@zte.com.cn>
X-MIMETrack: Itemize by SMTP Server on SZSMTP06/server/zte_ltd(Release
 8.5.3FP6|November 21, 2013) at 2019-05-06 15:03:31,
 Serialize by Router on notes_smtp/zte_ltd(Release 9.0.1FP7|August  17, 2016) at
 2019-05-06 15:03:25, Serialize complete at 2019-05-06 15:03:25
X-MAIL: mse-fl2.zte.com.cn x4673RgY076284
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_000544_391124_62AA69C8 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [63.217.80.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: wang.yi59@zte.com.cn, Hyun Kwon <hyun.kwon@xilinx.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Wen Yang <wen.yang99@zte.com.cn>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The call to of_get_child_by_name returns a node pointer with refcount
incremented thus it must be explicitly decremented after the last
usage.

Detected by coccinelle with the following warnings:
drivers/media/platform/xilinx/xilinx-vipp.c:487:3-9: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 477, but without a corresponding object release within this function.
drivers/media/platform/xilinx/xilinx-vipp.c:491:1-7: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 477, but without a corresponding object release within this function.

Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Hyun Kwon <hyun.kwon@xilinx.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Michal Simek <michal.simek@xilinx.com>
Cc: linux-media@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/media/platform/exynos4-is/fimc-is.c   | 1 +
 drivers/media/platform/exynos4-is/media-dev.c | 1 +
 drivers/media/platform/xilinx/xilinx-vipp.c   | 8 +++++---
 3 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/exynos4-is/fimc-is.c b/drivers/media/platform/exynos4-is/fimc-is.c
index 02da0b0..25df4c6 100644
--- a/drivers/media/platform/exynos4-is/fimc-is.c
+++ b/drivers/media/platform/exynos4-is/fimc-is.c
@@ -809,6 +809,7 @@ static int fimc_is_probe(struct platform_device *pdev)
 		return -ENODEV;
 
 	is->pmu_regs = of_iomap(node, 0);
+	of_node_put(node);
 	if (!is->pmu_regs)
 		return -ENOMEM;
 
diff --git a/drivers/media/platform/exynos4-is/media-dev.c b/drivers/media/platform/exynos4-is/media-dev.c
index 463f2d8..a31dacf 100644
--- a/drivers/media/platform/exynos4-is/media-dev.c
+++ b/drivers/media/platform/exynos4-is/media-dev.c
@@ -450,6 +450,7 @@ static int fimc_md_parse_port_node(struct fimc_md *fmd,
 	else
 		pd->fimc_bus_type = pd->sensor_bus_type;
 
+	of_node_put(np);
 	if (WARN_ON(index >= ARRAY_SIZE(fmd->sensor))) {
 		of_node_put(rem);
 		return -EINVAL;
diff --git a/drivers/media/platform/xilinx/xilinx-vipp.c b/drivers/media/platform/xilinx/xilinx-vipp.c
index edce040..307717c 100644
--- a/drivers/media/platform/xilinx/xilinx-vipp.c
+++ b/drivers/media/platform/xilinx/xilinx-vipp.c
@@ -472,7 +472,7 @@ static int xvip_graph_dma_init(struct xvip_composite_device *xdev)
 {
 	struct device_node *ports;
 	struct device_node *port;
-	int ret;
+	int ret = 0;
 
 	ports = of_get_child_by_name(xdev->dev->of_node, "ports");
 	if (ports == NULL) {
@@ -484,11 +484,13 @@ static int xvip_graph_dma_init(struct xvip_composite_device *xdev)
 		ret = xvip_graph_dma_init_one(xdev, port);
 		if (ret < 0) {
 			of_node_put(port);
-			return ret;
+			goto out_put_node;
 		}
 	}
 
-	return 0;
+out_put_node:
+	of_node_put(ports);
+	return ret;
 }
 
 static void xvip_graph_cleanup(struct xvip_composite_device *xdev)
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
