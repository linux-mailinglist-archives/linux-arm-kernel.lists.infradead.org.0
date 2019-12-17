Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 298EE122C3F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 13:47:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2QuX1SEvw9FuZds07pHge4sDh+CYo2oMUQ7Ex6mpzvo=; b=ZEugM4S3psLX9+DmpADTLZ+xlx
	ziHpjIWoNRwKeCa0mqSaDWaN0kAsgHvHw40J6JQJvaLpQUfS57PM1GM8qQlZGDUI5lL0xcrcAvXlU
	aY0bqd0coRhw6eVDCH+OMTikjMOJle1iAsH4M9QJ4tKQalMgIkqBG8BM0QGFVQULlmPYk//jcT/LF
	KFL7m44GBhJxJb7bJjwGJPEp3pzq59cr/pY/XPApDwt94NhUBIzxslwLzsNh/MO5QxuknWeGPEk5I
	SUMosEWxYzj6ZB/aWGGkRUK2v9Hj+Rvy0qk+Ozm6umFNbGxsZe94/EzxyYFpB97UUQP0BITHj4Uqx
	hyVBP8BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihCG4-0005iY-5A; Tue, 17 Dec 2019 12:47:24 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihCF3-0004yC-20
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 12:46:25 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 611C6C00D4;
 Tue, 17 Dec 2019 12:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576586780; bh=CHUK0vMWE3HXzjRH4hZvYnMPDeDphdL4JeEiRso3iVw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=hSbc2med30+bniCj9ToHEzYWSuvohIsUUe3zZlVOW/4wX4xeL0O8P/rYSm2x2pT3a
 ov8FtEfdC5FH6Mhh74jN+iWUBHCS3js5voz+0aOHKEl+NydMQn6VD3bAakx/UUU3JF
 vV8vQgfjW5weQGV92Xj5oWd9YM4nnYbSU10zuOhFS8sKdcS338vfPgiNhBHjmhxQAT
 b+C3LA6ZnoyP1pegWa0/g8SG9wkjwAxOTFx9BjAvenVdsVuqm3U7KUrTJ3x+1bQtO/
 24PTSMxuuZyOZYeHHvA1+wTwqwX6M88XXsW8tP+B88NF9luZAvckhwby1nT1kEhlwS
 ZJy1gjPmKao9g==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id EB322A0099;
 Tue, 17 Dec 2019 12:46:17 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v2 6/7] net: stmmac: Add basic EST support for XGMAC
Date: Tue, 17 Dec 2019 13:46:10 +0100
Message-Id: <a54311249abd4b7d2e86748032e08f55111b0b4e.1576586602.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1576586602.git.Jose.Abreu@synopsys.com>
References: <cover.1576586602.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1576586602.git.Jose.Abreu@synopsys.com>
References: <cover.1576586602.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_044621_244221_B474CDCD 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jakub Kicinski <jakub.kicinski@netronome.com>,
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

Adds the support for EST in XGMAC cores. This feature allows to offload
scheduling of queues opening time to the IP.

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
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     | 19 ++++++++
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    | 52 ++++++++++++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |  3 ++
 3 files changed, 74 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 158cf4ad1596..e1e79c90c865 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -136,6 +136,9 @@
 #define XGMAC_HWFEAT_TXQCNT		GENMASK(9, 6)
 #define XGMAC_HWFEAT_RXQCNT		GENMASK(3, 0)
 #define XGMAC_HW_FEATURE3		0x00000128
+#define XGMAC_HWFEAT_ESTWID		GENMASK(24, 23)
+#define XGMAC_HWFEAT_ESTDEP		GENMASK(22, 20)
+#define XGMAC_HWFEAT_ESTSEL		BIT(19)
 #define XGMAC_HWFEAT_ASP		GENMASK(15, 14)
 #define XGMAC_HWFEAT_DVLAN		BIT(13)
 #define XGMAC_HWFEAT_FRPES		GENMASK(12, 11)
@@ -237,6 +240,22 @@
 #define XGMAC_TC_PRTY_MAP1		0x00001044
 #define XGMAC_PSTC(x)			GENMASK((x) * 8 + 7, (x) * 8)
 #define XGMAC_PSTC_SHIFT(x)		((x) * 8)
+#define XGMAC_MTL_EST_CONTROL		0x00001050
+#define XGMAC_PTOV			GENMASK(31, 23)
+#define XGMAC_PTOV_SHIFT		23
+#define XGMAC_SSWL			BIT(1)
+#define XGMAC_EEST			BIT(0)
+#define XGMAC_MTL_EST_GCL_CONTROL	0x00001080
+#define XGMAC_BTR_LOW			0x0
+#define XGMAC_BTR_HIGH			0x1
+#define XGMAC_CTR_LOW			0x2
+#define XGMAC_CTR_HIGH			0x3
+#define XGMAC_TER			0x4
+#define XGMAC_LLR			0x5
+#define XGMAC_ADDR_SHIFT		8
+#define XGMAC_GCRR			BIT(2)
+#define XGMAC_SRWO			BIT(0)
+#define XGMAC_MTL_EST_GCL_DATA		0x00001084
 #define XGMAC_MTL_RXP_CONTROL_STATUS	0x000010a0
 #define XGMAC_RXPI			BIT(31)
 #define XGMAC_NPE			GENMASK(23, 16)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index 082f5ee9e525..2f6e960947d9 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -1359,6 +1359,57 @@ static void dwxgmac2_set_arp_offload(struct mac_device_info *hw, bool en,
 	writel(value, ioaddr + XGMAC_RX_CONFIG);
 }
 
+static int dwxgmac3_est_write(void __iomem *ioaddr, u32 reg, u32 val, bool gcl)
+{
+	u32 ctrl;
+
+	writel(val, ioaddr + XGMAC_MTL_EST_GCL_DATA);
+
+	ctrl = (reg << XGMAC_ADDR_SHIFT);
+	ctrl |= gcl ? 0 : XGMAC_GCRR;
+
+	writel(ctrl, ioaddr + XGMAC_MTL_EST_GCL_CONTROL);
+
+	ctrl |= XGMAC_SRWO;
+	writel(ctrl, ioaddr + XGMAC_MTL_EST_GCL_CONTROL);
+
+	return readl_poll_timeout_atomic(ioaddr + XGMAC_MTL_EST_GCL_CONTROL,
+					 ctrl, !(ctrl & XGMAC_SRWO), 100, 5000);
+}
+
+static int dwxgmac3_est_configure(void __iomem *ioaddr, struct stmmac_est *cfg,
+				  unsigned int ptp_rate)
+{
+	int i, ret = 0x0;
+	u32 ctrl;
+
+	ret |= dwxgmac3_est_write(ioaddr, XGMAC_BTR_LOW, cfg->btr[0], false);
+	ret |= dwxgmac3_est_write(ioaddr, XGMAC_BTR_HIGH, cfg->btr[1], false);
+	ret |= dwxgmac3_est_write(ioaddr, XGMAC_TER, cfg->ter, false);
+	ret |= dwxgmac3_est_write(ioaddr, XGMAC_LLR, cfg->gcl_size, false);
+	ret |= dwxgmac3_est_write(ioaddr, XGMAC_CTR_LOW, cfg->ctr[0], false);
+	ret |= dwxgmac3_est_write(ioaddr, XGMAC_CTR_HIGH, cfg->ctr[1], false);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < cfg->gcl_size; i++) {
+		ret = dwxgmac3_est_write(ioaddr, i, cfg->gcl[i], true);
+		if (ret)
+			return ret;
+	}
+
+	ctrl = readl(ioaddr + XGMAC_MTL_EST_CONTROL);
+	ctrl &= ~XGMAC_PTOV;
+	ctrl |= ((1000000000 / ptp_rate) * 9) << XGMAC_PTOV_SHIFT;
+	if (cfg->enable)
+		ctrl |= XGMAC_EEST | XGMAC_SSWL;
+	else
+		ctrl &= ~XGMAC_EEST;
+
+	writel(ctrl, ioaddr + XGMAC_MTL_EST_CONTROL);
+	return 0;
+}
+
 const struct stmmac_ops dwxgmac210_ops = {
 	.core_init = dwxgmac2_core_init,
 	.set_mac = dwxgmac2_set_mac,
@@ -1402,6 +1453,7 @@ const struct stmmac_ops dwxgmac210_ops = {
 	.config_l3_filter = dwxgmac2_config_l3_filter,
 	.config_l4_filter = dwxgmac2_config_l4_filter,
 	.set_arp_offload = dwxgmac2_set_arp_offload,
+	.est_configure = dwxgmac3_est_configure,
 };
 
 int dwxgmac2_setup(struct stmmac_priv *priv)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index ae066f4e99a8..6ff2795a5117 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -429,6 +429,9 @@ static void dwxgmac2_get_hw_feature(void __iomem *ioaddr,
 
 	/* MAC HW feature 3 */
 	hw_cap = readl(ioaddr + XGMAC_HW_FEATURE3);
+	dma_cap->estwid = (hw_cap & XGMAC_HWFEAT_ESTWID) >> 23;
+	dma_cap->estdep = (hw_cap & XGMAC_HWFEAT_ESTDEP) >> 20;
+	dma_cap->estsel = (hw_cap & XGMAC_HWFEAT_ESTSEL) >> 19;
 	dma_cap->asp = (hw_cap & XGMAC_HWFEAT_ASP) >> 14;
 	dma_cap->dvlan = (hw_cap & XGMAC_HWFEAT_DVLAN) >> 13;
 	dma_cap->frpes = (hw_cap & XGMAC_HWFEAT_FRPES) >> 11;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
