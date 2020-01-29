Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CDE14D329
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 23:39:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JBSL9k4B/JEnTNI+RzFekTf0qXRv3VqNcSUsnuQqpVw=; b=jf3
	1qEyRhRCvvTju7ZrAtfST7Mp78rCtalakqCgWBIwmEFAIzlIyJAIfImaGWGXFKMQ5Sr3XmKmmf+87
	rA/NPh11VwXpycvAK9IeXGya1MhzbyUfh22ypipoM3rsEoIwyAliC3/C95BaO87AIGuPfqpIfq9Yu
	+pZZpPWF9wQJxXsxfdL9M9WsUs7HunT9ij51zmlWo1Y3FXFJ9GbmDXTCrKO6R4I15vD9uiCIVZKDT
	OYOb0OaXNPiI/KNXgN9C1d4oe03VyoKmiED0vIHyAyKjlcNOV9QF7jkVdiYxGba8ZOrKPPmpRVX5O
	R9UFEJQPczm8PQjBmap8hCi62UDpL4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwvzZ-00031M-FW; Wed, 29 Jan 2020 22:39:25 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwvzN-000311-WA
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 22:39:15 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=rjones.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <rjones@gateworks.com>)
 id 1iwvxA-0007j9-Ne; Wed, 29 Jan 2020 22:36:56 +0000
From: Robert Jones <rjones@gateworks.com>
To: Sunil Goutham <sgoutham@marvell.com>,
 Robert Richter <rrichter@marvell.com>, David Miller <davem@davemloft.net>
Subject: [PATCH net] net: thunderx: workaround BGX TX Underflow issue
Date: Wed, 29 Jan 2020 14:36:09 -0800
Message-Id: <20200129223609.9327-1-rjones@gateworks.com>
X-Mailer: git-send-email 2.9.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_143914_074696_D1856287 
X-CRM114-Status: GOOD (  10.30  )
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
Cc: netdev@vger.kernel.org, Tim Harvey <tharvey@gateworks.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
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
 drivers/net/ethernet/cavium/thunder/thunder_bgx.c | 54 +++++++++++++++++++++++
 drivers/net/ethernet/cavium/thunder/thunder_bgx.h |  9 ++++
 2 files changed, 63 insertions(+)

diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
index c4f6ec0..078ecea 100644
--- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
+++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
@@ -74,6 +74,7 @@ struct bgx {
 	struct pci_dev		*pdev;
 	bool                    is_dlm;
 	bool                    is_rgx;
+	char			irq_name[7];
 };

 static struct bgx *bgx_vnic[MAX_BGX_THUNDER];
@@ -1535,6 +1536,53 @@ static int bgx_init_phy(struct bgx *bgx)
 	return bgx_init_of_phy(bgx);
 }

+static irqreturn_t bgx_intr_handler(int irq, void *data)
+{
+	struct bgx *bgx = (struct bgx *)data;
+	struct device *dev = &bgx->pdev->dev;
+	u64 status, val;
+	int lmac;
+
+	for (lmac = 0; lmac < bgx->lmac_count; lmac++) {
+		status = bgx_reg_read(bgx, lmac, BGX_GMP_GMI_TXX_INT);
+		if (status & GMI_TXX_INT_UNDFLW) {
+			dev_err(dev, "BGX%d lmac%d UNDFLW\n", bgx->bgx_id,
+				lmac);
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
+static int bgx_register_intr(struct pci_dev *pdev)
+{
+	struct bgx *bgx = pci_get_drvdata(pdev);
+	struct device *dev = &pdev->dev;
+	int num_vec, ret;
+
+	/* Enable MSI-X */
+	num_vec = pci_msix_vec_count(pdev);
+	ret = pci_alloc_irq_vectors(pdev, num_vec, num_vec, PCI_IRQ_MSIX);
+	if (ret < 0) {
+		dev_err(dev, "Req for #%d msix vectors failed\n", num_vec);
+		return 1;
+	}
+	sprintf(bgx->irq_name, "BGX%d", bgx->bgx_id);
+	ret = request_irq(pci_irq_vector(pdev, GMPX_GMI_TX_INT),
+		bgx_intr_handler, 0, bgx->irq_name, bgx);
+	if (ret)
+		return 1;
+
+	return 0;
+}
+
 static int bgx_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 {
 	int err;
@@ -1604,6 +1652,8 @@ static int bgx_probe(struct pci_dev *pdev, const struct pci_device_id *ent)

 	bgx_init_hw(bgx);

+	bgx_register_intr(pdev);
+
 	/* Enable all LMACs */
 	for (lmac = 0; lmac < bgx->lmac_count; lmac++) {
 		err = bgx_lmac_enable(bgx, lmac);
@@ -1614,6 +1664,10 @@ static int bgx_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 				bgx_lmac_disable(bgx, --lmac);
 			goto err_enable;
 		}
+
+		/* enable TX FIFO Underflow interrupt */
+		bgx_reg_modify(bgx, lmac, BGX_GMP_GMI_TXX_INT_ENA_W1S,
+			       GMI_TXX_INT_UNDFLW);
 	}

 	return 0;
diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.h b/drivers/net/ethernet/cavium/thunder/thunder_bgx.h
index 2588870..cdea493 100644
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
2.9.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
