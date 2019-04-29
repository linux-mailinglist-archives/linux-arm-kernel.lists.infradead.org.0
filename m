Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD77E36F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 15:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8D2BPMPfyurx8voX4rloQp9zj84wE6+DcosB/90XMw=; b=FQKGDB2CzhmjpM
	m5d8Sex98OP2ZrGBPpcs+6Qp7QygokPN0AUV3ibVvfEikYITb82ahimbbLZgTV2VFNEv8BzRybz2h
	JBsAAVuKWR+WOhHP88PSgHm/aVnWjLW83p0PqswBo/ow0D6Xl5DbDAiRygjsYtnpXp2FY0Abl0pD9
	T7k5X+Q9DUo7UuQI50zWNw8OzieYJB4iRm+i8v8QEI0DuBjwh12FyQxDE96xhpgoHrrv2PElFatky
	f5zY8+1dM20kbKQzk3bHDsbkHn9bi8jtAxEDuq7i2Py1TjlBnEn2YlgkfaznDS+ASceYmaMYzUOfk
	d0L2G5/Mj8536KxQ2VEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL65b-0004vk-Le; Mon, 29 Apr 2019 13:12:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL64w-0004HZ-Tb
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 13:12:23 +0000
Received: by mail-wr1-x444.google.com with SMTP id s18so16048740wrp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 06:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aF6l04CaNOxatTezE3P0EG9tcSof6ocX8T/Hj4rb3rU=;
 b=y0PxrwNPQ79uhV6F0ybWo2y4mgV33xEuUKcozXD+KpG6GxZrXk1fuDWAPysrJQZHyI
 CD8sIHT+o/3j5xs34dVnc22/2G3BezaxpH644dAfpu8PSvn+f8mRbk8EZG5BJx/a/NCS
 gOzxfhBaH3/PD35lPKdTkOvKtvYYw3z6wzIu6QPI75/aeXJZ9Q0FJqs/C6gHjhwoUzHB
 AcvmR0t4UzCwwbJueeInjlaTCj9Xn0QPipqK9Pbd9A4EZ3gXNHIW5Y/Ahh/ibqpGw88w
 67TDidPn6WnHOnBDH09QWbfmhKYTyGj13+c3zwLEnFiuEp6GuE2kF3VaeSO7Wgo26XyA
 LOPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aF6l04CaNOxatTezE3P0EG9tcSof6ocX8T/Hj4rb3rU=;
 b=qEIywTY/WxmcwLoCLbycteCdT8SAli9cMNAxAYOtiVFtyB+xIrRAY4yndsvck6psZO
 uIwhBpcoAM5qxSLtT1IRT78+dhUwxJTOcRqJS7Y/hoXt8/jHPdTd4jUR4itktWZePQmE
 8teoZrNUUYXVwExox/1mGw1KnQlSumjZqqIAlNX9SjMb6rvV/uXiKn52Z2U7mMYTj1Cj
 Bsj6wZzhle9s8BcjFxvpBAtttIzeQgcyLc5V1cm6CmzSmlcB7bimx/FLI6ij9NpBE21D
 JBzSZ9YAj3Gr6RhA9Td4VVHsbnpVAIsItQvAOxAXMjP3BeHv4yebWQyFYb8W+OchRHBm
 IZOQ==
X-Gm-Message-State: APjAAAW+IvXvTNPVUlWNwp32dM/6XZdBA/oKgd+CVU3AVBG8kdAUT25e
 I+GjcVHuYeD+ZGv6aRrWrbtzPw==
X-Google-Smtp-Source: APXvYqwm4uRJsb3P36w5LULvD/Wn35rUh1BGa5lbrfB3weTyaSZxvO0cs+MLwkR6J4CcGNGyALNITA==
X-Received: by 2002:a5d:674f:: with SMTP id l15mr16932208wrw.41.1556543537573; 
 Mon, 29 Apr 2019 06:12:17 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:f9fc:88:6502:8fa7])
 by smtp.gmail.com with ESMTPSA id s16sm5410282wrg.71.2019.04.29.06.12.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 06:12:16 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-gpio@vger.kernel.org
Subject: [PATCH v2 3/4] irqchip/exiu: implement ACPI support
Date: Mon, 29 Apr 2019 15:12:07 +0200
Message-Id: <20190429131208.3620-4-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190429131208.3620-1-ard.biesheuvel@linaro.org>
References: <20190429131208.3620-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_061219_250987_D67F57A3 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Expose the existing EXIU hierarchical irqchip domain code to permit
the interrupt controller to be used as the irqchip component of a
GPIO controller on ACPI systems, or as the target of ordinary
interrupt resources.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/irqchip/irq-sni-exiu.c | 72 +++++++++++++++++---
 1 file changed, 64 insertions(+), 8 deletions(-)

diff --git a/drivers/irqchip/irq-sni-exiu.c b/drivers/irqchip/irq-sni-exiu.c
index 52ce662334d4..68394f804af1 100644
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
@@ -244,3 +254,49 @@ static int __init exiu_dt_init(struct device_node *node,
 	return 0;
 }
 IRQCHIP_DECLARE(exiu, "socionext,synquacer-exiu", exiu_dt_init);
+
+#ifdef CONFIG_ACPI
+static int exiu_acpi_probe(struct platform_device *pdev)
+{
+	struct irq_domain *parent_domain, *domain;
+	struct resource *res;
+
+	parent_domain = acpi_get_gsi_irqdomain();
+	if (!parent_domain) {
+		dev_err(&pdev->dev, "unable to obtain parent domain\n");
+		return -ENODEV;
+	}
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res) {
+		dev_err(&pdev->dev, "failed to parse memory resource\n");
+		return -ENXIO;
+	}
+
+	domain = exiu_init(parent_domain, dev_fwnode(&pdev->dev), res);
+	if (IS_ERR(domain)) {
+		dev_err(&pdev->dev, "failed to create IRQ domain (%ld)\n",
+			PTR_ERR(domain));
+		return PTR_ERR(domain);
+	}
+
+	dev_info(&pdev->dev, "%d interrupts forwarded\n", NUM_IRQS);
+
+	return 0;
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
