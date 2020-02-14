Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD4E15E19F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:19:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EK7nSzeKFpCE7TEs9eTNeoeEn5Fep49KQCuuh8vlvGo=; b=ff5BSlaHWcw1qT
	Fq2IjeZjaFvNSfa34pwO2Eyi1fK+ElEzz7Dw0eug+meJgj93qVJwLNgZudBYXwP2LRKZpZIyPnOcZ
	qfCGrq1iOQpQQb3xH3BjAGgHTg7Wj1jP0Pef0+xIrsZwewcQUZzhnoWkZ4iHSzvYsd6oCkn3abcTJ
	xIHCF/ouNYV1zX0kn4KjOTQ4eOcL8vQ96brUupaFJB2KmQnXTX8de4M6aUCwx2Z7E7lbFe9bbPgxv
	uU9Nbf0jxlUQWvugsvkZESgFxwfyy/NMdn1yI1CKy8m5h+/nsqr8cDPT+YIFXLdlyJfgbGVw77lXQ
	Gm+XYr8oeCSzMTzzWIsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dgu-0002Tw-A7; Fri, 14 Feb 2020 16:19:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dQT-0000vB-RV
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:02:47 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5E4E217F4;
 Fri, 14 Feb 2020 16:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696164;
 bh=5bJSGcisAMQ6ge9lH5Vmo9G0UmVONpbBRcpK/946w5k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uqTRatt8/q8Pke2EGVaMAWO3EXTNbfCuB8+aAiFdZa/IT8b5v7H/i/z8S+G5wIMOG
 L8/hiWRlT1mocMkRERNIPL4UZgCnVll0LeTG/cOjoAztD7TNesDQVLeEyXzbmVqwSO
 gKBO8W2dC5GTgwFxrT6nqux9nZ5+8Fl7MVY5oW0I=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 040/459] media: sun4i-csi: Fix [HV]sync polarity
 handling
Date: Fri, 14 Feb 2020 10:54:50 -0500
Message-Id: <20200214160149.11681-40-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080245_942098_87926FC3 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

[ Upstream commit 1948dcf0f928b8bcdca57ca3fba8545ba380fc29 ]

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
Acked-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../media/platform/sunxi/sun4i-csi/sun4i_csi.h |  4 ++--
 .../media/platform/sunxi/sun4i-csi/sun4i_dma.c | 18 +++++++++++++-----
 2 files changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h
index 001c8bde006ce..88d39b3554c4b 100644
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
index 8b567d0f019bf..78fa1c535ac64 100644
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
