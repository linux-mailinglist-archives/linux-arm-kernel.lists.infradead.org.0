Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E2E1368ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 09:26:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kmn/kHfpYqkk7kliVJjj+iNXrLpJLnYYtRXX/Sl0G24=; b=XfC
	Fm7REy1XBUE8PFLyWfiEGYOX2mcouklH3xKx/om6QBsW5bqvuzssXNJNpVSeqc12Yl4upE98yl8hv
	9liQiwKAv6QXzQpREC/ylKv2GTc4NiKnBsYEOsGEKDiYOsRyxJxkw1qVeOlWplqNu+tmaVJmIgKJk
	5bwnKcKij6pkYm7upfffaMOwk1Q7VlnwmCF+j7QJFdmKSl4LEA+UOeDYkd0Iisb6YESd/dZ65FyHc
	ktBSwVSqJ28NjrbmdhS3TNrlTvbWWDBjbSq9j/wl9jYSvfKi74zUMIGKABXFXQy4X8gjdyU6uBfMG
	dQRfw/MllgL2GMjGH7etU2WaijYAgSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ippcz-0004pi-H9; Fri, 10 Jan 2020 08:26:45 +0000
Received: from rmisp-mx-out4.tele.net ([194.208.23.39])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ippcs-0004oz-VN
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 08:26:41 +0000
Received: from wvls01.wolfvision-at.intra (91-118-163-37.static.upcbusiness.at
 [91.118.163.37])
 by rmisp-mx-out4.tele.net (Postfix) with ESMTPSA id 91D41104A7D7;
 Fri, 10 Jan 2020 09:26:32 +0100 (CET)
From: Matthias Fend <matthias.fend@wolfvision.net>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] dmaengine: zynqmp_dma: fix burst length configuration
Date: Fri, 10 Jan 2020 09:26:07 +0100
Message-Id: <20200110082607.25353-1-matthias.fend@wolfvision.net>
X-Mailer: git-send-email 2.17.1
X-Scanned-By: MIMEDefang 2.75 on 194.208.23.39
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_002639_164578_FA4FA9AC 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.208.23.39 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: dmaengine@vger.kernel.org, Matthias Fend <matthias.fend@wolfvision.net>,
 vkoul@kernel.org, michal.simek@xilinx.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the dma engine expects the burst length register content as
power of 2 value, the burst length needs to be converted first.
Additionally add a burst length range check to avoid corrupting unrelated
register bits.

Signed-off-by: Matthias Fend <matthias.fend@wolfvision.net>
---
 drivers/dma/xilinx/zynqmp_dma.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/dma/xilinx/zynqmp_dma.c b/drivers/dma/xilinx/zynqmp_dma.c
index 9c845c07b107..aa4de6c6688a 100644
--- a/drivers/dma/xilinx/zynqmp_dma.c
+++ b/drivers/dma/xilinx/zynqmp_dma.c
@@ -123,10 +123,12 @@
 /* Max transfer size per descriptor */
 #define ZYNQMP_DMA_MAX_TRANS_LEN	0x40000000
 
+/* Max burst lengths */
+#define ZYNQMP_DMA_MAX_DST_BURST_LEN    16
+#define ZYNQMP_DMA_MAX_SRC_BURST_LEN    16
+
 /* Reset values for data attributes */
 #define ZYNQMP_DMA_AXCACHE_VAL		0xF
-#define ZYNQMP_DMA_ARLEN_RST_VAL	0xF
-#define ZYNQMP_DMA_AWLEN_RST_VAL	0xF
 
 #define ZYNQMP_DMA_SRC_ISSUE_RST_VAL	0x1F
 
@@ -534,17 +536,19 @@ static void zynqmp_dma_handle_ovfl_int(struct zynqmp_dma_chan *chan, u32 status)
 
 static void zynqmp_dma_config(struct zynqmp_dma_chan *chan)
 {
-	u32 val;
+	u32 val, burst_val;
 
 	val = readl(chan->regs + ZYNQMP_DMA_CTRL0);
 	val |= ZYNQMP_DMA_POINT_TYPE_SG;
 	writel(val, chan->regs + ZYNQMP_DMA_CTRL0);
 
 	val = readl(chan->regs + ZYNQMP_DMA_DATA_ATTR);
+	burst_val = __ilog2_u32(chan->src_burst_len);
 	val = (val & ~ZYNQMP_DMA_ARLEN) |
-		(chan->src_burst_len << ZYNQMP_DMA_ARLEN_OFST);
+		(burst_val << ZYNQMP_DMA_ARLEN_OFST);
+	burst_val = __ilog2_u32(chan->dst_burst_len);
 	val = (val & ~ZYNQMP_DMA_AWLEN) |
-		(chan->dst_burst_len << ZYNQMP_DMA_AWLEN_OFST);
+		(burst_val << ZYNQMP_DMA_AWLEN_OFST);
 	writel(val, chan->regs + ZYNQMP_DMA_DATA_ATTR);
 }
 
@@ -560,8 +564,10 @@ static int zynqmp_dma_device_config(struct dma_chan *dchan,
 {
 	struct zynqmp_dma_chan *chan = to_chan(dchan);
 
-	chan->src_burst_len = config->src_maxburst;
-	chan->dst_burst_len = config->dst_maxburst;
+	chan->src_burst_len = clamp(config->src_maxburst, 1U,
+		(u32) ZYNQMP_DMA_MAX_SRC_BURST_LEN);
+	chan->dst_burst_len = clamp(config->dst_maxburst, 1U,
+		(u32) ZYNQMP_DMA_MAX_DST_BURST_LEN);
 
 	return 0;
 }
@@ -887,8 +893,8 @@ static int zynqmp_dma_chan_probe(struct zynqmp_dma_device *zdev,
 		return PTR_ERR(chan->regs);
 
 	chan->bus_width = ZYNQMP_DMA_BUS_WIDTH_64;
-	chan->dst_burst_len = ZYNQMP_DMA_AWLEN_RST_VAL;
-	chan->src_burst_len = ZYNQMP_DMA_ARLEN_RST_VAL;
+	chan->dst_burst_len = ZYNQMP_DMA_MAX_DST_BURST_LEN;
+	chan->src_burst_len = ZYNQMP_DMA_MAX_SRC_BURST_LEN;
 	err = of_property_read_u32(node, "xlnx,bus-width", &chan->bus_width);
 	if (err < 0) {
 		dev_err(&pdev->dev, "missing xlnx,bus-width property\n");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
