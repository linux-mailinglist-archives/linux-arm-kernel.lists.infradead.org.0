Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 380C210CB6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:13:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kbRIUZhOrBwwdxSgTCd423mtVSsJLubJqIIGQRcaZfU=; b=Pkt4mxTwCnE5TC
	8YHHxSNPqoaY++/APOoiTih5hScWvcINM5eLLzQEIpp1wabvi2+dlAXXR+BXy32HEjqmzwTVhk9So
	QJIuluqQiogFQypMDZOn5cQGsXVl5NOazQ2jVtc9z834yE5fKiNv1aVOSkDiePh5WwAu65DikciTz
	OSOZVWhQn1er9JX2JIOAfBWIB/0MFYM2gF8H/27KbiTTskGeyGRkheF08uQIOuz4jdT7X+d3Aw+Rp
	9BrJxSfkgPf5Mr3q7c4AZealB0KAJ/NIcbhBBmedsk0nPwCOj818JW9vmg5Fcr734qMQkBUL7KU1V
	w/rfAc14xJMNa9qnVUyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLTX-0005k2-23; Thu, 28 Nov 2019 15:12:59 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLTL-0005V4-ID
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 15:12:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=72sEWcRrZShV6+ZtrbY8IpuEizwarRLNFp/8lkLUzfY=; b=QT8zl8TzWpnsUJsvk69I0S1H8r
 LaYNRu40jOaUvb8FOZ+oCBOKuxmNilS/8/sPI488zzvZxUS+5OgPzbGZQusdS3iy0BYYiH2u7CONb
 BhPySPOB0SEWvuXT4YjN+x2xbCSlzfkWbyr/z47eYs6Shyf8tPjYHy5oXxQ61o8V0HEMSyWAQ/6/M
 5q/v096CmiclJ9QP6o5ulZ37o74Yy4AeLZ/Y9C255jAC4fY4o4SZ2zbZxMcMjbruZywcJwY/8Nt5F
 +LvH6X1UrYHk9lOA6kvcK0R+Tna9cWp9D+/UHbsqMChjCyKG13WOzR+RLrySv9W/K6Cgk8XN18Ecn
 H6YmKHbA==;
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLFU-00061B-HM
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:30 +0000
Received: by mail-lf1-x142.google.com with SMTP id l14so20241708lfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=72sEWcRrZShV6+ZtrbY8IpuEizwarRLNFp/8lkLUzfY=;
 b=GU+FHdBJRYkw5UkPWN7s3g70/83WQOEmISQwX9qSdRVD3WHOUaGAFdBUx3Sme7fjHL
 /Z+7qlogtJH6EcMtuHnCJMLrZd5CaVdwbfAxgYfHduzeaVVIkMdpB925f242Mn00PfSy
 RuXGBWmdfSaOhpduQ3XxsbwxqdAElKPZlwwik=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=72sEWcRrZShV6+ZtrbY8IpuEizwarRLNFp/8lkLUzfY=;
 b=giYzH+ezSdg6b49Zu6vnEwq9bnNeE2Y9BV3OqrTp27mgzWc5H+1NzG2ufobaJrWr62
 gNGRj3tLyiNkwiCCRldTf6L7zV0wR0GQEYlaVRfQxs8tPuu9W8qVoCMnoDPtefrh67PA
 WC5jkvIi9X2jQ9FtUGfdnZjQqKWUGkbbvyBsiFnP9W+zjbpyUsW59yitW6r3QbCZQni9
 0x43UG2YNgCSW61KQKYmpFbmp7Wn6gwNtF4kBgTqvALwD4NJlgp+QCqTDrFwqPjIyHZp
 ZPOSxSM2bpTqxV8NRnUVN8Ucfb6oQdU5ymnje822b8ONuAdWZntu92x8tU3BwIuYPpnM
 C7IA==
X-Gm-Message-State: APjAAAVA/hBRsiIZCAySb+UfBUcm7jeUESYw3DuvZjw9OhyKs+Vi7Rk4
 QOpVMD+ZXkPTZiMJHZOF/d/Ggw==
X-Google-Smtp-Source: APXvYqz02uT5YFaXnAxzTLioQmYffM+bBn/MgPobmwNavfJAST5FVWoxj4QiDIoEsaR5yWe6ky9XnQ==
X-Received: by 2002:a19:6b04:: with SMTP id d4mr33009525lfa.10.1574953077507; 
 Thu, 28 Nov 2019 06:57:57 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:57 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 40/49] soc: fsl: qe: avoid IS_ERR_VALUE in ucc_slow.c
Date: Thu, 28 Nov 2019 15:55:45 +0100
Message-Id: <20191128145554.1297-41-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_145828_596032_7F2C492F 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Reviewed-by: Timur Tabi <timur@kernel.org>
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
