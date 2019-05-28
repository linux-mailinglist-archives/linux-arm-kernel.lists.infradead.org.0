Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E82E2C7E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gvr2Di6ZGAjoZHJPvN2Vgg8WU2Xnlm+n1hr2f9fYzOs=; b=Og36vPUOw9d+fY
	i2g3woSZAXSb28k6NJGbDgTfmv+MRxWadfyszcBlep2tZ7BMbB3uG5VOzeTK7C5Nnc0LDj2kYeK/+
	Y+YMcUruP9Yt2jWBqZHtPOtVAAi8QxtVLykLtdC4dN4ch00412Alh3iTYaK0FpNPzqgripzCsgmuK
	eMeTJmKyVJ5uyqSg6LZN9w9B8WUriNyYZRu3WvwBm81UXtfkqd8GdWNGM1NWaZW24TGZbY3/LXkOd
	pLtxxrggVpFe3eSCZzQM1yPkfvcr5+1SGFtmb71eOhdW4AaJkne0L6J1KLeKr3K6NtGN4xxvhFqvM
	z45jxyuoD79iNULCra7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVcIh-0000GF-8J; Tue, 28 May 2019 13:37:59 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVcHp-0007cN-6B
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:37:09 +0000
Received: by mail-wm1-x344.google.com with SMTP id v22so2907639wml.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 06:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bbidxiifh4zQbXF3+idClmgRZbbOXntRKLhQM+IruEA=;
 b=g9r4++eHwLh867+bZIoekdLRqjajwptL/liJwhVXgwhBPKGDq91Utht30DkTs2rLA8
 6XkZmrhQcku9bdDJTCKfx17EMKG6UICuzY5+k7bio0APavWFb1UXXUtuLP23415dIlJ5
 1/qnuMXVHlchnfPwtC4zFsD+ggvXQb4K49gfJ78eW6fOT59rbcBOhhFX8ApU8uOxMamh
 BBsA6HpW9Srs9QxHDkGywSvzGNL4W/T9PYNBhPl9B0otlG7uEaS1eNIOICTLyXVwZ1+j
 STdHEgUqufGyFsqmmYUwtRq+5AcF9kTkB+83hQpFzdP/ZS4VF9RRE0DEMTMpkXTkn+ab
 4/mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bbidxiifh4zQbXF3+idClmgRZbbOXntRKLhQM+IruEA=;
 b=UHXcVcn+dgPL/br/Q7ytX/6cDLbaOOIvQdeTBTHFHhKId419BNYaB4mlb975shs7eD
 Rb9TEuKRbbgMEHJ+zqEAgoqzRXqpJfWTgFfeIJFNRyJCfE/D4eCt5pYIOm8fAAW2JO5g
 hViGkePJjp7Cxh2LtivrvVMeFXeq/798fcF2PawsWm7YZrXg6+vvk7rxLJ5VEbd2ANKr
 +Qn+ge9K8zpWtx+uJ2qvC675VE3DPyqeFD/w+/qJfIUJ30buceS74Oc2buHBAfEReRuu
 NYCGomb8lWBe/pPVsKCcCE8q/nGdlhXERRlbzVEx5QejkXjBucHkAUVTntcARO0vjA/h
 rrqQ==
X-Gm-Message-State: APjAAAVi71sn2a/CZ8+J+9CZnRRLqQMZ/BuCaF1Ef6PrhzcA45nlYl8P
 9Nb48SYcwRdlfD70JEnCM8KUB/R9F4kAjw==
X-Google-Smtp-Source: APXvYqyI5qyGpNcVWlsS5O2+hF8OV81599UKPoaPWKuP93JFnxAM6YxqxifnXuT1dQl9Oboy3wZUSw==
X-Received: by 2002:a7b:cbd8:: with SMTP id n24mr3221074wmi.2.1559050621491;
 Tue, 28 May 2019 06:37:01 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:c8c7:f81b:b165:1aa7])
 by smtp.gmail.com with ESMTPSA id 95sm8652668wrk.70.2019.05.28.06.37.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 06:37:00 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 4/4] gpio: mb86s7x: enable ACPI support
Date: Tue, 28 May 2019 15:36:47 +0200
Message-Id: <20190528133647.3362-5-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528133647.3362-1-ard.biesheuvel@linaro.org>
References: <20190528133647.3362-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_063705_466190_34F917A1 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

Make the mb86s7x GPIO block discoverable via ACPI. In addition, add
support for ACPI GPIO interrupts routed via platform interrupts, by
wiring the two together via the to_irq() gpiochip callback.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/gpio/gpio-mb86s7x.c | 51 +++++++++++++++++---
 1 file changed, 44 insertions(+), 7 deletions(-)

diff --git a/drivers/gpio/gpio-mb86s7x.c b/drivers/gpio/gpio-mb86s7x.c
index 9308081e0a4a..64027f57a8aa 100644
--- a/drivers/gpio/gpio-mb86s7x.c
+++ b/drivers/gpio/gpio-mb86s7x.c
@@ -14,6 +14,7 @@
  *  GNU General Public License for more details.
  */
 
+#include <linux/acpi.h>
 #include <linux/io.h>
 #include <linux/init.h>
 #include <linux/clk.h>
@@ -27,6 +28,8 @@
 #include <linux/spinlock.h>
 #include <linux/slab.h>
 
+#include "gpiolib.h"
+
 /*
  * Only first 8bits of a register correspond to each pin,
  * so there are 4 registers for 32 pins.
@@ -143,6 +146,20 @@ static void mb86s70_gpio_set(struct gpio_chip *gc, unsigned gpio, int value)
 	spin_unlock_irqrestore(&gchip->lock, flags);
 }
 
+static int mb86s70_gpio_to_irq(struct gpio_chip *gc, unsigned int offset)
+{
+	int irq, index;
+
+	for (index = 0;; index++) {
+		irq = platform_get_irq(to_platform_device(gc->parent), index);
+		if (irq <= 0)
+			break;
+		if (irq_get_irq_data(irq)->hwirq == offset)
+			return irq;
+	}
+	return -EINVAL;
+}
+
 static int mb86s70_gpio_probe(struct platform_device *pdev)
 {
 	struct mb86s70_gpio_chip *gchip;
@@ -158,13 +175,15 @@ static int mb86s70_gpio_probe(struct platform_device *pdev)
 	if (IS_ERR(gchip->base))
 		return PTR_ERR(gchip->base);
 
-	gchip->clk = devm_clk_get(&pdev->dev, NULL);
-	if (IS_ERR(gchip->clk))
-		return PTR_ERR(gchip->clk);
+	if (!has_acpi_companion(&pdev->dev)) {
+		gchip->clk = devm_clk_get(&pdev->dev, NULL);
+		if (IS_ERR(gchip->clk))
+			return PTR_ERR(gchip->clk);
 
-	ret = clk_prepare_enable(gchip->clk);
-	if (ret)
-		return ret;
+		ret = clk_prepare_enable(gchip->clk);
+		if (ret)
+			return ret;
+	}
 
 	spin_lock_init(&gchip->lock);
 
@@ -180,19 +199,28 @@ static int mb86s70_gpio_probe(struct platform_device *pdev)
 	gchip->gc.parent = &pdev->dev;
 	gchip->gc.base = -1;
 
+	if (has_acpi_companion(&pdev->dev))
+		gchip->gc.to_irq = mb86s70_gpio_to_irq;
+
 	ret = gpiochip_add_data(&gchip->gc, gchip);
 	if (ret) {
 		dev_err(&pdev->dev, "couldn't register gpio driver\n");
 		clk_disable_unprepare(gchip->clk);
+		return ret;
 	}
 
-	return ret;
+	if (has_acpi_companion(&pdev->dev))
+		acpi_gpiochip_request_interrupts(&gchip->gc);
+
+	return 0;
 }
 
 static int mb86s70_gpio_remove(struct platform_device *pdev)
 {
 	struct mb86s70_gpio_chip *gchip = platform_get_drvdata(pdev);
 
+	if (has_acpi_companion(&pdev->dev))
+		acpi_gpiochip_free_interrupts(&gchip->gc);
 	gpiochip_remove(&gchip->gc);
 	clk_disable_unprepare(gchip->clk);
 
@@ -205,10 +233,19 @@ static const struct of_device_id mb86s70_gpio_dt_ids[] = {
 };
 MODULE_DEVICE_TABLE(of, mb86s70_gpio_dt_ids);
 
+#ifdef CONFIG_ACPI
+static const struct acpi_device_id mb86s70_gpio_acpi_ids[] = {
+	{ "SCX0007" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(acpi, mb86s70_gpio_acpi_ids);
+#endif
+
 static struct platform_driver mb86s70_gpio_driver = {
 	.driver = {
 		.name = "mb86s70-gpio",
 		.of_match_table = mb86s70_gpio_dt_ids,
+		.acpi_match_table = ACPI_PTR(mb86s70_gpio_acpi_ids),
 	},
 	.probe = mb86s70_gpio_probe,
 	.remove = mb86s70_gpio_remove,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
