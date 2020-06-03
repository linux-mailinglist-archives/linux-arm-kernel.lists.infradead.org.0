Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A91A1ECA74
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 09:23:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXJkpb8H5OIBYutm2DZzZhXOqDvTVTRfIiQwB48BWps=; b=FEXyVc2WCGMXWv
	ITkUoejBd8USEWrWFeDtYLM2PmlH7mv9SwYXIbayYlY3GjwxWD6Stk5gVNSJRj5nlJdqY3JGQPPP5
	LBjynHLkPn5odL22MNWVgEcPHbeh2PlpwPU98j3dXWrjPG0WrSEEZREp4sA7QyQ/TcNiKpE9Vk2lu
	H7TpcGWKJSnpsnET02k+dqsmxkjqycqkle+45fcqQhWkUNAaInSD8YFKoDNU83m6jPojGPJ3a7byp
	ixV3dLnENQuu7v1CvnSFBy/6SaM1ofYfKu17mZOpMGb93mEsDohdpbt3FJQBhBncM3of6L62v4120
	vryDwQIedUgLoGxx9ncg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgNjq-000180-PL; Wed, 03 Jun 2020 07:23:02 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgNjX-0000w1-L4
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 07:22:45 +0000
Received: by mail-pf1-x443.google.com with SMTP id 64so1017110pfg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 00:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:user-agent:in-reply-to:references:mime-version
 :content-transfer-encoding:subject:to:cc:from:message-id;
 bh=Mzj+4P6YyUKaBzY1zA3s1gowMthiSgt2iJhCfK00k6U=;
 b=BI37NIjki97mugGeK1q+0eA7Eji/emfrsOW1ZVQTClNqQnE19bN/1NLfQB6cPnzfIk
 MKYGRayBRabq++g1ta+9aWqvSYrJiSrGtme18cwBnQC7RR0oyh5pt7PqUiAEvSlHZiIQ
 hHQBIQcrDOiNerVjDjUJbOS5YF0kl+D3bVezLHDVNei9ZzRNaIlU+dySK+J50hGDv9O1
 bbcwG2bUdUdU4LDGaCebfuwroDDx2qcFizQWvv51kOy8EVmO0Ok/ylisI2R/MGZWY3Gd
 NfJt/vA6M7DE/AqGOauvk53ennY/56r5jVbvoHUmqALEuKyGl63s628txi8+rvI92pnj
 asvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:user-agent:in-reply-to:references
 :mime-version:content-transfer-encoding:subject:to:cc:from
 :message-id;
 bh=Mzj+4P6YyUKaBzY1zA3s1gowMthiSgt2iJhCfK00k6U=;
 b=UMggpHz7lf7eKSMzt5aI762qFo4VJOBSEwpqGm8qt3WA4Gxr53mczYgVxSt51rztf/
 oAJW9yO4X9/QNWgxs3sLZYf0tKDt1tvyvCPhM+ioTn+kc50xTNiQZM5M+Yzzp2FY1xzZ
 yWEz6Yg84pJ/ZgFEuUxh8YXiKtfpTZxPxQcV53zdPKiu9uqzFqJuaxlF+TxGvS4CW6KZ
 WFGbKZdgLyOTb6Y/F2yMRhZrz58VoBKwPbiyKrGXj2Nnq4lvNQcaunCqt0YcCz3SEUzS
 6aD2TOYRuQAKCzdqTyWajUVofylSI4SqwuvSuL/ahkbljNjjFeRcBorOqlZbSGyfYRm1
 T8YQ==
X-Gm-Message-State: AOAM531O4nOvDotHBWYLLJOygknG17G4rveUh50bY4bk7vWpPnK+zFED
 BpGgqGEnQcSWRbVj0M25Husq
X-Google-Smtp-Source: ABdhPJw0Nlb30CTkhejSyv5b3Dz1LVDkw16PIbLMhaRIvo/aZfuJmqJZ8VUvExleC4lztiNntV6U/w==
X-Received: by 2002:a17:90a:e2c4:: with SMTP id
 fr4mr4063507pjb.32.1591168962855; 
 Wed, 03 Jun 2020 00:22:42 -0700 (PDT)
Received: from ?IPv6:2409:4072:6e19:d568:fc3d:9e72:444d:f928?
 ([2409:4072:6e19:d568:fc3d:9e72:444d:f928])
 by smtp.gmail.com with ESMTPSA id ev20sm1500940pjb.8.2020.06.03.00.22.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jun 2020 00:22:41 -0700 (PDT)
Date: Wed, 03 Jun 2020 12:52:34 +0530
User-Agent: K-9 Mail for Android
In-Reply-To: <1591119192-18538-2-git-send-email-amittomer25@gmail.com>
References: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
 <1591119192-18538-2-git-send-email-amittomer25@gmail.com>
MIME-Version: 1.0
Subject: Re: [PATCH v3 01/10] dmaengine: Actions: get rid of bit fields from
 dma descriptor
To: Amit Singh Tomar <amittomer25@gmail.com>, andre.przywara@arm.com,
 vkoul@kernel.org, afaerber@suse.de
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Message-ID: <3D3E2940-11E3-4093-8F60-82EB2C11B617@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_002243_689757_FE9CD209 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2 June 2020 11:03:03 PM IST, Amit Singh Tomar <amittomer25@gmail.com> wrote:
>At the moment, Driver uses bit fields to describe registers of the DMA
>descriptor structure that makes it less portable and maintainable, and
>Andre suugested(and even sketched important bits for it) to make use of
>array to describe this DMA descriptors instead. It gives the
>flexibility
>while extending support for other platform such as Actions S700.
>
>This commit removes the "owl_dma_lli_hw" (that includes bit-fields) and
>uses array to describe DMA descriptor.
>
>Suggested-by: Andre Przywara <andre.przywara@arm.com>
>Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
>---
>Changes since v2:
>	* No change.
>Changes since v1:
>        * Defined macro for frame count value.
>        * Introduced llc_hw_flen() from patch 2/9.
>        * Removed the unnecessary line break.
>Changes since rfc:
>        * No change.
>---
>drivers/dma/owl-dma.c | 84
>++++++++++++++++++++++++---------------------------
> 1 file changed, 40 insertions(+), 44 deletions(-)
>
>diff --git a/drivers/dma/owl-dma.c b/drivers/dma/owl-dma.c
>index c683051257fd..dd85c205454e 100644
>--- a/drivers/dma/owl-dma.c
>+++ b/drivers/dma/owl-dma.c
>@@ -120,30 +120,21 @@
> #define BIT_FIELD(val, width, shift, newshift)	\
> 		((((val) >> (shift)) & ((BIT(width)) - 1)) << (newshift))
> 
>-/**
>- * struct owl_dma_lli_hw - Hardware link list for dma transfer
>- * @next_lli: physical address of the next link list
>- * @saddr: source physical address
>- * @daddr: destination physical address
>- * @flen: frame length
>- * @fcnt: frame count
>- * @src_stride: source stride
>- * @dst_stride: destination stride
>- * @ctrla: dma_mode and linklist ctrl config
>- * @ctrlb: interrupt config
>- * @const_num: data for constant fill
>- */
>-struct owl_dma_lli_hw {
>-	u32	next_lli;
>-	u32	saddr;
>-	u32	daddr;
>-	u32	flen:20;
>-	u32	fcnt:12;
>-	u32	src_stride;
>-	u32	dst_stride;
>-	u32	ctrla;
>-	u32	ctrlb;
>-	u32	const_num;
>+/* Frame count value is fixed as 1 */
>+#define FCNT_VAL				0x1
>+
>+/* Describe DMA descriptor, hardware link list for dma transfer */

Individual comments for these enums? 

>+enum owl_dmadesc_offsets {
>+	OWL_DMADESC_NEXT_LLI = 0,
>+	OWL_DMADESC_SADDR,
>+	OWL_DMADESC_DADDR,
>+	OWL_DMADESC_FLEN,
>+	OWL_DMADESC_SRC_STRIDE,
>+	OWL_DMADESC_DST_STRIDE,
>+	OWL_DMADESC_CTRLA,
>+	OWL_DMADESC_CTRLB,
>+	OWL_DMADESC_CONST_NUM,
>+	OWL_DMADESC_SIZE
> };
> 
> /**
>@@ -153,7 +144,7 @@ struct owl_dma_lli_hw {
>  * @node: node for txd's lli_list
>  */
> struct owl_dma_lli {
>-	struct  owl_dma_lli_hw	hw;
>+	u32			hw[OWL_DMADESC_SIZE];
> 	dma_addr_t		phys;
> 	struct list_head	node;
> };
>@@ -320,6 +311,11 @@ static inline u32 llc_hw_ctrlb(u32 int_ctl)
> 	return ctl;
> }
> 
>+static u32 llc_hw_flen(struct owl_dma_lli *lli)
>+{
>+	return lli->hw[OWL_DMADESC_FLEN] & GENMASK(19, 0);
>+}
>+
> static void owl_dma_free_lli(struct owl_dma *od,
> 			     struct owl_dma_lli *lli)
> {
>@@ -351,8 +347,9 @@ static struct owl_dma_lli *owl_dma_add_lli(struct
>owl_dma_txd *txd,
> 		list_add_tail(&next->node, &txd->lli_list);
> 
> 	if (prev) {
>-		prev->hw.next_lli = next->phys;
>-		prev->hw.ctrla |= llc_hw_ctrla(OWL_DMA_MODE_LME, 0);
>+		prev->hw[OWL_DMADESC_NEXT_LLI] = next->phys;
>+		prev->hw[OWL_DMADESC_CTRLA] |=
>+					llc_hw_ctrla(OWL_DMA_MODE_LME, 0);
> 	}
> 
> 	return next;
>@@ -365,8 +362,7 @@ static inline int owl_dma_cfg_lli(struct
>owl_dma_vchan *vchan,
> 				  struct dma_slave_config *sconfig,
> 				  bool is_cyclic)
> {
>-	struct owl_dma_lli_hw *hw = &lli->hw;
>-	u32 mode;
>+	u32 mode, ctrlb;
> 
> 	mode = OWL_DMA_MODE_PW(0);
> 
>@@ -407,22 +403,22 @@ static inline int owl_dma_cfg_lli(struct
>owl_dma_vchan *vchan,
> 		return -EINVAL;
> 	}
> 
>-	hw->next_lli = 0; /* One link list by default */
>-	hw->saddr = src;
>-	hw->daddr = dst;
>-
>-	hw->fcnt = 1; /* Frame count fixed as 1 */
>-	hw->flen = len; /* Max frame length is 1MB */
>-	hw->src_stride = 0;
>-	hw->dst_stride = 0;
>-	hw->ctrla = llc_hw_ctrla(mode,
>-				 OWL_DMA_LLC_SAV_LOAD_NEXT |
>-				 OWL_DMA_LLC_DAV_LOAD_NEXT);
>+	lli->hw[OWL_DMADESC_CTRLA] = llc_hw_ctrla(mode,
>+						  OWL_DMA_LLC_SAV_LOAD_NEXT |
>+						  OWL_DMA_LLC_DAV_LOAD_NEXT);
> 
> 	if (is_cyclic)
>-		hw->ctrlb = llc_hw_ctrlb(OWL_DMA_INTCTL_BLOCK);
>+		ctrlb = llc_hw_ctrlb(OWL_DMA_INTCTL_BLOCK);
> 	else
>-		hw->ctrlb = llc_hw_ctrlb(OWL_DMA_INTCTL_SUPER_BLOCK);
>+		ctrlb = llc_hw_ctrlb(OWL_DMA_INTCTL_SUPER_BLOCK);
>+
>+	lli->hw[OWL_DMADESC_NEXT_LLI] = 0;

Again, please preserve the old comments. 

>+	lli->hw[OWL_DMADESC_SADDR] = src;
>+	lli->hw[OWL_DMADESC_DADDR] = dst;
>+	lli->hw[OWL_DMADESC_SRC_STRIDE] = 0;
>+	lli->hw[OWL_DMADESC_DST_STRIDE] = 0;
>+	lli->hw[OWL_DMADESC_FLEN] = len | FCNT_VAL << 20;

Please explain what you're doing here. 

Thanks, 
Mani

>+	lli->hw[OWL_DMADESC_CTRLB] = ctrlb;
> 
> 	return 0;
> }
>@@ -754,7 +750,7 @@ static u32 owl_dma_getbytes_chan(struct
>owl_dma_vchan *vchan)
> 			/* Start from the next active node */
> 			if (lli->phys == next_lli_phy) {
> 				list_for_each_entry(lli, &txd->lli_list, node)
>-					bytes += lli->hw.flen;
>+					bytes += llc_hw_flen(lli);
> 				break;
> 			}
> 		}
>@@ -785,7 +781,7 @@ static enum dma_status owl_dma_tx_status(struct
>dma_chan *chan,
> 	if (vd) {
> 		txd = to_owl_txd(&vd->tx);
> 		list_for_each_entry(lli, &txd->lli_list, node)
>-			bytes += lli->hw.flen;
>+			bytes += llc_hw_flen(lli);
> 	} else {
> 		bytes = owl_dma_getbytes_chan(vchan);
> 	}

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
