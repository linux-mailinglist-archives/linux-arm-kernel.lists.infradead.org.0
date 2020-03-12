Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E021183C7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 23:30:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhYiNtRMxvGN7uNjD3dIbty4eU5L59cl+Fv7LdTS/yE=; b=Afrww5k7qC+a9Q
	XwA9jDLWFbLT09y1llNj1LAhtiYFsF2QiYN1CoER+pDJpHuytg7Ufdf/V0ZWO0QxziY6bTkQLTQVY
	+qJBEOlOIlmvSnJIjpsVa5QUJ57HtzzT/u0CYtB3+FreAjwdj+xodFousPcpeAd8i21+Op6Lvuemo
	Ix0V3h3zs0NN4TxMUrY2HbEVdw793SEAgF/iURcUr2ad5iH2x/p/pJ68A4MK218t0BrnJsQ4S9ifm
	57BGy1DgTsh8PatR1Mp4Yx9d6NjrqQIr3urNlb7Vx4hZH8IQElnihqAq6fqqWedGoGTb71jIdoz6N
	h8obJFA5eWgiCRuME8+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCWL2-0004AL-NB; Thu, 12 Mar 2020 22:30:00 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCWJo-0002mT-SC
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 22:28:46 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4258E1A11CF;
 Thu, 12 Mar 2020 23:28:41 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0304B1A11CB;
 Thu, 12 Mar 2020 23:28:41 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 762B440BCF; Thu, 12 Mar 2020 15:28:40 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Timur Tabi <timur@kernel.org>,
 Zhao Qiang <qiang.zhao@nxp.com>
Subject: [PATCH 5/6] soc: fsl: qe: fix sparse warnings for ucc_fast.c
Date: Thu, 12 Mar 2020 17:28:26 -0500
Message-Id: <20200312222827.17409-6-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.25.1.377.g2d2118b
In-Reply-To: <20200312222827.17409-1-leoyang.li@nxp.com>
References: <20200312222827.17409-1-leoyang.li@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_152845_144663_7B7D59F9 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes the following sparse warnings:

drivers/soc/fsl/qe/ucc_fast.c:218:22: warning: incorrect type in assignment (different base types)
drivers/soc/fsl/qe/ucc_fast.c:218:22:    expected unsigned int [noderef] [usertype] <asn:2> *p_ucce
drivers/soc/fsl/qe/ucc_fast.c:218:22:    got restricted __be32 [noderef] <asn:2> *
drivers/soc/fsl/qe/ucc_fast.c:219:22: warning: incorrect type in assignment (different base types)
drivers/soc/fsl/qe/ucc_fast.c:219:22:    expected unsigned int [noderef] [usertype] <asn:2> *p_uccm
drivers/soc/fsl/qe/ucc_fast.c:219:22:    got restricted __be32 [noderef] <asn:2> *

Signed-off-by: Li Yang <leoyang.li@nxp.com>
---
 include/soc/fsl/qe/ucc_fast.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/soc/fsl/qe/ucc_fast.h b/include/soc/fsl/qe/ucc_fast.h
index ba0e838f962a..dc4e79468094 100644
--- a/include/soc/fsl/qe/ucc_fast.h
+++ b/include/soc/fsl/qe/ucc_fast.h
@@ -178,10 +178,10 @@ struct ucc_fast_info {
 struct ucc_fast_private {
 	struct ucc_fast_info *uf_info;
 	struct ucc_fast __iomem *uf_regs; /* a pointer to the UCC regs. */
-	u32 __iomem *p_ucce;	/* a pointer to the event register in memory. */
-	u32 __iomem *p_uccm;	/* a pointer to the mask register in memory. */
+	__be32 __iomem *p_ucce;	/* a pointer to the event register in memory. */
+	__be32 __iomem *p_uccm;	/* a pointer to the mask register in memory. */
 #ifdef CONFIG_UGETH_TX_ON_DEMAND
-	u16 __iomem *p_utodr;	/* pointer to the transmit on demand register */
+	__be16 __iomem *p_utodr;/* pointer to the transmit on demand register */
 #endif
 	int enabled_tx;		/* Whether channel is enabled for Tx (ENT) */
 	int enabled_rx;		/* Whether channel is enabled for Rx (ENR) */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
