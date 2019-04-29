Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D0CE36E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 15:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yc6DngbGkMLTBzdJJBSLwXenie7nPVpexoo/rNvhm/Y=; b=O663qbUVJpVmzq
	GIMyJJSacgt9ktt8OoYBNZqyIqmsiPWRllOJKF98W6vjC17EReb6WVwb9aiZfy3rD9wtwl6lPXbtv
	LiVySqyPPru25be4qrWxp/YkgOIAdeMe/dPxqSJFDgu0/9dcqYNZQPI6QP4IVsSRY/Sy7R/q2PyNS
	9JPVSKxhFa3RvBGJ2316OMhzuTcndj5Iet/oROgTT1/lXBFwuEqcsGeo5uitq7JjlR+nZrXbxz7KH
	BqEq44CmP1+4MawSnxrpJU5mvEwS5MBKwkBOgZ2ekI7lMDRp/t++sR/G0XHVf75c02epVtbgC1x6N
	SYHgb5FCoC0f3WUEHDtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL65R-0004h6-0Z; Mon, 29 Apr 2019 13:12:49 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL64v-0004Fq-Qz
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 13:12:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id t17so15914735wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 06:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LflG0JOcbN8VcRqNOvuJxlldgCtsVbbH4h32KwiCqss=;
 b=ElwC/dqyvPGkd7e4295vczNFShOirzGuBqdcY0+km+H5WkenpoB7C4k4h9TYj6Ak1D
 RWL/xEmSkeCmKYBXiSL0WLzeOy4M7otJdu9ogPADkHyARgiuArqGpY5gkcYUAPOALtLF
 j6VaYECxgPkQmOv1TnNU4v9DH0UaSQ3ARXKhBWY5RPyBzw8spXWuksnol/xZWpe/sMn+
 +O5AeEc3sWJS/Syv+gDpLOBOrNFCRXRp9tHhKaAQE1SXfsZ5otjL985N0wwA3wxLpe3I
 wjlgFMNyQ7r7VcwTUecaBbDbq3NNFRivwhM/pUAfPSvl0tf+tpkQRCq/I+2ERcqGUPnt
 o71g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LflG0JOcbN8VcRqNOvuJxlldgCtsVbbH4h32KwiCqss=;
 b=MwUuBC1OQ1BTscXx5wx++05ZoaiZlA6SiKUd00KE36eyxEi9pYgXUsiJ/JEZ7sWRDI
 8/BL5EVyal7RUPznUOQXrQNif1Y522/dI2O/tuavT+syLCXnrn8SKnVprjJZqnjtAwGX
 3mKAT2D0jnWi+g2SIeMJq0bF5wMKMygfLpVL2sz+MiUL+Wry/TtBr2hpRto3lGRx4APc
 arX5yA4RDFzjezTGw3bFxkAjm8HAhfNCWUBPk0U7RqzE8MAqwtHgQ+IMvQCUZHlKCBwZ
 uBLh89bIOs9k8R1u5hfAiGPaGYaljlISmV0SgVRoU91SeYu+mIAdp5nGU/azch/aq5AE
 MJXA==
X-Gm-Message-State: APjAAAXB5CtZ2d7frw2zqSTtfhEAiQxGH1nDnJNShGpjfYOaqDSFVmk6
 JS8G1V9yzUAzw7/n+I/GaB7/MQ==
X-Google-Smtp-Source: APXvYqxZRciGKidEMatOjeaVtXcFEliHDCDCxz2u62O6w/9skVAzOgp9b9xr6SoZkrJE31gTiz9QpA==
X-Received: by 2002:a05:6000:12c1:: with SMTP id
 l1mr4895866wrx.152.1556543536105; 
 Mon, 29 Apr 2019 06:12:16 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:f9fc:88:6502:8fa7])
 by smtp.gmail.com with ESMTPSA id s16sm5410282wrg.71.2019.04.29.06.12.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 06:12:15 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-gpio@vger.kernel.org
Subject: [PATCH v2 2/4] irqchip/exiu: preparatory refactor for ACPI support
Date: Mon, 29 Apr 2019 15:12:06 +0200
Message-Id: <20190429131208.3620-3-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190429131208.3620-1-ard.biesheuvel@linaro.org>
References: <20190429131208.3620-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_061218_092345_0E949EDD 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Graeme Gregory <graeme.gregory@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 Masahisa Kojima <masahisa.kojima@linaro.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation of adding support for EXIU controller devices described
via ACPI, split the DT init function in a DT specific and a generic part,
where the latter will be reused for ACPI support later.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/irqchip/irq-sni-exiu.c | 77 ++++++++++++--------
 1 file changed, 48 insertions(+), 29 deletions(-)

diff --git a/drivers/irqchip/irq-sni-exiu.c b/drivers/irqchip/irq-sni-exiu.c
index 1927b2f36ff6..52ce662334d4 100644
--- a/drivers/irqchip/irq-sni-exiu.c
+++ b/drivers/irqchip/irq-sni-exiu.c
@@ -1,7 +1,7 @@
 /*
  * Driver for Socionext External Interrupt Unit (EXIU)
  *
- * Copyright (c) 2017 Linaro, Ltd. <ard.biesheuvel@linaro.org>
+ * Copyright (c) 2017-2019 Linaro, Ltd. <ard.biesheuvel@linaro.org>
  *
  * Based on irq-tegra.c:
  *   Copyright (C) 2011 Google, Inc.
@@ -167,35 +167,25 @@ static const struct irq_domain_ops exiu_domain_ops = {
 	.free		= irq_domain_free_irqs_common,
 };
 
-static int __init exiu_init(struct device_node *node,
-			    struct device_node *parent)
+static struct irq_domain *exiu_init(struct irq_domain *parent_domain,
+				    struct fwnode_handle *fwnode,
+				    struct resource *res)
 {
-	struct irq_domain *parent_domain, *domain;
+	struct irq_domain *domain;
 	struct exiu_irq_data *data;
 	int err;
 
-	if (!parent) {
-		pr_err("%pOF: no parent, giving up\n", node);
-		return -ENODEV;
-	}
-
-	parent_domain = irq_find_host(parent);
-	if (!parent_domain) {
-		pr_err("%pOF: unable to obtain parent domain\n", node);
-		return -ENXIO;
-	}
-
 	data = kzalloc(sizeof(*data), GFP_KERNEL);
 	if (!data)
-		return -ENOMEM;
+		return ERR_PTR(-ENOMEM);
 
-	if (of_property_read_u32(node, "socionext,spi-base", &data->spi_base)) {
-		pr_err("%pOF: failed to parse 'spi-base' property\n", node);
+	if (fwnode_property_read_u32_array(fwnode, "socionext,spi-base",
+					   &data->spi_base, 1)) {
 		err = -ENODEV;
 		goto out_free;
 	}
 
-	data->base = of_iomap(node, 0);
+	data->base = ioremap(res->start, resource_size(res));
 	if (!data->base) {
 		err = -ENODEV;
 		goto out_free;
@@ -205,23 +195,52 @@ static int __init exiu_init(struct device_node *node,
 	writel_relaxed(0xFFFFFFFF, data->base + EIREQCLR);
 	writel_relaxed(0xFFFFFFFF, data->base + EIMASK);
 
-	domain = irq_domain_add_hierarchy(parent_domain, 0, NUM_IRQS, node,
-					  &exiu_domain_ops, data);
+	domain = irq_domain_create_hierarchy(parent_domain, 0, NUM_IRQS,
+					     fwnode, &exiu_domain_ops, data);
 	if (!domain) {
-		pr_err("%pOF: failed to allocate domain\n", node);
 		err = -ENOMEM;
 		goto out_unmap;
 	}
+	return domain;
+out_unmap:
+	iounmap(data->base);
+out_free:
+	kfree(data);
+	return ERR_PTR(err);
+}
+
+static int __init exiu_dt_init(struct device_node *node,
+			       struct device_node *parent)
+{
+	struct irq_domain *parent_domain, *domain;
+	struct resource res;
+
+	if (!parent) {
+		pr_err("%pOF: no parent, giving up\n", node);
+		return -ENODEV;
+	}
+
+	parent_domain = irq_find_host(parent);
+	if (!parent_domain) {
+		pr_err("%pOF: unable to obtain parent domain\n", node);
+		return -ENXIO;
+	}
+
+	if (of_address_to_resource(node, 0, &res)) {
+		pr_err("%pOF: failed to parse memory resource\n", node);
+		return -ENXIO;
+	}
+
+	domain = exiu_init(parent_domain, of_node_to_fwnode(node), &res);
+	if (IS_ERR(domain)) {
+		pr_err("%pOF: failed to create IRQ domain (%ld)\n", node,
+		       PTR_ERR(domain));
+		return PTR_ERR(domain);
+	}
 
 	pr_info("%pOF: %d interrupts forwarded to %pOF\n", node, NUM_IRQS,
 		parent);
 
 	return 0;
-
-out_unmap:
-	iounmap(data->base);
-out_free:
-	kfree(data);
-	return err;
 }
-IRQCHIP_DECLARE(exiu, "socionext,synquacer-exiu", exiu_init);
+IRQCHIP_DECLARE(exiu, "socionext,synquacer-exiu", exiu_dt_init);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
