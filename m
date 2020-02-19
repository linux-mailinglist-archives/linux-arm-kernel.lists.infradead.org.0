Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C38165306
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 00:20:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VHVbfClh3IzhcG52x2hx35tshVlebj25FtLuPs8UeVo=; b=b40zYkzGy8//hQ
	4y/i41VHjxSp/YY74gYDk5pmGpJS4kUUy3yAKtHhTbKn9pr4GQ8Pa+csmdzc//h1lpJscjTLAUYuU
	tW4gTk6l7LR70a/7ZRczsskhe0vzw2bBn/iFhCetCKEAlPMSuPZHwyj3+y5h1WpR7HJ43lh+LEx48
	Wdb8oQVmi5KkBD9WTWAkfPpppYkFf3zcPWoxIU2pNrDDgRob8nKHfoaXoeJowjhLEC8/7Sh/NfIjB
	aVmcBeMl2UW0A5B2sNK5Y1JNIvRidjchmf3lpGspSVKTa52dJNyTg+qOxbz5pKM4b9l1zW6euERR6
	FMoaouuU0h3/QRzEzeDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4YdM-0000Fy-Cr; Wed, 19 Feb 2020 23:20:00 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4YdE-0000FU-B5
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 23:19:53 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=rjones.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <rjones@gateworks.com>)
 id 1j4Ydv-0005r2-FZ; Wed, 19 Feb 2020 23:20:35 +0000
From: Robert Jones <rjones@gateworks.com>
To: Sunil Goutham <sgoutham@marvell.com>,
 Robert Richter <rrichter@marvell.com>, David Miller <davem@davemloft.net>
Subject: [PATCH net v3] net: thunderx: workaround BGX TX Underflow issue
Date: Wed, 19 Feb 2020 15:19:36 -0800
Message-Id: <20200219231936.5531-1-rjones@gateworks.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_151952_423753_5A373F0A 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Robert Jones <rjones@gateworks.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, netdev@vger.kernel.org,
 Tim Harvey <tharvey@gateworks.com>, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tim Harvey <tharvey@gateworks.com>

While it is not yet understood why a TX underflow can easily occur
for SGMII interfaces resulting in a TX wedge. It has been found that
disabling/re-enabling the LMAC resolves the issue.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
Reviewed-by: Robert Jones <rjones@gateworks.com>
---
Changes in v2:
 - Changed bgx_register_intr() to a void return
 - Added pci_free_irq_vectors() calls to free irq if named/allocated
 - Use snprintf instead of sprintf for irq names

Changes in v3:
 - Use pci_err() instead of dev_err() calls
 - Use pci_alloc_irq_vectors() for minimum vectors with PCI_IRQ_ALL_TYPES
 - Use pci_request_irq() instead of request_irq() with stored name
 - Move interrupt enable (and add disable) to bgx_lmac_rx_tx_enable()
 - Add pcim_enable_device(), pci_free_irq() calls and remove vector free calls

 .../net/ethernet/cavium/thunder/thunder_bgx.c | 62 ++++++++++++++++++-
 .../net/ethernet/cavium/thunder/thunder_bgx.h |  9 +++
 2 files changed, 68 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
index c4f6ec0cd183..00751771f662 100644
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
index 25888706bdcd..cdea49392185 100644
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
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
