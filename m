Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D884070A2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEM85ffKNAB8GxjdpOEFHg2l2ZiucgKtKAd71u/+Cec=; b=sV3E8+/hzfsS6G
	BCAm6nayU6bCcuKfNlyAhdZrgAC6QnB1vRzCgUw9veG5j+ws7+WiwadZh5Goy5Aoz1yDXEt3eJdje
	hBauavByR+wVLoMbYmGr9r96Tq9ivsxwJFlNK6qMdpHKYfc+nr0InPiut8jjxJZI3gWns+PeB+sFk
	b0FBuhjYGVxMAYNQLIzV4BNXRCluVXPWaPJbPV/IcaIL7etI1J/x/FRgzkBwDlhRNLPUK/DQUgGcK
	k1QfZzEXFpndtJlTPNl90m5/ogugRdJ3EJ6Sq2htBmZD/OWDoNzJVN5kd/HmtYcvAsvGYpjfhpTBR
	tYTRA+wgeQA++VGU0vJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpePL-0006MZ-8L; Mon, 22 Jul 2019 19:55:39 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpeNG-0004BE-0p
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 19:53:32 +0000
Received: by mail-wm1-x341.google.com with SMTP id u25so26093427wmc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 12:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Bg3NOyYgAWvTM2AHLzN6gt3uUe6onVadeq9y9paS70s=;
 b=fX31OhKjRtSJbdPXbFaBb+fdZjIbiHtzFNkgdCnesHOum96e+CFTkOq1m3zMHhiKo1
 bIafHw9/ZRnh3BlqWygP61EMSbXUtTp7cpFJSdTvsVYFlE7ogkL6ITAdtcoUIS/RAiw9
 9U+dl3hC6CZuW9Yq+KuJhYIgH/mCSnxNUePGGYuwyLXSQ2HQzJ5NCx/1hpc5Zhrgxe9V
 pFlwGMCyEsher2p2mFmyrGNnBUbNRTR7qYn/1VnwT+2fW8TUX9w62hw9Y43ypD7bi5nn
 e2Z+QjGXK/BBYNJVsHxarv2DhdWq/d0d8mFpAJt8uS7Cthrzo0PtqZX44Jw3ZUUWJxqP
 UzTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bg3NOyYgAWvTM2AHLzN6gt3uUe6onVadeq9y9paS70s=;
 b=rK4NvWHZaS4Bec4K5pmSiO0TJ6GZPt+g7FD98SPqezJPcmT/C8OksiH4tGNz1eVNI2
 UUI7Wnk9sUPw6jIJqrtiGPyDh1dc3f6kjvrDlQ6gWx8HQlB3c3oAq5SOA0nPWDQztSCo
 hGR0+yGWEaGv6fMh1CyAiCaLATlcIrof82ISsDRR1O8vI6a7Rg38B0xWg3N8aJyMqp1Z
 Bes+Gtye14CSsch8k109pHyAYWFBb0Ct6UlHL0nuEtSqXzaugKG7ap2f6g/Yn6fnryRa
 3o2Endb69cwsxFe+aFfO89vYGU82QbUmhNHasuJrQNWnNRXawGijHWGtgmhXUq48Tqd6
 /o+g==
X-Gm-Message-State: APjAAAWjEmy28hcq8ZmIkMAoOAWZ2jogWpnQBRGu2j/NVP4Muvy93CjC
 07Uzis7oV6t9cZlhR2FCjfo=
X-Google-Smtp-Source: APXvYqzIejkrbtnZhZXUB3etEfSKe6Ng2SsEyaHPoury5Bd3GT/54m7o9LtQ9fQ9Ey5LdZTBwnm1Tg==
X-Received: by 2002:a1c:6a11:: with SMTP id f17mr60524747wmc.110.1563825208796; 
 Mon, 22 Jul 2019 12:53:28 -0700 (PDT)
Received: from localhost.localdomain (nat-113.starnet.cz. [178.255.168.113])
 by smtp.googlemail.com with ESMTPSA id c65sm37382975wma.44.2019.07.22.12.53.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 12:53:28 -0700 (PDT)
From: Evgeny Kolesnikov <evgenyz@gmail.com>
To: 
Subject: [PATCH 4/5] power/reset: Add a restart driver for UART-based PM MCUs
Date: Mon, 22 Jul 2019 21:53:04 +0200
Message-Id: <ae33cb72a370d3af6319330e950cdd6cc68a007c.1563822216.git.evgenyz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1563822216.git.evgenyz@gmail.com>
References: <cover.1563822216.git.evgenyz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_125330_229826_0C7D9A06 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (evgenyz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, linux-pm@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Reichel <sre@kernel.org>, Evgeny Kolesnikov <evgenyz@gmail.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the restart driver for power managing
micro controller units that are connected to a board
via the UART interface.

Signed-off-by: Evgeny Kolesnikov <evgenyz@gmail.com>
---
 drivers/power/reset/Kconfig        |   7 +
 drivers/power/reset/Makefile       |   1 +
 drivers/power/reset/uart-restart.c | 204 +++++++++++++++++++++++++++++
 3 files changed, 212 insertions(+)
 create mode 100644 drivers/power/reset/uart-restart.c

diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index 02fdf45e3988..4b187af1fba6 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -223,6 +223,13 @@ config POWER_RESET_UART_POWEROFF
 	  Power off support for boards with UART-based PM MCU
 	  such as WD My Cloud NAS, QNAP Turbo NAS, Synology devices.
 
+config POWER_RESET_UART
+	tristate "UART-based PM MCU restart driver"
+	depends on OF_GPIO
+	help
+	  Reboot support for boards with UART-based PM MCU
+	  such as WD My Cloud NAS, QNAP Turbo NAS, Synology devices.
+
 config POWER_RESET_ZX
 	tristate "ZTE SoCs reset driver"
 	depends on ARCH_ZX || COMPILE_TEST
diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
index efe8f25f463d..fa8a936d7a1a 100644
--- a/drivers/power/reset/Makefile
+++ b/drivers/power/reset/Makefile
@@ -26,6 +26,7 @@ obj-$(CONFIG_POWER_RESET_SYSCON) += syscon-reboot.o
 obj-$(CONFIG_POWER_RESET_SYSCON_POWEROFF) += syscon-poweroff.o
 obj-$(CONFIG_POWER_RESET_RMOBILE) += rmobile-reset.o
 obj-$(CONFIG_POWER_RESET_UART_POWEROFF) += uart-poweroff.o
+obj-$(CONFIG_POWER_RESET_UART) += uart-restart.o
 obj-$(CONFIG_POWER_RESET_ZX) += zx-reboot.o
 obj-$(CONFIG_REBOOT_MODE) += reboot-mode.o
 obj-$(CONFIG_SYSCON_REBOOT_MODE) += syscon-reboot-mode.o
diff --git a/drivers/power/reset/uart-restart.c b/drivers/power/reset/uart-restart.c
new file mode 100644
index 000000000000..be4dcbbb826e
--- /dev/null
+++ b/drivers/power/reset/uart-restart.c
@@ -0,0 +1,204 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Restart for boards with UART-based PM MCUs
+ * such as WD My Cloud NAS, QNAP Turbo NAS, Synology devices.
+ *
+ * Copyright (C) 2019 Evgeny Kolesnikov <evgenyz@gmail.com>
+ *
+ * Based on the code from:
+ *
+ * Copyright (C) 2016 Martin Mueller <mm@sig21.net>
+ * Copyright (C) 2012 Andrew Lunn <andrew@lunn.ch>
+ * Copyright (C) 2009 Martin Michlmayr <tbm@cyrius.com>
+ * Copyright (C) 2008 Byron Bradley <byron.bbradley@gmail.com>
+ *
+ */
+
+#include <linux/reboot.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/serial_reg.h>
+#include <linux/kallsyms.h>
+#include <linux/of.h>
+#include <linux/io.h>
+#include <linux/clk.h>
+#include <linux/delay.h>
+#ifdef CONFIG_ARM
+#include <asm/system_misc.h>
+#endif
+
+#define UART_REG(b, x)	(b + ((UART_##x) << 2))
+
+
+struct uart_restart {
+	struct notifier_block restart_handler;
+	const u8 *cmd;
+	int cmd_len;
+	void __iomem *base;
+	unsigned int divisor;
+	u32 byte_delay_ms;
+	u32 timeout_ms;
+	void *pm_restart_org;
+};
+
+static int uart_restart_notify(struct notifier_block *this,
+				unsigned long mode, void *cmd)
+{
+	struct uart_restart *uart_restart =
+		container_of(this, struct uart_restart, restart_handler);
+	int i;
+
+	/* Hijack UART and reset into sane state */
+	writel(0x83, UART_REG(uart_restart->base, LCR));
+	writel(uart_restart->divisor & 0xFF, UART_REG(uart_restart->base, DLL));
+	writel((uart_restart->divisor >> 8) & 0xFF, UART_REG(uart_restart->base, DLM));
+	writel(0x03, UART_REG(uart_restart->base, LCR));
+	writel(0x00, UART_REG(uart_restart->base, IER));
+	writel(0x00, UART_REG(uart_restart->base, FCR));
+	writel(0x00, UART_REG(uart_restart->base, MCR));
+
+	/* Send the command */
+	for (i = 0; i < uart_restart->cmd_len; i++) {
+		writel(uart_restart->cmd[i], UART_REG(uart_restart->base, TX));
+		mdelay(uart_restart->byte_delay_ms);
+	}
+	mdelay(uart_restart->timeout_ms);
+	WARN_ON(1);
+
+	return NOTIFY_DONE;
+}
+
+static int uart_restart_probe(struct platform_device *pdev)
+{
+	struct uart_restart *uart_restart;
+	struct resource *res;
+	void __iomem *base;
+	struct clk *clk;
+	u32 baud;
+	bool override;
+	int err;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res) {
+		dev_err(&pdev->dev, "Missing resource\n");
+		return -EINVAL;
+	}
+
+	base = devm_ioremap(&pdev->dev, res->start, resource_size(res));
+	if (!base) {
+		dev_err(&pdev->dev, "Unable to map resource\n");
+		return -EINVAL;
+	}
+
+	/* We need to know tclk in order to calculate the UART divisor */
+	clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(clk)) {
+		dev_err(&pdev->dev, "Clk missing\n");
+		return PTR_ERR(clk);
+	}
+
+	uart_restart = devm_kzalloc(&pdev->dev, sizeof(*uart_restart),
+			GFP_KERNEL);
+	if (!uart_restart)
+		return -ENOMEM;
+
+	uart_restart->cmd = of_get_property(pdev->dev.of_node, "cmd",
+						&uart_restart->cmd_len);
+	if (uart_restart->cmd == NULL || uart_restart->cmd_len < 1) {
+		dev_err(&pdev->dev, "Cmd is missing or empty\n");
+		return -EINVAL;
+	}
+
+	of_property_read_u32(pdev->dev.of_node, "baud", &baud);
+	if (baud < 75 || baud > 460800) {
+		dev_err(&pdev->dev, "Baud rate is missing or invalid\n");
+		return -EINVAL;
+	}
+
+	uart_restart->restart_handler.notifier_call = uart_restart_notify;
+	uart_restart->restart_handler.priority = 129;
+	uart_restart->base = base;
+	uart_restart->divisor =
+		((clk_get_rate(clk) + (8 * baud)) / (16 * baud));
+	uart_restart->byte_delay_ms = 5;
+	uart_restart->timeout_ms = 1000;
+	of_property_read_u32(pdev->dev.of_node, "byte-delay",
+				&uart_restart->byte_delay_ms);
+	of_property_read_u32(pdev->dev.of_node, "timeout",
+				&uart_restart->timeout_ms);
+
+	override = of_property_read_bool(pdev->dev.of_node, "override");
+
+	if (override)
+		uart_restart->restart_handler.priority = 192;
+
+	platform_set_drvdata(pdev, uart_restart);
+
+#ifdef CONFIG_ARM
+	char symname[KSYM_NAME_LEN];
+
+	if (arm_pm_restart && !override) {
+		lookup_symbol_name((ulong)arm_pm_restart, symname);
+		dev_err(&pdev->dev,
+			"The arm_pm_restart is already claimed by %s (%p) and override is false",
+			symname, arm_pm_restart);
+		return -EBUSY;
+	}
+#endif
+
+	err = register_restart_handler(&uart_restart->restart_handler);
+	if (err) {
+		dev_err(&pdev->dev,
+			"Unable to register restart handler: %d\n", err);
+		return -ENODEV;
+	}
+
+#ifdef CONFIG_ARM
+	if (arm_pm_restart && override) {
+		uart_restart->pm_restart_org = arm_pm_restart;
+		arm_pm_restart = NULL;
+	}
+#endif
+
+	return 0;
+}
+
+static int uart_restart_remove(struct platform_device *pdev)
+{
+	struct uart_restart *uart_restart = platform_get_drvdata(pdev);
+	int err;
+
+	err = unregister_restart_handler(&uart_restart->restart_handler);
+	if (err) {
+		dev_err(&pdev->dev,
+			"Unable to unregister restart handler, %d\n", err);
+		return -ENODEV;
+	}
+
+#ifdef CONFIG_ARM
+	if (arm_pm_restart == NULL && uart_restart->pm_restart_org != NULL)
+		arm_pm_restart = uart_restart->pm_restart_org;
+#endif
+
+	return 0;
+}
+
+static const struct of_device_id of_uart_restart_match[] = {
+	{ .compatible = "uart-restart", },
+	{},
+};
+
+static struct platform_driver uart_restart_driver = {
+	.probe	= uart_restart_probe,
+	.remove	= uart_restart_remove,
+	.driver	= {
+		.name	= "uart_restart",
+		.of_match_table = of_uart_restart_match,
+	},
+};
+module_platform_driver(uart_restart_driver);
+
+MODULE_AUTHOR("Evgeny Kolesnikov <evgenyz@gmail.com>");
+MODULE_DESCRIPTION("UART-based PM MCU restart driver");
+MODULE_LICENSE("GPL v2");
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
