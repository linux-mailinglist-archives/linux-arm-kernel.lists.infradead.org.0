Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5AF176B45
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 03:49:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+WtX3JzGxkE+pDnob3/GoFfuvSrfgAGWZXenzcWlf/c=; b=iKmKsEzBrqruDB
	SpBF9MWAA0zAA/dfIMmHsXCU3e38+M4g/Wp4gtW/lLI8hKLFQfaeiX4Ti4axtsYZh89ON49pN3Ztk
	b7UxIrdPBZXiCOmvueFzc2fcTJBNF/gn70KgHw2rRfCq3buKoZEfUCcOH9jSE45saKbGVZk5Gg43X
	dHaY6A5ElIJMRLM9QLQvnVh7RUSfwkcrFr2K83pFPqM20pSu1kb1l5krBaLeyGEpp6PJk67Mg+TW6
	vMyK5+E/c35Ue6PV30jQSo2OXydQEH1JoyqccWFX+BiaaxAyHsIj4zLOXFR9FYwOtIfS3sYZkgcXy
	guWk+4/2Ro2nCaWZyUIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8xci-0006YV-DO; Tue, 03 Mar 2020 02:49:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8xbt-00068k-0r
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 02:48:45 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5918324680;
 Tue,  3 Mar 2020 02:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583203720;
 bh=cDrG6eBvBexdJXtqq7vBX8LWzWqJNBH8R4xqScia/FM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=u08PQwLzLpZqYSFQ48MhILMkzLP4JRTop7GfQPkZwf+22DTDe+JYD+TgxUIfSF242
 wmV7THTshV+bJbIWcKIqpy3WeMpaQ/p03H98CRdPlcy0yOxM3w+2ATIcDBDYBvPsFa
 1AaiwGZX3DqMaHoXBrEb5k7pehJoETmjJDLcf32I=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 49/58] net: thunderx: workaround BGX TX Underflow
 issue
Date: Mon,  2 Mar 2020 21:47:31 -0500
Message-Id: <20200303024740.9511-49-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303024740.9511-1-sashal@kernel.org>
References: <20200303024740.9511-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_184841_149609_59FF54B6 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Robert Jones <rjones@gateworks.com>,
 netdev@vger.kernel.org, Tim Harvey <tharvey@gateworks.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tim Harvey <tharvey@gateworks.com>

[ Upstream commit 971617c3b761c876d686a2188220a33898c90e99 ]

While it is not yet understood why a TX underflow can easily occur
for SGMII interfaces resulting in a TX wedge. It has been found that
disabling/re-enabling the LMAC resolves the issue.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
Reviewed-by: Robert Jones <rjones@gateworks.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../net/ethernet/cavium/thunder/thunder_bgx.c | 62 ++++++++++++++++++-
 .../net/ethernet/cavium/thunder/thunder_bgx.h |  9 +++
 2 files changed, 68 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
index 6cc100e7d5c07..76ff42ec3ae5e 100644
--- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
+++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
@@ -410,10 +410,19 @@ void bgx_lmac_rx_tx_enable(int node, int bgx_idx, int lmacid, bool enable)
 	lmac = &bgx->lmac[lmacid];
 
 	cfg = bgx_reg_read(bgx, lmacid, BGX_CMRX_CFG);
-	if (enable)
+	if (enable) {
 		cfg |= CMR_PKT_RX_EN | CMR_PKT_TX_EN;
-	else
+
+		/* enable TX FIFO Underflow interrupt */
+		bgx_reg_modify(bgx, lmacid, BGX_GMP_GMI_TXX_INT_ENA_W1S,
+			       GMI_TXX_INT_UNDFLW);
+	} else {
 		cfg &= ~(CMR_PKT_RX_EN | CMR_PKT_TX_EN);
+
+		/* Disable TX FIFO Underflow interrupt */
+		bgx_reg_modify(bgx, lmacid, BGX_GMP_GMI_TXX_INT_ENA_W1C,
+			       GMI_TXX_INT_UNDFLW);
+	}
 	bgx_reg_write(bgx, lmacid, BGX_CMRX_CFG, cfg);
 
 	if (bgx->is_rgx)
@@ -1535,6 +1544,48 @@ static int bgx_init_phy(struct bgx *bgx)
 	return bgx_init_of_phy(bgx);
 }
 
+static irqreturn_t bgx_intr_handler(int irq, void *data)
+{
+	struct bgx *bgx = (struct bgx *)data;
+	u64 status, val;
+	int lmac;
+
+	for (lmac = 0; lmac < bgx->lmac_count; lmac++) {
+		status = bgx_reg_read(bgx, lmac, BGX_GMP_GMI_TXX_INT);
+		if (status & GMI_TXX_INT_UNDFLW) {
+			pci_err(bgx->pdev, "BGX%d lmac%d UNDFLW\n",
+				bgx->bgx_id, lmac);
+			val = bgx_reg_read(bgx, lmac, BGX_CMRX_CFG);
+			val &= ~CMR_EN;
+			bgx_reg_write(bgx, lmac, BGX_CMRX_CFG, val);
+			val |= CMR_EN;
+			bgx_reg_write(bgx, lmac, BGX_CMRX_CFG, val);
+		}
+		/* clear interrupts */
+		bgx_reg_write(bgx, lmac, BGX_GMP_GMI_TXX_INT, status);
+	}
+
+	return IRQ_HANDLED;
+}
+
+static void bgx_register_intr(struct pci_dev *pdev)
+{
+	struct bgx *bgx = pci_get_drvdata(pdev);
+	int ret;
+
+	ret = pci_alloc_irq_vectors(pdev, BGX_LMAC_VEC_OFFSET,
+				    BGX_LMAC_VEC_OFFSET, PCI_IRQ_ALL_TYPES);
+	if (ret < 0) {
+		pci_err(pdev, "Req for #%d msix vectors failed\n",
+			BGX_LMAC_VEC_OFFSET);
+		return;
+	}
+	ret = pci_request_irq(pdev, GMPX_GMI_TX_INT, bgx_intr_handler, NULL,
+			      bgx, "BGX%d", bgx->bgx_id);
+	if (ret)
+		pci_free_irq(pdev, GMPX_GMI_TX_INT, bgx);
+}
+
 static int bgx_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 {
 	int err;
@@ -1550,7 +1601,7 @@ static int bgx_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	pci_set_drvdata(pdev, bgx);
 
-	err = pci_enable_device(pdev);
+	err = pcim_enable_device(pdev);
 	if (err) {
 		dev_err(dev, "Failed to enable PCI device\n");
 		pci_set_drvdata(pdev, NULL);
@@ -1604,6 +1655,8 @@ static int bgx_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	bgx_init_hw(bgx);
 
+	bgx_register_intr(pdev);
+
 	/* Enable all LMACs */
 	for (lmac = 0; lmac < bgx->lmac_count; lmac++) {
 		err = bgx_lmac_enable(bgx, lmac);
@@ -1620,6 +1673,7 @@ static int bgx_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 err_enable:
 	bgx_vnic[bgx->bgx_id] = NULL;
+	pci_free_irq(pdev, GMPX_GMI_TX_INT, bgx);
 err_release_regions:
 	pci_release_regions(pdev);
 err_disable_device:
@@ -1637,6 +1691,8 @@ static void bgx_remove(struct pci_dev *pdev)
 	for (lmac = 0; lmac < bgx->lmac_count; lmac++)
 		bgx_lmac_disable(bgx, lmac);
 
+	pci_free_irq(pdev, GMPX_GMI_TX_INT, bgx);
+
 	bgx_vnic[bgx->bgx_id] = NULL;
 	pci_release_regions(pdev);
 	pci_disable_device(pdev);
diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.h b/drivers/net/ethernet/cavium/thunder/thunder_bgx.h
index 25888706bdcd1..cdea493921857 100644
--- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.h
+++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.h
@@ -180,6 +180,15 @@
 #define BGX_GMP_GMI_TXX_BURST		0x38228
 #define BGX_GMP_GMI_TXX_MIN_PKT		0x38240
 #define BGX_GMP_GMI_TXX_SGMII_CTL	0x38300
+#define BGX_GMP_GMI_TXX_INT		0x38500
+#define BGX_GMP_GMI_TXX_INT_W1S		0x38508
+#define BGX_GMP_GMI_TXX_INT_ENA_W1C	0x38510
+#define BGX_GMP_GMI_TXX_INT_ENA_W1S	0x38518
+#define  GMI_TXX_INT_PTP_LOST			BIT_ULL(4)
+#define  GMI_TXX_INT_LATE_COL			BIT_ULL(3)
+#define  GMI_TXX_INT_XSDEF			BIT_ULL(2)
+#define  GMI_TXX_INT_XSCOL			BIT_ULL(1)
+#define  GMI_TXX_INT_UNDFLW			BIT_ULL(0)
 
 #define BGX_MSIX_VEC_0_29_ADDR		0x400000 /* +(0..29) << 4 */
 #define BGX_MSIX_VEC_0_29_CTL		0x400008
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
