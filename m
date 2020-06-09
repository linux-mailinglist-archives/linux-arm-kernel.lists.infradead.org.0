Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6261F37C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:18:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qQvFn8z7LGbN3XXeTiCmASOHW110Q7ZZKF7H13zeNvM=; b=cjXoQGcaXMF1Tn652gcxmzCG+o
	K8jhDvK5JtTxWhuREIvR5x1zNfttGh9xG1UlgvgBBY3fdATk9KIv4VCFqqv99ec2yZagBh9Yj++il
	+bKqVzGHP6GjAZHzAUTnwGKILLflA+q5Xok3BnsYCnc/MmzcY2LCodHd72ayH8fZXeQKr4nogyka6
	PrSrIaV5eUIcmzkxhc9ehz9ReE3zyAobTaGydJKGYk6QxOo1xkEcvLSAzXY4kEwfCuiHxA6bH5fH3
	q1AUHqpU/j4cGCfNyAka833aGu297AnB8amnrnGhUFf8ryG981EDtzpRT7qmrlhjBIoqMuNu+R3rM
	luJfmMdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibKd-0005D6-8X; Tue, 09 Jun 2020 10:18:11 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibK4-0004wc-DW; Tue, 09 Jun 2020 10:17:38 +0000
Received: by mail-pl1-x643.google.com with SMTP id x11so7855296plv.9;
 Tue, 09 Jun 2020 03:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OaQ7+auRM9Q1yLKBuV5VyQHz4qYUBbJ7B40lNF33USM=;
 b=Ku32MxuAaf7eN9eEOJTcQfS7+B561Jo1jSnNdzP4XO+v+GxlPub6PWRxbOIRXAxCay
 g5jNspd9MBTQctWNEQMX8YcDqUzb/+KiCaEGHJo9xvLGNbodOasSinTK3omWIMjx8deQ
 LzLhn1TPTXYFw4SYBcC6dA/sM6DJGVEnAZJG2KisflS8SRl+5xApRvminGbQYpxuHRpc
 40tH5tMiU1TPZzjLnGjbLQ43JnSbAVbZLdSVpzRdCMoLGMHhXNB3bWHsVBx48CDW2kRX
 2a4cPf/zX9VYp70Dr+ECvj2LmW+5tqFSjl82TJWvm1Z3UW5EcIYBY3hxI896hRQCw5Iv
 HUBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OaQ7+auRM9Q1yLKBuV5VyQHz4qYUBbJ7B40lNF33USM=;
 b=tuhaZxhPfsXYhXV11v6FhdLreIN0nm9JsyGQX5k4YzWmxGaMPExvNjezE1kXOwhvaD
 inEuBpmmMAr+EHkkpWp/GulYLexRXIaQ9tCumXytEjSrTLSPsb2ut482cOyNcNRSj/AE
 1oZDyteJ+xmcIw6c5cJJeDwW0Wi39ZfKNleDxQhQcrXuoDoI5dagrfrpKvGurvXxLg+Y
 SxFeSAzIJTQ1etae8XeKGFSk/uvqzULTZWkbAXe5TYe/R4p27zJmkzfYDPov+sjEqmTz
 N5reGXB9n4INtOVMvFlHzh2vZa9OA1FxyQE2hKLUBs8qEWq8bcP6ap4b4UXSkGxImAI1
 nZcg==
X-Gm-Message-State: AOAM533PGr9RjccVN0eHJ8Y93j+TMXE72oIie72ql+NuRchm37LI5Wtn
 ozqpJuB6w1o0nxwkvLJSPII=
X-Google-Smtp-Source: ABdhPJw3kW2M43xVqqQRBt9O8taxkJlAxVuvWJZ+mj2Ra2oAOk+9XlH16UvUH2wMPAqhKXHKFGIu0g==
X-Received: by 2002:a17:90a:65c9:: with SMTP id
 i9mr4008012pjs.201.1591697855603; 
 Tue, 09 Jun 2020 03:17:35 -0700 (PDT)
Received: from localhost.localdomain ([223.190.87.90])
 by smtp.gmail.com with ESMTPSA id d189sm9637253pfc.51.2020.06.09.03.17.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 03:17:34 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, vkoul@kernel.org, afaerber@suse.de,
 manivannan.sadhasivam@linaro.org
Subject: [PATCH v4 01/10] dmaengine: Actions: get rid of bit fields from dma
 descriptor
Date: Tue,  9 Jun 2020 15:47:01 +0530
Message-Id: <1591697830-16311-2-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
References: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_031736_492864_84D423E3 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Changes since v3:
	* Added description for enum fields.
	* Restored the old comment.
	* Added detailed comment about, the way FLEN
	  and FCNT values are filled.
Changes since v2:
	* No change.
Changes since v1:
	* Defined macro for frame count value.
	* Introduced llc_hw_flen() from patch 2/9.
	* Removed the unnecessary line break.
Changes since rfc:
	* No change.
---
 drivers/dma/owl-dma.c | 98 +++++++++++++++++++++++++++++----------------------
 1 file changed, 56 insertions(+), 42 deletions(-)

diff --git a/drivers/dma/owl-dma.c b/drivers/dma/owl-dma.c
index 66ef70b00ec0..948d1bead860 100644
--- a/drivers/dma/owl-dma.c
+++ b/drivers/dma/owl-dma.c
@@ -120,30 +120,33 @@
 #define BIT_FIELD(val, width, shift, newshift)	\
 		((((val) >> (shift)) & ((BIT(width)) - 1)) << (newshift))
 
+/* Frame count value is fixed as 1 */
+#define FCNT_VAL				0x1
+
 /**
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
+ * owl_dmadesc_offsets - Describe DMA descriptor, hardware link
+ * list for dma transfer
+ * @OWL_DMADESC_NEXT_LLI: physical address of the next link list
+ * @OWL_DMADESC_SADDR: source physical address
+ * @OWL_DMADESC_DADDR: destination physical address
+ * @OWL_DMADESC_FLEN: frame length
+ * @OWL_DMADESC_SRC_STRIDE: source stride
+ * @OWL_DMADESC_DST_STRIDE: destination stride
+ * @OWL_DMADESC_CTRLA: dma_mode and linklist ctrl config
+ * @OWL_DMADESC_CTRLB: interrupt config
+ * @OWL_DMADESC_CONST_NUM: data for constant fill
  */
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
@@ -153,7 +156,7 @@ struct owl_dma_lli_hw {
  * @node: node for txd's lli_list
  */
 struct owl_dma_lli {
-	struct  owl_dma_lli_hw	hw;
+	u32			hw[OWL_DMADESC_SIZE];
 	dma_addr_t		phys;
 	struct list_head	node;
 };
@@ -318,6 +321,11 @@ static inline u32 llc_hw_ctrlb(u32 int_ctl)
 	return ctl;
 }
 
+static u32 llc_hw_flen(struct owl_dma_lli *lli)
+{
+	return lli->hw[OWL_DMADESC_FLEN] & GENMASK(19, 0);
+}
+
 static void owl_dma_free_lli(struct owl_dma *od,
 			     struct owl_dma_lli *lli)
 {
@@ -349,8 +357,9 @@ static struct owl_dma_lli *owl_dma_add_lli(struct owl_dma_txd *txd,
 		list_add_tail(&next->node, &txd->lli_list);
 
 	if (prev) {
-		prev->hw.next_lli = next->phys;
-		prev->hw.ctrla |= llc_hw_ctrla(OWL_DMA_MODE_LME, 0);
+		prev->hw[OWL_DMADESC_NEXT_LLI] = next->phys;
+		prev->hw[OWL_DMADESC_CTRLA] |=
+					llc_hw_ctrla(OWL_DMA_MODE_LME, 0);
 	}
 
 	return next;
@@ -363,8 +372,7 @@ static inline int owl_dma_cfg_lli(struct owl_dma_vchan *vchan,
 				  struct dma_slave_config *sconfig,
 				  bool is_cyclic)
 {
-	struct owl_dma_lli_hw *hw = &lli->hw;
-	u32 mode;
+	u32 mode, ctrlb;
 
 	mode = OWL_DMA_MODE_PW(0);
 
@@ -405,22 +413,28 @@ static inline int owl_dma_cfg_lli(struct owl_dma_vchan *vchan,
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
+	lli->hw[OWL_DMADESC_NEXT_LLI] = 0; /* One link list by default */
+	lli->hw[OWL_DMADESC_SADDR] = src;
+	lli->hw[OWL_DMADESC_DADDR] = dst;
+	lli->hw[OWL_DMADESC_SRC_STRIDE] = 0;
+	lli->hw[OWL_DMADESC_DST_STRIDE] = 0;
+	/*
+	 * Word starts from offset 0xC is shared between frame length
+	 * (max frame length is 1MB) and frame count, where first 20
+	 * bits are for frame length and rest of 12 bits are for frame
+	 * count.
+	 */
+	lli->hw[OWL_DMADESC_FLEN] = len | FCNT_VAL << 20;
+	lli->hw[OWL_DMADESC_CTRLB] = ctrlb;
 
 	return 0;
 }
@@ -752,7 +766,7 @@ static u32 owl_dma_getbytes_chan(struct owl_dma_vchan *vchan)
 			/* Start from the next active node */
 			if (lli->phys == next_lli_phy) {
 				list_for_each_entry(lli, &txd->lli_list, node)
-					bytes += lli->hw.flen;
+					bytes += llc_hw_flen(lli);
 				break;
 			}
 		}
@@ -783,7 +797,7 @@ static enum dma_status owl_dma_tx_status(struct dma_chan *chan,
 	if (vd) {
 		txd = to_owl_txd(&vd->tx);
 		list_for_each_entry(lli, &txd->lli_list, node)
-			bytes += lli->hw.flen;
+			bytes += llc_hw_flen(lli);
 	} else {
 		bytes = owl_dma_getbytes_chan(vchan);
 	}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
