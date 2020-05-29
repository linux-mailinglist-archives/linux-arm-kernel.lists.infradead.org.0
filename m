Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDF11E827E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 17:50:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nQGH9ytdHS7ySUht9p/SXW1DST+fSetE3dGTjgoPdtY=; b=Ox4OYgYUBW7QlI
	7m3rxHTgMK8IP4ZyXSZCsQ0ohjvHGlEZzjsfkL2UVMtb5QCOfvjM9tHOTG5Cby0DBWh15lIMXMu5W
	jjEY6ASPJj2m/VgBq7xgPAzm0snFxyOEGdO8f6rx+hSgA0X62gKESc8iJS6OJWg06ANZNzFSI49M7
	Ft5XbYHuqbrRqK1WS6+UG2uy8lGaJInLz7oHgZtBr+as3R6LqNIAdE+pdZ/lAUucT36PKWcwnEvsT
	pMuTXmbp/Lmpt6inYuciG9/ZlxRy+xBcZQdmSqCGQPQcVRJgTd9KLzFh36ipEiPVFeRx9iTX3V9T7
	Bg4YWiS1hpjsnqHk4yiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehHL-0004lz-Bx; Fri, 29 May 2020 15:50:39 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehHB-0004kD-1a; Fri, 29 May 2020 15:50:30 +0000
Received: by mail-ed1-x544.google.com with SMTP id i16so2109444edv.1;
 Fri, 29 May 2020 08:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EsMvt8EiZib5FGRRaF/qmPkTiPSrV02BKHt077M8wMI=;
 b=cGUtShBaCi9MqoE1+GESbw69dKQPzfpBkPzL3us2slLVv6fyW3FzZR38Ss0xy1A4Yh
 8iss/1gsa3WW9/xeUZSAv4euyAve2ASBsIjapI7OxHttUYUEEopFsOQr5gtW2x5K5DVv
 xVcOJQyCfYgiQM0ZEi2S3hc4pTM0phT9t8mt4RPzVUv4RbiwbWMbTC4Xda9iJQ19GUFU
 4Vuze25Dm/GfmaXfyvhPMotiRoRlhae3fCXG+9MqDgTLBwr0foE2cAwLI/LkEyRSuBXL
 YPVTXNicS/KYigpGnlH14hS02GzJL0KIS5PDjXI8yWtoebKHBFfq3ifTgX2kWJOrJtmT
 +e1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EsMvt8EiZib5FGRRaF/qmPkTiPSrV02BKHt077M8wMI=;
 b=Tl3F4HV+KLgdCpSLqF9FAd29YgTfyDqjisoHy86B3iCjXlPNL+DrGv0ITkfZLY7+yy
 0pFYU35DwK96cTMGdv0hdYH74MC4isjWopo/sBcTySQqcGlZXogD96JkO8HXpI8aug5c
 LROezFPpYkgFAgCMWUkmAfict+zHSk8qEBP150pcAdpHun8XbI9RnQU5qfwFC+4fTiSc
 RTM3V5l6cA+SbhJ3/9fzSyyXnOSH8DVdweLdpRtRI85zNPmstPTw1jW9RZ7dvpnuqe4f
 tHZ64Lx7GUWh9AOBBDhMW2AojYwjHqphUjY/vfJhcb6TU8RAqJGhzI71utceegvJ7ezf
 EwYg==
X-Gm-Message-State: AOAM531CCRIeX7Y/RO9SF9sfjEdf4BuhFGv+Qis9+2QKwn8z0M5XjHXz
 7xTO+0kryuk7nhA+Usyd6Ro=
X-Google-Smtp-Source: ABdhPJx6DPMPIrVyjdcMp9A6H0ZgGz361F/QduvdG+yveRgopAM+PuB1Tb/x09hjpiea6VuHfcN3Iw==
X-Received: by 2002:a50:bb41:: with SMTP id y59mr8736067ede.311.1590767427825; 
 Fri, 29 May 2020 08:50:27 -0700 (PDT)
Received: from localhost.localdomain ([188.27.38.213])
 by smtp.gmail.com with ESMTPSA id cz9sm7068103edb.18.2020.05.29.08.50.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 08:50:27 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>
Subject: [PATCH 1/1] tty: serial: owl: Add support for kernel debugger
Date: Fri, 29 May 2020 18:50:25 +0300
Message-Id: <6ee88060c129715980592a1ae33c93923916a14b.1590766726.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_085029_087177_EE676E93 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-actions@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement poll_put_char and poll_get_char callbacks in struct uart_ops
that enables OWL UART to be used for KGDB debugging over serial line.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
---
 drivers/tty/serial/owl-uart.c | 45 ++++++++++++++++++++++++++++++-----
 1 file changed, 39 insertions(+), 6 deletions(-)

diff --git a/drivers/tty/serial/owl-uart.c b/drivers/tty/serial/owl-uart.c
index c2fa2f15d50a..26dcc374dec5 100644
--- a/drivers/tty/serial/owl-uart.c
+++ b/drivers/tty/serial/owl-uart.c
@@ -12,6 +12,7 @@
 #include <linux/console.h>
 #include <linux/delay.h>
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
@@ -20,13 +21,13 @@
 #include <linux/tty.h>
 #include <linux/tty_flip.h>
 
-#define OWL_UART_PORT_NUM 7
-#define OWL_UART_DEV_NAME "ttyOWL"
+#define OWL_UART_PORT_NUM		7
+#define OWL_UART_DEV_NAME		"ttyOWL"
 
-#define OWL_UART_CTL	0x000
-#define OWL_UART_RXDAT	0x004
-#define OWL_UART_TXDAT	0x008
-#define OWL_UART_STAT	0x00c
+#define OWL_UART_CTL			0x000
+#define OWL_UART_RXDAT			0x004
+#define OWL_UART_TXDAT			0x008
+#define OWL_UART_STAT			0x00c
 
 #define OWL_UART_CTL_DWLS_MASK		GENMASK(1, 0)
 #define OWL_UART_CTL_DWLS_5BITS		(0x0 << 0)
@@ -461,6 +462,34 @@ static void owl_uart_config_port(struct uart_port *port, int flags)
 	}
 }
 
+#ifdef CONFIG_CONSOLE_POLL
+
+static int owl_uart_poll_get_char(struct uart_port *port)
+{
+	u32 c = NO_POLL_CHAR;
+
+	if (!(owl_uart_read(port, OWL_UART_STAT) & OWL_UART_STAT_RFEM))
+		c = owl_uart_read(port, OWL_UART_RXDAT);
+
+	return c;
+}
+
+static void owl_uart_poll_put_char(struct uart_port *port, unsigned char c)
+{
+	/* Wait while TX FIFO is full */
+	while (owl_uart_read(port, OWL_UART_STAT) & OWL_UART_STAT_TFFU)
+		cpu_relax();
+
+	/* Send the character out */
+	owl_uart_write(port, c, OWL_UART_TXDAT);
+
+	/* Wait for transmitter to become empty */
+	while (owl_uart_read(port, OWL_UART_STAT) & OWL_UART_STAT_TRFL_MASK)
+		cpu_relax();
+}
+
+#endif /* CONFIG_CONSOLE_POLL */
+
 static const struct uart_ops owl_uart_ops = {
 	.set_mctrl = owl_uart_set_mctrl,
 	.get_mctrl = owl_uart_get_mctrl,
@@ -476,6 +505,10 @@ static const struct uart_ops owl_uart_ops = {
 	.request_port = owl_uart_request_port,
 	.release_port = owl_uart_release_port,
 	.verify_port = owl_uart_verify_port,
+#ifdef CONFIG_CONSOLE_POLL
+	.poll_get_char	= owl_uart_poll_get_char,
+	.poll_put_char	= owl_uart_poll_put_char,
+#endif
 };
 
 #ifdef CONFIG_SERIAL_OWL_CONSOLE
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
