Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA841D9F17
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Tsae1IQzVO4rjFcEEf+5o/LEtvtQ337x8EmYZL7iE3Q=; b=jPaC13NBB2qWXw5/9iDdD83Q7N
	1bZyFLqnNFQeMyKktArdlVCV+vDulHoCvKaur3hzwbMeO1h/2a5JSmGjKdaCh3iD/aw/Vu7DYZjcx
	cYWyE/8YePMs/BX45d/Tg4Q1zpdm4hQYmKevE1fSLPbyaHjcxAKeGs0Y3vtVVwBm4cmATgWSpSxQc
	zwssCqq3JfJCA1no7Rd4SUZRtbCZL1sjtNnlRxqO48By4VrOqTfcaxEJnU+qZKyuoaRp8kAXhoBKb
	eC3zsppIA/KePAe2Tx4It90jP8cXGYnHcZSZBIExNlMY/sU6KATZginbn7/so6PAUAUoF/GNxASlE
	65eCg0gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6rr-0008If-MP; Tue, 19 May 2020 18:21:31 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6rW-0008FG-De; Tue, 19 May 2020 18:21:12 +0000
Received: by mail-pj1-x1044.google.com with SMTP id k7so42050pjs.5;
 Tue, 19 May 2020 11:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZU4MX3UuVlqXR/LqdfzQjV8hf24XkFU0arC2pFCvdx0=;
 b=CRZ1Qd9bL4SgMCmIHoWAyaEgvD+PATSf1u6oi8Fwp2croHKpTPjS7Aa63C/7cyYAA4
 tRuY6uc26ofGXL1DAdlW8CSTe6/MBDUsUqrcerYDII6WoYrP0VSWFA/trbeP0+IjCj4s
 vd/gRxEXdVsqRpDJYcnOL6RHLvZqrXNM3fzuecZGTn3iduNN2SCva2O2OCn8MySuDPR0
 vai8Fvh++sOQzwe62N5GYQaBfDOQm0OZ85bqWNP48gXR+4EqwFUm21ub0bDt1ZQwTWET
 el+lM27xtkukd9907iV62fE86iqs4EQScasr3OmhAWMOild/4YxcaaeqNpwUhZMGTX9Q
 wxJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZU4MX3UuVlqXR/LqdfzQjV8hf24XkFU0arC2pFCvdx0=;
 b=euuf8Fb+OnZni++m9C++7m/Guj7yXG5QLvEdaTkThF06Xrlp2Mzri0IMxI/Tnu4Hfu
 gLjZyOolk3hhTXeCgltGvef5cUGPNd9bSh2kFl/ISfMTZtlV7wIq4bNnyJ0QNEqs3lHr
 zT0/CgJ1OahVnV4NkHz2wlMNdCAJ7vXC0+P9DKlsz65tnUL4awR8AoFGTse0WK7YBjOa
 WlhsPvt0nm3BoXUWF++XHMqfwc6sIw9BRbr1NzcOX4/wFODoidZXaRxXgMgkp/MAuFFL
 4z9gPhhsenrn10zvrth1Rj/dzKbZCrIP6WYwAfZr1cnF10b2SQY+2ydGwhRzdh8gqNOo
 DlPg==
X-Gm-Message-State: AOAM532w8FI3lL5LBe+jORobVcLpzGfaMQMAEibRPCYGyUEM/Z9eGATM
 UdIEGVEvHYop37025S5ckxo=
X-Google-Smtp-Source: ABdhPJwcoJ5+Ok8NG2eNQY3+AYvdKQyz3dw8tmuaR0DfLxvayvZXzaXxDAmhFV+FwQHAND4SlfXCig==
X-Received: by 2002:a17:90b:20b:: with SMTP id
 fy11mr890107pjb.142.1589912469430; 
 Tue, 19 May 2020 11:21:09 -0700 (PDT)
Received: from localhost.localdomain ([223.235.145.232])
 by smtp.gmail.com with ESMTPSA id p2sm148399pgh.25.2020.05.19.11.20.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 May 2020 11:21:08 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, vkoul@kernel.org, afaerber@suse.de,
 manivannan.sadhasivam@linaro.org
Subject: [PATCH v2 02/10] dmaengine: Actions: Add support for S700 DMA engine
Date: Tue, 19 May 2020 23:49:20 +0530
Message-Id: <1589912368-480-3-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
References: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_112110_465391_D4A2442C 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Changes since v1:
	* Moved llc_hw_flen() to patch 1/9
	* provided comments about dma descriptor difference 
	  between S700 and S900.
Changes since RFC:
	* Added accessor function to get the frame lenght.
        * Removed the SoC specific check in IRQ routine.
---
 drivers/dma/owl-dma.c | 46 +++++++++++++++++++++++++++++++++++++---------
 1 file changed, 37 insertions(+), 9 deletions(-)

diff --git a/drivers/dma/owl-dma.c b/drivers/dma/owl-dma.c
index dd85c205454e..17d2fc2d568b 100644
--- a/drivers/dma/owl-dma.c
+++ b/drivers/dma/owl-dma.c
@@ -137,6 +137,11 @@ enum owl_dmadesc_offsets {
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
@@ -203,6 +208,7 @@ struct owl_dma_vchan {
  * @pchans: array of data for the physical channels
  * @nr_vchans: the number of physical channels
  * @vchans: array of data for the physical channels
+ * @devid: device id based on OWL SoC
  */
 struct owl_dma {
 	struct dma_device	dma;
@@ -217,6 +223,7 @@ struct owl_dma {
 
 	unsigned int		nr_vchans;
 	struct owl_dma_vchan	*vchans;
+	enum owl_dma_id		devid;
 };
 
 static void pchan_update(struct owl_dma_pchan *pchan, u32 reg,
@@ -306,6 +313,11 @@ static inline u32 llc_hw_ctrlb(u32 int_ctl)
 {
 	u32 ctl;
 
+	/*
+	 * Irrespective of the SoC, ctrlb value starts filling from
+	 * bit 18.
+	 */
+
 	ctl = BIT_FIELD(int_ctl, 7, 0, 18);
 
 	return ctl;
@@ -362,6 +374,7 @@ static inline int owl_dma_cfg_lli(struct owl_dma_vchan *vchan,
 				  struct dma_slave_config *sconfig,
 				  bool is_cyclic)
 {
+	struct owl_dma *od = to_owl_dma(vchan->vc.chan.device);
 	u32 mode, ctrlb;
 
 	mode = OWL_DMA_MODE_PW(0);
@@ -417,8 +430,18 @@ static inline int owl_dma_cfg_lli(struct owl_dma_vchan *vchan,
 	lli->hw[OWL_DMADESC_DADDR] = dst;
 	lli->hw[OWL_DMADESC_SRC_STRIDE] = 0;
 	lli->hw[OWL_DMADESC_DST_STRIDE] = 0;
-	lli->hw[OWL_DMADESC_FLEN] = len | FCNT_VAL << 20;
-	lli->hw[OWL_DMADESC_CTRLB] = ctrlb;
+
+	/*
+	 * S700 put flen and fcnt at offset 0x0c and 0x1c respectively,
+	 * whereas S900 put flen and fcnt at offset 0x0c.
+	 */
+	if (od->devid == S700_DMA) {
+		lli->hw[OWL_DMADESC_FLEN] = len;
+		lli->hw[OWL_DMADESC_CTRLB] = FCNT_VAL | ctrlb;
+	} else {
+		lli->hw[OWL_DMADESC_FLEN] = len | FCNT_VAL << 20;
+		lli->hw[OWL_DMADESC_CTRLB] = ctrlb;
+	}
 
 	return 0;
 }
@@ -580,7 +603,7 @@ static irqreturn_t owl_dma_interrupt(int irq, void *dev_id)
 
 		global_irq_pending = dma_readl(od, OWL_DMA_IRQ_PD0);
 
-		if (chan_irq_pending && !(global_irq_pending & BIT(i)))	{
+		if (chan_irq_pending && !(global_irq_pending & BIT(i))) {
 			dev_dbg(od->dma.dev,
 				"global and channel IRQ pending match err\n");
 
@@ -1038,11 +1061,20 @@ static struct dma_chan *owl_dma_of_xlate(struct of_phandle_args *dma_spec,
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
@@ -1067,6 +1099,8 @@ static int owl_dma_probe(struct platform_device *pdev)
 	dev_info(&pdev->dev, "dma-channels %d, dma-requests %d\n",
 		 nr_channels, nr_requests);
 
+	od->devid = (enum owl_dma_id)of_id->data;
+
 	od->nr_pchans = nr_channels;
 	od->nr_vchans = nr_requests;
 
@@ -1199,12 +1233,6 @@ static int owl_dma_remove(struct platform_device *pdev)
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
