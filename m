Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD35D1C6E81
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A12J0Zj7IxXPtyIgZcy/y/3yUtq3PBFn4P0sHNznRBk=; b=sY+tPXzFuB/SfhMTKcnUQFKyah
	q9q2TPtQiyId5yrHj5y2hjr+acKQ83+xWmDwsR64Gdu+s9H72A4UZ4J/TzaZrZM7/k8V2PPIPjvuE
	WBdAb6BA/ufm61LfJWdis1Dk9eqZxjSDpcd4ZeR76CN796BpzfWyH9g8VxrF43Vn6l4812YbWccfE
	UVnaVElD/Vlp/AuHzkWILrELx42PSdXOPYtXrymgomfQIzEsN2lDB+5nO+4atp5LHpbxUafq13KJy
	W+FJZNrDoaxfRiO40RhnTdp/FIrUzSj3h6LsReI+0bAHk1q+a99SXZogSPt2MUoZQdkp/ae6AQ3sK
	F6VCmz5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHQA-0005rV-IL; Wed, 06 May 2020 10:36:58 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHPl-0005hg-U1; Wed, 06 May 2020 10:36:35 +0000
Received: by mail-pf1-x444.google.com with SMTP id z1so784040pfn.3;
 Wed, 06 May 2020 03:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HFpcgU1nGmiRP0+54g0zuPXHEdqiV8xYolaZNPO82Ng=;
 b=gdwOuImmAqQhFu+Ap1qpg9CgRhvTdqd/DKQasuVCGHpKGQL2agS9/BljsLhHgAFAW6
 F04PfPExlmMsiBbA2JW+Wc1HgXj6fcaNfzZGe81Fu81wo9162cIo7V/tmRaPx9+GNhZ0
 3qAysfD5vtYLU5+txOoFM/J9nhdjyurnXooFJmt4aixnOF7ErpL73hcm2lV7w0u5WZVu
 Nxv+iR4aNwesRYz6VO2poZJQ8g/Qt+h2XfLsnhYuNqC6IbbbdfC1wZRT9pNHvGibtA0B
 /4yBJe5NRDBC5zCo5NiN7KlvUK0nTYI8WbQWlWhAUaDVLG4MDJOVeMviJcVSXhdeD2oP
 kmBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HFpcgU1nGmiRP0+54g0zuPXHEdqiV8xYolaZNPO82Ng=;
 b=XmKqpBFl6qrS4cpeZoJA5OpZPZ1wZEENCjpsMBN6VXDOE4WGEmQ9Y8/5czM7sgILcq
 ofiHFHCAKPEFXFYfu86GAo8EjRFv9mSsmYxHaXnlLMJZgM5ch4ux99JB3vVO1vGk+3tN
 DxC4ohEt6VeFaKYmSzqUFU4t6DrFLSQqDejKZy9EjmQ92axG5MLv3m7ILYPMj2j2aHqR
 tGa0s1Qz9VqUTy7t+Pyyml6WLv/O7DvBXJ8QYYkI+249j6oC1Chrp/Y6pIi7twmT/yaZ
 tzqDhiw5EpI+dmscI3h1U/Do324IOd73XmbU025q0+9VS2lHSZX9UkfFfsOsdyjuNysA
 Kolg==
X-Gm-Message-State: AGi0PuYebr4P4mNIbmuBHoW9ytNWnS1bhW9f+mlLIv3tw4HRL+LBy8C5
 kM9LmUfe4jdMuzSViziZFv4=
X-Google-Smtp-Source: APiQypKSMIfjxq6/2Pq+wXux9SSxrE+CSejlhakPh5O4JUlKSdHhyEdkmr4DKcGweqHN2a3ACFaCDg==
X-Received: by 2002:a63:1d54:: with SMTP id d20mr6576617pgm.286.1588761393159; 
 Wed, 06 May 2020 03:36:33 -0700 (PDT)
Received: from localhost.localdomain ([106.215.43.48])
 by smtp.gmail.com with ESMTPSA id i72sm1601582pfe.104.2020.05.06.03.36.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 May 2020 03:36:32 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, vkoul@kernel.org, afaerber@suse.de,
 manivannan.sadhasivam@linaro.org
Subject: [PATCH RFC 1/8] dmaengine: Actions: get rid of bit fields from dma
 descriptor
Date: Wed,  6 May 2020 16:06:03 +0530
Message-Id: <1588761371-9078-2-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_033634_072056_4986A712 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

At the moment, Driver uses bit fields to describe registers of the DMA
descriptor structure that makes it less portable and maintainable, and
Andre suugested(and even sketched important bits for it) to make use of
array to describe this DMA descriptors instead. It gives the flexibility
while extending support for other platform such as Actions S700.

This commit removes the "owl_dma_lli_hw" (that includes bit-fields) and
uses array to describe DMA descriptor.

Suggested-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
 drivers/dma/owl-dma.c | 77 ++++++++++++++++++++++-----------------------------
 1 file changed, 33 insertions(+), 44 deletions(-)

diff --git a/drivers/dma/owl-dma.c b/drivers/dma/owl-dma.c
index c683051257fd..b0d80a2fa383 100644
--- a/drivers/dma/owl-dma.c
+++ b/drivers/dma/owl-dma.c
@@ -120,30 +120,18 @@
 #define BIT_FIELD(val, width, shift, newshift)	\
 		((((val) >> (shift)) & ((BIT(width)) - 1)) << (newshift))
 
-/**
- * struct owl_dma_lli_hw - Hardware link list for dma transfer
- * @next_lli: physical address of the next link list
- * @saddr: source physical address
- * @daddr: destination physical address
- * @flen: frame length
- * @fcnt: frame count
- * @src_stride: source stride
- * @dst_stride: destination stride
- * @ctrla: dma_mode and linklist ctrl config
- * @ctrlb: interrupt config
- * @const_num: data for constant fill
- */
-struct owl_dma_lli_hw {
-	u32	next_lli;
-	u32	saddr;
-	u32	daddr;
-	u32	flen:20;
-	u32	fcnt:12;
-	u32	src_stride;
-	u32	dst_stride;
-	u32	ctrla;
-	u32	ctrlb;
-	u32	const_num;
+/* Describe DMA descriptor, hardware link list for dma transfer */
+enum owl_dmadesc_offsets {
+	OWL_DMADESC_NEXT_LLI = 0,
+	OWL_DMADESC_SADDR,
+	OWL_DMADESC_DADDR,
+	OWL_DMADESC_FLEN,
+	OWL_DMADESC_SRC_STRIDE,
+	OWL_DMADESC_DST_STRIDE,
+	OWL_DMADESC_CTRLA,
+	OWL_DMADESC_CTRLB,
+	OWL_DMADESC_CONST_NUM,
+	OWL_DMADESC_SIZE
 };
 
 /**
@@ -153,7 +141,7 @@ struct owl_dma_lli_hw {
  * @node: node for txd's lli_list
  */
 struct owl_dma_lli {
-	struct  owl_dma_lli_hw	hw;
+	u32			hw[OWL_DMADESC_SIZE];
 	dma_addr_t		phys;
 	struct list_head	node;
 };
@@ -351,8 +339,9 @@ static struct owl_dma_lli *owl_dma_add_lli(struct owl_dma_txd *txd,
 		list_add_tail(&next->node, &txd->lli_list);
 
 	if (prev) {
-		prev->hw.next_lli = next->phys;
-		prev->hw.ctrla |= llc_hw_ctrla(OWL_DMA_MODE_LME, 0);
+		prev->hw[OWL_DMADESC_NEXT_LLI] = next->phys;
+		prev->hw[OWL_DMADESC_CTRLA] |=
+					llc_hw_ctrla(OWL_DMA_MODE_LME, 0);
 	}
 
 	return next;
@@ -365,8 +354,7 @@ static inline int owl_dma_cfg_lli(struct owl_dma_vchan *vchan,
 				  struct dma_slave_config *sconfig,
 				  bool is_cyclic)
 {
-	struct owl_dma_lli_hw *hw = &lli->hw;
-	u32 mode;
+	u32 mode, ctrlb;
 
 	mode = OWL_DMA_MODE_PW(0);
 
@@ -407,22 +395,22 @@ static inline int owl_dma_cfg_lli(struct owl_dma_vchan *vchan,
 		return -EINVAL;
 	}
 
-	hw->next_lli = 0; /* One link list by default */
-	hw->saddr = src;
-	hw->daddr = dst;
-
-	hw->fcnt = 1; /* Frame count fixed as 1 */
-	hw->flen = len; /* Max frame length is 1MB */
-	hw->src_stride = 0;
-	hw->dst_stride = 0;
-	hw->ctrla = llc_hw_ctrla(mode,
-				 OWL_DMA_LLC_SAV_LOAD_NEXT |
-				 OWL_DMA_LLC_DAV_LOAD_NEXT);
+	lli->hw[OWL_DMADESC_CTRLA] = llc_hw_ctrla(mode,
+						  OWL_DMA_LLC_SAV_LOAD_NEXT |
+						  OWL_DMA_LLC_DAV_LOAD_NEXT);
 
 	if (is_cyclic)
-		hw->ctrlb = llc_hw_ctrlb(OWL_DMA_INTCTL_BLOCK);
+		ctrlb = llc_hw_ctrlb(OWL_DMA_INTCTL_BLOCK);
 	else
-		hw->ctrlb = llc_hw_ctrlb(OWL_DMA_INTCTL_SUPER_BLOCK);
+		ctrlb = llc_hw_ctrlb(OWL_DMA_INTCTL_SUPER_BLOCK);
+
+	lli->hw[OWL_DMADESC_NEXT_LLI] = 0;
+	lli->hw[OWL_DMADESC_SADDR] = src;
+	lli->hw[OWL_DMADESC_DADDR] = dst;
+	lli->hw[OWL_DMADESC_SRC_STRIDE] = 0;
+	lli->hw[OWL_DMADESC_DST_STRIDE] = 0;
+	lli->hw[OWL_DMADESC_FLEN] = len | 1 << 20;
+	lli->hw[OWL_DMADESC_CTRLB] = ctrlb;
 
 	return 0;
 }
@@ -754,7 +742,8 @@ static u32 owl_dma_getbytes_chan(struct owl_dma_vchan *vchan)
 			/* Start from the next active node */
 			if (lli->phys == next_lli_phy) {
 				list_for_each_entry(lli, &txd->lli_list, node)
-					bytes += lli->hw.flen;
+					bytes += lli->hw[OWL_DMADESC_FLEN] &
+						 GENMASK(19, 0);
 				break;
 			}
 		}
@@ -785,7 +774,7 @@ static enum dma_status owl_dma_tx_status(struct dma_chan *chan,
 	if (vd) {
 		txd = to_owl_txd(&vd->tx);
 		list_for_each_entry(lli, &txd->lli_list, node)
-			bytes += lli->hw.flen;
+			bytes += lli->hw[OWL_DMADESC_FLEN] & GENMASK(19, 0);
 	} else {
 		bytes = owl_dma_getbytes_chan(vchan);
 	}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
