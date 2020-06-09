Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BA41F37C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:18:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z3U0igqcRt+D2mKT/2rvcqPVssmAdXEVJNM068Dh7HA=; b=at1PGDyjYaBmAL32QXk9BfF/vX
	63iijYxILM8zx+pS36vpgSfjgBbbLIfIbqICFb9l7Rj6SwJZnho5St0Wh8qBoADzdMMmL/VBicVQb
	YEaglqVigkllgvBvwR06o3ZusUsRyFmNgG08ici+iiitenRNpbX+Or/ON/ugMzjhwze8FUKeOoB5i
	BczoEshLg1t7fA/nXa4RVoMz0/qWPbRx3QZmvJm0I3U8ccwi3V9tIZ0CvK5rfenQbCN6Q+74NG459
	m6IXfguqRfUYj9f0nmeru0dRIz+uOkHMiceSFZPyt5IsxI/WcgbhRFEZZASV13m8OYtk/6qQsDGM7
	/ehb3fZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibKz-0005Xs-Ez; Tue, 09 Jun 2020 10:18:33 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibKB-00054c-0P; Tue, 09 Jun 2020 10:17:44 +0000
Received: by mail-pl1-x644.google.com with SMTP id y18so7860527plr.4;
 Tue, 09 Jun 2020 03:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MQdCRFfYdPppZGvtRf2Qw+IWmyFiiFu+29JBhbNDyN8=;
 b=gwR3G7PWt79JOA99k7n/mSRwpOh2VjLsZUwX0BsNQE3xxs0d6mFAg3MXK/V4K0y8OV
 uSGHffxdUDKNFEQfKJKMsraVQ3Wiap5RHxpsUVL8Ln7lXHWxJb7EySZmGMI4io1eBohp
 XePta9FC+Cbh+MXyQvZ1JTARhq3FZUWPySYvyryKSq41XZYyMkZDx41E+F2FeaDwZiSh
 6Upi2/cY994OFjcvXjGGKypFPfstRP0ji0W1Pts2gTsiQlqOz+Wvf376Ku/xxPISGRNr
 Xe/FynLFK6j9YfMz133sUCv7lvlVCRgFdJBQXsxRK63MoWgxgqi+dego6PFCnWLZFbB/
 KjMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MQdCRFfYdPppZGvtRf2Qw+IWmyFiiFu+29JBhbNDyN8=;
 b=DOgjn61VrZQGcCgmTnIgMhWTz460WJG9RXZhWoCCvKL4eri2smDrF4QUPJog6J/Pbm
 s3mOs8gLNvt3pvfUzmuFAKlI535k/t/ty9EeqfAer/Gg1kblAjOFr6rypidwRW3eyBr+
 CHcyP3zHKoUNC7GES38vQrYuEK7/VSX14Gs6+ggsBbDitMYoPRjMxKIocwhn4rRtBRlq
 ns8J5psng2kfKYH3B9g3cvXx5Y86SbaINcQfO7Z+UQz35sBUikLyR/hyvaSRLR9HVTB1
 PKIivU5ek1lcoSPFK0sX/7SEw3d6EaoiS3X2x10ygI9RTBBSOA/5FEdiiDbWC5fRIc3B
 Q9OQ==
X-Gm-Message-State: AOAM533d4l8dFE0L+bVOxakk7QVAlQXyj/e0LzbkJ+Z9wENzRipkhbEu
 pGlu8x/i2Rrgs09LwyWDr94=
X-Google-Smtp-Source: ABdhPJwciG5MYDIMBgSNFzw7qXrwbjg3B1y2d56BPNz6SnwxdpXiInt4nZczfNrlUqO/UpXljWfUeQ==
X-Received: by 2002:a17:902:c3c3:: with SMTP id
 j3mr2687249plj.307.1591697861962; 
 Tue, 09 Jun 2020 03:17:41 -0700 (PDT)
Received: from localhost.localdomain ([223.190.87.90])
 by smtp.gmail.com with ESMTPSA id d189sm9637253pfc.51.2020.06.09.03.17.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 03:17:41 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, vkoul@kernel.org, afaerber@suse.de,
 manivannan.sadhasivam@linaro.org
Subject: [PATCH v4 02/10] dmaengine: Actions: Add support for S700 DMA engine
Date: Tue,  9 Jun 2020 15:47:02 +0530
Message-Id: <1591697830-16311-3-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
References: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_031743_061770_ED6B3BA2 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
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
Cc: linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 cristian.ciocaltea@gmail.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
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
Changes since v3:
	* Provided detailed comment about, the way
	  shared DMA descriptor fields are programmed.
        * Fixed following clang compilation warning:
	  warning: cast to smaller integer type 'enum owl_dma_id' from 'const void *'
	  [-Wvoid-pointer-to-enum-cast]
Changes since v2:
	* No changes.
Changes since v1:
	* Moved llc_hw_flen() to patch 1/9.
	* provided comments about dma descriptor difference.
	  between S700 and S900.
Changes since RFC:
	* Added accessor function to get the frame lenght.
	* Removed the SoC specific check in IRQ routine.
---
 drivers/dma/owl-dma.c | 59 ++++++++++++++++++++++++++++++++++++++-------------
 1 file changed, 44 insertions(+), 15 deletions(-)

diff --git a/drivers/dma/owl-dma.c b/drivers/dma/owl-dma.c
index 948d1bead860..f0c5425c06e7 100644
--- a/drivers/dma/owl-dma.c
+++ b/drivers/dma/owl-dma.c
@@ -149,6 +149,11 @@ enum owl_dmadesc_offsets {
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
@@ -213,6 +218,7 @@ struct owl_dma_vchan {
  * @pchans: array of data for the physical channels
  * @nr_vchans: the number of physical channels
  * @vchans: array of data for the physical channels
+ * @devid: device id based on OWL SoC
  */
 struct owl_dma {
 	struct dma_device	dma;
@@ -227,6 +233,7 @@ struct owl_dma {
 
 	unsigned int		nr_vchans;
 	struct owl_dma_vchan	*vchans;
+	enum owl_dma_id		devid;
 };
 
 static void pchan_update(struct owl_dma_pchan *pchan, u32 reg,
@@ -316,6 +323,10 @@ static inline u32 llc_hw_ctrlb(u32 int_ctl)
 {
 	u32 ctl;
 
+	/*
+	 * Irrespective of the SoC, ctrlb value starts filling from
+	 * bit 18.
+	 */
 	ctl = BIT_FIELD(int_ctl, 7, 0, 18);
 
 	return ctl;
@@ -372,6 +383,7 @@ static inline int owl_dma_cfg_lli(struct owl_dma_vchan *vchan,
 				  struct dma_slave_config *sconfig,
 				  bool is_cyclic)
 {
+	struct owl_dma *od = to_owl_dma(vchan->vc.chan.device);
 	u32 mode, ctrlb;
 
 	mode = OWL_DMA_MODE_PW(0);
@@ -427,14 +439,26 @@ static inline int owl_dma_cfg_lli(struct owl_dma_vchan *vchan,
 	lli->hw[OWL_DMADESC_DADDR] = dst;
 	lli->hw[OWL_DMADESC_SRC_STRIDE] = 0;
 	lli->hw[OWL_DMADESC_DST_STRIDE] = 0;
-	/*
-	 * Word starts from offset 0xC is shared between frame length
-	 * (max frame length is 1MB) and frame count, where first 20
-	 * bits are for frame length and rest of 12 bits are for frame
-	 * count.
-	 */
-	lli->hw[OWL_DMADESC_FLEN] = len | FCNT_VAL << 20;
-	lli->hw[OWL_DMADESC_CTRLB] = ctrlb;
+
+	if (od->devid == S700_DMA) {
+		/* Max frame length is 1MB */
+		lli->hw[OWL_DMADESC_FLEN] = len;
+		/*
+		 * On S700, word starts from offset 0x1C is shared between
+		 * frame count and ctrlb, where first 12 bits are for frame
+		 * count and rest of 20 bits are for ctrlb.
+		 */
+		lli->hw[OWL_DMADESC_CTRLB] = FCNT_VAL | ctrlb;
+	} else {
+		/*
+		 * On S900, word starts from offset 0xC is shared between
+		 * frame length (max frame length is 1MB) and frame count,
+		 * where first 20 bits are for frame length and rest of
+		 * 12 bits are for frame count.
+		 */
+		lli->hw[OWL_DMADESC_FLEN] = len | FCNT_VAL << 20;
+		lli->hw[OWL_DMADESC_CTRLB] = ctrlb;
+	}
 
 	return 0;
 }
@@ -596,7 +620,7 @@ static irqreturn_t owl_dma_interrupt(int irq, void *dev_id)
 
 		global_irq_pending = dma_readl(od, OWL_DMA_IRQ_PD0);
 
-		if (chan_irq_pending && !(global_irq_pending & BIT(i)))	{
+		if (chan_irq_pending && !(global_irq_pending & BIT(i))) {
 			dev_dbg(od->dma.dev,
 				"global and channel IRQ pending match err\n");
 
@@ -1054,11 +1078,20 @@ static struct dma_chan *owl_dma_of_xlate(struct of_phandle_args *dma_spec,
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
@@ -1083,6 +1116,8 @@ static int owl_dma_probe(struct platform_device *pdev)
 	dev_info(&pdev->dev, "dma-channels %d, dma-requests %d\n",
 		 nr_channels, nr_requests);
 
+	od->devid = (enum owl_dma_id)(uintptr_t)of_id->data;
+
 	od->nr_pchans = nr_channels;
 	od->nr_vchans = nr_requests;
 
@@ -1215,12 +1250,6 @@ static int owl_dma_remove(struct platform_device *pdev)
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
