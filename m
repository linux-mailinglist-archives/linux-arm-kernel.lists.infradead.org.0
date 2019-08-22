Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA01199F0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 20:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ycE9q08vmYUFmFU9dRALhV/OPMxzV0PQf06OfbMLSvM=; b=fOj
	CewZb7TbKj9ALy0jLiCLj01DpC4SsPsgRBqIk7f1gjsjP+D6oiFey8D2+IMSglJbtSbnqfoMw7+pP
	1eKRQiZRIbcovBHz+Op95pX3PMJE6gg36R/ow3i5yRFiGonizGMhDTcmm+uuSC9grFZI+jBxS7cmd
	eXwFrTahDir3u/B4Zhp3jTiUekoS9G/39AeO+IB81+hBNlT0mOB7LIVgeJqrkzjmaaqJZo1XFfKMr
	3mPDp/dTpxJpl1Ec1DvCn7yCaoZX+g0ZHV2zu+yvZzI4y3sjjzD2YwY6cZyOFbZwQJQ6Zd3IEGScD
	Yy2THqJYyxUP9DDn/B4xZkHqHhDqaAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0s1f-0007jx-Fs; Thu, 22 Aug 2019 18:41:35 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0s1M-0007a1-0R
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 18:41:17 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1DB191A0327;
 Thu, 22 Aug 2019 20:41:13 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 11CDF1A011D;
 Thu, 22 Aug 2019 20:41:13 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id B1FF9205D9;
 Thu, 22 Aug 2019 20:41:12 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <fabio.estevam@nxp.com>
Subject: [PATCH] ARM: imx: Init anatop regmap in imx_init_revision_from_anatop
Date: Thu, 22 Aug 2019 21:41:10 +0300
Message-Id: <948c912b47f8658e52ab3d65d0ac2fa9f9a4241c.1566499152.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_114116_320999_2E3406B0 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Restore initialization of the global "anatop" regmap because it's used
from suspend/resume code.

While we're at it use regmap to read digprog as well

Fixes: c901cfe5ada0 ("ARM: imx: Drop imx_anatop_init()")
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

---
This should be squashed into c901cfe5ada0

 arch/arm/mach-imx/anatop.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/anatop.c b/arch/arm/mach-imx/anatop.c
index f2c9fe14198a..7f2246b44c53 100644
--- a/arch/arm/mach-imx/anatop.c
+++ b/arch/arm/mach-imx/anatop.c
@@ -93,25 +93,25 @@ void imx_anatop_post_resume(void)
 }
 
 void __init imx_init_revision_from_anatop(void)
 {
 	struct device_node *np;
-	void __iomem *anatop_base;
 	unsigned int revision;
 	u32 digprog;
 	u16 offset = ANADIG_DIGPROG;
 	u8 major_part, minor_part;
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,imx6q-anatop");
-	anatop_base = of_iomap(np, 0);
-	WARN_ON(!anatop_base);
+	WARN_ON(!np);
+	anatop = syscon_regmap_lookup_by_compatible("fsl,imx6q-anatop");
+	WARN_ON(!IS_ERR_OR_NULL(anatop));
+
 	if (of_device_is_compatible(np, "fsl,imx6sl-anatop"))
 		offset = ANADIG_DIGPROG_IMX6SL;
 	if (of_device_is_compatible(np, "fsl,imx7d-anatop"))
 		offset = ANADIG_DIGPROG_IMX7D;
-	digprog = readl_relaxed(anatop_base + offset);
-	iounmap(anatop_base);
+	regmap_read(anatop, offset, &digprog);
 
 	/*
 	 * On i.MX7D digprog value match linux version format, so
 	 * it needn't map again and we can use register value directly.
 	 */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
