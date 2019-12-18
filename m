Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB9D1244BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:35:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GHmCsBQlFLb18resBWCqAm3zeWYsRESER0wATQED8EY=; b=DD8v/BvRK86gUFXNr4MSTc3jyh
	r/VMYPN5aPbDpol88oN5t/MXEbQge2TLifhUQ2pA59y7X+yNy5fFvNE9XaawBmeTtHxrEKI1srIsY
	mIdmfSN50J/AAIjzmE8pHysKJEizWPiy4ArQLM+cyjE2jV5DJ2s8WRWjEx1lcdYloV3AlZ1ocO5wj
	HNgVe9tsaTVM+h+YzPHAURw5199DBDIV6PLJghJiJbo0VwyVRYQ+JZPXmaKIBqU27MQpdcwcuzNps
	pTZg3NAkVc2goqGqkXcfttX+hWKds/Uz2yTfjGMaxUKy2NKVE3syzs9enhJqv5SL5MQ9yPsCs14Fm
	Pe8Pr1wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWfk-0000ZN-0p; Wed, 18 Dec 2019 10:35:16 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWdw-0007jP-45
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:33:28 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id BFB254052A;
 Wed, 18 Dec 2019 10:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576665201; bh=vuO/iRik/hGL2Vv+JKcoZy+K4zCKCj0tWBiTM++ZPfE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=PffUb5PVDywRMU9+q050nJJypTkUbmuWL+jeWOsz1iq70N7R5+/cZPEuxRN3FuuYg
 ENz87FkhHqw0nEpBDUHEPzJXP9X497BIx/nn1/roGb9jJaZ9+B3D8nlnTtIzPkvqTy
 Js4DZ19oRzfQB1J/4h3Dp2H3IJM1zQHsWEldoBuA/JySXWfSNDdKxKjo+AXD2Vubay
 2MnS0BXSNnoJSnx4j2PBlVAk2vOQnoQ76jZD1i1sRJL5TgXAiWnJ6Oj/a4Rm7VbGyg
 1xlDo2mj3LDpxWWX/1fbO+zN5zJu6cydW4VnP7hBQgtqNRrdAACR/wrKZpDNtCsB1D
 YrptOtWkxXltg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 91E53A0098;
 Wed, 18 Dec 2019 10:33:19 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 4/7] net: stmmac: Add Frame Preemption support using
 TAPRIO API
Date: Wed, 18 Dec 2019 11:33:08 +0100
Message-Id: <54e12f671c58f14a2d8a3a54e5d6d0f7d78f1c93.1576664870.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1576664870.git.Jose.Abreu@synopsys.com>
References: <cover.1576664870.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1576664870.git.Jose.Abreu@synopsys.com>
References: <cover.1576664870.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_023324_219457_79BDDDD8 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Alexandre Torgue <alexandre.torgue@st.com>, Richard.Ong@synopsys.com,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Boon Leong <boon.leong.ong@intel.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Andre Guedes <andre.guedes@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds the support for Frame Preemption using TAPRIO API. This works along
with EST feature and allows to select if preemptable traffic shall be
sent during specific queues opening time.

Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

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
 drivers/net/ethernet/stmicro/stmmac/common.h    |  1 +
 drivers/net/ethernet/stmicro/stmmac/hwif.h      |  4 ++++
 drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c | 29 ++++++++++++++++++++++++-
 3 files changed, 33 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/common.h b/drivers/net/ethernet/stmicro/stmmac/common.h
index 2f1fc93a9b1e..09c72025ed3e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/common.h
+++ b/drivers/net/ethernet/stmicro/stmmac/common.h
@@ -367,6 +367,7 @@ struct dma_features {
 	unsigned int estwid;
 	unsigned int estdep;
 	unsigned int estsel;
+	unsigned int fpesel;
 };
 
 /* GMAC TX FIFO is 8K, Rx FIFO is 16K */
diff --git a/drivers/net/ethernet/stmicro/stmmac/hwif.h b/drivers/net/ethernet/stmicro/stmmac/hwif.h
index e9355d05b3c2..c3ca3a3b2421 100644
--- a/drivers/net/ethernet/stmicro/stmmac/hwif.h
+++ b/drivers/net/ethernet/stmicro/stmmac/hwif.h
@@ -374,6 +374,8 @@ struct stmmac_ops {
 	void (*set_arp_offload)(struct mac_device_info *hw, bool en, u32 addr);
 	int (*est_configure)(void __iomem *ioaddr, struct stmmac_est *cfg,
 			     unsigned int ptp_rate);
+	void (*fpe_configure)(void __iomem *ioaddr, u32 num_txq, u32 num_rxq,
+			      bool enable);
 };
 
 #define stmmac_core_init(__priv, __args...) \
@@ -462,6 +464,8 @@ struct stmmac_ops {
 	stmmac_do_void_callback(__priv, mac, set_arp_offload, __args)
 #define stmmac_est_configure(__priv, __args...) \
 	stmmac_do_callback(__priv, mac, est_configure, __args)
+#define stmmac_fpe_configure(__priv, __args...) \
+	stmmac_do_void_callback(__priv, mac, fpe_configure, __args)
 
 /* PTP and HW Timer helpers */
 struct stmmac_hwtimestamp {
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
index 58d4ce094381..8ff8f9b9bb22 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
@@ -597,6 +597,7 @@ static int tc_setup_taprio(struct stmmac_priv *priv,
 	u32 size, wid = priv->dma_cap.estwid, dep = priv->dma_cap.estdep;
 	struct plat_stmmacenet_data *plat = priv->plat;
 	struct timespec64 time;
+	bool fpe = false;
 	int i, ret = 0;
 
 	if (!priv->dma_cap.estsel)
@@ -667,8 +668,23 @@ static int tc_setup_taprio(struct stmmac_priv *priv,
 			return -ERANGE;
 		if (gates > GENMASK(31 - wid, 0))
 			return -ERANGE;
-		if (qopt->entries[i].command != TC_TAPRIO_CMD_SET_GATES)
+
+		switch (qopt->entries[i].command) {
+		case TC_TAPRIO_CMD_SET_GATES:
+			if (fpe)
+				return -EINVAL;
+			break;
+		case TC_TAPRIO_CMD_SET_AND_HOLD:
+			gates |= BIT(0);
+			fpe = true;
+			break;
+		case TC_TAPRIO_CMD_SET_AND_RELEASE:
+			gates &= ~BIT(0);
+			fpe = true;
+			break;
+		default:
 			return -EOPNOTSUPP;
+		}
 
 		priv->plat->est->gcl[i] = delta_ns | (gates << wid);
 	}
@@ -681,6 +697,17 @@ static int tc_setup_taprio(struct stmmac_priv *priv,
 	priv->plat->est->ctr[0] = (u32)(qopt->cycle_time % NSEC_PER_SEC);
 	priv->plat->est->ctr[1] = (u32)(qopt->cycle_time / NSEC_PER_SEC);
 
+	if (fpe && !priv->dma_cap.fpesel)
+		return -EOPNOTSUPP;
+
+	ret = stmmac_fpe_configure(priv, priv->ioaddr,
+				   priv->plat->tx_queues_to_use,
+				   priv->plat->rx_queues_to_use, fpe);
+	if (ret && fpe) {
+		netdev_err(priv->dev, "failed to enable Frame Preemption\n");
+		return ret;
+	}
+
 	ret = stmmac_est_configure(priv, priv->ioaddr, priv->plat->est,
 				   priv->plat->clk_ptp_rate);
 	if (ret) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
