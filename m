Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5861525A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 05:43:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V2/tjfm+rKGU5rjwrQJRM7qShoenMu8Myo3hAwBzAXs=; b=nXJzLTOlRohC97
	hfBTBq5irb4759iawt5mjGLZXn7uxqj4TV7WspF1SCF8n5SmzTo3Q798U+LQHHVSSo3rJGqb7iQW6
	BBDfI94JldCgnWQUYLVBNDs3/JMZFULaknF7RvIT/JpCUU6KfTxpd7JnZQnucKGAgy/N9mSeTtr9j
	h8sz61QLNkstJgIjm/DOHMv6o4si24ZvOZOuLRcmYAiGDGdgSt1L8n/Iv9s5d6N113Wjji5X0Q0Zz
	wUg7pisSk9u3KoHBLd4nvD6FPSLD4PgQcsj2iW+Q2/h4FHSQyzVsdBt/zHRX4dlyvafhiyJEVqY2g
	rc75Ig+elqxIlcOg/CAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izCWu-0004N6-Ij; Wed, 05 Feb 2020 04:43:12 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izCWo-0004MG-2j
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 04:43:07 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 1FE8CC8171B8065DF288;
 Wed,  5 Feb 2020 12:42:59 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Wed, 5 Feb 2020
 12:42:51 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <vkoul@kernel.org>, <dan.j.williams@intel.com>, <mripard@kernel.org>,
 <wens@csie.org>, <stefan@olimex.com>
Subject: [PATCH -next] dmaengine: sun4i: remove set but unused variable
 'linear_mode'
Date: Wed, 5 Feb 2020 12:42:47 +0800
Message-ID: <20200205044247.32496-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_204306_286619_90F70625 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dmaengine@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

drivers/dma/sun4i-dma.c: In function sun4i_dma_prep_dma_cyclic:
drivers/dma/sun4i-dma.c:672:24: warning:
 variable linear_mode set but not used [-Wunused-but-set-variable]

commit ffc079a4accc ("dmaengine: sun4i: Add support for cyclic requests with dedicated DMA")
involved this unused variable.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/dma/sun4i-dma.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/dma/sun4i-dma.c b/drivers/dma/sun4i-dma.c
index bbc2bda..501cd44 100644
--- a/drivers/dma/sun4i-dma.c
+++ b/drivers/dma/sun4i-dma.c
@@ -669,7 +669,7 @@ sun4i_dma_prep_dma_cyclic(struct dma_chan *chan, dma_addr_t buf, size_t len,
 	dma_addr_t src, dest;
 	u32 endpoints;
 	int nr_periods, offset, plength, i;
-	u8 ram_type, io_mode, linear_mode;
+	u8 ram_type, io_mode;
 
 	if (!is_slave_direction(dir)) {
 		dev_err(chan2dev(chan), "Invalid DMA direction\n");
@@ -684,11 +684,9 @@ sun4i_dma_prep_dma_cyclic(struct dma_chan *chan, dma_addr_t buf, size_t len,
 
 	if (vchan->is_dedicated) {
 		io_mode = SUN4I_DDMA_ADDR_MODE_IO;
-		linear_mode = SUN4I_DDMA_ADDR_MODE_LINEAR;
 		ram_type = SUN4I_DDMA_DRQ_TYPE_SDRAM;
 	} else {
 		io_mode = SUN4I_NDMA_ADDR_MODE_IO;
-		linear_mode = SUN4I_NDMA_ADDR_MODE_LINEAR;
 		ram_type = SUN4I_NDMA_DRQ_TYPE_SDRAM;
 	}
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
