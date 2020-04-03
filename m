Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C852F19D391
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:26:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N6zWRPoXWUkW53vWkx4xfymsFvfdc/pw8Nj0GPZpy0w=; b=SNorwVkNZgsnZp
	N6axw0kDqOV2ggHzoWN+TwUfGKqewJNwRvQk30o/wR8gIUwy4A0BEYfED2yWaeXz3JiUf779KrtqN
	ItlnOsI6R0Y3sGeM12pFQO8Kpxv8pUqZOJ946Q0oihmH7VeEG8AYMFDdhCa7Bhek6rGkmR0rMb9OH
	zH4drfRl6HQV9VhVWbYpq6P6bqj4JmysnV3IrVkAbPmR8zdOXkHGso0jPxPPgxrysCMRhewMWGs64
	wqXRutVGxLcM/r1zEOjKuLFxmePjOL54RVfeRXpj83uQVkAdu3DdNYoIHBrErpnlYIJYGaxebM7wb
	UxPCKXDMmnEcEeMh8aFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIaj-0005tP-16; Fri, 03 Apr 2020 09:26:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIZI-0002JL-3t
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 09:24:54 +0000
Received: by mail-wr1-x444.google.com with SMTP id g3so5350110wrx.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 02:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k7pHx0/EXbtoV5+rhsgFvftYW29NmU7J5D/NZ/j6E1w=;
 b=ut1nxyn5/OcfY3fenkF9A1yKJWmdlxIuQ3wwOua8AWghDRLCEXazrkr4Wi5FuMVjh3
 h3Oeeamlm8HEhHV6S34fiL5dmhjqqK8YgLo6UnapGtRhTCvZ8m6MhWVwyInnPySrZt2E
 NupufDUxoqTmUKtKz5HJ8dEzLugE8JSNozVeyGY5T4x5J00WqwPPkazQMluKuDkHo4E4
 i1iEfIZs3M1YeGACmMpXG1t03xSiT2YPJylzINfKR1kXkuH/Tla2TsBkRGXBcW1HwfZt
 Vo9G4zenUhDhUDGaEy1DJMrgHWIC4KJMfaUSv93q9yI9mKvxZdH+rM9y8cD8FM1zCoap
 FsLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=k7pHx0/EXbtoV5+rhsgFvftYW29NmU7J5D/NZ/j6E1w=;
 b=Felemdh94w78RpqYcMhdD16aBvFuyMfy7r6kn5Qfa45qcFAL5+QeylkgQ+BINjLGQV
 mAyt2cS/yxQUOzk6VT5C+3DADxOIfuxV48Az+GlTXtqvPVCHRV4nJH1LagbSMwRyaii3
 3m85at8mA3NZa9KTL1DkEG4uZRQC9pmOG2F7B0cxHidghhNVGCDfPcuxKtq/CdLDSKhT
 iiJXhj6jiIyzQ9zy94lcMN5Mhz1Hugx1nfWrAy7aUrLTtBnHQIf8x4mfecxJltLBacYm
 GYduXifUMk6mwmXfqQytU1CiG0urK18X4VcxOuv7s8JzXQw4Rk9Rv0zVuDsHvphOatjI
 vOyw==
X-Gm-Message-State: AGi0PuZ3/ChPu568r/aIQo8K9XEeU79ZpSWNdRKeiW3JSqHTb+rSFxxC
 pyCuP21j+lyROjLq1Vtb8rELUA==
X-Google-Smtp-Source: APiQypItR+mPFkFOGIQ34VqT1/BW5ruIBYcNzjc5P8OWkqLo97sjt04dCvHuy4/kCfEUmuC5BRyXEg==
X-Received: by 2002:adf:f6c8:: with SMTP id y8mr8560262wrp.403.1585905890415; 
 Fri, 03 Apr 2020 02:24:50 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id r14sm10907567wmg.0.2020.04.03.02.24.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Apr 2020 02:24:49 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: johan@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com
Subject: [PATCH 5/7] Revert "serial: uartps: Change uart ID port allocation"
Date: Fri,  3 Apr 2020 11:24:34 +0200
Message-Id: <a94931b65ce0089f76fb1fe6b446a08731bff754.1585905873.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1585905873.git.michal.simek@xilinx.com>
References: <cover.1585905873.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_022452_191338_5525370C 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

This reverts commit ae1cca3fa3478be92948dbbcd722390272032ade.

With setting up NR_PORTS to 16 to be able to use serial2 and higher
aliases and don't loose functionality which was intended by these changes.

As Johan says, this driver needs a lot more work and these changes are
only going in the wrong direction:
  https://lkml.kernel.org/r/20190523091839.GC568@localhost

Reported-by: Johan Hovold <johan@kernel.org>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 drivers/tty/serial/xilinx_uartps.c | 111 ++++-------------------------
 1 file changed, 13 insertions(+), 98 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 9db3cd120057..58f0fa07ecdb 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -27,6 +27,7 @@
 #define CDNS_UART_TTY_NAME	"ttyPS"
 #define CDNS_UART_NAME		"xuartps"
 #define CDNS_UART_MAJOR		0	/* use dynamic node allocation */
+#define CDNS_UART_NR_PORTS	16
 #define CDNS_UART_FIFO_SIZE	64	/* FIFO size */
 #define CDNS_UART_REGISTER_SPACE	0x1000
 #define TX_TIMEOUT		500000
@@ -1403,90 +1404,6 @@ static const struct of_device_id cdns_uart_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, cdns_uart_of_match);
 
-/*
- * Maximum number of instances without alias IDs but if there is alias
- * which target "< MAX_UART_INSTANCES" range this ID can't be used.
- */
-#define MAX_UART_INSTANCES	32
-
-/* Stores static aliases list */
-static DECLARE_BITMAP(alias_bitmap, MAX_UART_INSTANCES);
-static int alias_bitmap_initialized;
-
-/* Stores actual bitmap of allocated IDs with alias IDs together */
-static DECLARE_BITMAP(bitmap, MAX_UART_INSTANCES);
-/* Protect bitmap operations to have unique IDs */
-static DEFINE_MUTEX(bitmap_lock);
-
-static int cdns_get_id(struct platform_device *pdev)
-{
-	int id, ret;
-
-	mutex_lock(&bitmap_lock);
-
-	/* Alias list is stable that's why get alias bitmap only once */
-	if (!alias_bitmap_initialized) {
-		ret = of_alias_get_alias_list(cdns_uart_of_match, "serial",
-					      alias_bitmap, MAX_UART_INSTANCES);
-		if (ret && ret != -EOVERFLOW) {
-			mutex_unlock(&bitmap_lock);
-			return ret;
-		}
-
-		alias_bitmap_initialized++;
-	}
-
-	/* Make sure that alias ID is not taken by instance without alias */
-	bitmap_or(bitmap, bitmap, alias_bitmap, MAX_UART_INSTANCES);
-
-	dev_dbg(&pdev->dev, "Alias bitmap: %*pb\n",
-		MAX_UART_INSTANCES, bitmap);
-
-	/* Look for a serialN alias */
-	id = of_alias_get_id(pdev->dev.of_node, "serial");
-	if (id < 0) {
-		dev_warn(&pdev->dev,
-			 "No serial alias passed. Using the first free id\n");
-
-		/*
-		 * Start with id 0 and check if there is no serial0 alias
-		 * which points to device which is compatible with this driver.
-		 * If alias exists then try next free position.
-		 */
-		id = 0;
-
-		for (;;) {
-			dev_info(&pdev->dev, "Checking id %d\n", id);
-			id = find_next_zero_bit(bitmap, MAX_UART_INSTANCES, id);
-
-			/* No free empty instance */
-			if (id == MAX_UART_INSTANCES) {
-				dev_err(&pdev->dev, "No free ID\n");
-				mutex_unlock(&bitmap_lock);
-				return -EINVAL;
-			}
-
-			dev_dbg(&pdev->dev, "The empty id is %d\n", id);
-			/* Check if ID is empty */
-			if (!test_and_set_bit(id, bitmap)) {
-				/* Break the loop if bit is taken */
-				dev_dbg(&pdev->dev,
-					"Selected ID %d allocation passed\n",
-					id);
-				break;
-			}
-			dev_dbg(&pdev->dev,
-				"Selected ID %d allocation failed\n", id);
-			/* if taking bit fails then try next one */
-			id++;
-		}
-	}
-
-	mutex_unlock(&bitmap_lock);
-
-	return id;
-}
-
 /**
  * cdns_uart_probe - Platform driver probe
  * @pdev: Pointer to the platform device structure
@@ -1520,17 +1437,21 @@ static int cdns_uart_probe(struct platform_device *pdev)
 	if (!cdns_uart_uart_driver)
 		return -ENOMEM;
 
-	cdns_uart_data->id = cdns_get_id(pdev);
+	/* Look for a serialN alias */
+	cdns_uart_data->id = of_alias_get_id(pdev->dev.of_node, "serial");
 	if (cdns_uart_data->id < 0)
-		return cdns_uart_data->id;
+		cdns_uart_data->id = 0;
+
+	if (cdns_uart_data->id >= CDNS_UART_NR_PORTS) {
+		dev_err(&pdev->dev, "Cannot get uart_port structure\n");
+		return -ENODEV;
+	}
 
 	/* There is a need to use unique driver name */
 	driver_name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s%d",
 				     CDNS_UART_NAME, cdns_uart_data->id);
-	if (!driver_name) {
-		rc = -ENOMEM;
-		goto err_out_id;
-	}
+	if (!driver_name)
+		return -ENOMEM;
 
 	cdns_uart_uart_driver->owner = THIS_MODULE;
 	cdns_uart_uart_driver->driver_name = driver_name;
@@ -1559,7 +1480,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
 	rc = uart_register_driver(cdns_uart_uart_driver);
 	if (rc < 0) {
 		dev_err(&pdev->dev, "Failed to register driver\n");
-		goto err_out_id;
+		return rc;
 	}
 
 	cdns_uart_data->cdns_uart_driver = cdns_uart_uart_driver;
@@ -1710,10 +1631,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
 	clk_disable_unprepare(cdns_uart_data->pclk);
 err_out_unregister_driver:
 	uart_unregister_driver(cdns_uart_data->cdns_uart_driver);
-err_out_id:
-	mutex_lock(&bitmap_lock);
-	clear_bit(cdns_uart_data->id, bitmap);
-	mutex_unlock(&bitmap_lock);
+
 	return rc;
 }
 
@@ -1736,9 +1654,6 @@ static int cdns_uart_remove(struct platform_device *pdev)
 #endif
 	rc = uart_remove_one_port(cdns_uart_data->cdns_uart_driver, port);
 	port->mapbase = 0;
-	mutex_lock(&bitmap_lock);
-	clear_bit(cdns_uart_data->id, bitmap);
-	mutex_unlock(&bitmap_lock);
 	clk_disable_unprepare(cdns_uart_data->uartclk);
 	clk_disable_unprepare(cdns_uart_data->pclk);
 	pm_runtime_disable(&pdev->dev);
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
