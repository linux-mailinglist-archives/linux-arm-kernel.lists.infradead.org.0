Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A7C19D396
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:27:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GN0kd8XAuXzVJ8pBq/A0udR2f62wZON3GTPztI8ZzQg=; b=Peo28q7XTtZqAU
	jEoQ1LjXrfQ+9WW7XdZBuP0qKRRNo88O2CWyvNHtMJVd9RqAoUEwcwYj1mwfo3FMmPVaKSrbgPX96
	/OQ/JB888TaQbmCp5nFDmFyqx8jMmi7LPrF8wxoSOC9ttlbPOlbFSdP7j5G9Y4fInBvLB68uCLmfa
	MZaJFc9h9tuywWf44hFhwuaPPcPbXIqfIJoOAPmoARzhSeGWUyIjzLlMs1UzS7675Y7bpjY5Ba/uZ
	zXRRa0bfYArH+UrCt5CAReQ81ds4Q+cW0zcPDdAkzQ/Zzn9p0TUHrVH7KaBXMrgTZj0Qcl9uyh01W
	piWcDTDALhxqyXr9pRgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIbF-0006R9-Kg; Fri, 03 Apr 2020 09:26:53 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIZL-0002NE-EA
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 09:24:57 +0000
Received: by mail-wm1-x344.google.com with SMTP id t128so6437975wma.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 02:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IhWqEH+ifcQR6EnThkSLLdxyOoCGOTp66XJ4WIDsRQM=;
 b=F+NlUIiv/8c5llpYNJLrPG1jwFWfs+1Ib4zLJd5JPX7VpAxwt2HuxrGLbf4mQSIfoI
 L9KAmYuJ5uTbLc6Cbpq89buRnEhSIakOjMahQj5WRHPGpzyfyXhEBvEvSYzCBtjha9Hs
 uPcn46Z2UqAuy+REiJTA5W/qX1B0l9N0QWz+YzgRHH1gnWf4fCT3ONkwyzPQJ42pm1lQ
 oL6vyLbDOiLMYyKWfziAKG1Vqc0QUSQSyg6k5QkxgG7a6n7k0b63bn33ccdSb2dc+Nro
 QB5xOgjuG6gLaN3K99VRQ8uWGdZTXBQMuSsipLMbQ16296SokAiG98gleOXbfzvKfqNx
 JeJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=IhWqEH+ifcQR6EnThkSLLdxyOoCGOTp66XJ4WIDsRQM=;
 b=lOqV4OAmOhaLU1+nRtOJSESQyIFpQI19tdT5IbiDFYRF8xQlXvsqFo1Z8xe8s5l69R
 MgwXHSklbdEIEMov1W0I8kJLBkSeusZu+//GuueA+P+z8JSnWGd4tqNhHeyBx8Ug5sk4
 zgJzH+Fy2IAQ2/OY9rhI7O+ZnmzBzpDpSHk1HxcLmjSAl87+OSu9F2kf7tIr7iMkkhaB
 1vQCgfKDufv/N8mN1rpXZgB06fk6akqiXi2Jgh0T8F3AkMs/8PXOVbWG//81UMoho5Nh
 wJ7jA/POb70E5YJaK+5LakvhhmfrRw/LxqtQ+GWlXaJI4eon6Ta0C5wsKfOisLOGaCR/
 EzzQ==
X-Gm-Message-State: AGi0PuaI2fpiPl7UY9oRIda09RYkv8Do5AHozYaUgMfthILnaEwrfT4K
 rWx6XE8yv2W3v4VL9W9vFYDwYQ==
X-Google-Smtp-Source: APiQypJm1SUyhExIFhsNSoRGaTQ+ETR8QzrrZcogS3Uwn33V4q/ATjdOeTQc8R1D8teAyU06BdsV0w==
X-Received: by 2002:a7b:c3da:: with SMTP id t26mr7405666wmj.3.1585905893625;
 Fri, 03 Apr 2020 02:24:53 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id i2sm11239997wrx.22.2020.04.03.02.24.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Apr 2020 02:24:53 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: johan@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com
Subject: [PATCH 7/7] Revert "serial: uartps: Register own uart console and
 driver structures"
Date: Fri,  3 Apr 2020 11:24:36 +0200
Message-Id: <1ee35667e36a8efddee381df5fe495ad65f4d15c.1585905873.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1585905873.git.michal.simek@xilinx.com>
References: <cover.1585905873.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_022455_493243_9E00AC97 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 024ca329bfb9a948f76eaff3243e21b7e70182f2.

As Johan says, this driver needs a lot more work and these changes are
only going in the wrong direction:
  https://lkml.kernel.org/r/20190523091839.GC568@localhost

Reported-by: Johan Hovold <johan@kernel.org>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 drivers/tty/serial/xilinx_uartps.c | 95 +++++++++++++-----------------
 1 file changed, 40 insertions(+), 55 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 41d9c2f188f0..ac137b6a1dc1 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -27,6 +27,7 @@
 #define CDNS_UART_TTY_NAME	"ttyPS"
 #define CDNS_UART_NAME		"xuartps"
 #define CDNS_UART_MAJOR		0	/* use dynamic node allocation */
+#define CDNS_UART_MINOR		0	/* works best with devtmpfs */
 #define CDNS_UART_NR_PORTS	16
 #define CDNS_UART_FIFO_SIZE	64	/* FIFO size */
 #define CDNS_UART_REGISTER_SPACE	0x1000
@@ -1132,6 +1133,8 @@ static const struct uart_ops cdns_uart_ops = {
 #endif
 };
 
+static struct uart_driver cdns_uart_uart_driver;
+
 #ifdef CONFIG_SERIAL_XILINX_PS_UART_CONSOLE
 /**
  * cdns_uart_console_putchar - write the character to the FIFO buffer
@@ -1271,6 +1274,16 @@ static int cdns_uart_console_setup(struct console *co, char *options)
 
 	return uart_set_options(port, co, baud, parity, bits, flow);
 }
+
+static struct console cdns_uart_console = {
+	.name	= CDNS_UART_TTY_NAME,
+	.write	= cdns_uart_console_write,
+	.device	= uart_console_device,
+	.setup	= cdns_uart_console_setup,
+	.flags	= CON_PRINTBUFFER,
+	.index	= -1, /* Specified on the cmdline (e.g. console=ttyPS ) */
+	.data	= &cdns_uart_uart_driver,
+};
 #endif /* CONFIG_SERIAL_XILINX_PS_UART_CONSOLE */
 
 #ifdef CONFIG_PM_SLEEP
@@ -1402,6 +1415,9 @@ static const struct of_device_id cdns_uart_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, cdns_uart_of_match);
 
+/* Temporary variable for storing number of instances */
+static int instances;
+
 /**
  * cdns_uart_probe - Platform driver probe
  * @pdev: Pointer to the platform device structure
@@ -1415,11 +1431,6 @@ static int cdns_uart_probe(struct platform_device *pdev)
 	struct resource *res;
 	struct cdns_uart *cdns_uart_data;
 	const struct of_device_id *match;
-	struct uart_driver *cdns_uart_uart_driver;
-	char *driver_name;
-#ifdef CONFIG_SERIAL_XILINX_PS_UART_CONSOLE
-	struct console *cdns_uart_console;
-#endif
 
 	cdns_uart_data = devm_kzalloc(&pdev->dev, sizeof(*cdns_uart_data),
 			GFP_KERNEL);
@@ -1429,12 +1440,6 @@ static int cdns_uart_probe(struct platform_device *pdev)
 	if (!port)
 		return -ENOMEM;
 
-	cdns_uart_uart_driver = devm_kzalloc(&pdev->dev,
-					     sizeof(*cdns_uart_uart_driver),
-					     GFP_KERNEL);
-	if (!cdns_uart_uart_driver)
-		return -ENOMEM;
-
 	/* Look for a serialN alias */
 	id = of_alias_get_id(pdev->dev.of_node, "serial");
 	if (id < 0)
@@ -1445,50 +1450,25 @@ static int cdns_uart_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
-	/* There is a need to use unique driver name */
-	driver_name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s%d",
-				     CDNS_UART_NAME, id);
-	if (!driver_name)
-		return -ENOMEM;
-
-	cdns_uart_uart_driver->owner = THIS_MODULE;
-	cdns_uart_uart_driver->driver_name = driver_name;
-	cdns_uart_uart_driver->dev_name	= CDNS_UART_TTY_NAME;
-	cdns_uart_uart_driver->major = CDNS_UART_MAJOR;
-	cdns_uart_uart_driver->minor = id;
-	cdns_uart_uart_driver->nr = 1;
-
+	if (!cdns_uart_uart_driver.state) {
+		cdns_uart_uart_driver.owner = THIS_MODULE;
+		cdns_uart_uart_driver.driver_name = CDNS_UART_NAME;
+		cdns_uart_uart_driver.dev_name = CDNS_UART_TTY_NAME;
+		cdns_uart_uart_driver.major = CDNS_UART_MAJOR;
+		cdns_uart_uart_driver.minor = CDNS_UART_MINOR;
+		cdns_uart_uart_driver.nr = CDNS_UART_NR_PORTS;
 #ifdef CONFIG_SERIAL_XILINX_PS_UART_CONSOLE
-	cdns_uart_console = devm_kzalloc(&pdev->dev, sizeof(*cdns_uart_console),
-					 GFP_KERNEL);
-	if (!cdns_uart_console)
-		return -ENOMEM;
-
-	strncpy(cdns_uart_console->name, CDNS_UART_TTY_NAME,
-		sizeof(cdns_uart_console->name));
-	cdns_uart_console->index = id;
-	cdns_uart_console->write = cdns_uart_console_write;
-	cdns_uart_console->device = uart_console_device;
-	cdns_uart_console->setup = cdns_uart_console_setup;
-	cdns_uart_console->flags = CON_PRINTBUFFER;
-	cdns_uart_console->data = cdns_uart_uart_driver;
-	cdns_uart_uart_driver->cons = cdns_uart_console;
+		cdns_uart_uart_driver.cons = &cdns_uart_console;
 #endif
 
-	rc = uart_register_driver(cdns_uart_uart_driver);
-	if (rc < 0) {
-		dev_err(&pdev->dev, "Failed to register driver\n");
-		return rc;
+		rc = uart_register_driver(&cdns_uart_uart_driver);
+		if (rc < 0) {
+			dev_err(&pdev->dev, "Failed to register driver\n");
+			return rc;
+		}
 	}
 
-	cdns_uart_data->cdns_uart_driver = cdns_uart_uart_driver;
-
-	/*
-	 * Setting up proper name_base needs to be done after uart
-	 * registration because tty_driver structure is not filled.
-	 * name_base is 0 by default.
-	 */
-	cdns_uart_uart_driver->tty_driver->name_base = id;
+	cdns_uart_data->cdns_uart_driver = &cdns_uart_uart_driver;
 
 	match = of_match_node(cdns_uart_of_match, pdev->dev.of_node);
 	if (match && match->data) {
@@ -1566,6 +1546,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
 	port->ops	= &cdns_uart_ops;
 	port->fifosize	= CDNS_UART_FIFO_SIZE;
 	port->has_sysrq = IS_ENABLED(CONFIG_SERIAL_XILINX_PS_UART_CONSOLE);
+	port->line	= id;
 
 	/*
 	 * Register the port.
@@ -1597,7 +1578,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
 		console_port = port;
 #endif
 
-	rc = uart_add_one_port(cdns_uart_uart_driver, port);
+	rc = uart_add_one_port(&cdns_uart_uart_driver, port);
 	if (rc) {
 		dev_err(&pdev->dev,
 			"uart_add_one_port() failed; err=%i\n", rc);
@@ -1607,12 +1588,15 @@ static int cdns_uart_probe(struct platform_device *pdev)
 #ifdef CONFIG_SERIAL_XILINX_PS_UART_CONSOLE
 	/* This is not port which is used for console that's why clean it up */
 	if (console_port == port &&
-	    !(cdns_uart_uart_driver->cons->flags & CON_ENABLED))
+	    !(cdns_uart_uart_driver.cons->flags & CON_ENABLED))
 		console_port = NULL;
 #endif
 
 	cdns_uart_data->cts_override = of_property_read_bool(pdev->dev.of_node,
 							     "cts-override");
+
+	instances++;
+
 	return 0;
 
 err_out_pm_disable:
@@ -1628,8 +1612,8 @@ static int cdns_uart_probe(struct platform_device *pdev)
 err_out_clk_dis_pclk:
 	clk_disable_unprepare(cdns_uart_data->pclk);
 err_out_unregister_driver:
-	uart_unregister_driver(cdns_uart_data->cdns_uart_driver);
-
+	if (!instances)
+		uart_unregister_driver(cdns_uart_data->cdns_uart_driver);
 	return rc;
 }
 
@@ -1664,7 +1648,8 @@ static int cdns_uart_remove(struct platform_device *pdev)
 		console_port = NULL;
 #endif
 
-	uart_unregister_driver(cdns_uart_data->cdns_uart_driver);
+	if (!--instances)
+		uart_unregister_driver(cdns_uart_data->cdns_uart_driver);
 	return rc;
 }
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
