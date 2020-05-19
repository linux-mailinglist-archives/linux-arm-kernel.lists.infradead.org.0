Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CBC1D9F13
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:21:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g1dHwdb3HRqqvYUNiDwFfFm/i//eMBxSj+VemcaCtQg=; b=BxonIbEhgSSZC45GGe2Vgp1xYr
	5kuuqy8UceoEkGehaYgBZtPEyxEqhno6Fnn1ou7+XUUsrW5XF6H8gu4SpDpBWzNtwbWAFASmOMR2x
	yrLYwiXET8+s2jPO7IurUKvBGwJFF0kwKNDUiDQSbp2FGxmnuXFMCm4Pfk+r1q3IgLgXmn9gsOdq9
	p5d2VlQFAcW//v+6K3dz/dWFsE0gYktWOlZ/i/dhBGXsoP9cnDNf8mKO/8LSrgjDFitqBiHBn9Zx+
	Vk6y9h55/utGomzD+z7PVWpQkU1QpaV2h/5rpSb5oxo09A3No/UVZzIamNgO6+nUcDGo+GzBrinnw
	1DVDnd0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6rT-00085D-OR; Tue, 19 May 2020 18:21:07 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6rL-00084H-1r; Tue, 19 May 2020 18:21:00 +0000
Received: by mail-pg1-x543.google.com with SMTP id r10so208593pgv.8;
 Tue, 19 May 2020 11:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zoQaFihILtKPwZMgbHdP4bf5m5RLMdG3wGV1m6Btdw0=;
 b=FPaLyrYFsQfuy77R1zPdfN14FvIRn4VIc7JS/Bs7WyrLCYwS82KhnRUbw+79Jyy72Z
 KImDNrfN8eCGyZN8VTB3/ho9IYc5GFbOAnR2DlDxR/6Dw6ho3JGgkMHo5wpFBSlgG5UT
 1ihTG2d2UHMFJ8oHk35CkGGxb8KhXQk8aNsI5ZaDOETBWZNseeln2lk135fJLDSg2iMB
 6ZaBNxhaSmvp6WzuORhrzEeGeXoZ062l0ZXgREernaRrEBA9nDutSiBekSsT1W1kCgqQ
 BFXwJxczTxsSK9UN5zui4Htw6Bo3DLXkwi1Fm6ZZF9oNW7C+mngzgydU4Y755D7HNi+G
 Na2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zoQaFihILtKPwZMgbHdP4bf5m5RLMdG3wGV1m6Btdw0=;
 b=TOC6DKoY32JyA3Rap6aM2h/U6qUlS4OXepMqzsgHDYgHBJvnKkACbCMBW3nxzRxDoP
 67pf5xQe5D8m3S3tFKNPj0fTmGWiAuGbKurzThAaMH/6rZ9k0PWM1eSswLVuQJBid8v3
 bjZAjDvTk1LREtkBgknxn8LCu4mkKG8Ro7mcD0Iv9t3CCRBx7bsn2wARFzWiGg7kFGxL
 wxgOvyME+Sr2rw2W5Qa+8pZ1wMbfsuT52NpyAXpEX5vuqZgBKqZW3X51kIPp2feVB8Sa
 zvTnsA3PEZOgxaCLkjuicVxP4b82sDTGo5N9ULQT8svewfXy+3BGf0cMFyZmMKp6OKen
 wVeg==
X-Gm-Message-State: AOAM533gaPjlwuH9YyL4zZpzHRPCVms1Yk6aj3SLlP67LBk2hdsviDwb
 I+cqDAGHVYRB7R5yZEXQRNw=
X-Google-Smtp-Source: ABdhPJwA2Cj9S6u0ZPXQB50/kX/b47N3rBoHaxPdSmgazULDADvZfdmLGhh5UdTuG3xy5n11NegjZQ==
X-Received: by 2002:a05:6a00:1510:: with SMTP id
 q16mr322814pfu.311.1589912457993; 
 Tue, 19 May 2020 11:20:57 -0700 (PDT)
Received: from localhost.localdomain ([223.235.145.232])
 by smtp.gmail.com with ESMTPSA id p2sm148399pgh.25.2020.05.19.11.20.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 May 2020 11:20:57 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, vkoul@kernel.org, afaerber@suse.de,
 manivannan.sadhasivam@linaro.org
Subject: [PATCH v2 01/10] dmaengine: Actions: get rid of bit fields from dma
 descriptor
Date: Tue, 19 May 2020 23:49:19 +0530
Message-Id: <1589912368-480-2-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
References: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_112059_095038_A3A2C589 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Changes since v1:
	* Defined macro for frame count value.
	* Introduced llc_hw_flen() from patch 2/9.
	* Removed the unnecessary line break.
Changes since rfc:
	* No change.
---
 drivers/dma/owl-dma.c | 84 ++++++++++++++++++++++++---------------------------
 1 file changed, 40 insertions(+), 44 deletions(-)

diff --git a/drivers/dma/owl-dma.c b/drivers/dma/owl-dma.c
index c683051257fd..dd85c205454e 100644
--- a/drivers/dma/owl-dma.c
+++ b/drivers/dma/owl-dma.c
@@ -120,30 +120,21 @@
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
+/* Frame count value is fixed as 1 */
+#define FCNT_VAL				0x1
+
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
@@ -153,7 +144,7 @@ struct owl_dma_lli_hw {
  * @node: node for txd's lli_list
  */
 struct owl_dma_lli {
-	struct  owl_dma_lli_hw	hw;
+	u32			hw[OWL_DMADESC_SIZE];
 	dma_addr_t		phys;
 	struct list_head	node;
 };
@@ -320,6 +311,11 @@ static inline u32 llc_hw_ctrlb(u32 int_ctl)
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
@@ -351,8 +347,9 @@ static struct owl_dma_lli *owl_dma_add_lli(struct owl_dma_txd *txd,
 		list_add_tail(&next->node, &txd->lli_list);
 
 	if (prev) {
-		prev->hw.next_lli = next->phys;
-		prev->hw.ctrla |= llc_hw_ctrla(OWL_DMA_MODE_LME, 0);
+		prev->hw[OWL_DMADESC_NEXT_LLI] = next->phys;
+		prev->hw[OWL_DMADESC_CTRLA] |=
+					llc_hw_ctrla(OWL_DMA_MODE_LME, 0);
 	}
 
 	return next;
@@ -365,8 +362,7 @@ static inline int owl_dma_cfg_lli(struct owl_dma_vchan *vchan,
 				  struct dma_slave_config *sconfig,
 				  bool is_cyclic)
 {
-	struct owl_dma_lli_hw *hw = &lli->hw;
-	u32 mode;
+	u32 mode, ctrlb;
 
 	mode = OWL_DMA_MODE_PW(0);
 
@@ -407,22 +403,22 @@ static inline int owl_dma_cfg_lli(struct owl_dma_vchan *vchan,
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
+	lli->hw[OWL_DMADESC_FLEN] = len | FCNT_VAL << 20;
+	lli->hw[OWL_DMADESC_CTRLB] = ctrlb;
 
 	return 0;
 }
@@ -754,7 +750,7 @@ static u32 owl_dma_getbytes_chan(struct owl_dma_vchan *vchan)
 			/* Start from the next active node */
 			if (lli->phys == next_lli_phy) {
 				list_for_each_entry(lli, &txd->lli_list, node)
-					bytes += lli->hw.flen;
+					bytes += llc_hw_flen(lli);
 				break;
 			}
 		}
@@ -785,7 +781,7 @@ static enum dma_status owl_dma_tx_status(struct dma_chan *chan,
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
