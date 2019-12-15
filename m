Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F59F11F978
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:01:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mMcQapZcQgHFoXb0EL1zHWSeJMDakXiaAO+Y4xB/opM=; b=pTPdoDPlXuN2ZQ
	pFWTtd4cmOmkeC8wPGcws/2jhhibhmiK8+ws0UUCy4GlXJ9fUgecXRbaYxXf7PnQ/XVyK+6Bn9OzO
	avd5L5j69fu0YNHs09gHgjSZAZRBa3eJr6wyLlpntREXsFRVt8O2uv4cOwJE8fSi0AwzvuGeE1//L
	zSMxqiEZz/QhiwhWRcLJj3BNkYqmnr8zl8g6xtaa6cB/u4EsaVXxaG0iv++De1Hmh0esgwnpG0QQD
	6Nl7uF5NWT1H54mjmATSaoRLOLYvwtzrC6QvNUNWdDZWe+n0eT7V7H+3MGmoWw0zufpNMijtOxy5A
	ICnR0EvQ0tQBt2uL7RFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igXH6-0000Cx-My; Sun, 15 Dec 2019 17:01:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igXF1-0005lZ-ST
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 16:59:40 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8CB9E2467D;
 Sun, 15 Dec 2019 16:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576429171;
 bh=2HvYCOg9JIsgIj4BOPEnWKWDtaJsP2z/GYbgmDwmqNw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=R27jcToGRL+lsE9KhkS+b9kJsgcMxW/mcACduEJdBkspVYezS/MfYqQLFonqqJKc+
 y+aL2h9GYXGKSYag1paOupscaZJRze034RYmdZvkF/Agko/Io4jo02no3Q1TNXMWyg
 WHr5rxr13Afcq2OBDXZfCyAu6XmbCxcAzLB3lA2I=
Received: by wens.tw (Postfix, from userid 1000)
 id 47DAC5FD28; Mon, 16 Dec 2019 00:59:26 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 05/14] media: sun4i-csi: Deal with DRAM offset
Date: Mon, 16 Dec 2019 00:59:15 +0800
Message-Id: <20191215165924.28314-6-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191215165924.28314-1-wens@kernel.org>
References: <20191215165924.28314-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_085935_955673_7BEFCBA6 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

On Allwinner SoCs, some high memory bandwidth devices do DMA directly
over the memory bus (called MBUS), instead of the system bus. These
devices include the CSI camera sensor interface, video (codec) engine,
display subsystem, etc.. The memory bus has a different addressing
scheme without the DRAM starting offset.

Deal with this using the "interconnects" property from the device tree,
or if that is not available, set dev->dma_pfn_offset to PHYS_PFN_OFFSET.

Fixes: 577bbf23b758 ("media: sunxi: Add A10 CSI driver")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 .../platform/sunxi/sun4i-csi/sun4i_csi.c      | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c
index f36dc6258900..b8b07c1de2a8 100644
--- a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c
+++ b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c
@@ -11,6 +11,7 @@
 #include <linux/module.h>
 #include <linux/mutex.h>
 #include <linux/of.h>
+#include <linux/of_device.h>
 #include <linux/of_graph.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
@@ -155,6 +156,27 @@ static int sun4i_csi_probe(struct platform_device *pdev)
 	subdev = &csi->subdev;
 	vdev = &csi->vdev;
 
+	/*
+	 * On Allwinner SoCs, some high memory bandwidth devices do DMA
+	 * directly over the memory bus (called MBUS), instead of the
+	 * system bus. The memory bus has a different addressing scheme
+	 * without the DRAM starting offset.
+	 *
+	 * In some cases this can be described by an interconnect in
+	 * the device tree. In other cases where the hardware is not
+	 * fully understood and the interconnect is left out of the
+	 * device tree, fall back to a default offset.
+	 */
+	if (of_find_property(csi->dev->of_node, "interconnects", NULL)) {
+		ret = of_dma_configure(csi->dev, csi->dev->of_node, true);
+		if (ret)
+			return ret;
+	} else {
+#ifdef PHYS_PFN_OFFSET
+		csi->dev->dma_pfn_offset = PHYS_PFN_OFFSET;
+#endif
+	}
+
 	csi->mdev.dev = csi->dev;
 	strscpy(csi->mdev.model, "Allwinner Video Capture Device",
 		sizeof(csi->mdev.model));
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
