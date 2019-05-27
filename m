Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D32B22B33D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 13:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5R00WQ6ZLeET/idphi/N+zbMP9VrBdPMgMl1nK9SGJI=; b=CoCfqua3N6n5pp
	z+RWsBFeGcvzemD8OS6nNHm41JadHWns5OhLdWtL63Nh1nqgLqrmk7RtULyG3WGHbh3KHVmApUKGX
	yx1hyDBso9r8kOG03l7PsVXifvWXVmLVdRAgQU7eEiiB16u4289u00JvyKAEp7Ttnu6T9AjZD2FjG
	3rNMtYxIdKDKm1lbCV8FrSx0s0i01FXmI3pmws3g1GJrImP/ZWO6ELgl4LepIxaqNUDV2JBCN8/jq
	rTX3JrSpFNgMQe6/uYVlOY6U7NSMLc8gDyguXj1QW8pyizNt746JBEv6YhtKycBKOpWZ7aTerWoLE
	JAysUwQMgv1zhiOUD6Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVDnU-0007VO-Tr; Mon, 27 May 2019 11:28:08 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVDms-0006vN-R8
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 11:27:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id c2so1372432wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 04:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9EPMw9ZDt6r9OnVuoXUM9uuIE5EfX0cbi1r9IY8+97M=;
 b=QwirmDGBiji1JuzbW6wei+YUkJRNV7UyseHQtII77EPKytrbdGHXVZVF5OqKoqqXR8
 FcunUebz7zm7cad7SWqWjao8rKXcRbRL7lLb0YymFhJBvdwHRuEz6MNcp3/sFDchwtdX
 b3hzKBrBeeqH1cSC39RhONf4Jo+xAIJXEnDVVuE/W6Vmjnm2NISvQ2K04Yk1uws/O/CA
 a9MYK4Rvj2o/EYDvY/Usu2nn7U7SjpMVON931OxVcB1kfM/Zrt08+liOEFb3qPupgU7X
 0HuIbbM4c08DaOq09GcdTASL6t1b8uoVK7uYJcTA3lDW4e9cG2M/y2iNDXNY4Sgq8mCs
 G5Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9EPMw9ZDt6r9OnVuoXUM9uuIE5EfX0cbi1r9IY8+97M=;
 b=TxSMqnGKLLNC1fXleQgsQhA+mOJz3O2emoCGi9xH8LEzGwINVag+s00BK2n7T5XQNh
 mH74AOJncI3e40Yfg4SUfZJjtoIZB/0V2UeMRKJFvA6CbXWmQjguUfT1dkrXB6fNf7mD
 P6OYPIbHu3E2zM0E7hHGqECW+xYFMK21MpotZncYw8/d9kAGdubja4jQQj4b8EZRDOeq
 U90xI74yyyVLLFvswbjmXnSOlb89rXiXAp+Loe/uaMiM/uFtKq6vH1tvdfOx6Zc+qbu/
 ONYo2WJw2LzZ4/m7sGp1wpEyOmnBH70oM0AjWz3phnezWkvUJhDRC1bWQQyrUcxhEMFV
 wo7w==
X-Gm-Message-State: APjAAAUvgOxggL5mGi5susMiZur7gFEeIaiXGETVlH/Szq/2lfVkgBed
 qa83h+g+7P/VkHm6307LP2ihohUL330RFKqj
X-Google-Smtp-Source: APXvYqzTfClU/CiJaI98gbBQk9qFq+qk2vEqBO1yGu7b5coS9RX+IzQBWrCPVrrfSDCMo91F/Ygomg==
X-Received: by 2002:a5d:6807:: with SMTP id w7mr7222991wru.336.1558956449254; 
 Mon, 27 May 2019 04:27:29 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:ccdd:dadc:1517:f416])
 by smtp.gmail.com with ESMTPSA id l6sm9677747wmi.24.2019.05.27.04.27.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 04:27:28 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/4] irqchip/exiu: implement ACPI support
Date: Mon, 27 May 2019 13:27:19 +0200
Message-Id: <20190527112720.2266-4-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527112720.2266-1-ard.biesheuvel@linaro.org>
References: <20190527112720.2266-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_042731_096932_A863DC3A 
X-CRM114-Status: GOOD (  17.21  )
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

Expose the existing EXIU hierarchical irqchip domain code to permit
the interrupt controller to be used as the irqchip component of a
GPIO controller on ACPI systems, or as the target of ordinary
interrupt resources.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/irqchip/irq-sni-exiu.c | 76 +++++++++++++++++---
 1 file changed, 68 insertions(+), 8 deletions(-)

diff --git a/drivers/irqchip/irq-sni-exiu.c b/drivers/irqchip/irq-sni-exiu.c
index fef7c2437dfb..30a323a2b332 100644
--- a/drivers/irqchip/irq-sni-exiu.c
+++ b/drivers/irqchip/irq-sni-exiu.c
@@ -20,6 +20,7 @@
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/of_irq.h>
+#include <linux/platform_device.h>
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 
@@ -134,9 +135,13 @@ static int exiu_domain_translate(struct irq_domain *domain,
 
 		*hwirq = fwspec->param[1] - info->spi_base;
 		*type = fwspec->param[2] & IRQ_TYPE_SENSE_MASK;
-		return 0;
+	} else {
+		if (fwspec->param_count != 2)
+			return -EINVAL;
+		*hwirq = fwspec->param[0];
+		*type = fwspec->param[2] & IRQ_TYPE_SENSE_MASK;
 	}
-	return -EINVAL;
+	return 0;
 }
 
 static int exiu_domain_alloc(struct irq_domain *dom, unsigned int virq,
@@ -147,16 +152,21 @@ static int exiu_domain_alloc(struct irq_domain *dom, unsigned int virq,
 	struct exiu_irq_data *info = dom->host_data;
 	irq_hw_number_t hwirq;
 
-	if (fwspec->param_count != 3)
-		return -EINVAL;	/* Not GIC compliant */
-	if (fwspec->param[0] != GIC_SPI)
-		return -EINVAL;	/* No PPI should point to this domain */
+	parent_fwspec = *fwspec;
+	if (is_of_node(dom->parent->fwnode)) {
+		if (fwspec->param_count != 3)
+			return -EINVAL;	/* Not GIC compliant */
+		if (fwspec->param[0] != GIC_SPI)
+			return -EINVAL;	/* No PPI should point to this domain */
 
+		hwirq = fwspec->param[1] - info->spi_base;
+	} else {
+		hwirq = fwspec->param[0];
+		parent_fwspec.param[0] = hwirq + info->spi_base + 32;
+	}
 	WARN_ON(nr_irqs != 1);
-	hwirq = fwspec->param[1] - info->spi_base;
 	irq_domain_set_hwirq_and_chip(dom, virq, hwirq, &exiu_irq_chip, info);
 
-	parent_fwspec = *fwspec;
 	parent_fwspec.fwnode = dom->parent->fwnode;
 	return irq_domain_alloc_irqs_parent(dom, virq, nr_irqs, &parent_fwspec);
 }
@@ -245,3 +255,53 @@ static int __init exiu_dt_init(struct device_node *node,
 	return -ENOMEM;
 }
 IRQCHIP_DECLARE(exiu, "socionext,synquacer-exiu", exiu_dt_init);
+
+#ifdef CONFIG_ACPI
+static int exiu_acpi_probe(struct platform_device *pdev)
+{
+	struct irq_domain *domain;
+	struct exiu_irq_data *data;
+	struct resource *res;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res) {
+		dev_err(&pdev->dev, "failed to parse memory resource\n");
+		return -ENXIO;
+	}
+
+	data = exiu_init(dev_fwnode(&pdev->dev), res);
+	if (IS_ERR(data))
+		return PTR_ERR(data);
+
+	domain = acpi_irq_create_hierarchy(0, NUM_IRQS, dev_fwnode(&pdev->dev),
+					   &exiu_domain_ops, data);
+	if (!domain) {
+		dev_err(&pdev->dev, "failed to create IRQ domain\n");
+		goto out_unmap;
+	}
+
+	dev_info(&pdev->dev, "%d interrupts forwarded\n", NUM_IRQS);
+
+	return 0;
+
+out_unmap:
+	iounmap(data->base);
+	kfree(data);
+	return -ENOMEM;
+}
+
+static const struct acpi_device_id exiu_acpi_ids[] = {
+	{ "SCX0008" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(acpi, exiu_acpi_ids);
+
+static struct platform_driver exiu_driver = {
+	.driver = {
+		.name = "exiu",
+		.acpi_match_table = exiu_acpi_ids,
+	},
+	.probe = exiu_acpi_probe,
+};
+builtin_platform_driver(exiu_driver);
+#endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
