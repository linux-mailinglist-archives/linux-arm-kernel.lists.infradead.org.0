Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F0DA3BBF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:14:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uPSuDpUv5LmJE5fd5R36ztZs+rWXlag8byBM39Vz1Zs=; b=Uk47Yk526BNr+M
	wHk5gwLpSPwphnUzwxUrKTqMdV/RXEOTWn++ioB3VMD5OigUPoO5O8nFXyTOtQyqEZ7RXWbPXJW/1
	7ogn4iyHVznrPH3KTcSoo4oMBu7yAjLR2W7tqgIGXhWvYDG344p+L9Xerr3BdYunC2SmB9OZguY3b
	w+A+AKndVheJJaEy3BOHAx90TW9ZiFQnT5xJ1As/szlQuOv5ysSnDH13gF1h2Td2iC4WVWCQ5b7MS
	kIWoAqg46LW7svd5+UzUqFDCPQTLQoS2PCNMokqFJ+3O7a1YvDVtdIsLe8hUhe1xZ7bwjtMmrDKLK
	osusbh8kiUGGRYKeu1pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3jY1-000143-Q9; Fri, 30 Aug 2019 16:14:49 +0000
Received: from gateway30.websitewelcome.com ([192.185.168.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3jXr-000128-9u
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:14:40 +0000
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
 by gateway30.websitewelcome.com (Postfix) with ESMTP id 079481622B
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 11:14:26 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 3jXdiRblw4FKp3jXdiVVQV; Fri, 30 Aug 2019 11:14:26 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aGYr2FM4QQtcTWRAHMFf23E34Ywi1aRTuyHCXd6kje0=; b=pAliF8TGvjsDz5WSKpj+xjc670
 wG3SdMnDpV0CMTt6RY56y+kj5QAhp2VlSc66xWk513X6/TkKw8+aHdNS5DlJCWj2wigHMxromxRDb
 iPMa3sVurbFOI1x6bHYrFu01Ip3EMiC/12ms7poxNoi/ph1lIjLU6lXhk48DXileLCfFVsD9pJ4vq
 cfz7hSg96NYDOrSLiAHa4CBH656OaB0m3kdO7QTCtTdurZlwthlR6Lqs+ZfQFij4WWCpJIx0nA2ZY
 4AgSPWtE4OGElW/r2HR+6Kfro853MmI01eRtd1Emp6UirKMojcshO4o8s21IWNAPiR/Gc3CBsE8U+
 0+f630WA==;
Received: from [189.152.216.116] (port=34988 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1i3jXc-000lDa-Le; Fri, 30 Aug 2019 11:14:24 -0500
Date: Fri, 30 Aug 2019 11:14:23 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH] dmaengine: stm32-dma: Use struct_size() helper
Message-ID: <20190830161423.GA3483@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 189.152.216.116
X-Source-L: No
X-Exim-ID: 1i3jXc-000lDa-Le
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [189.152.216.116]:34988
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 7
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_091439_433646_BDB2EF92 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.168.15 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

One of the more common cases of allocation size calculations is finding
the size of a structure that has a zero-sized array at the end, along
with memory for some number of elements for that array. For example:

struct stm32_dma_desc {
	...
        struct stm32_dma_sg_req sg_req[];
};


Make use of the struct_size() helper instead of an open-coded version
in order to avoid any potential type mistakes.

So, replace the following function:

static struct stm32_dma_desc *stm32_dma_alloc_desc(u32 num_sgs)
{
       return kzalloc(sizeof(struct stm32_dma_desc) +
                      sizeof(struct stm32_dma_sg_req) * num_sgs, GFP_NOWAIT);
}

with:

kzalloc(struct_size(desc, sg_req, num_sgs), GFP_NOWAIT)

This code was detected with the help of Coccinelle.

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/dma/stm32-dma.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/dma/stm32-dma.c b/drivers/dma/stm32-dma.c
index e4cbe38d1b83..5989b0893521 100644
--- a/drivers/dma/stm32-dma.c
+++ b/drivers/dma/stm32-dma.c
@@ -243,12 +243,6 @@ static void stm32_dma_write(struct stm32_dma_device *dmadev, u32 reg, u32 val)
 	writel_relaxed(val, dmadev->base + reg);
 }
 
-static struct stm32_dma_desc *stm32_dma_alloc_desc(u32 num_sgs)
-{
-	return kzalloc(sizeof(struct stm32_dma_desc) +
-		       sizeof(struct stm32_dma_sg_req) * num_sgs, GFP_NOWAIT);
-}
-
 static int stm32_dma_get_width(struct stm32_dma_chan *chan,
 			       enum dma_slave_buswidth width)
 {
@@ -853,7 +847,7 @@ static struct dma_async_tx_descriptor *stm32_dma_prep_slave_sg(
 		return NULL;
 	}
 
-	desc = stm32_dma_alloc_desc(sg_len);
+	desc = kzalloc(struct_size(desc, sg_req, sg_len), GFP_NOWAIT);
 	if (!desc)
 		return NULL;
 
@@ -954,7 +948,7 @@ static struct dma_async_tx_descriptor *stm32_dma_prep_dma_cyclic(
 
 	num_periods = buf_len / period_len;
 
-	desc = stm32_dma_alloc_desc(num_periods);
+	desc = kzalloc(struct_size(desc, sg_req, num_periods), GFP_NOWAIT);
 	if (!desc)
 		return NULL;
 
@@ -989,7 +983,7 @@ static struct dma_async_tx_descriptor *stm32_dma_prep_dma_memcpy(
 	int i;
 
 	num_sgs = DIV_ROUND_UP(len, STM32_DMA_ALIGNED_MAX_DATA_ITEMS);
-	desc = stm32_dma_alloc_desc(num_sgs);
+	desc = kzalloc(struct_size(desc, sg_req, num_sgs), GFP_NOWAIT);
 	if (!desc)
 		return NULL;
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
