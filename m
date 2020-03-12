Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C5F183C7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 23:29:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fx7V1vqYGx0vBbIaToQVrJdLwjwj/hH/zXGXLI59+KI=; b=CBrgX3GQvuZRpG
	kngdsxp/x8mJijq79W+DoLykgOIG2if8usguhnpl8cSChVxS+t/EoYMPR/92/3rGWnR9dBwKtTvYV
	yoVzC50cNVh4F1JwDNpRk9X3RNWQPTzj1MMDPodrBvkjrhZ+ZyGnE+xtGJEOi3QjnpmGXT1DUz18o
	8of3TYde+ARuXjbjMT26LXidSoyOJmOWBKpRj6jXWPgY47OZTcH8KnAwJwTiGhT/XYg9+OgD6myTX
	n/7zmYqkz/uUxA1QS0PwhVoHS9T5gu32oHqXPhwT5lmYect0UhZXjhiV27olK2wTfKLDdMl8ApTdx
	ggk6UfQT530/8GJzQ2xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCWKp-0003fn-Kg; Thu, 12 Mar 2020 22:29:47 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCWJm-0002l7-7d
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 22:28:45 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 071591A11CE;
 Thu, 12 Mar 2020 23:28:41 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BDF3F1A11BA;
 Thu, 12 Mar 2020 23:28:40 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 2BBC640AB2; Thu, 12 Mar 2020 15:28:40 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Timur Tabi <timur@kernel.org>,
 Zhao Qiang <qiang.zhao@nxp.com>
Subject: [PATCH 4/6] soc: fsl: qe: fix sparse warnings for qe_ic.c
Date: Thu, 12 Mar 2020 17:28:25 -0500
Message-Id: <20200312222827.17409-5-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.25.1.377.g2d2118b
In-Reply-To: <20200312222827.17409-1-leoyang.li@nxp.com>
References: <20200312222827.17409-1-leoyang.li@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_152842_426637_6E137EC1 
X-CRM114-Status: UNSURE (   8.97  )
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

drivers/soc/fsl/qe/qe_ic.c:253:32: warning: incorrect type in argument 1 (different base types)
drivers/soc/fsl/qe/qe_ic.c:253:32:    expected restricted __be32 [noderef] [usertype] <asn:2> *base
drivers/soc/fsl/qe/qe_ic.c:253:32:    got unsigned int [noderef] [usertype] <asn:2> *regs
drivers/soc/fsl/qe/qe_ic.c:254:26: warning: incorrect type in argument 1 (different base types)
drivers/soc/fsl/qe/qe_ic.c:254:26:    expected restricted __be32 [noderef] [usertype] <asn:2> *base
drivers/soc/fsl/qe/qe_ic.c:254:26:    got unsigned int [noderef] [usertype] <asn:2> *regs
drivers/soc/fsl/qe/qe_ic.c:269:32: warning: incorrect type in argument 1 (different base types)
drivers/soc/fsl/qe/qe_ic.c:269:32:    expected restricted __be32 [noderef] [usertype] <asn:2> *base
drivers/soc/fsl/qe/qe_ic.c:269:32:    got unsigned int [noderef] [usertype] <asn:2> *regs
drivers/soc/fsl/qe/qe_ic.c:270:26: warning: incorrect type in argument 1 (different base types)
drivers/soc/fsl/qe/qe_ic.c:270:26:    expected restricted __be32 [noderef] [usertype] <asn:2> *base
drivers/soc/fsl/qe/qe_ic.c:270:26:    got unsigned int [noderef] [usertype] <asn:2> *regs
drivers/soc/fsl/qe/qe_ic.c:341:31: warning: incorrect type in argument 1 (different base types)
drivers/soc/fsl/qe/qe_ic.c:341:31:    expected restricted __be32 [noderef] [usertype] <asn:2> *base
drivers/soc/fsl/qe/qe_ic.c:341:31:    got unsigned int [noderef] [usertype] <asn:2> *regs
drivers/soc/fsl/qe/qe_ic.c:357:31: warning: incorrect type in argument 1 (different base types)
drivers/soc/fsl/qe/qe_ic.c:357:31:    expected restricted __be32 [noderef] [usertype] <asn:2> *base
drivers/soc/fsl/qe/qe_ic.c:357:31:    got unsigned int [noderef] [usertype] <asn:2> *regs
drivers/soc/fsl/qe/qe_ic.c:450:26: warning: incorrect type in argument 1 (different base types)
drivers/soc/fsl/qe/qe_ic.c:450:26:    expected restricted __be32 [noderef] [usertype] <asn:2> *base
drivers/soc/fsl/qe/qe_ic.c:450:26:    got unsigned int [noderef] [usertype] <asn:2> *regs

Signed-off-by: Li Yang <leoyang.li@nxp.com>
---
 drivers/soc/fsl/qe/qe_ic.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 0dd5bdb04a14..0390af999900 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -44,7 +44,7 @@
 
 struct qe_ic {
 	/* Control registers offset */
-	u32 __iomem *regs;
+	__be32 __iomem *regs;
 
 	/* The remapper for this QEIC */
 	struct irq_domain *irqhost;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
