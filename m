Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76393F26B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 05:59:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fhzoF9hR49O2iS0oprBA5ViE3DNezWNVw6eIaugZ/vo=; b=NYZ/F9OlvttPZ2k8FXgfa/Fu9O
	4Rk/8VQcURDWVoNu1OyU1YZYfYBFQAEuVvu4Wp4awezXKB47Bpip0ntcS6qd8SMAcCrOp02cdSX8H
	Cf1oO3UajhoYLkgwo34FX0b9aQs96EghCl2Y8hHhO3QAybAcL5P/ICCW0AiqneDSicZbd70dLrLR1
	6I1qhWIJ4JaEcOrRPQ3pbQ2JGIfFWi3vSihuSLkqjQ1ee95AE5XhJ9ijEnIDDy1bNyBMz9FM0YRPj
	6B/BoJ1Kw+s1OQI/lYO4FK8vD9DvMxnU/qcO+N/9wLpqEuG2Mgs04RUDUuBRX554smYvC9zRHj+nn
	0iJL0GEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSZtK-0001fe-3b; Thu, 07 Nov 2019 04:59:30 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSZsx-0001XK-Rl
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 04:59:09 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 07 Nov 2019 13:59:06 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id B9291605F8;
 Thu,  7 Nov 2019 13:59:06 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Thu, 7 Nov 2019 13:59:16 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 7DCE31A0E9F;
 Thu,  7 Nov 2019 13:59:06 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH 2/2] PCI: uniphier: Add checking whether PERST# is deasserted
Date: Thu,  7 Nov 2019 13:58:15 +0900
Message-Id: <1573102695-7018-2-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573102695-7018-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1573102695-7018-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_205908_008258_A80C1A8E 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When PERST# is asserted once, EP configuration will be initialized.
If PERST# has been already deasserted, it isn't necessary to assert
here.

This checks whether PERST# is deasserted using PCL_PINMON register,
and adds omit controlling PERST#.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/pci/controller/dwc/pcie-uniphier.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-uniphier.c b/drivers/pci/controller/dwc/pcie-uniphier.c
index 8fd7bad..1ea4220 100644
--- a/drivers/pci/controller/dwc/pcie-uniphier.c
+++ b/drivers/pci/controller/dwc/pcie-uniphier.c
@@ -22,6 +22,9 @@
 
 #include "pcie-designware.h"
 
+#define PCL_PINMON			0x0028
+#define PCL_PINMON_PERST_OUT		BIT(16)
+
 #define PCL_PINCTRL0			0x002c
 #define PCL_PERST_PLDN_REGEN		BIT(12)
 #define PCL_PERST_NOE_REGEN		BIT(11)
@@ -100,6 +103,11 @@ static void uniphier_pcie_init_rc(struct uniphier_pcie_priv *priv)
 	val |= PCL_SYS_AUX_PWR_DET;
 	writel(val, priv->base + PCL_APP_PM0);
 
+	/* return if PERST# is already deasserted */
+	val = readl(priv->base + PCL_PINMON);
+	if (val & PCL_PINMON_PERST_OUT)
+		return;
+
 	/* assert PERST# */
 	val = readl(priv->base + PCL_PINCTRL0);
 	val &= ~(PCL_PERST_NOE_REGVAL | PCL_PERST_OUT_REGVAL
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
