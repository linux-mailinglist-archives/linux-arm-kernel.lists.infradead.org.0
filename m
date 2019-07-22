Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2526FB81
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 10:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9szD4w3HNaQgt8OMfoqks5N2gWDzPCH6ftpDQq5PPYs=; b=YslE0NUfmy+2LtL89Aqes/NViM
	tAUX0MSZ/qK9bbr+jzXnmXWeKcP8lYF520lScZ6Eo5a0YSbIzGQe5Dx65BZ26ypU8+nuGe/jwFCE6
	Sh4H94LRg7f8d/3TgqwshtdkEiygXlPn+KRc2/SKoO3ym3XYqsglJFetwrpbeBqAcIesDO3GNhPc9
	rmJfpofek61EObAjz+S0k/IxKBAeccMe744liDGV5/mhZxJtlT3Bv/+JsaeuVvNayx5rxf/KMpZP3
	eEy7/vBO4hdXI7Og7TzjDWi5sEnZMAKDwKf1c6N0Qyo3aSJ9i0IvZpTAHW77ENqd/1+f8i+IzdtA1
	zIYtpD9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpTsC-0000CJ-HP; Mon, 22 Jul 2019 08:40:44 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpTrO-0007Dd-9Q
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 08:39:55 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E9E2BC0070;
 Mon, 22 Jul 2019 08:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563784792; bh=5hkdNv+d4ulwOI3yH55Iw6BH1syqXjCwb21YV26gLjU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=MuBz0WJ31rRDWMQDsHazo4zP38yyAHMYpCgTWCGCnBq+/UCZdPTGSxxbIOApHBlqi
 eJGhMcA6wLuv6WBfqoIP+2TbwKpnLPP8bkExyP8/0JFd7qynDHBdNCuFL/5/085hfs
 M0H3D+0raSAcKMryfiHEmMDWgLBZY9ZPXE0jGOWZdT+rkOCUC1zMPsF+lv2zdhE38M
 7AQ8t6zxRxnyL2NvregM1fLhQAMlCxFJUW/UvbmE4Z89yr18ch4a4ERdhN01g1fQgo
 E/nG/Zn920b7LFfUSW23wM/5AIzQK30Ni+tRuLIDWUuU9qRGZW1BEzU6xBwQ3OrxFw
 ayt1dGMD3Je4g==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 5FEB0A005C;
 Mon, 22 Jul 2019 08:39:50 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 1/2] net: stmmac: RX Descriptors need to be clean before
 setting buffers
Date: Mon, 22 Jul 2019 10:39:30 +0200
Message-Id: <00bfde6f589e60ba1a2d0671c8ba0fcd0964d6e7.1563784666.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1563784666.git.joabreu@synopsys.com>
References: <cover.1563784666.git.joabreu@synopsys.com>
In-Reply-To: <cover.1563784666.git.joabreu@synopsys.com>
References: <cover.1563784666.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_013954_337028_75A1B2CF 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RX Descriptors are being cleaned after setting the buffers which may
lead to buffer addresses being wiped out.

Fix this by clearing earlier the RX Descriptors.

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
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index c7c9e5f162e6..5f1294ce0216 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -1295,6 +1295,8 @@ static int init_dma_rx_desc_rings(struct net_device *dev, gfp_t flags)
 			  "(%s) dma_rx_phy=0x%08x\n", __func__,
 			  (u32)rx_q->dma_rx_phy);
 
+		stmmac_clear_rx_descriptors(priv, queue);
+
 		for (i = 0; i < DMA_RX_SIZE; i++) {
 			struct dma_desc *p;
 
@@ -1312,8 +1314,6 @@ static int init_dma_rx_desc_rings(struct net_device *dev, gfp_t flags)
 		rx_q->cur_rx = 0;
 		rx_q->dirty_rx = (unsigned int)(i - DMA_RX_SIZE);
 
-		stmmac_clear_rx_descriptors(priv, queue);
-
 		/* Setup the chained descriptor addresses */
 		if (priv->mode == STMMAC_CHAIN_MODE) {
 			if (priv->extend_desc)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
