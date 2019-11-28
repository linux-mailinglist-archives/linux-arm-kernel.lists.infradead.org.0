Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 621FE10CB4E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:06:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G51aAP2fgMSB4u6ccLIPd3QRGTGk58rFwktlq0Q5prQ=; b=Nzg+tEo92IhKoG
	0f2k1rGa2jG2HTn/op44oqkGg1zeMoTKP0wZCjAYdhDEbR8Kst0bNrsb8QCuRe4s7SgbOjEGUrmVe
	IqDCWnaHNNWk42NYZlhYz4+xNjaVR7YHVEzqEL3QPZX+y1+thKjctOz9Bu+ltYgaxqCdwUYvTgz0m
	ZaCi0doQ0IErJ62IjZ3fUWeLbffPeDmF89W0SGDCpfUfXabcAwj5eFq+ymB6Ed8J/lNnL2NnBNb49
	gx2uImbgMh5RIib5rkt2jOSz6QYNYUDYrbStewSv48g7hZXZ45M+RNeftfPVBNXYFfXKOSLpM3zrN
	BPl/EnPfEhJ1Yul/GGkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLNU-0000zK-LI; Thu, 28 Nov 2019 15:06:44 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLF5-000169-4U
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:11 +0000
Received: by mail-lf1-x143.google.com with SMTP id r15so17325667lff.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PyA4fvyHPic1hHseYG61wC3TVgVcfbpZ17hSo3R3QxM=;
 b=H9GNJFOo2tBgwxNF/Mvxe35zT+dq5pwGZ0owmVOSIU2EzzDigi/R9KMcG5HAWIvrIT
 Qg8Nh9+oMFaBwCtzZOFWvEKKLVFDWNsMN4jJfpL5FlPmX8MwlNNI2NkNfPBm9Af9pQxA
 iRix/HHPfoc8REM8iZpZBBjYY/GcODdO3UCM4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PyA4fvyHPic1hHseYG61wC3TVgVcfbpZ17hSo3R3QxM=;
 b=tcZunsmxTFXgfiwDG3adJ4u8cTnnHGop8Hf5kJT3k+ePqZYA+APKXOqDZphDy2/YTe
 XPceYQntXlL56YH/aauCJ1Z5LPUIfbfPLdAEH7fvDYJ9iOxlS/Rcm4JJHclTtuW4a/zx
 sMqWoMxG15KgL1UI5IImMK0hR3fNMsNhfOu1SUOd9LI4X50+vLZfgitkZbkrb7fT47eL
 LWfPSdFAqbdtpsRGKkd4gD2Wd9uyCK/b1mgnvd4RnPKPlR0uIrkQn41H7kLpAeCgwTse
 3aRWCm4EJvZaP0UCYlHb/AXW1/0yEAnzJW1cvvnog1zzxtPh3V+GzX7z31lxSi3qiDn/
 dczg==
X-Gm-Message-State: APjAAAUPT/ZwUrCXu0l8+KWcQp8MX+R/v6qOkudTplaBBWh7fiVSsKQV
 PkunVKADjfvr1t3B0lQN9+ECffLifUmMHv7F
X-Google-Smtp-Source: APXvYqyvt7YRsEI3f7Rdq/jHii7xfNyBE/f16tqd63AmAMdURuB/Q1c5U4ESjLrpdqfvdabSVNzicQ==
X-Received: by 2002:a19:3f51:: with SMTP id m78mr1872602lfa.70.1574953081096; 
 Thu, 28 Nov 2019 06:58:01 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.58.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:58:00 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 43/49] soc: fsl: qe: avoid IS_ERR_VALUE in ucc_fast.c
Date: Thu, 28 Nov 2019 15:55:48 +0100
Message-Id: <20191128145554.1297-44-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065803_220281_0818BB54 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building this on a 64-bit platform gcc rightly warns that the
error checking is broken (-ENOMEM stored in an u32 does not compare
greater than (unsigned long)-MAX_ERRNO). Instead, change the
ucc_fast_[tr]x_virtual_fifo_base_offset members to s32 and use an
ordinary check-for-negative. Also, this avoids treating 0 as "this
cannot have been returned from qe_muram_alloc() so don't free it".

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/ucc_fast.c | 15 ++++++---------
 include/soc/fsl/qe/ucc_fast.h |  4 ++--
 2 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/soc/fsl/qe/ucc_fast.c b/drivers/soc/fsl/qe/ucc_fast.c
index ca0452497a20..ad6193ea4597 100644
--- a/drivers/soc/fsl/qe/ucc_fast.c
+++ b/drivers/soc/fsl/qe/ucc_fast.c
@@ -197,6 +197,8 @@ int ucc_fast_init(struct ucc_fast_info * uf_info, struct ucc_fast_private ** ucc
 			__func__);
 		return -ENOMEM;
 	}
+	uccf->ucc_fast_tx_virtual_fifo_base_offset = -1;
+	uccf->ucc_fast_rx_virtual_fifo_base_offset = -1;
 
 	/* Fill fast UCC structure */
 	uccf->uf_info = uf_info;
@@ -265,10 +267,9 @@ int ucc_fast_init(struct ucc_fast_info * uf_info, struct ucc_fast_private ** ucc
 	/* Allocate memory for Tx Virtual Fifo */
 	uccf->ucc_fast_tx_virtual_fifo_base_offset =
 	    qe_muram_alloc(uf_info->utfs, UCC_FAST_VIRT_FIFO_REGS_ALIGNMENT);
-	if (IS_ERR_VALUE(uccf->ucc_fast_tx_virtual_fifo_base_offset)) {
+	if (uccf->ucc_fast_tx_virtual_fifo_base_offset < 0) {
 		printk(KERN_ERR "%s: cannot allocate MURAM for TX FIFO\n",
 			__func__);
-		uccf->ucc_fast_tx_virtual_fifo_base_offset = 0;
 		ucc_fast_free(uccf);
 		return -ENOMEM;
 	}
@@ -278,10 +279,9 @@ int ucc_fast_init(struct ucc_fast_info * uf_info, struct ucc_fast_private ** ucc
 		qe_muram_alloc(uf_info->urfs +
 			   UCC_FAST_RECEIVE_VIRTUAL_FIFO_SIZE_FUDGE_FACTOR,
 			   UCC_FAST_VIRT_FIFO_REGS_ALIGNMENT);
-	if (IS_ERR_VALUE(uccf->ucc_fast_rx_virtual_fifo_base_offset)) {
+	if (uccf->ucc_fast_rx_virtual_fifo_base_offset < 0) {
 		printk(KERN_ERR "%s: cannot allocate MURAM for RX FIFO\n",
 			__func__);
-		uccf->ucc_fast_rx_virtual_fifo_base_offset = 0;
 		ucc_fast_free(uccf);
 		return -ENOMEM;
 	}
@@ -384,11 +384,8 @@ void ucc_fast_free(struct ucc_fast_private * uccf)
 	if (!uccf)
 		return;
 
-	if (uccf->ucc_fast_tx_virtual_fifo_base_offset)
-		qe_muram_free(uccf->ucc_fast_tx_virtual_fifo_base_offset);
-
-	if (uccf->ucc_fast_rx_virtual_fifo_base_offset)
-		qe_muram_free(uccf->ucc_fast_rx_virtual_fifo_base_offset);
+	qe_muram_free(uccf->ucc_fast_tx_virtual_fifo_base_offset);
+	qe_muram_free(uccf->ucc_fast_rx_virtual_fifo_base_offset);
 
 	if (uccf->uf_regs)
 		iounmap(uccf->uf_regs);
diff --git a/include/soc/fsl/qe/ucc_fast.h b/include/soc/fsl/qe/ucc_fast.h
index e9cc46042a83..ba0e838f962a 100644
--- a/include/soc/fsl/qe/ucc_fast.h
+++ b/include/soc/fsl/qe/ucc_fast.h
@@ -188,9 +188,9 @@ struct ucc_fast_private {
 	int stopped_tx;		/* Whether channel has been stopped for Tx
 				   (STOP_TX, etc.) */
 	int stopped_rx;		/* Whether channel has been stopped for Rx */
-	u32 ucc_fast_tx_virtual_fifo_base_offset;/* pointer to base of Tx
+	s32 ucc_fast_tx_virtual_fifo_base_offset;/* pointer to base of Tx
 						    virtual fifo */
-	u32 ucc_fast_rx_virtual_fifo_base_offset;/* pointer to base of Rx
+	s32 ucc_fast_rx_virtual_fifo_base_offset;/* pointer to base of Rx
 						    virtual fifo */
 #ifdef STATISTICS
 	u32 tx_frames;		/* Transmitted frames counter. */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
