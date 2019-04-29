Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C622E370
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 15:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvtQlLmjIYZfMKlkn23TEUGRKNF2bpvR84aGJlhWhaI=; b=gyvxYEDR76hTr3
	Q35wF8YXgePhecpsw8PGPEZtCgGTuWKtKXj0MAwf+uJFm2eavUi9EIp8F8LgREl2abTfPtgnusib+
	d1jnUYEKrpg6XCmViTFfqW8QwuMOZjf+L9fLtEoT4kEkojhgMT0n/0xrCioK2gPdBroamhNmi3s8f
	k1YxIb8BvYVRAaKhcne9T3Tg5je7Jha1XNz2mOPugFQPfGQu5v2uDQqdYS6ZwVRDVT4mnb0WOKuc7
	411KAVfYNfVbZTdnNqxXac+GkiI7sxEzZmPvBYxLJW5ri8AB7wCrrhOwDpfKTiu1PuH/SK+5kyZ+v
	Gl5TuI2arAOyIry/qF0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL65l-00059M-LP; Mon, 29 Apr 2019 13:13:09 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL64y-0004Jy-T9
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 13:12:26 +0000
Received: by mail-wm1-x343.google.com with SMTP id b10so672661wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 06:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EWtkEswA/ppJKsau0ucZOXQ0FjybdP/7oMBp2mQhOUw=;
 b=avQNkrkDuUX/SIDLB2Sk61f/7WpPyXBxDA6gZqFxCDXCdzxT6U+W+gX9DxRmUClSwO
 sFUfh3j/XDAXHED0K0TkLdlz5zpmUr+MQtD4d73Q7NmxxUGAGPzu6wmYbItwxaELDhGI
 OChUm+KddPrwSKDBRDn2jP9Cmz8sMGNiRrM7TwxiRFa698s7flVazpEeC+9soz5p6eQZ
 VPyCTtMGWyHurppOIuI6fVfW5s3dN63XNlBUbJ+CBR2eLVlMDI8qaGUBJDPICuQyb9xf
 fwqFaWw4548vRi704SVGxALKRQtt5TRkeXVzVc98B2g7s3MjZ9Cm3eMWQ8nlT+5+uYil
 TRcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EWtkEswA/ppJKsau0ucZOXQ0FjybdP/7oMBp2mQhOUw=;
 b=aWtvPTvzij6KZSg50HvcT8+oUb2RhmIXf4KrrEwpaz45UdPnT6DJ8Buov/XL+ZvULu
 gsvvDRBJFupxtIes8l0rBYxDOj/Qp645CDhTEf8EtK32g3PlEuhRDE3i+G7zZIKN/JzH
 2+d6mHbdWp5fO5r4azXw9EDQuOgLuWmxGmxMlvlCTIHon0JOS4zaCBHOTJrXxsIEgzJy
 Fe8OFmqCsOJ9oqUvFZzSFrjbgsGJC+V75sbV7PIcKaJo12JnSoKiXtAJ+xYdtCf3/bTV
 b9tvvRkXu50gfQnAIu9ivH7CnKrcKF4NB7aZIRsXcrE54E8p091dhJFQT5nWptDXzwcx
 KPkg==
X-Gm-Message-State: APjAAAVky65zQWdpijngK1pS7iAoywNJWftw9jPMIQBTxJzhuHWpEjUB
 su3KlU2zbFbCjzacWjPuzkvW0Q==
X-Google-Smtp-Source: APXvYqxXPvbmkZ/JeMcYsFo0xhtMoTpufPAZlIYKJ5y98iS14sch/g7gCjShBgCuduCIqa37iD48fQ==
X-Received: by 2002:a1c:2d0e:: with SMTP id t14mr17354279wmt.33.1556543539028; 
 Mon, 29 Apr 2019 06:12:19 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:f9fc:88:6502:8fa7])
 by smtp.gmail.com with ESMTPSA id s16sm5410282wrg.71.2019.04.29.06.12.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 06:12:18 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-gpio@vger.kernel.org
Subject: [PATCH v2 4/4] gpio: mb86s7x: enable ACPI support
Date: Mon, 29 Apr 2019 15:12:08 +0200
Message-Id: <20190429131208.3620-5-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190429131208.3620-1-ard.biesheuvel@linaro.org>
References: <20190429131208.3620-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_061221_544294_90F09DB5 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

Make the mb86s7x GPIO block discoverable via ACPI. In addition, add
support for ACPI GPIO interrupts routed via platform interrupts, by
wiring the two together via the to_irq() gpiochip callback.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/gpio/gpio-mb86s7x.c | 57 ++++++++++++++++----
 1 file changed, 48 insertions(+), 9 deletions(-)

diff --git a/drivers/gpio/gpio-mb86s7x.c b/drivers/gpio/gpio-mb86s7x.c
index 3134c0d2bfe4..61ad95c3e3d2 100644
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
@@ -160,13 +177,15 @@ static int mb86s70_gpio_probe(struct platform_device *pdev)
 	if (IS_ERR(gchip->base))
 		return PTR_ERR(gchip->base);
 
-	gchip->clk = devm_clk_get(&pdev->dev, NULL);
-	if (IS_ERR(gchip->clk))
-		return PTR_ERR(gchip->clk);
+	if (!ACPI_COMPANION(&pdev->dev)) {
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
 
@@ -182,21 +201,32 @@ static int mb86s70_gpio_probe(struct platform_device *pdev)
 	gchip->gc.parent = &pdev->dev;
 	gchip->gc.base = -1;
 
+	if (ACPI_COMPANION(&pdev->dev))
+		gchip->gc.to_irq = mb86s70_gpio_to_irq;
+
 	ret = gpiochip_add_data(&gchip->gc, gchip);
 	if (ret) {
 		dev_err(&pdev->dev, "couldn't register gpio driver\n");
-		clk_disable_unprepare(gchip->clk);
+		if (gchip->clk)
+			clk_disable_unprepare(gchip->clk);
+		return ret;
 	}
 
-	return ret;
+	if (ACPI_COMPANION(&pdev->dev))
+		acpi_gpiochip_request_interrupts(&gchip->gc);
+
+	return 0;
 }
 
 static int mb86s70_gpio_remove(struct platform_device *pdev)
 {
 	struct mb86s70_gpio_chip *gchip = platform_get_drvdata(pdev);
 
+	if (ACPI_COMPANION(&pdev->dev))
+		acpi_gpiochip_free_interrupts(&gchip->gc);
 	gpiochip_remove(&gchip->gc);
-	clk_disable_unprepare(gchip->clk);
+	if (gchip->clk)
+		clk_disable_unprepare(gchip->clk);
 
 	return 0;
 }
@@ -207,10 +237,19 @@ static const struct of_device_id mb86s70_gpio_dt_ids[] = {
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
