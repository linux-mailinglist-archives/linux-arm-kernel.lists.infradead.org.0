Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3416C1244B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:34:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eHEco0plbRMZ0z+nywCEIpkeni4QO9wL9WOQDNFsGRs=; b=jBooP0tcUUycN5bQh6rpzO34sv
	egq8EDiCVc6jgl1TQO2+Q6XTb4y9g1+iao7AjPmsmIDq6QTdofeeN7FCPqzUYV48DcT3fX8lvL5hT
	YBo3DHqieB5WfGBQ9Mj0UESTYiBqYhhKCXSNH7eeXkT6ircUW8/Z/drEwzvm5cyJlsXn4153a7hE3
	TCrIroEaJayYgsRHuOdKyRMaWhwbfgkT7MDlfMjYe9fXkTrZBSGxgvRxE54+zKzjTgI99gwMDg30v
	GgkLOhX6a1tHvQw4t0HATFq/m1rn2N8OhID/v4fQI1omiwyZRBJhqMUTczcMrKsMyYqnYCWNSh29B
	AmgFsVpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWfL-0000JL-7u; Wed, 18 Dec 2019 10:34:51 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWdw-0007jI-49
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:33:29 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id DB48C405BF;
 Wed, 18 Dec 2019 10:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576665201; bh=Rl8X5VQHKz1HG6QQrBXkDv4iSU6x7MqhJR+ess8GXRw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=QGdwmFUOadrea/TEcJqzasyLJE+8IuEaqgYhXXZGQXgRV9x/fjvaARrDRSEwVNWnC
 DRmeAI17I57o0bnk90BDctRZ2FweqxgBFLcSVGuqaLh6uq7yxcaoKLrQQm/oMVZHlT
 k5PJCTzK7XLaPuCyyYVLYdwNdiA3T5PfDnxKAdVZkIHQY1yobYiBnoByEWNN2yOOLp
 Tvyv3FCypX7qoEdOunxPZKzMXJDSaJ1e7c7ca4qwqKMhp/Y3TrJRo4mW1HqSdJBTbt
 7d2sT08q3vzmGqeypjbSWrbo6+3ccdOS7jQlYTLYNnkr8DgN8+dUOx0BuyZ+XG3t9G
 dOfqh7s0dmJGA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 9D168A00A7;
 Wed, 18 Dec 2019 10:33:19 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 5/7] net: stmmac: gmac5+: Add support for Frame
 Preemption
Date: Wed, 18 Dec 2019 11:33:09 +0100
Message-Id: <3ad6e3561cd5d08279419037a50b5a6b55a29aeb.1576664870.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1576664870.git.Jose.Abreu@synopsys.com>
References: <cover.1576664870.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1576664870.git.Jose.Abreu@synopsys.com>
References: <cover.1576664870.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_023324_242792_C21F695F 
X-CRM114-Status: GOOD (  14.04  )
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

Adds the HW specific support for Frame Preemption on GMAC5+ cores.

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
 drivers/net/ethernet/stmicro/stmmac/dwmac4.h      |  3 +++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c |  2 ++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c  |  1 +
 drivers/net/ethernet/stmicro/stmmac/dwmac5.c      | 23 +++++++++++++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac5.h      |  5 +++++
 5 files changed, 34 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
index f7f5a2751147..2e6b60a476c6 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
@@ -64,6 +64,8 @@
 #define GMAC_RXQCTRL_MCBCQEN_SHIFT	20
 #define GMAC_RXQCTRL_TACPQE		BIT(21)
 #define GMAC_RXQCTRL_TACPQE_SHIFT	21
+#define GMAC_RXQCTRL_FPRQ		GENMASK(26, 24)
+#define GMAC_RXQCTRL_FPRQ_SHIFT		24
 
 /* MAC Packet Filtering */
 #define GMAC_PACKET_FILTER_PR		BIT(0)
@@ -237,6 +239,7 @@ enum power_event {
 
 /* MAC HW features3 bitmap */
 #define GMAC_HW_FEAT_ASP		GENMASK(29, 28)
+#define GMAC_HW_FEAT_FPESEL		BIT(26)
 #define GMAC_HW_FEAT_ESTWID		GENMASK(21, 20)
 #define GMAC_HW_FEAT_ESTDEP		GENMASK(19, 17)
 #define GMAC_HW_FEAT_ESTSEL		BIT(16)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
index 8df7496411a0..f0c0ea616032 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
@@ -985,6 +985,7 @@ const struct stmmac_ops dwmac410_ops = {
 	.config_l3_filter = dwmac4_config_l3_filter,
 	.config_l4_filter = dwmac4_config_l4_filter,
 	.est_configure = dwmac5_est_configure,
+	.fpe_configure = dwmac5_fpe_configure,
 };
 
 const struct stmmac_ops dwmac510_ops = {
@@ -1029,6 +1030,7 @@ const struct stmmac_ops dwmac510_ops = {
 	.config_l3_filter = dwmac4_config_l3_filter,
 	.config_l4_filter = dwmac4_config_l4_filter,
 	.est_configure = dwmac5_est_configure,
+	.fpe_configure = dwmac5_fpe_configure,
 };
 
 int dwmac4_setup(struct stmmac_priv *priv)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
index 3552ce1201ff..213d44482ffa 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
@@ -404,6 +404,7 @@ static void dwmac4_get_hw_feature(void __iomem *ioaddr,
 
 	/* 5.10 Features */
 	dma_cap->asp = (hw_cap & GMAC_HW_FEAT_ASP) >> 28;
+	dma_cap->fpesel = (hw_cap & GMAC_HW_FEAT_FPESEL) >> 26;
 	dma_cap->estwid = (hw_cap & GMAC_HW_FEAT_ESTWID) >> 20;
 	dma_cap->estdep = (hw_cap & GMAC_HW_FEAT_ESTDEP) >> 17;
 	dma_cap->estsel = (hw_cap & GMAC_HW_FEAT_ESTSEL) >> 16;
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac5.c b/drivers/net/ethernet/stmicro/stmmac/dwmac5.c
index 8047f402fb3f..5d4a3c2458ea 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac5.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac5.c
@@ -645,3 +645,26 @@ int dwmac5_est_configure(void __iomem *ioaddr, struct stmmac_est *cfg,
 	writel(ctrl, ioaddr + MTL_EST_CONTROL);
 	return 0;
 }
+
+void dwmac5_fpe_configure(void __iomem *ioaddr, u32 num_txq, u32 num_rxq,
+			  bool enable)
+{
+	u32 value;
+
+	if (!enable) {
+		value = readl(ioaddr + MAC_FPE_CTRL_STS);
+
+		value &= ~EFPE;
+
+		writel(value, ioaddr + MAC_FPE_CTRL_STS);
+	}
+
+	value = readl(ioaddr + GMAC_RXQ_CTRL1);
+	value &= ~GMAC_RXQCTRL_FPRQ;
+	value |= (num_rxq - 1) << GMAC_RXQCTRL_FPRQ_SHIFT;
+	writel(value, ioaddr + GMAC_RXQ_CTRL1);
+
+	value = readl(ioaddr + MAC_FPE_CTRL_STS);
+	value |= EFPE;
+	writel(value, ioaddr + MAC_FPE_CTRL_STS);
+}
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac5.h b/drivers/net/ethernet/stmicro/stmmac/dwmac5.h
index 70e6d8837dd9..3e8faa96b4d4 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac5.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac5.h
@@ -11,6 +11,9 @@
 #define PRTYEN				BIT(1)
 #define TMOUTEN				BIT(0)
 
+#define MAC_FPE_CTRL_STS		0x00000234
+#define EFPE				BIT(0)
+
 #define MAC_PPS_CONTROL			0x00000b70
 #define PPS_MAXIDX(x)			((((x) + 1) * 8) - 1)
 #define PPS_MINIDX(x)			((x) * 8)
@@ -102,5 +105,7 @@ int dwmac5_flex_pps_config(void __iomem *ioaddr, int index,
 			   u32 sub_second_inc, u32 systime_flags);
 int dwmac5_est_configure(void __iomem *ioaddr, struct stmmac_est *cfg,
 			 unsigned int ptp_rate);
+void dwmac5_fpe_configure(void __iomem *ioaddr, u32 num_txq, u32 num_rxq,
+			  bool enable);
 
 #endif /* __DWMAC5_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
