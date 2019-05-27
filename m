Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BAE2B33C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 13:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7GvPcirmEPVQ5PAto6JaP95Q9FWfPX2T5XdDCC3FBo=; b=UoT9KnA5Srrgqm
	K3DqcE+KI1prm7ZoUr6l+xJyWU5RixaFiQjrkNZ1iluOhZ4tcvZ5Pl0PZMCSSZOE+FxHNFmQu7yFO
	MdZf6+xVfrRYYhgjdtMJKbVpne+mPWaOcltmilEEwzwBBdXR2XgKjdoojHy67e31F541yBwegG8W9
	HCoggmKp6WSsUayWtUekNzrnn2QC1i3ovFZg90VRwmTo/X8wfpiNqVFL0yoGqSLKuUdFpk1moBh0m
	0qcaSN+QLnyhfn2rPj09hpzgVasMI6ISBE25aVRPX3hF+chrx1A2p0M5Ez89sXnS/z8F6MdlMjBkG
	k1MyBJ6l9yTgjy0oXcog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVDnK-0007Hd-GO; Mon, 27 May 2019 11:27:58 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVDmr-0006ug-TS
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 11:27:33 +0000
Received: by mail-wr1-x441.google.com with SMTP id d9so16591250wrx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 04:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pKi5I0CJ2X5BwXo9XUNw8Vf2df15TmcuH8E+kJajjPM=;
 b=sim4f/+0M6hyPlAu9JEJF6ab6YBU9dpZnMdeKmnIMIkLoCJzRZqS+78KibKroDfuto
 ebgvxg/PCgDh69ige4loWXKOwSc4TIdOZ+0rnNqGW3yCwrr5TirBVl/NgllyRrTD1Zp+
 uq9dIjXKWfXQNWtEgrfb3Ac8vNOCgwRvrrIsMwGpQRXInQZm7lOQjJe8TvELVv7cYcGe
 eMdadgQ2HizkBWsIYuyqEbKxjaku7BBqZLqU9J71DXn1TU5NbNJ6fqggyLfXuwBB5qT0
 NQG0nhZEhUK+oQplf7r2ufho7xHk3Rkk4uBW2Xhp+YUaIuN2RJBWc7+zGmxFn5zfBdlj
 0sBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pKi5I0CJ2X5BwXo9XUNw8Vf2df15TmcuH8E+kJajjPM=;
 b=qmsw+/sroabBXTZVHo5cOnMWNgLrdzn2iD14uvc0b2kuLxvW5E0lYkp5/jeRUwprGJ
 wMqGDQERELB2doUIdMM/xDgdMxgG8hOwVHjILRmrycVnHgIArSdTQHpWeKPCF5OYMmaH
 axyVPDweNWhNtp7kXcGGSEfAMulsuq0CXAvp1cURhd9XAZCHPZZjZnFCZ1oYO52v7ZQ9
 pm/XHnkd86kTlJbMEAk+W/OcCpUYu4IJW+t8FlKCiaAcuCijna+XER5HC45T5Ap6/apg
 CmWgWFpHhVdn4HsGshXUvZXckNP9QQsqrxpZ0hdslI6tx6cG0ZcwxMFZ/nNtrNWNlRKA
 i/Sw==
X-Gm-Message-State: APjAAAUrjsF+urpqH+9zwD0y2oLd5HSpmvsQb4aL/WeolfF0cq7gd2BE
 S4IdrRJaBe5NYkhDhDUBEWY5gDPOsrTMbSbG
X-Google-Smtp-Source: APXvYqw8SpCd+M4jJyq7zUwyAoqTgJjIobKM8rD3YiFtd56bz9HkfCXw5eBbjkgOO1RpXxVXLBy4pQ==
X-Received: by 2002:adf:ef8d:: with SMTP id d13mr5588247wro.60.1558956448042; 
 Mon, 27 May 2019 04:27:28 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:ccdd:dadc:1517:f416])
 by smtp.gmail.com with ESMTPSA id l6sm9677747wmi.24.2019.05.27.04.27.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 04:27:27 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/4] irqchip/exiu: preparatory refactor for ACPI support
Date: Mon, 27 May 2019 13:27:18 +0200
Message-Id: <20190527112720.2266-3-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527112720.2266-1-ard.biesheuvel@linaro.org>
References: <20190527112720.2266-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_042730_120549_EC267415 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-gpio@vger.kernel.org, Masahisa Kojima <masahisa.kojima@linaro.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation of adding support for EXIU controller devices described
via ACPI, split the DT init function in a DT specific and a generic part,
where the latter will be reused for ACPI support later.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/irqchip/irq-sni-exiu.c | 66 +++++++++++++-------
 1 file changed, 43 insertions(+), 23 deletions(-)

diff --git a/drivers/irqchip/irq-sni-exiu.c b/drivers/irqchip/irq-sni-exiu.c
index 1927b2f36ff6..fef7c2437dfb 100644
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
@@ -167,35 +167,23 @@ static const struct irq_domain_ops exiu_domain_ops = {
 	.free		= irq_domain_free_irqs_common,
 };
 
-static int __init exiu_init(struct device_node *node,
-			    struct device_node *parent)
+static struct exiu_irq_data *exiu_init(const struct fwnode_handle *fwnode,
+				       struct resource *res)
 {
-	struct irq_domain *parent_domain, *domain;
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
@@ -205,11 +193,44 @@ static int __init exiu_init(struct device_node *node,
 	writel_relaxed(0xFFFFFFFF, data->base + EIREQCLR);
 	writel_relaxed(0xFFFFFFFF, data->base + EIMASK);
 
+	return data;
+
+out_free:
+	kfree(data);
+	return ERR_PTR(err);
+}
+
+static int __init exiu_dt_init(struct device_node *node,
+			       struct device_node *parent)
+{
+	struct irq_domain *parent_domain, *domain;
+	struct exiu_irq_data *data;
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
+	data = exiu_init(of_node_to_fwnode(node), &res);
+	if (IS_ERR(data))
+		return PTR_ERR(data);
+
 	domain = irq_domain_add_hierarchy(parent_domain, 0, NUM_IRQS, node,
 					  &exiu_domain_ops, data);
 	if (!domain) {
 		pr_err("%pOF: failed to allocate domain\n", node);
-		err = -ENOMEM;
 		goto out_unmap;
 	}
 
@@ -220,8 +241,7 @@ static int __init exiu_init(struct device_node *node,
 
 out_unmap:
 	iounmap(data->base);
-out_free:
 	kfree(data);
-	return err;
+	return -ENOMEM;
 }
-IRQCHIP_DECLARE(exiu, "socionext,synquacer-exiu", exiu_init);
+IRQCHIP_DECLARE(exiu, "socionext,synquacer-exiu", exiu_dt_init);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
