Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF744100453
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:37:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8NcjURa+xZUsvxDMOm0tIEQIFAEdw4T52S4vWFd01w=; b=IMlgf3W89ktV5I
	rco8+dVJoEg20xVHBLaZcXnUQjXw4pIeXbr2KmeBCegm+kpPrDQOJdCRQ/HFlVhYR+QA/4orx5w/y
	1a3U6OEuDKuPgzArUdtroWxrw7mMDVJnzLEcQG+5dzcIjwSK2UOt6qj+TOqSySVebMnvACLGxDll/
	MRmRnUt/LnQZCYIcQRvdojd6cRYeMLTLyNVJsV0TscqoGBozWG2gggmQS0/Vndq6xUPcdK8kFmSkt
	3uC/PLz/KSkGVM2NqUqx+QkPYbLZynM4/pIX9VoLme0Bun5VHPzPBl1O3kcg5wj+rJlMK58wdhSfn
	Bsy0zVwPj3DhPwfxnspA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfL8-00073a-E8; Mon, 18 Nov 2019 11:37:06 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8s-0001aJ-HL
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:30 +0000
Received: by mail-wm1-x342.google.com with SMTP id u18so16988439wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lTNGYmdFYnmbZW7BpDJGzJwkDqsYkg29EXzmXFmW/h8=;
 b=E+3xGA4/30y1DwCS+6MW7YYGmlSc0pADeOESQccEsjZe1T8x8gDceQhnCntaTw00z4
 5NUzVm8OryK5MkVuKuWGUNxfBeRIcPwKP04YhnN54u6udRog62ushjTqmuvP5rb90HvZ
 lrHDbepBipSt5Oiseoz/3j4UQfNzuYKwzLsL4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lTNGYmdFYnmbZW7BpDJGzJwkDqsYkg29EXzmXFmW/h8=;
 b=fXoFb0IZAipx5DYicsoIBJhyA8LZfIN2vW16/7cdzBRghhHjLFGEE4pCTJKipobGnJ
 cleqHgFeD9rmLcpDFfRxpCx+rbXjrZR3TrfLgCavEp6PGF98elZYxi5oXeoOa5vN7zV1
 +XttBmhMp1I3UsHEadjvUq80860LIcjnyqDZjLIriSTAuJfNEsRTxOyEiCRMKG4HHk1/
 X/4/fUQ7WnCdPSdu9Om9EZlz9IrLyDeHT3hb6gq4KJ6whyg/Ui3EJruk2A3t2Sfjnc3N
 mRXYwnnZU/Pwxlw4Ry+Akso53n79JmJCM9GXDDYUqx31PklU1sjzDXTsxazKj3/ntN3n
 ebMw==
X-Gm-Message-State: APjAAAV7DysSaecNqv+vLaWF+OxaAJoI6Qs43cE+er+DtGHu0cMGQ3W4
 YWyssPTC6/5O9vYbLLHyllQN/g==
X-Google-Smtp-Source: APXvYqyy/TvoE1YD23D4uWmSVI69+ROqT76bGVU1qLM+qZd9KsN2ZpzBpDsbthCjCr5dBm9FMEU9sQ==
X-Received: by 2002:a1c:38c3:: with SMTP id f186mr29228756wma.58.1574076264835; 
 Mon, 18 Nov 2019 03:24:24 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:24 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 40/48] soc: fsl: qe: avoid IS_ERR_VALUE in ucc_slow.c
Date: Mon, 18 Nov 2019 12:23:16 +0100
Message-Id: <20191118112324.22725-41-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032426_768099_32AED205 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When trying to build this for a 64-bit platform, one gets warnings
from using IS_ERR_VALUE on something which is not sizeof(long).

Instead, change the various *_offset fields to store a signed integer,
and simply check for a negative return from qe_muram_alloc(). Since
qe_muram_free() now accepts and ignores a negative argument, we only
need to make sure these fields are initialized with -1, and we can
just unconditionally call qe_muram_free() in ucc_slow_free().

Note that the error case for us_pram_offset failed to set that field
to 0 (which, as noted earlier, is anyway a bogus sentinel value).

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/ucc_slow.c | 22 +++++++++-------------
 include/soc/fsl/qe/ucc_slow.h |  6 +++---
 2 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/soc/fsl/qe/ucc_slow.c b/drivers/soc/fsl/qe/ucc_slow.c
index 9b55fd0f50c6..274d34449846 100644
--- a/drivers/soc/fsl/qe/ucc_slow.c
+++ b/drivers/soc/fsl/qe/ucc_slow.c
@@ -154,6 +154,9 @@ int ucc_slow_init(struct ucc_slow_info * us_info, struct ucc_slow_private ** ucc
 			__func__);
 		return -ENOMEM;
 	}
+	uccs->rx_base_offset = -1;
+	uccs->tx_base_offset = -1;
+	uccs->us_pram_offset = -1;
 
 	/* Fill slow UCC structure */
 	uccs->us_info = us_info;
@@ -179,7 +182,7 @@ int ucc_slow_init(struct ucc_slow_info * us_info, struct ucc_slow_private ** ucc
 	/* Get PRAM base */
 	uccs->us_pram_offset =
 		qe_muram_alloc(UCC_SLOW_PRAM_SIZE, ALIGNMENT_OF_UCC_SLOW_PRAM);
-	if (IS_ERR_VALUE(uccs->us_pram_offset)) {
+	if (uccs->us_pram_offset < 0) {
 		printk(KERN_ERR "%s: cannot allocate MURAM for PRAM", __func__);
 		ucc_slow_free(uccs);
 		return -ENOMEM;
@@ -206,10 +209,9 @@ int ucc_slow_init(struct ucc_slow_info * us_info, struct ucc_slow_private ** ucc
 	uccs->rx_base_offset =
 		qe_muram_alloc(us_info->rx_bd_ring_len * sizeof(struct qe_bd),
 				QE_ALIGNMENT_OF_BD);
-	if (IS_ERR_VALUE(uccs->rx_base_offset)) {
+	if (uccs->rx_base_offset < 0) {
 		printk(KERN_ERR "%s: cannot allocate %u RX BDs\n", __func__,
 			us_info->rx_bd_ring_len);
-		uccs->rx_base_offset = 0;
 		ucc_slow_free(uccs);
 		return -ENOMEM;
 	}
@@ -217,9 +219,8 @@ int ucc_slow_init(struct ucc_slow_info * us_info, struct ucc_slow_private ** ucc
 	uccs->tx_base_offset =
 		qe_muram_alloc(us_info->tx_bd_ring_len * sizeof(struct qe_bd),
 			QE_ALIGNMENT_OF_BD);
-	if (IS_ERR_VALUE(uccs->tx_base_offset)) {
+	if (uccs->tx_base_offset < 0) {
 		printk(KERN_ERR "%s: cannot allocate TX BDs", __func__);
-		uccs->tx_base_offset = 0;
 		ucc_slow_free(uccs);
 		return -ENOMEM;
 	}
@@ -352,14 +353,9 @@ void ucc_slow_free(struct ucc_slow_private * uccs)
 	if (!uccs)
 		return;
 
-	if (uccs->rx_base_offset)
-		qe_muram_free(uccs->rx_base_offset);
-
-	if (uccs->tx_base_offset)
-		qe_muram_free(uccs->tx_base_offset);
-
-	if (uccs->us_pram)
-		qe_muram_free(uccs->us_pram_offset);
+	qe_muram_free(uccs->rx_base_offset);
+	qe_muram_free(uccs->tx_base_offset);
+	qe_muram_free(uccs->us_pram_offset);
 
 	if (uccs->us_regs)
 		iounmap(uccs->us_regs);
diff --git a/include/soc/fsl/qe/ucc_slow.h b/include/soc/fsl/qe/ucc_slow.h
index 8696fdea2ae9..d187a6be83bc 100644
--- a/include/soc/fsl/qe/ucc_slow.h
+++ b/include/soc/fsl/qe/ucc_slow.h
@@ -185,7 +185,7 @@ struct ucc_slow_private {
 	struct ucc_slow_info *us_info;
 	struct ucc_slow __iomem *us_regs; /* Ptr to memory map of UCC regs */
 	struct ucc_slow_pram *us_pram;	/* a pointer to the parameter RAM */
-	u32 us_pram_offset;
+	s32 us_pram_offset;
 	int enabled_tx;		/* Whether channel is enabled for Tx (ENT) */
 	int enabled_rx;		/* Whether channel is enabled for Rx (ENR) */
 	int stopped_tx;		/* Whether channel has been stopped for Tx
@@ -194,8 +194,8 @@ struct ucc_slow_private {
 	struct list_head confQ;	/* frames passed to chip waiting for tx */
 	u32 first_tx_bd_mask;	/* mask is used in Tx routine to save status
 				   and length for first BD in a frame */
-	u32 tx_base_offset;	/* first BD in Tx BD table offset (In MURAM) */
-	u32 rx_base_offset;	/* first BD in Rx BD table offset (In MURAM) */
+	s32 tx_base_offset;	/* first BD in Tx BD table offset (In MURAM) */
+	s32 rx_base_offset;	/* first BD in Rx BD table offset (In MURAM) */
 	struct qe_bd *confBd;	/* next BD for confirm after Tx */
 	struct qe_bd *tx_bd;	/* next BD for new Tx request */
 	struct qe_bd *rx_bd;	/* next BD to collect after Rx */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
