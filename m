Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E0AF26B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 05:59:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DDEm5IrwGgYMUSbKm31D87AKQG54fNxNE6gO+1D0cO4=; b=DyL
	1XGE6Z81Txabrp1Qm2mVnXznIMFEDqmiiHeAX2BOi+ayac50Fuqll7UQ62Em5bxZC60zIUrNMcd24
	j1Ngdu8T9Rcw1Z6lFLrgLKJLIp/anAkpjcb0IUTIAuOIlEBNSZu4tDdFUKIvn1I08HIMrVHAMRxqF
	Cq41KYSN0oBymJnGGngsTDtdDpZjyrUNp4EtbYXqpwlKlaSYaU0LTJE0jnzXE0xuJCwfY2v034/8s
	Bcc+UHetatyC3/J+qoMHEES7Z4t8nf5NYtJZfNxMrzqWV525NDCzzFbuQoIVUB+aj71TgdcGdb/lZ
	gShDXwiLLiTZHWkk4SaqVLrOgYcswQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSZt6-0001YS-6p; Thu, 07 Nov 2019 04:59:16 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSZsx-0001XG-De
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 04:59:08 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 07 Nov 2019 13:59:04 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 6CFD8605F8;
 Thu,  7 Nov 2019 13:59:04 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Thu, 7 Nov 2019 13:59:11 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id EC4601A0E9F;
 Thu,  7 Nov 2019 13:59:03 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH 1/2] PCI: uniphier: Set mode register to host mode
Date: Thu,  7 Nov 2019 13:58:14 +0900
Message-Id: <1573102695-7018-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_205907_583109_A1D5EB1E 
X-CRM114-Status: GOOD (  12.07  )
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

In order to avoid effect of the initial mode depending on SoCs,
this patch sets the mode register to host(RC) mode.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/pci/controller/dwc/pcie-uniphier.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-uniphier.c b/drivers/pci/controller/dwc/pcie-uniphier.c
index 3f30ee4..8fd7bad 100644
--- a/drivers/pci/controller/dwc/pcie-uniphier.c
+++ b/drivers/pci/controller/dwc/pcie-uniphier.c
@@ -33,6 +33,10 @@
 #define PCL_PIPEMON			0x0044
 #define PCL_PCLK_ALIVE			BIT(15)
 
+#define PCL_MODE			0x8000
+#define PCL_MODE_REGEN			BIT(8)
+#define PCL_MODE_REGVAL			BIT(0)
+
 #define PCL_APP_READY_CTRL		0x8008
 #define PCL_APP_LTSSM_ENABLE		BIT(0)
 
@@ -85,6 +89,12 @@ static void uniphier_pcie_init_rc(struct uniphier_pcie_priv *priv)
 {
 	u32 val;
 
+	/* set RC MODE */
+	val = readl(priv->base + PCL_MODE);
+	val |= PCL_MODE_REGEN;
+	val &= ~PCL_MODE_REGVAL;
+	writel(val, priv->base + PCL_MODE);
+
 	/* use auxiliary power detection */
 	val = readl(priv->base + PCL_APP_PM0);
 	val |= PCL_SYS_AUX_PWR_DET;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
