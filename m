Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383B619D392
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tDVSAz+Lp+k77djK4VeBsJyfjqgMLDKR4lQiEFSmfU=; b=TZQZda5CKgGSil
	18hLcOaru1V5dIsJpjMY6CBSCmM90n9u+WyLQXlir71zfZlHIfi11bEbVrwCSY7wAmyXeJcPJRhsi
	x252MtLBskBcyLsy0htcmUvhOA17CYsmBZHeriP7AClcpOPtp0QIlSv57aV/t5MkZG16CyyUsXhXU
	Vf5qNzWsp3Sq64rnr6YyfNe8N0335E3zd6V5ByEJEYbT5ewf2lATO5GY057BrzlRuWsY1l98mbefi
	LGzJsMmSODEDK/ZkurqKesqRgmwTH1fWv6lC7PG3baTvtMExYLUdErs6xxTXq1h/7dAxnwvTwECNY
	bqzt5B8Uv+KfY8XdJZxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIax-00067A-5S; Fri, 03 Apr 2020 09:26:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIZJ-0002LC-Pf
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 09:24:55 +0000
Received: by mail-wr1-x441.google.com with SMTP id 31so7647634wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 02:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2x8p8ysEliFz5jE2Oqu/wItdod9o40YesvKMul9whhc=;
 b=ipK8kZ11Xx861bXK7JKJBTZe7qceGcfI/+9Gtdg4R4Neyv7D0AvEK7w/VEJO2hKRgB
 ba2ym/6HGK51Gfs3quEM6aLbEM/c9sbu+zG+/6jpBuI9fCu4D99oPMSYO5RNfDYn4lxE
 7bLI5VpksTCvD4LbEHNpCLz2S3GM5dfaPLfAScvg4luLAIN8TauYYHURBViGAmg2FTer
 eci+Fn83LeqsnGwgAQr4xahccldZanXV8znGtfk5Q3G8ZlW9q+gQnQEkSp+7A62jj0KB
 ZeljPPMt6sjcwcbZ6vh5G4ACSx3gsfS3+d2nTxPWJkDcoddPXpwQb6uei6HFmp6Z8Ii1
 o2kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=2x8p8ysEliFz5jE2Oqu/wItdod9o40YesvKMul9whhc=;
 b=dIVqKLjwT8t0m7AOAYac8fu2bgwTQO3Fv8qXpOU5jfYH2amiZf5BuH65tnqIgNa9kX
 j/SxApQ5R6mmAi9PwsaqIxSRpIVdMulAhOHIlDNi+vEZnRwfIR9BGz+rLZsSTL+/uLMf
 Zdjq4wyvOSjK3YdnWxkQMf7kwHnIOzaBGb0LbYx+lFtVDQOoY4ysQgxomHUdSPBI/6nu
 YLV84lgGFvOujGVutWoVDEFzpt3oJ4QbgJBfU+wvoCqIwtUwsBZUWPAtxpYvfiH4pymU
 3ph7r0A5PBsoKSd/71ns33lvE6rP843YE5yrJtTHtHHspUxzosGuvos0VZPPRIYvyaF1
 ulnQ==
X-Gm-Message-State: AGi0Pua8Xde+G9rIxvcCINIbqA5kmrDWu0r1CUAdW5IgV++tbiRJM1ab
 2ELr7Ky6B2i5Ft3aTUgZkFYXaQ==
X-Google-Smtp-Source: APiQypKw6HEIvok/WpHic3c7lXENKAg1I9ouayy+2Q+AEs1grm1dYRpDaYfMpwIxyHwr6UdX8ZkyQg==
X-Received: by 2002:a5d:404a:: with SMTP id w10mr7932066wrp.295.1585905892040; 
 Fri, 03 Apr 2020 02:24:52 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id t81sm10538068wmb.15.2020.04.03.02.24.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Apr 2020 02:24:51 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: johan@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com
Subject: [PATCH 6/7] Revert "serial: uartps: Move Port ID to device data
 structure"
Date: Fri,  3 Apr 2020 11:24:35 +0200
Message-Id: <eb0ec98fecdca9b79c1a3ac0c30c668b6973b193.1585905873.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1585905873.git.michal.simek@xilinx.com>
References: <cover.1585905873.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_022453_852937_55395E08 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

This reverts commit bed25ac0e2b6ab8f9aed2d20bc9c3a2037311800.

As Johan says, this driver needs a lot more work and these changes are
only going in the wrong direction:
  https://lkml.kernel.org/r/20190523091839.GC568@localhost

Reported-by: Johan Hovold <johan@kernel.org>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 drivers/tty/serial/xilinx_uartps.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 58f0fa07ecdb..41d9c2f188f0 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -189,7 +189,6 @@ MODULE_PARM_DESC(rx_timeout, "Rx timeout, 1-255");
  * @pclk:		APB clock
  * @cdns_uart_driver:	Pointer to UART driver
  * @baud:		Current baud rate
- * @id:			Port ID
  * @clk_rate_change_nb:	Notifier block for clock changes
  * @quirks:		Flags for RXBS support.
  */
@@ -199,7 +198,6 @@ struct cdns_uart {
 	struct clk		*pclk;
 	struct uart_driver	*cdns_uart_driver;
 	unsigned int		baud;
-	int			id;
 	struct notifier_block	clk_rate_change_nb;
 	u32			quirks;
 	bool cts_override;
@@ -1412,7 +1410,7 @@ MODULE_DEVICE_TABLE(of, cdns_uart_of_match);
  */
 static int cdns_uart_probe(struct platform_device *pdev)
 {
-	int rc, irq;
+	int rc, id, irq;
 	struct uart_port *port;
 	struct resource *res;
 	struct cdns_uart *cdns_uart_data;
@@ -1438,18 +1436,18 @@ static int cdns_uart_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	/* Look for a serialN alias */
-	cdns_uart_data->id = of_alias_get_id(pdev->dev.of_node, "serial");
-	if (cdns_uart_data->id < 0)
-		cdns_uart_data->id = 0;
+	id = of_alias_get_id(pdev->dev.of_node, "serial");
+	if (id < 0)
+		id = 0;
 
-	if (cdns_uart_data->id >= CDNS_UART_NR_PORTS) {
+	if (id >= CDNS_UART_NR_PORTS) {
 		dev_err(&pdev->dev, "Cannot get uart_port structure\n");
 		return -ENODEV;
 	}
 
 	/* There is a need to use unique driver name */
 	driver_name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s%d",
-				     CDNS_UART_NAME, cdns_uart_data->id);
+				     CDNS_UART_NAME, id);
 	if (!driver_name)
 		return -ENOMEM;
 
@@ -1457,7 +1455,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
 	cdns_uart_uart_driver->driver_name = driver_name;
 	cdns_uart_uart_driver->dev_name	= CDNS_UART_TTY_NAME;
 	cdns_uart_uart_driver->major = CDNS_UART_MAJOR;
-	cdns_uart_uart_driver->minor = cdns_uart_data->id;
+	cdns_uart_uart_driver->minor = id;
 	cdns_uart_uart_driver->nr = 1;
 
 #ifdef CONFIG_SERIAL_XILINX_PS_UART_CONSOLE
@@ -1468,7 +1466,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
 
 	strncpy(cdns_uart_console->name, CDNS_UART_TTY_NAME,
 		sizeof(cdns_uart_console->name));
-	cdns_uart_console->index = cdns_uart_data->id;
+	cdns_uart_console->index = id;
 	cdns_uart_console->write = cdns_uart_console_write;
 	cdns_uart_console->device = uart_console_device;
 	cdns_uart_console->setup = cdns_uart_console_setup;
@@ -1490,7 +1488,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
 	 * registration because tty_driver structure is not filled.
 	 * name_base is 0 by default.
 	 */
-	cdns_uart_uart_driver->tty_driver->name_base = cdns_uart_data->id;
+	cdns_uart_uart_driver->tty_driver->name_base = id;
 
 	match = of_match_node(cdns_uart_of_match, pdev->dev.of_node);
 	if (match && match->data) {
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
