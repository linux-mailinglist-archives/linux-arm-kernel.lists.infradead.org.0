Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 196EC15DBEC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:51:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJqEKJWYQSwCEwt604QNdXVmxMJhxa++admng3+DmnY=; b=OR3NVA23jLXoaH
	j+9W9F6Rb8r+l5CVgpfOrg1KKz4ZOXi0VP1FlvVdV7+vZR0CChajq7a7z8hWPMf3/MJOQmYVqfW6Q
	yClESK+YpXcs3J4OTEIMNJ0BrZaqNL8pfSLiOZRfwlu7Wk0n5zAfuS7rFMdJKQTC1Glc2p5ERpj9A
	5wUv1YdRV2vy6se4LsBTWntE4glGcBtAwrfGa/kP1FpmCdNAnehhKxtQ7ZAE6MEEAWrNIC4n8ZWOT
	6N/y1QEAIG2m59FlqPO3wYmHYrJvxU/HZYl8+jGdYGwc1ASjUBJZCqvgDp+4D/28MtbnBy1AiRegg
	Fyp/sWonsUsCuRtHDlSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dFb-0004Jr-I0; Fri, 14 Feb 2020 15:51:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dE1-0001wf-72
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:49:55 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D845024688;
 Fri, 14 Feb 2020 15:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695391;
 bh=uTLnBEJERTGry/cuDv6VzwuoL0a2YHXZt5HbDHNk0wA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pGG9NRVdZc1Cw6KDvKcnb2hVoAmgJeuGNkjJbf4YtW75YztctrtC9JpiNSW1xEOUi
 EcOJVYYxSANU+MBwWHK28gvAnm9QVgzNB+NMQouy3qrD07l9ik4RPq3GjnmCNca53o
 AHwxoCiq50DPWy11JXYON44+a3TBWR/8fGR6PRg0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 044/542] media: sun4i-csi: Fix data sampling
 polarity handling
Date: Fri, 14 Feb 2020 10:40:36 -0500
Message-Id: <20200214154854.6746-44-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_074953_454425_7443EB0C 
X-CRM114-Status: GOOD (  13.03  )
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

[ Upstream commit cf9e6d5dbdd56ef2aa72f28c806711c4293c8848 ]

The CLK_POL field specifies whether data is sampled on the falling or
rising edge of PCLK, not whether the data lines are active high or low.
Evidence of this can be found in the timing diagram labeled "horizontal
size setting and pixel clock timing".

Fix the setting by checking the correct flag, V4L2_MBUS_PCLK_SAMPLE_RISING.
While at it, reorder the three polarity flag checks so HSYNC and VSYNC
are grouped together.

Fixes: 577bbf23b758 ("media: sunxi: Add A10 CSI driver")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
Acked-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c b/drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c
index d6979e11a67b2..8b567d0f019bf 100644
--- a/drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c
+++ b/drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c
@@ -279,8 +279,8 @@ static int sun4i_csi_start_streaming(struct vb2_queue *vq, unsigned int count)
 	       csi->regs + CSI_WIN_CTRL_H_REG);
 
 	hsync_pol = !!(bus->flags & V4L2_MBUS_HSYNC_ACTIVE_HIGH);
-	pclk_pol = !!(bus->flags & V4L2_MBUS_DATA_ACTIVE_HIGH);
 	vsync_pol = !!(bus->flags & V4L2_MBUS_VSYNC_ACTIVE_HIGH);
+	pclk_pol = !!(bus->flags & V4L2_MBUS_PCLK_SAMPLE_RISING);
 	writel(CSI_CFG_INPUT_FMT(csi_fmt->input) |
 	       CSI_CFG_OUTPUT_FMT(csi_fmt->output) |
 	       CSI_CFG_VSYNC_POL(vsync_pol) |
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
