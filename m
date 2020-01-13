Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B24138CE9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 09:31:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=76q86h/p2T9rcF1/q/9PiunN2iyh+Vk74eo4aUSsjck=; b=craxmN/RPGWJGMFaq87KsTe/1A
	Ds8oysegzZl8pT3fHziRxQP84OCLwzvN1wgbZ/ZqVwm/Z+iqd6f8E9ks2NxJSTNZnBS8F2ImTBOAK
	zwsGguolD3wesq8vUMJu3Si+oZ5EGvXnbj0/JgARGQZ38LUApnaEFqpmB+/e9YJTT4vAK7vwy5WtC
	k2L42jCf3uhIsPTPlI54U2s1TcrNkBQXd/VEqAXdL0cCy5mlvgts0R9ShRcktpZREeeoD9Zq4HKSe
	JedtUvsJDgHMkfiFcyUAsiPtcFMP5zyuRHmluOTqj6jxaGu8Nj5CYSfXk42wYJvDWnFPH8BBuOsul
	2WDEo4LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqv8R-0007DE-UK; Mon, 13 Jan 2020 08:31:43 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqv6k-0004mH-8N
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 08:30:03 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 9953E40691;
 Mon, 13 Jan 2020 08:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578904196; bh=Qm3XveBqQA5PwdNtFJKTAbTjqSNRMQmwLjWWGFFLe74=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=M6sDmTrAwdy08l52Odwb8y9SHUw3tkAF28Ovmcldj+IGHdEZCSwUZsnqgryBY75Aw
 i4pGWtYFiP4iCW4ApXz/k5Zbj5N5AG6U5FvUYu/FJImGh63OQUfNLukrjGzNIxZFem
 hl8ljfI70Z+GerPqpQ7lZfGIG1fTs3hzdEXJSKwZTLN73tgEgipN4wv4sDr/NqWXq0
 W55DPvWiLTnGdVDNzPWrMBuDOxnYigYRQ1OXTGo+YK9IA6scarGBwtgF1utAAJ2ZE0
 PaEavMLGNew++KQY9dpvAnUN6dEVsyZdQLs96nCegdr1gc+NIPSx5AFkXgICISnnB4
 wGS4I3iV+Sb+g==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 59628A0072;
 Mon, 13 Jan 2020 08:29:54 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 4/6] net: stmmac: gmac4+: Add TBS support
Date: Mon, 13 Jan 2020 09:29:38 +0100
Message-Id: <5da384fdd4269d4c6aa3a78daf567f49ab5930a2.1578903874.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1578903874.git.Jose.Abreu@synopsys.com>
References: <cover.1578903874.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1578903874.git.Jose.Abreu@synopsys.com>
References: <cover.1578903874.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_002958_318069_4065EB2A 
X-CRM114-Status: GOOD (  13.97  )
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

Adds all the necessary HW hooks to support TBS feature in QoS cores.

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
 drivers/net/ethernet/stmicro/stmmac/dwmac4.h       |  4 ++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c | 10 ++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h |  7 +++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c   | 21 +++++++++++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h   |  7 +++++++
 5 files changed, 49 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
index 2e6b60a476c6..d400e8be8799 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
@@ -12,6 +12,9 @@
 
 #include "common.h"
 
+/* Misc */
+#define GMAC_LT_SHIFT			8 /* LT is in 256ns base */
+
 /*  MAC registers */
 #define GMAC_CONFIG			0x00000000
 #define GMAC_EXT_CONFIG			0x00000004
@@ -239,6 +242,7 @@ enum power_event {
 
 /* MAC HW features3 bitmap */
 #define GMAC_HW_FEAT_ASP		GENMASK(29, 28)
+#define GMAC_HW_FEAT_TBSSEL		BIT(27)
 #define GMAC_HW_FEAT_FPESEL		BIT(26)
 #define GMAC_HW_FEAT_ESTWID		GENMASK(21, 20)
 #define GMAC_HW_FEAT_ESTDEP		GENMASK(19, 17)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c
index 3e14da69f378..017b46defa84 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c
@@ -10,6 +10,7 @@
 
 #include <linux/stmmac.h>
 #include "common.h"
+#include "dwmac4.h"
 #include "dwmac4_descs.h"
 
 static int dwmac4_wrback_get_tx_status(void *data, struct stmmac_extra_stats *x,
@@ -505,6 +506,14 @@ static void dwmac4_set_sec_addr(struct dma_desc *p, dma_addr_t addr)
 	p->des3 = cpu_to_le32(upper_32_bits(addr) | RDES3_BUFFER2_VALID_ADDR);
 }
 
+static void dwmac4_set_tbs(struct dma_edesc *p, u32 sec, u32 nsec)
+{
+	p->des4 = cpu_to_le32((sec & TDES4_LT) | TDES4_LTV);
+	p->des5 = cpu_to_le32((nsec >> GMAC_LT_SHIFT) & TDES5_LT);
+	p->des6 = 0;
+	p->des7 = 0;
+}
+
 const struct stmmac_desc_ops dwmac4_desc_ops = {
 	.tx_status = dwmac4_wrback_get_tx_status,
 	.rx_status = dwmac4_wrback_get_rx_status,
@@ -534,6 +543,7 @@ const struct stmmac_desc_ops dwmac4_desc_ops = {
 	.set_vlan = dwmac4_set_vlan,
 	.get_rx_header_len = dwmac4_get_rx_header_len,
 	.set_sec_addr = dwmac4_set_sec_addr,
+	.set_tbs = dwmac4_set_tbs,
 };
 
 const struct stmmac_mode_ops dwmac4_ring_mode_ops = {
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h
index 6d92109dc9aa..6da070ccd737 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h
@@ -73,6 +73,13 @@
 #define TDES3_CONTEXT_TYPE		BIT(30)
 #define	TDES3_CONTEXT_TYPE_SHIFT	30
 
+/* TDES4 */
+#define TDES4_LTV			BIT(31)
+#define TDES4_LT			GENMASK(7, 0)
+
+/* TDES5 */
+#define TDES5_LT			GENMASK(31, 8)
+
 /* TDS3 use for both format (read and write back) */
 #define TDES3_OWN			BIT(31)
 #define TDES3_OWN_SHIFT			31
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
index 213d44482ffa..bb29bfcd62c3 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
@@ -404,6 +404,7 @@ static void dwmac4_get_hw_feature(void __iomem *ioaddr,
 
 	/* 5.10 Features */
 	dma_cap->asp = (hw_cap & GMAC_HW_FEAT_ASP) >> 28;
+	dma_cap->tbssel = (hw_cap & GMAC_HW_FEAT_TBSSEL) >> 27;
 	dma_cap->fpesel = (hw_cap & GMAC_HW_FEAT_FPESEL) >> 26;
 	dma_cap->estwid = (hw_cap & GMAC_HW_FEAT_ESTWID) >> 20;
 	dma_cap->estdep = (hw_cap & GMAC_HW_FEAT_ESTDEP) >> 17;
@@ -471,6 +472,25 @@ static void dwmac4_enable_sph(void __iomem *ioaddr, bool en, u32 chan)
 	writel(value, ioaddr + DMA_CHAN_CONTROL(chan));
 }
 
+static int dwmac4_enable_tbs(void __iomem *ioaddr, bool en, u32 chan)
+{
+	u32 value = readl(ioaddr + DMA_CHAN_TX_CONTROL(chan));
+
+	if (en)
+		value |= DMA_CONTROL_EDSE;
+	else
+		value &= ~DMA_CONTROL_EDSE;
+
+	writel(value, ioaddr + DMA_CHAN_TX_CONTROL(chan));
+
+	value = readl(ioaddr + DMA_CHAN_TX_CONTROL(chan)) & DMA_CONTROL_EDSE;
+	if (en && !value)
+		return -EIO;
+
+	writel(DMA_TBS_DEF_FTOS, ioaddr + DMA_TBS_CTRL);
+	return 0;
+}
+
 const struct stmmac_dma_ops dwmac4_dma_ops = {
 	.reset = dwmac4_dma_reset,
 	.init = dwmac4_dma_init,
@@ -527,4 +547,5 @@ const struct stmmac_dma_ops dwmac410_dma_ops = {
 	.qmode = dwmac4_qmode,
 	.set_bfsize = dwmac4_set_bfsize,
 	.enable_sph = dwmac4_enable_sph,
+	.enable_tbs = dwmac4_enable_tbs,
 };
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h
index bcb6d5190f3d..8391ca63d943 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h
@@ -22,6 +22,7 @@
 #define DMA_DEBUG_STATUS_1		0x00001010
 #define DMA_DEBUG_STATUS_2		0x00001014
 #define DMA_AXI_BUS_MODE		0x00001028
+#define DMA_TBS_CTRL			0x00001050
 
 /* DMA Bus Mode bitmap */
 #define DMA_BUS_MODE_SFT_RESET		BIT(0)
@@ -82,6 +83,11 @@
 
 #define DMA_AXI_BURST_LEN_MASK		0x000000FE
 
+/* DMA TBS Control */
+#define DMA_TBS_FTOS			GENMASK(31, 8)
+#define DMA_TBS_FTOV			BIT(0)
+#define DMA_TBS_DEF_FTOS		(DMA_TBS_FTOS | DMA_TBS_FTOV)
+
 /* Following DMA defines are chanels oriented */
 #define DMA_CHAN_BASE_ADDR		0x00001100
 #define DMA_CHAN_BASE_OFFSET		0x80
@@ -114,6 +120,7 @@
 #define DMA_CONTROL_MSS_MASK		GENMASK(13, 0)
 
 /* DMA Tx Channel X Control register defines */
+#define DMA_CONTROL_EDSE		BIT(28)
 #define DMA_CONTROL_TSE			BIT(12)
 #define DMA_CONTROL_OSP			BIT(4)
 #define DMA_CONTROL_ST			BIT(0)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
