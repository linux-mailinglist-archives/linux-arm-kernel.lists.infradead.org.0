Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9962C7E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7GvPcirmEPVQ5PAto6JaP95Q9FWfPX2T5XdDCC3FBo=; b=TjmioKmdqDbzR5
	UHwejh24XWx5BeNzI5WBBba1CmNql1Gk8Yyv6mwMIHi9Osr1teAGsn2BpN/RbA3+2S6iZXBK+CUOf
	XLhBl7zhgluGW32NNl4ZqeUzcIpNKTDtRWtS6NTTZor22HoFiPcr5ClcAKIm6doE8C5GJ81MS36do
	gFmqFNwnhca/ILIFvjUC6WwoF3yJytDGwg5pYwjC9s+TNDBt43O7O35r5qUdGu6oL5wT5dDQ/e4y9
	3p6Yz7w8joWLbBKAHsxM9j8tjpvEPC0yZl7INdkU5R/fO6/sCryHW7lzqfQcWTbBZ7VEpYU3XLmvY
	oxnuZIjHcuFoEyxTemXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVcIW-0008Sq-56; Tue, 28 May 2019 13:37:48 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVcHn-0007ab-78
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:37:09 +0000
Received: by mail-wr1-x444.google.com with SMTP id f8so20304131wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 06:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pKi5I0CJ2X5BwXo9XUNw8Vf2df15TmcuH8E+kJajjPM=;
 b=F8I9p3bL+LGHWYM0cDRoIfv/oll5sukRT/lGhl09pcWmcIIg4JN0g0+DsdYLJRi2bP
 yskq1Sp0jQ5h1tBlreOvMQ2S8ubx1qO7Rmr/FH7Yt4xkT8roE4MAlc1hqk7ak5TzxwXE
 tOhQye6SUer1FeoaD/NAdqeRYEleErUJj0NhkYvRmswuWizzRI0SpbwWHu+D0KaS+ate
 tII4sHG+2uvOvpLawOtJ3an3bKhVdBR1fs1BV/lvtEKVyVUQUPmUnsSrxD+1Us5Bqxpb
 Y1/0drDRdtcQq5eNKk7rC7S/uNcwwcBwpiV+i27LB2FbvGeygDTwCxh2VB4w8NNqmssC
 Htdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pKi5I0CJ2X5BwXo9XUNw8Vf2df15TmcuH8E+kJajjPM=;
 b=XWEZI+HihqtxRQhqI8aRF+SSvwBtumoA8N/GPTq8P8kUaAVOgQVuf8T/VI033OBiR4
 IthN/1LtgFlKgGJsRfuRDKJB1za5FfdbCX2wzkVW/YcLN3J3rSUb/gfBWdej9lqp2hOJ
 nVaP3rvbEamFOpxqRvGio9OuARKl/A70J3OwxBBJ/ToEZV9ok6s5f77pwDj5WOrUNt9R
 5911AsET9dqfal0kO3O+iyoDw/cgFfU06kJBg+//1RdFyq9uWlBCtbIiSBXxtzwYoyum
 727Qd7AR+W9EjnR6l1kKRaneMA1H9H+fd9XTDi50GBtQ94URTt0mX61lY4CM8oksBgFj
 +LSA==
X-Gm-Message-State: APjAAAU8LFJXU25G5ztnHAxwlzcOrw3KUUjyMVrqStNdDgIhGRu6HEVX
 /YmxCcF9mS22/hIm40fELtVbn8pqrfNMtw==
X-Google-Smtp-Source: APXvYqwmPaw/5aVvrO07/ESg5V589aa2lSQdjDvQNt6Rzy1gIbgYVlnIWjxvFRsuKAOtEehBHTjUOw==
X-Received: by 2002:adf:f00d:: with SMTP id j13mr5090883wro.178.1559050618688; 
 Tue, 28 May 2019 06:36:58 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:c8c7:f81b:b165:1aa7])
 by smtp.gmail.com with ESMTPSA id 95sm8652668wrk.70.2019.05.28.06.36.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 06:36:58 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/4] irqchip/exiu: preparatory refactor for ACPI support
Date: Tue, 28 May 2019 15:36:45 +0200
Message-Id: <20190528133647.3362-3-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528133647.3362-1-ard.biesheuvel@linaro.org>
References: <20190528133647.3362-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_063703_728476_F3B96269 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
