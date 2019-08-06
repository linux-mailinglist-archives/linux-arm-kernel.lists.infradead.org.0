Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 569DE83334
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 15:45:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MjPN8K59/In2Aqol0qsCueersN8Pp2mkPc5cjqhw87k=; b=rsyQyXtzkmqcDaeiBW6znd9aSM
	j27BwhY0gQg5SO+tCvNc4RJfk2Wie6exKWbcdrZb/G0vsBFB2LzeFGlNbNdMy2yrprhAakV4DQySl
	fYBjPQbwRygCAQqOiMMWdT/9Db0OhosygwEtZ+gnwbQ3zwXXGMBpxSR14V70+Gy3TXBbHUYo0qlln
	QDF2Y66ePjgYflz4tMp9MHdT4T4LA3RETKHkCkuwHZb85x48NpbOTvunMHvhkPhUxVCsCRZqJN8Ki
	yMuA+jf1cGlIUrNxnSMIqtPMrcYnPMBzXTMtz4sa5jnn4toPUQSNJWLIaDeZUC4gLDT/ZMB33gLb5
	56fO3JCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzln-00014v-JW; Tue, 06 Aug 2019 13:44:55 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzjt-0007mh-Ka
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 13:43:02 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4AB4CC1F44;
 Tue,  6 Aug 2019 13:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565098976; bh=Qk/O7+jqEXA/sN1ZdZlDe7BndmrQPcxi2oxVW6HYlAM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=CzP9PE2D13grvZdYjkWzaq66opbnCH86a3dAxb3DS1L16aRaRXLVNQ2qMNRwV6gLA
 zPK5V/LnyKv5/9kLaDIRHncZiTM0j5JaI17P1Ve07L8Q6YePeVYZ0mGw3VFdR42SG3
 TGhjrKgfex967fwrrW3MgkW2l061VlNeFhmqj0AAsUDFZZeDvhkVGcMR/dwuquLrix
 utNadJiH/37uL8OmKEuwA9RsemH3m9HCFQ3egsh25sM3tYgshV4IMOj5Gmvc2xo8uf
 F/6xu+82kpJXGu4ReeRc4C+lroh83e8m7hzr1wHezXWFbABaa+rehnI7hnaWW85rFM
 aMS7kXCDXTs1g==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id D0075A0064;
 Tue,  6 Aug 2019 13:42:54 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v2 03/10] net: stmmac: xgmac: Implement
 tx_queue_prio()
Date: Tue,  6 Aug 2019 15:42:44 +0200
Message-Id: <880db02ffe390334c1b7c4eaa6d84706ed8d6b0f.1565098881.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565098881.git.joabreu@synopsys.com>
References: <cover.1565098881.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565098881.git.joabreu@synopsys.com>
References: <cover.1565098881.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_064257_698222_4E724B43 
X-CRM114-Status: GOOD (  12.45  )
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

Implement the TX Queue Priority callback in XGMAC core.

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
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h      |  4 ++++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c | 19 ++++++++++++++++++-
 2 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 2fe6cd5a8ea0..95c9019567f4 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -124,6 +124,10 @@
 #define XGMAC_MTL_RXQ_DMA_MAP1		0x00001034
 #define XGMAC_QxMDMACH(x)		GENMASK((x) * 8 + 3, (x) * 8)
 #define XGMAC_QxMDMACH_SHIFT(x)		((x) * 8)
+#define XGMAC_TC_PRTY_MAP0		0x00001040
+#define XGMAC_TC_PRTY_MAP1		0x00001044
+#define XGMAC_PSTC(x)			GENMASK((x) * 8 + 7, (x) * 8)
+#define XGMAC_PSTC_SHIFT(x)		((x) * 8)
 #define XGMAC_MTL_TXQ_OPMODE(x)		(0x00001100 + (0x80 * (x)))
 #define XGMAC_TQS			GENMASK(25, 16)
 #define XGMAC_TQS_SHIFT			16
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index 44d728c5c4e4..03ccb3fe48ba 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -114,6 +114,23 @@ static void dwxgmac2_rx_queue_prio(struct mac_device_info *hw, u32 prio,
 	writel(value, ioaddr + reg);
 }
 
+static void dwxgmac2_tx_queue_prio(struct mac_device_info *hw, u32 prio,
+				   u32 queue)
+{
+	void __iomem *ioaddr = hw->pcsr;
+	u32 value, reg;
+
+	reg = (queue < 4) ? XGMAC_TC_PRTY_MAP0 : XGMAC_TC_PRTY_MAP1;
+	if (queue >= 4)
+		queue -= 4;
+
+	value = readl(ioaddr + reg);
+	value &= ~XGMAC_PSTC(queue);
+	value |= (prio << XGMAC_PSTC_SHIFT(queue)) & XGMAC_PSTC(queue);
+
+	writel(value, ioaddr + reg);
+}
+
 static void dwxgmac2_prog_mtl_rx_algorithms(struct mac_device_info *hw,
 					    u32 rx_alg)
 {
@@ -359,7 +376,7 @@ const struct stmmac_ops dwxgmac210_ops = {
 	.rx_ipc = dwxgmac2_rx_ipc,
 	.rx_queue_enable = dwxgmac2_rx_queue_enable,
 	.rx_queue_prio = dwxgmac2_rx_queue_prio,
-	.tx_queue_prio = NULL,
+	.tx_queue_prio = dwxgmac2_tx_queue_prio,
 	.rx_queue_routing = NULL,
 	.prog_mtl_rx_algorithms = dwxgmac2_prog_mtl_rx_algorithms,
 	.prog_mtl_tx_algorithms = dwxgmac2_prog_mtl_tx_algorithms,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
