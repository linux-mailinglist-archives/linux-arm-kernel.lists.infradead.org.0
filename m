Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B019C11F974
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:01:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=luGPi49lCBG5EdflU5CcSbpFXAP1KdoTd78LZEovanU=; b=YcaxCmir/RyZFZ
	8HBC83UJSZZUPKsHuxZWdMubjyGoYgSvFSOjJaWawqachkKWrUMkeFsTFVFtmQTDVVIVUfwqE8JM1
	i0ferZGD9D/yiLegSlWKvXvfYqeIdtpTQMGg0Oxpo+aOAC3u4wzc344475RuaaovLycpbY23gTWbK
	3sXWEPUe8YqMg780bKx1mb6Nm2DMlkInX2XSnIx7gR/6Bw5LVinCUso4c7tWFdQe4u1fnH0PNGEOB
	IS7MXbt/kZ+XrpYYsV6ITU8cWJsi2iKkQUlGQayVH3RpO1k3fbmu8GNDSxU95Whd9fGkTuzCSRqS6
	IGfFkZGHTtr+M7OOFaTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igXGb-0008AZ-Bu; Sun, 15 Dec 2019 17:01:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igXF0-0005kO-80
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 16:59:37 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D472224686;
 Sun, 15 Dec 2019 16:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576429170;
 bh=YiZkGwkK67xjKvh04OG2iNzUX1jhnitIyudLUFuCRas=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2qlgAGADNndp5PkpCyzmH5tNeE7ulCCZUZkYrmoWcmcckE1Wso4CrFtsoe3I8oGZP
 ZNHOFwmac4zmMoRG3gtuQegrM6CF6zYu/34/FSIdhKlG6dD0HUzm0xPJz0T+i9ijyM
 oyisXQLNtZHdEJ+rJH05YPBTANwfMebPkUO5K09k=
Received: by wens.tw (Postfix, from userid 1000)
 id 433D25FD5D; Mon, 16 Dec 2019 00:59:26 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 04/14] media: sun4i-csi: Fix [HV]sync polarity handling
Date: Mon, 16 Dec 2019 00:59:14 +0800
Message-Id: <20191215165924.28314-5-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191215165924.28314-1-wens@kernel.org>
References: <20191215165924.28314-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_085934_335444_5EFB5CDB 
X-CRM114-Status: GOOD (  13.21  )
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

The Allwinner camera sensor interface has a different definition of
[HV]sync. While the timing diagram uses the names HSYNC and VSYNC,
the note following the diagram and register names use HREF and VREF.
Combined they imply the hardware uses either [HV]REF or inverted
[HV]SYNC. There are also registers to set horizontal skip lengths
in pixels and vertical skip lengths in lines, also known as back
porches.

Fix the polarity handling by using the opposite polarity flag for
the checks. Also rename `[hv]sync_pol` to `[hv]ref_pol` to better
match the hardware register description.

Fixes: 577bbf23b758 ("media: sunxi: Add A10 CSI driver")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 .../media/platform/sunxi/sun4i-csi/sun4i_csi.h |  4 ++--
 .../media/platform/sunxi/sun4i-csi/sun4i_dma.c | 18 +++++++++++++-----
 2 files changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h
index 001c8bde006c..88d39b3554c4 100644
--- a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h
+++ b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h
@@ -22,8 +22,8 @@
 #define CSI_CFG_INPUT_FMT(fmt)			((fmt) << 20)
 #define CSI_CFG_OUTPUT_FMT(fmt)			((fmt) << 16)
 #define CSI_CFG_YUV_DATA_SEQ(seq)		((seq) << 8)
-#define CSI_CFG_VSYNC_POL(pol)			((pol) << 2)
-#define CSI_CFG_HSYNC_POL(pol)			((pol) << 1)
+#define CSI_CFG_VREF_POL(pol)			((pol) << 2)
+#define CSI_CFG_HREF_POL(pol)			((pol) << 1)
 #define CSI_CFG_PCLK_POL(pol)			((pol) << 0)
 
 #define CSI_CPT_CTRL_REG		0x08
diff --git a/drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c b/drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c
index 8b567d0f019b..78fa1c535ac6 100644
--- a/drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c
+++ b/drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c
@@ -228,7 +228,7 @@ static int sun4i_csi_start_streaming(struct vb2_queue *vq, unsigned int count)
 	struct sun4i_csi *csi = vb2_get_drv_priv(vq);
 	struct v4l2_fwnode_bus_parallel *bus = &csi->bus;
 	const struct sun4i_csi_format *csi_fmt;
-	unsigned long hsync_pol, pclk_pol, vsync_pol;
+	unsigned long href_pol, pclk_pol, vref_pol;
 	unsigned long flags;
 	unsigned int i;
 	int ret;
@@ -278,13 +278,21 @@ static int sun4i_csi_start_streaming(struct vb2_queue *vq, unsigned int count)
 	writel(CSI_WIN_CTRL_H_ACTIVE(csi->fmt.height),
 	       csi->regs + CSI_WIN_CTRL_H_REG);
 
-	hsync_pol = !!(bus->flags & V4L2_MBUS_HSYNC_ACTIVE_HIGH);
-	vsync_pol = !!(bus->flags & V4L2_MBUS_VSYNC_ACTIVE_HIGH);
+	/*
+	 * This hardware uses [HV]REF instead of [HV]SYNC. Based on the
+	 * provided timing diagrams in the manual, positive polarity
+	 * equals active high [HV]REF.
+	 *
+	 * When the back porch is 0, [HV]REF is more or less equivalent
+	 * to [HV]SYNC inverted.
+	 */
+	href_pol = !!(bus->flags & V4L2_MBUS_HSYNC_ACTIVE_LOW);
+	vref_pol = !!(bus->flags & V4L2_MBUS_VSYNC_ACTIVE_LOW);
 	pclk_pol = !!(bus->flags & V4L2_MBUS_PCLK_SAMPLE_RISING);
 	writel(CSI_CFG_INPUT_FMT(csi_fmt->input) |
 	       CSI_CFG_OUTPUT_FMT(csi_fmt->output) |
-	       CSI_CFG_VSYNC_POL(vsync_pol) |
-	       CSI_CFG_HSYNC_POL(hsync_pol) |
+	       CSI_CFG_VREF_POL(vref_pol) |
+	       CSI_CFG_HREF_POL(href_pol) |
 	       CSI_CFG_PCLK_POL(pclk_pol),
 	       csi->regs + CSI_CFG_REG);
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
