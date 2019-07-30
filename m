Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B02B67AA4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 15:57:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5H/HHsIfeqetSN26JNzV1IfnTh0kpaaYvrStpV/7lxE=; b=eQU
	NGGXlejqj+scXPsb9sJX7EEbpalhvnvXwwENxb0mVEdP+lOPhpCV6P7IRWujIBjtSp3Dy0xMGSppS
	+Vdin0fPtZ7EGgEuPuLTjxtAnyVxqQdI858sFgWkJINZP5bAxn59JTtldeVx0gRwTfRfyf2wc83Tb
	cCni4Zx85rWkP3Y99YQzsZu7F8nSGUjNFyactkDK+PMMcjIJGCYNRLMlCkdybnzDYNa7Liuksy/2h
	HNk+12TWWr8aXKDnFWibYL7o+Svos3zp9Ms9374CbNx5k73UhNyMqe+MLBz85Sr7qb1NAUTqFUSrO
	lAsidKbt8uO0YdsnwxWGhRJVqIWQIYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsSdQ-0000kC-Dz; Tue, 30 Jul 2019 13:57:48 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsSdF-0000jt-LO
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 13:57:39 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id EEE85C01EC;
 Tue, 30 Jul 2019 13:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1564495056; bh=+Frtc0dG6BHyi2YIPiv1kiBX3xPQtzw2fnWMGHBYnQU=;
 h=From:To:Cc:Subject:Date:From;
 b=X73C+VCdT/Ev8CiZNgGQDfGtPAtpuQJMuBI/h3MHAWEFTOAj/pjdWdTfXxa1dRqIL
 8nC6Ymu0Tn882kLdhCHjBQOsN1avF6ajt/K8wsGFruGajkqEzCH8JnW+XE2am3CExL
 GF7NNmU4V0N0QOCj5l5sIsxZktNvKU9xs+3M15gBr/BhgkhnusjDCXcA70Z1RwOPOL
 AjJIPc1lFmZuNTol9YAXGyKVYqyb/BwYxOL//EvFZjM15/pGMb7XTWA2eqTWGHrQU2
 N3Rpchhz7bKHMXnIHgnIcN0Li579OaCSW0LS3mFsAHpcF5V8VoXCoHPuNWLP4BZMB+
 zWEnSkh3OZjhg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id E0BECA0057;
 Tue, 30 Jul 2019 13:57:28 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net] net: stmmac: Sync RX Buffer upon allocation
Date: Tue, 30 Jul 2019 15:57:16 +0200
Message-Id: <3601e3ae4357d48b3294f42781d0f19095d1b00e.1564479382.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_065737_713990_A0304B45 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jon Hunter <jonathanh@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With recent changes that introduced support for Page Pool in stmmac, Jon
reported that NFS boot was no longer working on an ARM64 based platform
that had the IP behind an IOMMU.

As Page Pool API does not guarantee DMA syncing because of the use of
DMA_ATTR_SKIP_CPU_SYNC flag, we have to explicit sync the whole buffer upon
re-allocation because we are always re-using same pages.

In fact, ARM64 code invalidates the DMA area upon two situations [1]:
	- sync_single_for_cpu(): Invalidates if direction != DMA_TO_DEVICE
	- sync_single_for_device(): Invalidates if direction == DMA_FROM_DEVICE

So, as we must invalidate both the current RX buffer and the newly allocated
buffer we propose this fix.

[1] arch/arm64/mm/cache.S

Reported-by: Jon Hunter <jonathanh@nvidia.com>
Tested-by: Jon Hunter <jonathanh@nvidia.com>
Fixes: 2af6106ae949 ("net: stmmac: Introducing support for Page Pool")
Signed-off-by: Jose Abreu <joabreu@synopsys.com>
---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: Jon Hunter <jonathanh@nvidia.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 98b1a5c6d537..9a4a56ad35cd 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -3271,9 +3271,11 @@ static inline int stmmac_rx_threshold_count(struct stmmac_rx_queue *rx_q)
 static inline void stmmac_rx_refill(struct stmmac_priv *priv, u32 queue)
 {
 	struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];
-	int dirty = stmmac_rx_dirty(priv, queue);
+	int len, dirty = stmmac_rx_dirty(priv, queue);
 	unsigned int entry = rx_q->dirty_rx;
 
+	len = DIV_ROUND_UP(priv->dma_buf_sz, PAGE_SIZE) * PAGE_SIZE;
+
 	while (dirty-- > 0) {
 		struct stmmac_rx_buffer *buf = &rx_q->buf_pool[entry];
 		struct dma_desc *p;
@@ -3291,6 +3293,13 @@ static inline void stmmac_rx_refill(struct stmmac_priv *priv, u32 queue)
 		}
 
 		buf->addr = page_pool_get_dma_addr(buf->page);
+
+		/* Sync whole allocation to device. This will invalidate old
+		 * data.
+		 */
+		dma_sync_single_for_device(priv->device, buf->addr, len,
+					   DMA_FROM_DEVICE);
+
 		stmmac_set_desc_addr(priv, p, buf->addr);
 		stmmac_refill_desc3(priv, rx_q, p);
 
@@ -3425,8 +3434,6 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 			skb_copy_to_linear_data(skb, page_address(buf->page),
 						frame_len);
 			skb_put(skb, frame_len);
-			dma_sync_single_for_device(priv->device, buf->addr,
-						   frame_len, DMA_FROM_DEVICE);
 
 			if (netif_msg_pktdata(priv)) {
 				netdev_dbg(priv->dev, "frame received (%dbytes)",
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
