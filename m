Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 368CE2B33F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 13:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5fVbUrZxwMKN80PxpHu+ZeaXNByCseyUZwj8VVta1tc=; b=Wd1Vxh32vzQnDI
	x2ysIo8r7dYdAjs71AV0Ye03kGSEoTDGmRwb+thm85lyGqnaFVBNiWSWxv1B9r/Y+2K/oN5DVBEE0
	6P7LOuiT3eZPBETMuMo6MjYS85KURFe8XpOuSW57AaoDuC+oLlq2wF8swnIxByIR27KHmg3/rZ9JL
	DQ/amMRGuWcutmIhHzW/OIYhS0lhxd2jMhz/o/DLUCUKzU9Xb5McQIF0DT4lLVDyuSWN3ZIF74g6F
	EZMVjI500TPCGwPQwYMWtsJoiuCKRxkI9hX+w0ZMlKGGYxPwzmwq4hXJ+jgTLTl+cC7bXPrmsabm/
	63uMhKBj/9tXpXtSAbpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVDng-0007jn-Iv; Mon, 27 May 2019 11:28:20 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVDmu-0006wy-It
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 11:27:37 +0000
Received: by mail-wr1-x444.google.com with SMTP id r7so16554025wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 04:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e9zX2z3pSYijNeNpg5u5hKyLCBvOSleyi01zr0ij8D4=;
 b=o+5ppKL9dNkBIcyZZcUftTzeWppQdogCl1qYHsBuVV/XyuGMt/AlB5fOZri5jHhd34
 qFz6Ux0nSgvLtFsGO9gPPLnZtwzPJi02TaZfT7BetkEDPrm24fJgBtnk7Q/rU/IPwrms
 NWJHi8PAibeQnNHhruEHAONTPvPr3xwJIZmNYnoBoAzc045kPA3Y/Uoa0jMQaWuOUicz
 uJCS9Z0f3A5YvhTO5sEdJPwJspoSpk3aiG9KRhSv2O0LzRERXUQfPKlXwyGXnL0NrgeY
 eBrlw7/VCwwCND+dGC4gbezqpoq43aAIvTmn+HgKUgppwm0m3h/rid57HNCUPf4eoT1/
 O/jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e9zX2z3pSYijNeNpg5u5hKyLCBvOSleyi01zr0ij8D4=;
 b=cZpxNT8JAagpYGb0oAg5YEh3iEMSCZ2OLvVpcP2aSAAU1/5J15B9yvyqgMr3vvM63l
 j1jvrjgT5ARJi8QX1TxxNASi5vYJPoB6NM6PtcJKV7g8ZoKD5ck2AsoTMCaYHq3qZACe
 uJHjV17YRGboNyfsIT+76WMowsaPiwdqzCqkCMs9tKFGBAivzkCnYdCIh/1OM3o+3xZX
 9CsbDFyb6wTBvjouUtwcMRi8CfrXSwItbnf4Ie3yE9W8+Z6xaBKVj3WDOk5U1gyO6eKW
 fuvvw1ZbKIqN1uxxf9XX9XzEJlDaTGCo9jiRam87zF3c62TzapD4ylLpXSKV0ZVeB94z
 xgYw==
X-Gm-Message-State: APjAAAXonQQIVJdivHtCwv7gCBQ8Rbj6QEN2YnMnlontl0Whb7h++ZC/
 75HZOgkqApjK8EJxyLRN1Z82t/Wo6zHUYBIC
X-Google-Smtp-Source: APXvYqxN/Jdd3x8rG3kSzj6Bl44tI1FDNTwzVb4CqQXtbJioOQeKqfOdDM37wYuzii6qz6ltvOtbXA==
X-Received: by 2002:adf:e544:: with SMTP id z4mr5023149wrm.295.1558956450699; 
 Mon, 27 May 2019 04:27:30 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:ccdd:dadc:1517:f416])
 by smtp.gmail.com with ESMTPSA id l6sm9677747wmi.24.2019.05.27.04.27.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 04:27:29 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 4/4] gpio: mb86s7x: enable ACPI support
Date: Mon, 27 May 2019 13:27:20 +0200
Message-Id: <20190527112720.2266-5-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527112720.2266-1-ard.biesheuvel@linaro.org>
References: <20190527112720.2266-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_042733_236040_AC02F60C 
X-CRM114-Status: GOOD (  16.37  )
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

Make the mb86s7x GPIO block discoverable via ACPI. In addition, add
support for ACPI GPIO interrupts routed via platform interrupts, by
wiring the two together via the to_irq() gpiochip callback.

Reviewed-by: Mika Westerberg <mika.westerberg@linux.intel.com>
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
