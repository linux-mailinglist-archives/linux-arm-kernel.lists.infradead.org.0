Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 041091244B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:34:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n8FS0IuthkrhWW0KlBZDVXLmmsG3CINteNdHFmReISQ=; b=tTxSf6t+ZsSdVCOO7P3u9EwAoB
	kGqup9DD1XzU3916+NQPun/7UOIVGTlz8Zm4QAWwiZCawXY0ieg1Ad6AIsPKhafgYM1YmV6szMv8p
	OwuDP5Bd7nFXjwkbFjWptz9N3Dw309FlGQK790qdSayU8ov+W3l+kyegA4Z+O2krVsC+HkQ4DqZWd
	A70yb8MGU4FqsC5R2NKRq02WDZSdiWznS2VhxoDZaNX3DHOfBGt05t56LF7LBC/rAkDYbSPEQJTbS
	ocsRUkDUvDEqQDjeiQfA7XMUWtfi7TWjuK58YFvvoAe/hUG8LEigtFfwi3TZgF6Bvnp+rzJ5SUEau
	Mdh/sZbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWf9-0008Vw-0b; Wed, 18 Dec 2019 10:34:39 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWdw-0007jJ-45
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:33:29 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E7474405C2;
 Wed, 18 Dec 2019 10:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576665201; bh=Fw/wxllDxuOcPqlon9LuMR4ARnCLZnT8SI3l2BMKDYk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=ZtbEWVVeMXkCkkyp9rBWVFP/98649syGf8d00FYFKv69EXDuZIyBgWNVCtPrhsZw1
 lQ9WvWq6OSGc3ienSS6ZWMmYKIKB7wwk1bp0AiMkj2Mc99H9v51PO4mS/jb/zKrh8M
 0F7SPp6IUaHT/GnXpWaM1sePlHT6O+0R5WywJaaXBWhZFgyTOY14nhhClD8v8kozWZ
 4KB5CXJFhd/gU8MHhWHMrquxGtLvMUGra0qFar93n/P4jt29pwzzcCHvxCnXYhfE2G
 DUtOdWLmaLLWBuh5fPo6r+IwAxKMNnMlZ65/9LabdF8Eu7zmK6lzlBYTW69QzQxU+E
 dQEfM6hq4g+gQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id B31B1A00AC;
 Wed, 18 Dec 2019 10:33:19 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 6/7] net: stmmac: xgmac3+: Add support for Frame
 Preemption
Date: Wed, 18 Dec 2019 11:33:10 +0100
Message-Id: <25588fca643d1f837b35eda49653b974ef9e5ae4.1576664870.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1576664870.git.Jose.Abreu@synopsys.com>
References: <cover.1576664870.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1576664870.git.Jose.Abreu@synopsys.com>
References: <cover.1576664870.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_023324_240664_4F0E725B 
X-CRM114-Status: GOOD (  12.85  )
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

Adds the HW specific support for Frame Preemption on XGMAC3+ cores.

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
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |  6 ++++++
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    | 24 ++++++++++++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |  1 +
 3 files changed, 31 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 77a48dece556..d8f2c5b24278 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -73,6 +73,9 @@
 #define XGMAC_RXQ_CTRL0			0x000000a0
 #define XGMAC_RXQEN(x)			GENMASK((x) * 2 + 1, (x) * 2)
 #define XGMAC_RXQEN_SHIFT(x)		((x) * 2)
+#define XGMAC_RXQ_CTRL1			0x000000a4
+#define XGMAC_RQ			GENMASK(7, 4)
+#define XGMAC_RQ_SHIFT			4
 #define XGMAC_RXQ_CTRL2			0x000000a8
 #define XGMAC_RXQ_CTRL3			0x000000ac
 #define XGMAC_PSRQ(x)			GENMASK((x) * 8 + 7, (x) * 8)
@@ -136,6 +139,7 @@
 #define XGMAC_HWFEAT_TXQCNT		GENMASK(9, 6)
 #define XGMAC_HWFEAT_RXQCNT		GENMASK(3, 0)
 #define XGMAC_HW_FEATURE3		0x00000128
+#define XGMAC_HWFEAT_FPESEL		BIT(26)
 #define XGMAC_HWFEAT_ESTWID		GENMASK(24, 23)
 #define XGMAC_HWFEAT_ESTDEP		GENMASK(22, 20)
 #define XGMAC_HWFEAT_ESTSEL		BIT(19)
@@ -151,6 +155,8 @@
 #define XGMAC_MDIO_ADDR			0x00000200
 #define XGMAC_MDIO_DATA			0x00000204
 #define XGMAC_MDIO_C22P			0x00000220
+#define XGMAC_FPE_CTRL_STS		0x00000280
+#define XGMAC_EFPE			BIT(0)
 #define XGMAC_ADDRx_HIGH(x)		(0x00000300 + (x) * 0x8)
 #define XGMAC_ADDR_MAX			32
 #define XGMAC_AE			BIT(31)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index 2f6e960947d9..307105e8dea0 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -1410,6 +1410,29 @@ static int dwxgmac3_est_configure(void __iomem *ioaddr, struct stmmac_est *cfg,
 	return 0;
 }
 
+static void dwxgmac3_fpe_configure(void __iomem *ioaddr, u32 num_txq,
+				   u32 num_rxq, bool enable)
+{
+	u32 value;
+
+	if (!enable) {
+		value = readl(ioaddr + XGMAC_FPE_CTRL_STS);
+
+		value &= ~XGMAC_EFPE;
+
+		writel(value, ioaddr + XGMAC_FPE_CTRL_STS);
+	}
+
+	value = readl(ioaddr + XGMAC_RXQ_CTRL1);
+	value &= ~XGMAC_RQ;
+	value |= (num_rxq - 1) << XGMAC_RQ_SHIFT;
+	writel(value, ioaddr + XGMAC_RXQ_CTRL1);
+
+	value = readl(ioaddr + XGMAC_FPE_CTRL_STS);
+	value |= XGMAC_EFPE;
+	writel(value, ioaddr + XGMAC_FPE_CTRL_STS);
+}
+
 const struct stmmac_ops dwxgmac210_ops = {
 	.core_init = dwxgmac2_core_init,
 	.set_mac = dwxgmac2_set_mac,
@@ -1454,6 +1477,7 @@ const struct stmmac_ops dwxgmac210_ops = {
 	.config_l4_filter = dwxgmac2_config_l4_filter,
 	.set_arp_offload = dwxgmac2_set_arp_offload,
 	.est_configure = dwxgmac3_est_configure,
+	.fpe_configure = dwxgmac3_fpe_configure,
 };
 
 int dwxgmac2_setup(struct stmmac_priv *priv)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index 3b8887243803..5b62417ad9a4 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -413,6 +413,7 @@ static void dwxgmac2_get_hw_feature(void __iomem *ioaddr,
 
 	/* MAC HW feature 3 */
 	hw_cap = readl(ioaddr + XGMAC_HW_FEATURE3);
+	dma_cap->fpesel = (hw_cap & XGMAC_HWFEAT_FPESEL) >> 26;
 	dma_cap->estwid = (hw_cap & XGMAC_HWFEAT_ESTWID) >> 23;
 	dma_cap->estdep = (hw_cap & XGMAC_HWFEAT_ESTDEP) >> 20;
 	dma_cap->estsel = (hw_cap & XGMAC_HWFEAT_ESTSEL) >> 19;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
