Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9F2846C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:06:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y/WLZJm/RdR2nLPFzwNpAnS9sRf8KRbT6cAth2cPA+M=; b=YtPXuxH5yGEz3mzlk8uSdcFZ5y
	hVYhoPMUYCofdswAfTp8HyNP2KgiNqW3HM0z2ntrA4y8DSNQF8zSMUSoFbtE6i6qu9IFAARl1kPMp
	77wO1GmO+L8cPUEbEJeqgA+O2kfR3EvG6rJtqzlJeLJwC0cI97r2nFEQ3u/ID79Psrn4z4gzNRSPK
	Mdm1w6qoUl50VQVYo6tPyHqgTxe7JknwhhyvyyzGTUEFdL7RDOm0cEq7ef/QrhQ/gspF55H4HjwwE
	n7AL77kjz2xaMEDuNZNxtwjKKGnaYnvJilXhx1WpGXUFoZQfCI4se9RmWBH8pkbLekGAEXBrpAPi8
	uQB1EQnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvGxJ-0006pp-TY; Wed, 07 Aug 2019 08:05:58 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvGuv-0003PO-N6
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:03:35 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 9B944C0BC7;
 Wed,  7 Aug 2019 08:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565165009; bh=A6oJ3xy+X62gQqMeT+1xG7LvX7bhvMEUhkdkX+YYtXg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=YgAQBglMvUPpv/YlJ3KX/Z8ticroiUojCRdEnWVkkgf3uz8dsf99Eq3615Cfk3aW5
 exi94PBNPiLiuMQwadQJPHfrK51PUz7PRZLKcyUUHOHlcjMpYpxGJrkq7yG3pQxxks
 OYLMBvPrsZ8aEKEnyv4nPu10a8kBK3tK3Q1Q4cnb1LNfuUqL1rz3/7Rp1m1UWs2/kZ
 mk3Msj/vv3icxN4KFDXYBfHqS9pcG96DAR6ozIrGX3xyjC+F4tTN0nHXJAQs5NdnrL
 BUJhpjZC/7GVgYuzFbbGRdWmwpXmGRMxwinMK7eBdjEyF+ipz4CS7oeJQdvil1MKy4
 gcMqSrxPt3b4w==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 29675A0066;
 Wed,  7 Aug 2019 08:03:26 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v3 02/10] net: stmmac: xgmac: Implement
 set_mtl_tx_queue_weight()
Date: Wed,  7 Aug 2019 10:03:10 +0200
Message-Id: <c5b536e9eed3e0d8caa80e845a8ce508f8ef1b8f.1565164729.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565164729.git.joabreu@synopsys.com>
References: <cover.1565164729.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565164729.git.joabreu@synopsys.com>
References: <cover.1565164729.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_010329_836374_531726AD 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement the TX Queue Weight callback. In order for this to be active
we also need to set ETS algorithm when configuring Queue.

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
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index 85c68b7ee8c6..ce6503dfc86d 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -144,7 +144,9 @@ static void dwxgmac2_prog_mtl_tx_algorithms(struct mac_device_info *hw,
 					    u32 tx_alg)
 {
 	void __iomem *ioaddr = hw->pcsr;
+	bool ets = true;
 	u32 value;
+	int i;
 
 	value = readl(ioaddr + XGMAC_MTL_OPMODE);
 	value &= ~XGMAC_ETSALG;
@@ -160,10 +162,28 @@ static void dwxgmac2_prog_mtl_tx_algorithms(struct mac_device_info *hw,
 		value |= XGMAC_DWRR;
 		break;
 	default:
+		ets = false;
 		break;
 	}
 
 	writel(value, ioaddr + XGMAC_MTL_OPMODE);
+
+	/* Set ETS if desired */
+	for (i = 0; i < MTL_MAX_TX_QUEUES; i++) {
+		value = readl(ioaddr + XGMAC_MTL_TCx_ETS_CONTROL(i));
+		value &= ~XGMAC_TSA;
+		if (ets)
+			value |= XGMAC_ETS;
+		writel(value, ioaddr + XGMAC_MTL_TCx_ETS_CONTROL(i));
+	}
+}
+
+static void dwxgmac2_set_mtl_tx_queue_weight(struct mac_device_info *hw,
+					     u32 weight, u32 queue)
+{
+	void __iomem *ioaddr = hw->pcsr;
+
+	writel(weight, ioaddr + XGMAC_MTL_TCx_QUANTUM_WEIGHT(queue));
 }
 
 static void dwxgmac2_map_mtl_to_dma(struct mac_device_info *hw, u32 queue,
@@ -412,7 +432,7 @@ const struct stmmac_ops dwxgmac210_ops = {
 	.rx_queue_routing = NULL,
 	.prog_mtl_rx_algorithms = dwxgmac2_prog_mtl_rx_algorithms,
 	.prog_mtl_tx_algorithms = dwxgmac2_prog_mtl_tx_algorithms,
-	.set_mtl_tx_queue_weight = NULL,
+	.set_mtl_tx_queue_weight = dwxgmac2_set_mtl_tx_queue_weight,
 	.map_mtl_to_dma = dwxgmac2_map_mtl_to_dma,
 	.config_cbs = dwxgmac2_config_cbs,
 	.dump_regs = NULL,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
