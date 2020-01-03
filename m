Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEE712F4B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 07:45:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FFST70/dlvfLHwT5NSVwiHCODsJMOZEkpre30MdHTU8=; b=u2KpPlxSTW63Jc
	rRH/EMr58WQT5tmCUlBXKoGhPEC/xUfA1HEYQdF8+NNvyIJKhLSlvVAekVREhcadmQjPaukQZNYUY
	HtxhNrn8hYM1r+EGzUbhUXC87XNMNx/3qE/zsi5LO0c8w9kvwB1q9DeEI0z1qtqw7C6tsWsqJIJz4
	rxhsD220QyfYM5g5oWo/JiLcacNozMDMb5fc9cotn3neoJyQL1oZXBrhTA6SKgLUlxBeZfxdey61g
	tsrwBMCZtpnEEGA4Y6jZcP3/ywnONrf2gHstrheAuQQIScv04+38HZOaiGd8d+14k14tIQuOh7Ln8
	rqHl79fkyFl5GSMbMsHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inGiS-0006mS-IT; Fri, 03 Jan 2020 06:45:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inGiL-0006lt-Ha
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 06:45:42 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC72B2084D;
 Fri,  3 Jan 2020 06:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578033940;
 bh=uTSF6E4wwyqWFXkFFslDg6+jXPOT+pfOXx94ZxAaOqo=;
 h=From:To:Cc:Subject:Date:From;
 b=Yb3/TzPTWyYXoQM41bfm2ZRmCBK65n3C29E8EUgXMauc7zHjjQn3jeQoXPaAPktG2
 bnOU0GR+9Ic/PS1Ki/5+TrwlczvGcH+RjGIHVytZvcykRn1CTu7GdLrvlh7XYl4Z2+
 dIoU00t/wPvEqH0qHuS0T4MDaHxPJeiAHxlPOj88=
Received: by wens.tw (Postfix, from userid 1000)
 id 6447B5FC7C; Fri,  3 Jan 2020 14:45:38 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: [PATCH v2] media: sun4i-csi: Add support for A10 CSI1 camera sensor
 interface
Date: Fri,  3 Jan 2020 14:45:33 +0800
Message-Id: <20200103064533.14864-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_224541_620552_675214D8 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The A10/A20 Allwinner SoCs have two camera sensor interface blocks,
named CSI0 and CSI1. The two have the same register layouts with
slightly different features:

  - CSI0 has an image signal processor (ISP); CSI1 doesn't

  - CSI0 can support up to four separate channels under CCIR656;
    CSI1 can only support one

  - CSI0 can support up to 16-bit wide bus with YUV422;
    CSI1 can support up to 24-bit wide bus with YUV444

For now the driver doesn't support wide busses, nor CCIR656. So the
only relevant difference is whether a clock needs to be taken and
enabled for the ISP.

Add structs to record the differences, tie them to the compatible
strings, and deal with the ISP clock. Support for the new CSI1
hardware block is added as well.

Acked-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
Hi Sakari,

As requested, v2 of patch 6 from the "media: sun4i-csi: A10/A20 CSI1
and R40 CSI0 support" patch series.

Changes since v1:

   - make traits structures static const

Thanks
---
 .../platform/sunxi/sun4i-csi/sun4i_csi.c      | 35 ++++++++++++++++---
 .../platform/sunxi/sun4i-csi/sun4i_csi.h      |  2 ++
 2 files changed, 32 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c
index b8b07c1de2a8..eff34ded6305 100644
--- a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c
+++ b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c
@@ -29,6 +29,12 @@
 
 #include "sun4i_csi.h"
 
+struct sun4i_csi_traits {
+	unsigned int channels;
+	unsigned int max_width;
+	bool has_isp;
+};
+
 static const struct media_entity_operations sun4i_csi_video_entity_ops = {
 	.link_validate = v4l2_subdev_link_validate,
 };
@@ -156,6 +162,10 @@ static int sun4i_csi_probe(struct platform_device *pdev)
 	subdev = &csi->subdev;
 	vdev = &csi->vdev;
 
+	csi->traits = of_device_get_match_data(&pdev->dev);
+	if (!csi->traits)
+		return -EINVAL;
+
 	/*
 	 * On Allwinner SoCs, some high memory bandwidth devices do DMA
 	 * directly over the memory bus (called MBUS), instead of the
@@ -199,10 +209,12 @@ static int sun4i_csi_probe(struct platform_device *pdev)
 		return PTR_ERR(csi->bus_clk);
 	}
 
-	csi->isp_clk = devm_clk_get(&pdev->dev, "isp");
-	if (IS_ERR(csi->isp_clk)) {
-		dev_err(&pdev->dev, "Couldn't get our ISP clock\n");
-		return PTR_ERR(csi->isp_clk);
+	if (csi->traits->has_isp) {
+		csi->isp_clk = devm_clk_get(&pdev->dev, "isp");
+		if (IS_ERR(csi->isp_clk)) {
+			dev_err(&pdev->dev, "Couldn't get our ISP clock\n");
+			return PTR_ERR(csi->isp_clk);
+		}
 	}
 
 	csi->ram_clk = devm_clk_get(&pdev->dev, "ram");
@@ -280,8 +292,21 @@ static int sun4i_csi_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct sun4i_csi_traits sun4i_a10_csi1_traits = {
+	.channels = 1,
+	.max_width = 24,
+	.has_isp = false,
+};
+
+static const struct sun4i_csi_traits sun7i_a20_csi0_traits = {
+	.channels = 4,
+	.max_width = 16,
+	.has_isp = true,
+};
+
 static const struct of_device_id sun4i_csi_of_match[] = {
-	{ .compatible = "allwinner,sun7i-a20-csi0" },
+	{ .compatible = "allwinner,sun4i-a10-csi1", .data = &sun4i_a10_csi1_traits },
+	{ .compatible = "allwinner,sun7i-a20-csi0", .data = &sun7i_a20_csi0_traits },
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, sun4i_csi_of_match);
diff --git a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h
index 88d39b3554c4..0f67ff652c2e 100644
--- a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h
+++ b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h
@@ -108,6 +108,8 @@ struct sun4i_csi {
 	/* Device resources */
 	struct device			*dev;
 
+	const struct sun4i_csi_traits	*traits;
+
 	void __iomem			*regs;
 	struct clk			*bus_clk;
 	struct clk			*isp_clk;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
