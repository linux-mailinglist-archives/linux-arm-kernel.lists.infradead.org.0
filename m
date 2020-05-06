Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7E11C6E82
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CrebhPWl+9f3vt/tY6WwtgoEkxAC+FI91lj2AI7HS+E=; b=cbQfSrvPmTd0ZsoIht0W8tUkdb
	m8utRzH827p+S6AeL7M3JIta40uHQoeXMCX43KAh5W8WveJhTsW9nXgsgbZgLccC0s2RYOLi0EXRC
	msdDNSxdE24y8IuwvTdPkh6fesaXr2naEYYbb79Xc/4ZxCsqFxioxrlXq/6aBBcFMXf9OO7FKl76+
	W54fEAoXgh52QUwfe2jAsLLA46tNnWAexZ/pLo7U5v1dktMRjRQqCeqyzuzbkRvJoZIgWxbEP8p/5
	oUHJgm11GhfcZQEklhMOUFey3jOKgY5A/GioMWEH9Ipk9py1ZfGPHsbSjDuxd2Vc0GkzoahjCsXHC
	F+siyhNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHQT-0006A1-6b; Wed, 06 May 2020 10:37:17 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHPr-0005mg-Mp; Wed, 06 May 2020 10:36:41 +0000
Received: by mail-pj1-x1043.google.com with SMTP id a5so667647pjh.2;
 Wed, 06 May 2020 03:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=thaTuz023J24mmfYx9WFuNUVR4uqDSDs4hd6xiMs2HQ=;
 b=Juk8aX+/Z6K3rUR9tShvSf8QO/59KmTN6rxhKB9Mt4roYZzLAXhkMmBse1u1uy3wZ6
 gO067Y5vaMP4NzmZLRT7RmHI90eBWk5MWMP0MSO/95TSkr0AuE5y2EtBsHVGLQZY2PHc
 IGVSWhhtgGZFi/GZzLsTjBkeJBD8AFb/6kxSQ4gi2eX0C0xkDgpof43hu+ce1jZaIFUP
 +asKdgFD7Invze3lbGALkogLgrEY5LNYsAVh40x/YNlhuiYkvt7RVlzhKbODkyBpRYNr
 LSA++b17xQQ47DHfvQmKRy2iXyM5w3z+CVBXPrOe9BUjnMLpmLPit523/sXEYoUybQDa
 eTIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=thaTuz023J24mmfYx9WFuNUVR4uqDSDs4hd6xiMs2HQ=;
 b=eP8YBfrnCE4gXSmLmHMk7+KWu9/aVZYBwytFQ3oBTuElaYiJeBmuryuCX2CStXL7Xm
 QB1UutTRC4+xJlIyhn2O+XvjJ9/fLsrY3HorZWXMcqYZLj9De+XuRxwTtWoX7YOQItMx
 ZsS41dZgshABy16KUjs6ddFsTEdFudYPr7mmKNPmL3uqjLpSETLQxlUyQszVK22Tfr50
 71EDshqgbZq+t0m2SLVO3cdOy8M4vGReRvISNS4YxDFvxlwoaluVgnMa+yXU+JB/Bqyk
 pA0n/PS6uuaiVDTEbJsLAGWkw2Gg4GSzjSZhnz6FfHaVKNQfj7Ne06NeqNklDlzX/vna
 k+ww==
X-Gm-Message-State: AGi0PubMVtgqBTkyIhYiBkw6U0UKcf/4ywHWpNjcS1BNy0sNwI2t9L6V
 NpEbF/ZBk1Fmzn4Fr3kDGzg=
X-Google-Smtp-Source: APiQypIYqg3kBltw6m7Zi9HbaL4qr5KxUh+1Z/pssRv1XSrG6qmz4S7b5jJZQF5wtZ3ECdo0GdkPWQ==
X-Received: by 2002:a17:90a:d56:: with SMTP id
 22mr8227363pju.187.1588761397235; 
 Wed, 06 May 2020 03:36:37 -0700 (PDT)
Received: from localhost.localdomain ([106.215.43.48])
 by smtp.gmail.com with ESMTPSA id i72sm1601582pfe.104.2020.05.06.03.36.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 May 2020 03:36:36 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, vkoul@kernel.org, afaerber@suse.de,
 manivannan.sadhasivam@linaro.org
Subject: [PATCH RFC 2/8] dmaengine: Actions: Add support for S700 DMA engine
Date: Wed,  6 May 2020 16:06:04 +0530
Message-Id: <1588761371-9078-3-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_033639_753082_0423B8EF 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-actions@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DMA controller present on S700 SoC is compatible with the one on S900
(as most of registers are same), but it has different DMA descriptor
structure where registers "fcnt" and "ctrlb" uses different encoding.

For instance, on S900 "fcnt" starts at offset 0x0c and uses upper 12
bits whereas on S700, it starts at offset 0x1c and uses lower 12 bits.

This commit adds support for DMA controller present on S700.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
 drivers/dma/owl-dma.c | 99 ++++++++++++++++++++++++++++++++++++---------------
 1 file changed, 70 insertions(+), 29 deletions(-)

diff --git a/drivers/dma/owl-dma.c b/drivers/dma/owl-dma.c
index b0d80a2fa383..6c2f0d0aad4c 100644
--- a/drivers/dma/owl-dma.c
+++ b/drivers/dma/owl-dma.c
@@ -134,6 +134,11 @@ enum owl_dmadesc_offsets {
 	OWL_DMADESC_SIZE
 };
 
+enum owl_dma_id {
+	S900_DMA,
+	S700_DMA,
+};
+
 /**
  * struct owl_dma_lli - Link list for dma transfer
  * @hw: hardware link list
@@ -200,6 +205,7 @@ struct owl_dma_vchan {
  * @pchans: array of data for the physical channels
  * @nr_vchans: the number of physical channels
  * @vchans: array of data for the physical channels
+ * @devid: device id based on OWL SoC
  */
 struct owl_dma {
 	struct dma_device	dma;
@@ -214,6 +220,7 @@ struct owl_dma {
 
 	unsigned int		nr_vchans;
 	struct owl_dma_vchan	*vchans;
+	enum owl_dma_id		devid;
 };
 
 static void pchan_update(struct owl_dma_pchan *pchan, u32 reg,
@@ -354,6 +361,7 @@ static inline int owl_dma_cfg_lli(struct owl_dma_vchan *vchan,
 				  struct dma_slave_config *sconfig,
 				  bool is_cyclic)
 {
+	struct owl_dma *od = to_owl_dma(vchan->vc.chan.device);
 	u32 mode, ctrlb;
 
 	mode = OWL_DMA_MODE_PW(0);
@@ -409,8 +417,14 @@ static inline int owl_dma_cfg_lli(struct owl_dma_vchan *vchan,
 	lli->hw[OWL_DMADESC_DADDR] = dst;
 	lli->hw[OWL_DMADESC_SRC_STRIDE] = 0;
 	lli->hw[OWL_DMADESC_DST_STRIDE] = 0;
-	lli->hw[OWL_DMADESC_FLEN] = len | 1 << 20;
-	lli->hw[OWL_DMADESC_CTRLB] = ctrlb;
+
+	if (od->devid == S700_DMA) {
+		lli->hw[OWL_DMADESC_FLEN] = len;
+		lli->hw[OWL_DMADESC_CTRLB] = 1 | ctrlb;
+	} else {
+		lli->hw[OWL_DMADESC_FLEN] = len | 1 << 20;
+		lli->hw[OWL_DMADESC_CTRLB] = ctrlb;
+	}
 
 	return 0;
 }
@@ -562,26 +576,35 @@ static irqreturn_t owl_dma_interrupt(int irq, void *dev_id)
 	dma_writel(od, OWL_DMA_IRQ_PD0, pending);
 
 	/* Check missed pending IRQ */
-	for (i = 0; i < od->nr_pchans; i++) {
-		pchan = &od->pchans[i];
-		chan_irq_pending = pchan_readl(pchan, OWL_DMAX_INT_CTL) &
-				   pchan_readl(pchan, OWL_DMAX_INT_STATUS);
-
-		/* Dummy read to ensure OWL_DMA_IRQ_PD0 value is updated */
-		dma_readl(od, OWL_DMA_IRQ_PD0);
+	if (od->devid == S900_DMA) {
+		for (i = 0; i < od->nr_pchans; i++) {
+			pchan = &od->pchans[i];
+			chan_irq_pending = pchan_readl(pchan,
+						       OWL_DMAX_INT_CTL) &
+					   pchan_readl(pchan,
+						       OWL_DMAX_INT_STATUS)
+							;
+
+			/* Dummy read to ensure OWL_DMA_IRQ_PD0 value is
+			 * updated
+			 */
+			dma_readl(od, OWL_DMA_IRQ_PD0);
 
-		global_irq_pending = dma_readl(od, OWL_DMA_IRQ_PD0);
+			global_irq_pending = dma_readl(od,
+						       OWL_DMA_IRQ_PD0);
 
-		if (chan_irq_pending && !(global_irq_pending & BIT(i)))	{
-			dev_dbg(od->dma.dev,
-				"global and channel IRQ pending match err\n");
+			if (chan_irq_pending && !(global_irq_pending &
+						  BIT(i))) {
+				dev_dbg(od->dma.dev,
+			"global and channel IRQ pending match err\n");
 
-			/* Clear IRQ status for this pchan */
-			pchan_update(pchan, OWL_DMAX_INT_STATUS,
-				     0xff, false);
+				/* Clear IRQ status for this pchan */
+				pchan_update(pchan, OWL_DMAX_INT_STATUS,
+					     0xff, false);
 
-			/* Update global IRQ pending */
-			pending |= BIT(i);
+				/* Update global IRQ pending */
+				pending |= BIT(i);
+			}
 		}
 	}
 
@@ -720,6 +743,7 @@ static int owl_dma_resume(struct dma_chan *chan)
 
 static u32 owl_dma_getbytes_chan(struct owl_dma_vchan *vchan)
 {
+	struct owl_dma *od = to_owl_dma(vchan->vc.chan.device);
 	struct owl_dma_pchan *pchan;
 	struct owl_dma_txd *txd;
 	struct owl_dma_lli *lli;
@@ -741,9 +765,15 @@ static u32 owl_dma_getbytes_chan(struct owl_dma_vchan *vchan)
 		list_for_each_entry(lli, &txd->lli_list, node) {
 			/* Start from the next active node */
 			if (lli->phys == next_lli_phy) {
-				list_for_each_entry(lli, &txd->lli_list, node)
-					bytes += lli->hw[OWL_DMADESC_FLEN] &
-						 GENMASK(19, 0);
+				list_for_each_entry(lli, &txd->lli_list, node) {
+					if (od->devid == S700_DMA)
+						bytes +=
+						lli->hw[OWL_DMADESC_FLEN];
+					else
+						bytes +=
+						lli->hw[OWL_DMADESC_FLEN] &
+						GENMASK(19, 0);
+				}
 				break;
 			}
 		}
@@ -756,6 +786,7 @@ static enum dma_status owl_dma_tx_status(struct dma_chan *chan,
 					 dma_cookie_t cookie,
 					 struct dma_tx_state *state)
 {
+	struct owl_dma *od = to_owl_dma(chan->device);
 	struct owl_dma_vchan *vchan = to_owl_vchan(chan);
 	struct owl_dma_lli *lli;
 	struct virt_dma_desc *vd;
@@ -773,8 +804,13 @@ static enum dma_status owl_dma_tx_status(struct dma_chan *chan,
 	vd = vchan_find_desc(&vchan->vc, cookie);
 	if (vd) {
 		txd = to_owl_txd(&vd->tx);
-		list_for_each_entry(lli, &txd->lli_list, node)
-			bytes += lli->hw[OWL_DMADESC_FLEN] & GENMASK(19, 0);
+		list_for_each_entry(lli, &txd->lli_list, node) {
+			if (od->devid == S700_DMA)
+				bytes += lli->hw[OWL_DMADESC_FLEN];
+			else
+				bytes += lli->hw[OWL_DMADESC_FLEN] &
+					 GENMASK(19, 0);
+		}
 	} else {
 		bytes = owl_dma_getbytes_chan(vchan);
 	}
@@ -1031,11 +1067,20 @@ static struct dma_chan *owl_dma_of_xlate(struct of_phandle_args *dma_spec,
 	return chan;
 }
 
+static const struct of_device_id owl_dma_match[] = {
+	{ .compatible = "actions,s900-dma", .data = (void *)S900_DMA,},
+	{ .compatible = "actions,s700-dma", .data = (void *)S700_DMA,},
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, owl_dma_match);
+
 static int owl_dma_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	struct owl_dma *od;
 	int ret, i, nr_channels, nr_requests;
+	const struct of_device_id *of_id =
+				of_match_device(owl_dma_match, &pdev->dev);
 
 	od = devm_kzalloc(&pdev->dev, sizeof(*od), GFP_KERNEL);
 	if (!od)
@@ -1060,6 +1105,8 @@ static int owl_dma_probe(struct platform_device *pdev)
 	dev_info(&pdev->dev, "dma-channels %d, dma-requests %d\n",
 		 nr_channels, nr_requests);
 
+	od->devid = (enum owl_dma_id)of_id->data;
+
 	od->nr_pchans = nr_channels;
 	od->nr_vchans = nr_requests;
 
@@ -1192,12 +1239,6 @@ static int owl_dma_remove(struct platform_device *pdev)
 	return 0;
 }
 
-static const struct of_device_id owl_dma_match[] = {
-	{ .compatible = "actions,s900-dma", },
-	{ /* sentinel */ }
-};
-MODULE_DEVICE_TABLE(of, owl_dma_match);
-
 static struct platform_driver owl_dma_driver = {
 	.probe	= owl_dma_probe,
 	.remove	= owl_dma_remove,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
