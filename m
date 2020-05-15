Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AD71D44FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 06:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dZWlRZ+DmcthNulfSzr9cqsYLYhNrcOPF8H90uFJ2co=; b=BHdi2SXTB8aIoAdy7G+4G9A4s9
	6G1dW9JnblJ8SuhkONVoqbY1xuFIVM8KO+NSEgBM37T1Q6MHQLFMuefBZu6ydd5V/kBrdgY8OcWB9
	cBPKx9YbDLWF0y3Os9IKpHzsQAxa00yVIWPqFfVO0uA3fMNPqeiOyRGfkAzOEIizymRoKpb3oA+dD
	gW/yY3i2zZglLFBfxvuSyqJue9qOLYigY4/HxaN2rHjala7Sw2G+iHpH/sXXnN1fiQiYCstEZ5rkN
	et21DR1bhL/5gNYz3jz7Y1IHR0JwLDcf+Yqol2aCbmfCvhQKCs1gBqr5PUpDg0q51CIArlV3AaQqC
	1eDGfe7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZSIA-0000we-6O; Fri, 15 May 2020 04:49:50 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZSH0-0008Mm-P7
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 04:48:40 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 15 May 2020 13:48:37 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id EA46F60057;
 Fri, 15 May 2020 13:48:37 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 15 May 2020 13:48:37 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 6FF851A0E67;
 Fri, 15 May 2020 13:48:37 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Rob Herring <robh+dt@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH 4/5] PCI: uniphier: Add iATU register support
Date: Fri, 15 May 2020 13:48:24 +0900
Message-Id: <1589518105-18368-5-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589518105-18368-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1589518105-18368-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_214838_962152_D8B0E4FD 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This gets iATU register area from reg property. In Synopsis DWC version
4.80 or later, since iATU register area is separated from core register
area, this area is necessary to get from DT independently.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/pci/controller/dwc/pcie-uniphier.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-uniphier.c b/drivers/pci/controller/dwc/pcie-uniphier.c
index 508fc7b..6180d50 100644
--- a/drivers/pci/controller/dwc/pcie-uniphier.c
+++ b/drivers/pci/controller/dwc/pcie-uniphier.c
@@ -461,6 +461,11 @@ static int uniphier_pcie_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->pci.dbi_base))
 		return PTR_ERR(priv->pci.dbi_base);
 
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "atu");
+	priv->pci.atu_base = devm_pci_remap_cfg_resource(dev, res);
+	if (IS_ERR(priv->pci.atu_base))
+		priv->pci.atu_base = NULL;
+
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "link");
 	priv->base = devm_ioremap_resource(dev, res);
 	if (IS_ERR(priv->base))
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
