Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D0E1D3627
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/DDIGyVTcWRGJEiEb2Swc1NB5WVVhrk7RhkOdUXDnEo=; b=hHCj4Gy4spNBjRmRFkGkXfz5M2
	QWAgJp1S9DjXtE5ntzT1bvcSAToj00g6PNKrAKFBMeNhjQrxsbdQVx9Q1pjaGE1Dk1J40Mc9FdbRm
	6A/foXw7HYQeIp2r/6i4mcGx4+K2H5RW/4X9l270/xsV9w19oqLkNhITk2XkH0u7FWTw2IqHVNj7w
	HG0wglET6lm9Rz7KHN5zLEqLpUcFUDI16mW4z4oFXfaX1yehlIrOqZfP5t9MNAb+Zkj5BC/wY7KT6
	ZDmP7GzOk63Iun6tATpeICcTnp8GFOM11qr/NLjGKCHpULTqDnqAWoV9YCQORFR6gd4zpidMhHrbz
	lD/o6LYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGTh-0004nl-SX; Thu, 14 May 2020 16:12:57 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGSd-00045d-Ll; Thu, 14 May 2020 16:11:53 +0000
Received: by mail-pj1-x1042.google.com with SMTP id z15so3096915pjb.0;
 Thu, 14 May 2020 09:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9fV5j8sOG/Soznuq8VAGR0RqzJqSwDfkCf7U4jRW15Y=;
 b=XB674fNpCkVfFAvljox/XXiF9FYuhispHDqy/LvVa52BMMWsPlD45UsFBzAmOdZGrn
 2yUhRF45w2aaOT4toKMzgIlJ2dtDwppawPXCN8vycusNotzPApLVeEfEzMVPWsxy0woQ
 nCr6KNuIcP8UB8keZwX+20DVVNHpA3+iYVxKdzKALg4EFmiwF3UkZ7A0YtYhNF2+aG/k
 Dvr8z8kLOOJIoacxDRe6wQ0vtyj8MW+7xEh5Kv/bSUJXXLYOiyOPoxmSKUKPlAJMliaL
 yPSKA5z1/z99nRWIGHqtzdbAj+B/amxRAGaGL9qVsapMeaExU/TlPObrAX+rHQybqy+m
 H2gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9fV5j8sOG/Soznuq8VAGR0RqzJqSwDfkCf7U4jRW15Y=;
 b=Xb3quI4Q8+W8JT6Ih6KJTpaEiu1zmw0yBrJXZBd8oc+YqrnzrtO55eVic4Tyfpp3wl
 LFgtK+a+mqrS8nuq1iwzCqDBzlz383bXCQx72jzI0GucosxYNxSJjmHmlnlZZtqG//1p
 Mq3p5CSlaffDcV87QRqwGykcQOIEDkpaCDJE1ff1RFctxY/yI5C+s2l6C6lmioJXNauN
 uNAvtUe1f2u1kb/NF5dY/MKQoVAvet8zG2tK3hyhCN548zXRXmHknzwHGnS38yEITvlv
 XyDOErnhS/txNCPAs581B4XHKRrgzHF13xanaO9fe1dqOux6yVlFey7yC+qDEEeaH0op
 LKjg==
X-Gm-Message-State: AOAM532+rX2fH2ig6XXNWmnFaNRwxDLr2ltR8Sos3jKXKHUi9Gp4SpUP
 WV/rca2e7zKTaos5uEt8RrM=
X-Google-Smtp-Source: ABdhPJyM3l1jZefp/L/7D+K4oY6HdUnNSnRtNv3vvopsPp2rumOF7OQ8zPFUx7Q8RL78swJROPK1qQ==
X-Received: by 2002:a17:902:8c89:: with SMTP id
 t9mr4673253plo.131.1589472709957; 
 Thu, 14 May 2020 09:11:49 -0700 (PDT)
Received: from localhost.localdomain ([106.215.24.137])
 by smtp.gmail.com with ESMTPSA id t5sm2331755pgp.80.2020.05.14.09.11.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 May 2020 09:11:49 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, vkoul@kernel.org, afaerber@suse.de,
 manivannan.sadhasivam@linaro.org
Subject: [PATCH v1 2/9] dmaengine: Actions: Add support for S700 DMA engine
Date: Thu, 14 May 2020 21:40:50 +0530
Message-Id: <1589472657-3930-3-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_091151_720118_DC504BCF 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Changes since RFC:
	* Added accessor function to get the frame lenght.
	* Removed the SoC specific check in IRQ routine.
---
 drivers/dma/owl-dma.c | 50 +++++++++++++++++++++++++++++++++++++-------------
 1 file changed, 37 insertions(+), 13 deletions(-)

diff --git a/drivers/dma/owl-dma.c b/drivers/dma/owl-dma.c
index b0d80a2fa383..afa6c6f43d26 100644
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
@@ -308,6 +315,11 @@ static inline u32 llc_hw_ctrlb(u32 int_ctl)
 	return ctl;
 }
 
+static inline u32 llc_hw_flen(struct owl_dma_lli *lli)
+{
+	return lli->hw[OWL_DMADESC_FLEN] & GENMASK(19, 0);
+}
+
 static void owl_dma_free_lli(struct owl_dma *od,
 			     struct owl_dma_lli *lli)
 {
@@ -354,6 +366,7 @@ static inline int owl_dma_cfg_lli(struct owl_dma_vchan *vchan,
 				  struct dma_slave_config *sconfig,
 				  bool is_cyclic)
 {
+	struct owl_dma *od = to_owl_dma(vchan->vc.chan.device);
 	u32 mode, ctrlb;
 
 	mode = OWL_DMA_MODE_PW(0);
@@ -409,8 +422,14 @@ static inline int owl_dma_cfg_lli(struct owl_dma_vchan *vchan,
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
@@ -572,7 +591,7 @@ static irqreturn_t owl_dma_interrupt(int irq, void *dev_id)
 
 		global_irq_pending = dma_readl(od, OWL_DMA_IRQ_PD0);
 
-		if (chan_irq_pending && !(global_irq_pending & BIT(i)))	{
+		if (chan_irq_pending && !(global_irq_pending & BIT(i))) {
 			dev_dbg(od->dma.dev,
 				"global and channel IRQ pending match err\n");
 
@@ -741,9 +760,9 @@ static u32 owl_dma_getbytes_chan(struct owl_dma_vchan *vchan)
 		list_for_each_entry(lli, &txd->lli_list, node) {
 			/* Start from the next active node */
 			if (lli->phys == next_lli_phy) {
-				list_for_each_entry(lli, &txd->lli_list, node)
-					bytes += lli->hw[OWL_DMADESC_FLEN] &
-						 GENMASK(19, 0);
+				list_for_each_entry(lli, &txd->lli_list,
+						    node)
+					bytes += llc_hw_flen(lli);
 				break;
 			}
 		}
@@ -774,7 +793,7 @@ static enum dma_status owl_dma_tx_status(struct dma_chan *chan,
 	if (vd) {
 		txd = to_owl_txd(&vd->tx);
 		list_for_each_entry(lli, &txd->lli_list, node)
-			bytes += lli->hw[OWL_DMADESC_FLEN] & GENMASK(19, 0);
+			bytes += llc_hw_flen(lli);
 	} else {
 		bytes = owl_dma_getbytes_chan(vchan);
 	}
@@ -1031,11 +1050,20 @@ static struct dma_chan *owl_dma_of_xlate(struct of_phandle_args *dma_spec,
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
@@ -1060,6 +1088,8 @@ static int owl_dma_probe(struct platform_device *pdev)
 	dev_info(&pdev->dev, "dma-channels %d, dma-requests %d\n",
 		 nr_channels, nr_requests);
 
+	od->devid = (enum owl_dma_id)of_id->data;
+
 	od->nr_pchans = nr_channels;
 	od->nr_vchans = nr_requests;
 
@@ -1192,12 +1222,6 @@ static int owl_dma_remove(struct platform_device *pdev)
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
