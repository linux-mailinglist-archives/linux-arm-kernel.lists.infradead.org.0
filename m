Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A992CF4C6B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:03:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eF+Apf1yXQbVzGYf7Gy/60tsy7yk9GLcHgWAg/GV6Lc=; b=KLnhInX5KDb1Ll
	5Qi7tAwENjbF0JO/9/QJfX1OjELqrgFbEwfJKr88MjwgIzUOlSDSHiKuMEcx/l2eMPoonmDOoUzFo
	53h9dQeVk+OHxPr5ACBnJihWaxSlUnOoV+QuggZ964z+CRc4X/jOHe6q8/7x/T3bFB5rvFCAJ3Oz+
	k3BU2AgUzQ0xtbIqYZi+KLdmYU9Te+CEvYLSaHGCscr95a4EjdXeLiHoBzRizAnulrstBOSYGkjfB
	bV8kYGTNEjqjQ2/baRvx4fpR/3nfHzWdTZC/HT90Jt6t64RQtRJ2ZPgG3VUmducYWwSR/w41YXkCN
	iHph409FWkRrEYkuE9WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT3ux-0005N5-BG; Fri, 08 Nov 2019 13:03:11 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3tP-0004Ek-Ml
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:01:37 +0000
Received: by mail-lj1-x241.google.com with SMTP id v8so6130483ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZekbabXCPgDix0mV9AcQnO633/TLQ+c6dMS4dOgnB5g=;
 b=B/xZo0RrHCJyuvVZivt2CjwHFp/RR66mRkGQgHnOynN41VAmVQ3pl1D/E66J+ArKGL
 Gfyb0DEzvNycushflGaz+pEn1sxlOzX7sHsRCL1LiVYG/on1mH3xhc+kbmGVl4LeO5V0
 df1bV9WCV4KW8U/dTC+tlVjDuAR5cCH+el02s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZekbabXCPgDix0mV9AcQnO633/TLQ+c6dMS4dOgnB5g=;
 b=JV4MSsI7e3TZQy12ZMHEePDVl0+2B89MBV3tYwqhAHIhcSHrvCX8kkdyBSZNPqrb89
 CkZoJu+B90GfzzbO0yglXXyGMPwWmPI0RX54AkcXy933Yl1ME2Xon9PWCf/O/tGjj2br
 cZ+hS8M9l64HTUYqlVq1YOL94jTrXLfvx1c+erxxDxgt4CmSoIFy8KtGNnEzgKAWc4dV
 JBaZ5xo5pK5VjuwX3e15O4hY/U1NFytEVi2RGqzWRXzUUei+hFKcD33KU/EQh7psAhho
 +6nIiyMzdfJJ0hmbowyPvcZBMz6oOg3UMMdxVQarIYPWLe8QK7CCDc6VcqhP5LHN5951
 MTKg==
X-Gm-Message-State: APjAAAUC6DxefM7WemlXlProwm7nQUpqqgrwhhT/V4Q5Rbd6O8GZGx45
 cp7UsHXIRoOfZzIQ/JS/tJQxlA==
X-Google-Smtp-Source: APXvYqwHe/94bHQUIiS2PHM5f7Vm4tOkuQQeHPPg8bsOABWlpDnKO27QowlfW02ScK7V7DeZLJYQpw==
X-Received: by 2002:a2e:3805:: with SMTP id f5mr6440382lja.220.1573218091677; 
 Fri, 08 Nov 2019 05:01:31 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.01.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:01:31 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 03/47] soc: fsl: qe: rename qe_(clr/set/clrset)bit* helpers
Date: Fri,  8 Nov 2019 14:00:39 +0100
Message-Id: <20191108130123.6839-4-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050135_746204_597FD0D7 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make it clear that these operate on big-endian registers (i.e. use the
iowrite*be primitives) before we introduce more uses of them and allow
the QE drivers to be built for platforms other than ppc32.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/net/wan/fsl_ucc_hdlc.c |  4 ++--
 drivers/soc/fsl/qe/ucc.c       | 10 +++++-----
 include/soc/fsl/qe/qe.h        | 18 +++++++++---------
 3 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/net/wan/fsl_ucc_hdlc.c b/drivers/net/wan/fsl_ucc_hdlc.c
index ca0f3be2b6bf..ce6af7d5380f 100644
--- a/drivers/net/wan/fsl_ucc_hdlc.c
+++ b/drivers/net/wan/fsl_ucc_hdlc.c
@@ -623,8 +623,8 @@ static int ucc_hdlc_poll(struct napi_struct *napi, int budget)
 
 	if (howmany < budget) {
 		napi_complete_done(napi, howmany);
-		qe_setbits32(priv->uccf->p_uccm,
-			     (UCCE_HDLC_RX_EVENTS | UCCE_HDLC_TX_EVENTS) << 16);
+		qe_setbits_be32(priv->uccf->p_uccm,
+				(UCCE_HDLC_RX_EVENTS | UCCE_HDLC_TX_EVENTS) << 16);
 	}
 
 	return howmany;
diff --git a/drivers/soc/fsl/qe/ucc.c b/drivers/soc/fsl/qe/ucc.c
index 024d239ac1e1..ae9f2cf560cb 100644
--- a/drivers/soc/fsl/qe/ucc.c
+++ b/drivers/soc/fsl/qe/ucc.c
@@ -540,8 +540,8 @@ int ucc_set_tdm_rxtx_clk(u32 tdm_num, enum qe_clock clock,
 	cmxs1cr = (tdm_num < 4) ? &qe_mux_reg->cmxsi1cr_l :
 				  &qe_mux_reg->cmxsi1cr_h;
 
-	qe_clrsetbits32(cmxs1cr, QE_CMXUCR_TX_CLK_SRC_MASK << shift,
-			clock_bits << shift);
+	qe_clrsetbits_be32(cmxs1cr, QE_CMXUCR_TX_CLK_SRC_MASK << shift,
+			   clock_bits << shift);
 
 	return 0;
 }
@@ -650,9 +650,9 @@ int ucc_set_tdm_rxtx_sync(u32 tdm_num, enum qe_clock clock,
 
 	shift = ucc_get_tdm_sync_shift(mode, tdm_num);
 
-	qe_clrsetbits32(&qe_mux_reg->cmxsi1syr,
-			QE_CMXUCR_TX_CLK_SRC_MASK << shift,
-			source << shift);
+	qe_clrsetbits_be32(&qe_mux_reg->cmxsi1syr,
+			   QE_CMXUCR_TX_CLK_SRC_MASK << shift,
+			   source << shift);
 
 	return 0;
 }
diff --git a/include/soc/fsl/qe/qe.h b/include/soc/fsl/qe/qe.h
index c1036d16ed03..a1aa4eb28f0c 100644
--- a/include/soc/fsl/qe/qe.h
+++ b/include/soc/fsl/qe/qe.h
@@ -241,20 +241,20 @@ static inline int qe_alive_during_sleep(void)
 #define qe_muram_offset cpm_muram_offset
 #define qe_muram_dma cpm_muram_dma
 
-#define qe_setbits32(_addr, _v) iowrite32be(ioread32be(_addr) |  (_v), (_addr))
-#define qe_clrbits32(_addr, _v) iowrite32be(ioread32be(_addr) & ~(_v), (_addr))
+#define qe_setbits_be32(_addr, _v) iowrite32be(ioread32be(_addr) |  (_v), (_addr))
+#define qe_clrbits_be32(_addr, _v) iowrite32be(ioread32be(_addr) & ~(_v), (_addr))
 
-#define qe_setbits16(_addr, _v) iowrite16be(ioread16be(_addr) |  (_v), (_addr))
-#define qe_clrbits16(_addr, _v) iowrite16be(ioread16be(_addr) & ~(_v), (_addr))
+#define qe_setbits_be16(_addr, _v) iowrite16be(ioread16be(_addr) |  (_v), (_addr))
+#define qe_clrbits_be16(_addr, _v) iowrite16be(ioread16be(_addr) & ~(_v), (_addr))
 
-#define qe_setbits8(_addr, _v) iowrite8(ioread8(_addr) |  (_v), (_addr))
-#define qe_clrbits8(_addr, _v) iowrite8(ioread8(_addr) & ~(_v), (_addr))
+#define qe_setbits_8(_addr, _v) iowrite8(ioread8(_addr) |  (_v), (_addr))
+#define qe_clrbits_8(_addr, _v) iowrite8(ioread8(_addr) & ~(_v), (_addr))
 
-#define qe_clrsetbits32(addr, clear, set) \
+#define qe_clrsetbits_be32(addr, clear, set) \
 	iowrite32be((ioread32be(addr) & ~(clear)) | (set), (addr))
-#define qe_clrsetbits16(addr, clear, set) \
+#define qe_clrsetbits_be16(addr, clear, set) \
 	iowrite16be((ioread16be(addr) & ~(clear)) | (set), (addr))
-#define qe_clrsetbits8(addr, clear, set) \
+#define qe_clrsetbits_8(addr, clear, set) \
 	iowrite8((ioread8(addr) & ~(clear)) | (set), (addr))
 
 /* Structure that defines QE firmware binary files.
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
