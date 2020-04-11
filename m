Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D1F1A5630
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 01:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQVe3weOZpjDUN89uRNF/X1dTuta4ZS7BL88zZ9ghrc=; b=g6TTqHYyr8tGCv
	81fBWyHtn5ASF2dqRBO0NNzmc70mWEXNkL9SQEExgnP8euKoZvpnTVbBHe3NvzOcHOII7TBVqkaYI
	RxeXrNjXCHBuF4mM8gucG7aCFXnWB2VYqpqbkesRQmmWJCCUJ+nD3XLtot6toWV9SHMSA6uWMv0Kv
	CjzyjXEZMDiOp8VOrs/YJche1ESrSnrtVDxMl7+6zV1Hz4qffomrqkcatLagK4zBQxSlr/pORjyct
	EgGU+3cN9NYzvCMpTQNYrqOqXvU/hUmI3kTXlg2UwabWLRlM59TinIwdO7cO6Xva6kcpKhO/JcJeL
	nsQaX4w+8ENQeuPbn9fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNPKo-0001yf-9G; Sat, 11 Apr 2020 23:14:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNPFQ-0003DR-DQ
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 23:09:21 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D69D20708;
 Sat, 11 Apr 2020 23:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586646552;
 bh=BuT+U3bSnltRoLUw4bLKl1iPe6gDp2CGnADnaOvLaGw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1eEN1Fbtet4vlVm4DU46J1iSdc6/Q9i3eiuR2CdoK1bjZw9oXuvuUyMr+VChiGAuF
 tdveL62/lXc1ZR0eOfFq1RVb2XZ3qm3u2GtfPMeq2PK3jdIMso6Bz+eiA+jVliylNq
 gVNMU+ZYm2bL2cApalkFnnRXK0CxwpabPpLbaaq4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 102/121] dmaengine: stm32-dma: use reset
 controller only at probe time
Date: Sat, 11 Apr 2020 19:06:47 -0400
Message-Id: <20200411230706.23855-102-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230706.23855-1-sashal@kernel.org>
References: <20200411230706.23855-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_160916_851535_59ECF6D5 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Etienne Carriere <etienne.carriere@st.com>, Sasha Levin <sashal@kernel.org>,
 Amelie Delaunay <amelie.delaunay@st.com>, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Etienne Carriere <etienne.carriere@st.com>

[ Upstream commit 8cf1e0fc50fcc25021567bb2755580504c57c83a ]

Remove reset controller reference from device instance since it is
used only at probe time.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
Link: https://lore.kernel.org/r/20200129153628.29329-3-amelie.delaunay@st.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/dma/stm32-dma.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/dma/stm32-dma.c b/drivers/dma/stm32-dma.c
index 5989b08935211..ff34a10fc8d89 100644
--- a/drivers/dma/stm32-dma.c
+++ b/drivers/dma/stm32-dma.c
@@ -207,7 +207,6 @@ struct stm32_dma_device {
 	struct dma_device ddev;
 	void __iomem *base;
 	struct clk *clk;
-	struct reset_control *rst;
 	bool mem2mem;
 	struct stm32_dma_chan chan[STM32_DMA_MAX_CHANNELS];
 };
@@ -1275,6 +1274,7 @@ static int stm32_dma_probe(struct platform_device *pdev)
 	struct dma_device *dd;
 	const struct of_device_id *match;
 	struct resource *res;
+	struct reset_control *rst;
 	int i, ret;
 
 	match = of_match_device(stm32_dma_of_match, &pdev->dev);
@@ -1309,11 +1309,11 @@ static int stm32_dma_probe(struct platform_device *pdev)
 	dmadev->mem2mem = of_property_read_bool(pdev->dev.of_node,
 						"st,mem2mem");
 
-	dmadev->rst = devm_reset_control_get(&pdev->dev, NULL);
-	if (!IS_ERR(dmadev->rst)) {
-		reset_control_assert(dmadev->rst);
+	rst = devm_reset_control_get(&pdev->dev, NULL);
+	if (!IS_ERR(rst)) {
+		reset_control_assert(rst);
 		udelay(2);
-		reset_control_deassert(dmadev->rst);
+		reset_control_deassert(rst);
 	}
 
 	dma_cap_set(DMA_SLAVE, dd->cap_mask);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
