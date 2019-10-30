Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED6EE9F06
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 16:31:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Vf8IN6vC/c4egQzHp1fv0aiecVY5NrDJxVDAF3KKJtA=; b=oU1kA/gy+PyMbAGW9SCI1G8z86
	DQSGxL0Ft9tvxgw+iRYAHKmDowXUC3Kwsk0+yPNRlr0TDCWwjCCmavc/h+I+A5aF8XHHdanWiVEIf
	wvL67tUdZOWzitquQ2lzksF9yOsl0BMGc03nvuVm9N4F0McPK/QSRX1x2iDApdwe3KnSpq+veeLRX
	0W+vMGU7o8/152N/1PMb9sL1gQAjFhkAXJUAg8ejVvJuQtYVhs84ti3f+TefLvxHT9V1IqMPvdaLQ
	G4EFfvWFiVY8uHA0QgMbgf2jUBUIzkF5IkuZd4xBXqMOsIzH7LhHOvG7ZDcpOkfCAjU2mrwG6f4F3
	7F5SvjcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpwT-0001ZT-9U; Wed, 30 Oct 2019 15:31:25 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpuB-0007Lv-V0
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 15:29:06 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 39569C0DE6;
 Wed, 30 Oct 2019 15:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1572449340; bh=IBTxSbYOJI2JqoFiSiKIKTl72eA3gBkCoN+l7ptVNIU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=B5mKN+7R3KLvrfqfPcW0EF3dBnqKZqg7X9MCt3cPDw5eCYWCrYEZo2/L7sciMerX8
 vxpY1YkAwWykYPBJw+tR/bBYBJKFrBkvmACNTIZQgoUwri5GLT9x57R/TLY11Ic9wu
 rcu+2tfOcGGTdzyBU69C8Y7y69v+iemQIpgoTEVzq5kngUjIESpDZ7oyRs4XmaHS8C
 +Bb8ViqCz6RdrrTxuuLxmQYq27kXHDBrRJPuDWkuwozXuSJJeRLDr5oh092lIm5cTb
 VqpzF2D2IEJhldNqaf7Pl+TtDVHAwQMWUbL+NTBEJTE+xCCnQAGnFa5iqAJSLTnDhA
 77IYmglHi+05A==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id CBD3BA0060;
 Wed, 30 Oct 2019 15:28:58 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 2/3] net: stmmac: xgmac: Add C45 PHY support in the
 MDIO callbacks
Date: Wed, 30 Oct 2019 16:28:49 +0100
Message-Id: <444208cef341686bcf35f8361f409467f539c73b.1572449009.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1572449009.git.Jose.Abreu@synopsys.com>
References: <cover.1572449009.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1572449009.git.Jose.Abreu@synopsys.com>
References: <cover.1572449009.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_082904_094843_FFFCF415 
X-CRM114-Status: GOOD (  13.61  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Add the support for C45 PHYs in the MDIO callbacks for XGMAC. This was
tested using Synopsys DesignWare XPCS.

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
 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c | 47 +++++++++++++++++++++--
 1 file changed, 43 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
index 40c42637ad75..143bffd28acf 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
@@ -41,6 +41,29 @@
 #define MII_XGMAC_BUSY			BIT(22)
 #define MII_XGMAC_MAX_C22ADDR		3
 #define MII_XGMAC_C22P_MASK		GENMASK(MII_XGMAC_MAX_C22ADDR, 0)
+#define MII_XGMAC_PA_SHIFT		16
+#define MII_XGMAC_DA_SHIFT		21
+
+static int stmmac_xgmac2_c45_format(struct stmmac_priv *priv, int phyaddr,
+				    int phyreg, u32 *hw_addr)
+{
+	unsigned int mii_data = priv->hw->mii.data;
+	u32 tmp;
+
+	/* Wait until any existing MII operation is complete */
+	if (readl_poll_timeout(priv->ioaddr + mii_data, tmp,
+			       !(tmp & MII_XGMAC_BUSY), 100, 10000))
+		return -EBUSY;
+
+	/* Set port as Clause 45 */
+	tmp = readl(priv->ioaddr + XGMAC_MDIO_C22P);
+	tmp &= ~BIT(phyaddr);
+	writel(tmp, priv->ioaddr + XGMAC_MDIO_C22P);
+
+	*hw_addr = (phyaddr << MII_XGMAC_PA_SHIFT) | (phyreg & 0xffff);
+	*hw_addr |= (phyreg >> MII_DEVADDR_C45_SHIFT) << MII_XGMAC_DA_SHIFT;
+	return 0;
+}
 
 static int stmmac_xgmac2_c22_format(struct stmmac_priv *priv, int phyaddr,
 				    int phyreg, u32 *hw_addr)
@@ -76,16 +99,22 @@ static int stmmac_xgmac2_mdio_read(struct mii_bus *bus, int phyaddr, int phyreg)
 	int ret;
 
 	if (phyreg & MII_ADDR_C45) {
-		return -EOPNOTSUPP;
+		phyreg &= ~MII_ADDR_C45;
+
+		ret = stmmac_xgmac2_c45_format(priv, phyaddr, phyreg, &addr);
+		if (ret)
+			return ret;
 	} else {
 		ret = stmmac_xgmac2_c22_format(priv, phyaddr, phyreg, &addr);
 		if (ret)
 			return ret;
+
+		value |= MII_XGMAC_SADDR;
 	}
 
 	value |= (priv->clk_csr << priv->hw->mii.clk_csr_shift)
 		& priv->hw->mii.clk_csr_mask;
-	value |= MII_XGMAC_SADDR | MII_XGMAC_READ;
+	value |= MII_XGMAC_READ;
 
 	/* Wait until any existing MII operation is complete */
 	if (readl_poll_timeout(priv->ioaddr + mii_data, tmp,
@@ -116,16 +145,22 @@ static int stmmac_xgmac2_mdio_write(struct mii_bus *bus, int phyaddr,
 	int ret;
 
 	if (phyreg & MII_ADDR_C45) {
-		return -EOPNOTSUPP;
+		phyreg &= ~MII_ADDR_C45;
+
+		ret = stmmac_xgmac2_c45_format(priv, phyaddr, phyreg, &addr);
+		if (ret)
+			return ret;
 	} else {
 		ret = stmmac_xgmac2_c22_format(priv, phyaddr, phyreg, &addr);
 		if (ret)
 			return ret;
+
+		value |= MII_XGMAC_SADDR;
 	}
 
 	value |= (priv->clk_csr << priv->hw->mii.clk_csr_shift)
 		& priv->hw->mii.clk_csr_mask;
-	value |= phydata | MII_XGMAC_SADDR;
+	value |= phydata;
 	value |= MII_XGMAC_WRITE;
 
 	/* Wait until any existing MII operation is complete */
@@ -363,6 +398,10 @@ int stmmac_mdio_register(struct net_device *ndev)
 		goto bus_register_fail;
 	}
 
+	/* Looks like we need a dummy read for XGMAC only and C45 PHYs */
+	if (priv->plat->has_xgmac)
+		stmmac_xgmac2_mdio_read(new_bus, 0, MII_ADDR_C45);
+
 	if (priv->plat->phy_node || mdio_node)
 		goto bus_register_done;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
