Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD0711DA84
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 01:08:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fc0qh/Z+gefaT1zb2nmS34lUeHZJqzyjClimq1z6IrA=; b=Gk2XJXFp7io5gL
	9hh0wB2YS2LaGg0YWenQ4JTHO2ahA32km0Zg2+/uJXNSitjd1pF5VBOogMW+W92tXCayF88IGtGIo
	T0sIHkeA1GPP1DwzKgwsWXFpCLyWHzsn1Pv1AXLioymhYnWjzjA/0Bq/Ehe6yA0l/VWNIoNi6SHvs
	Y2d3RCwJMSImxXSkWmRIXrsHHO80YRc/ja/xcx6bdmbFD+54AE78jwcGiOmbmgfTF2c991MnnclHI
	9t7hMVe6mvKGjZpjk5wrG46B/JYyueLVwAukZN5TLmYyT3I84XrTl5jCJnSUeGjcuXccVMuA9SDrF
	TEPfWuIGTVw0Tzure1gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifYV6-0004GG-4q; Fri, 13 Dec 2019 00:08:08 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifYUo-0004CT-4m
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 00:07:51 +0000
Received: by mail-pj1-x1043.google.com with SMTP id g4so333636pjs.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 16:07:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=90upK2rNWVbhL85i5hQP/jGsi5V6IZt+HmB20otgQwk=;
 b=lf4Aej6+VViJsx13yqwSVC5yLuItQAkGF92kCEBpdJP6ImeRMq3ECDiOksOWoINZTA
 oXBjj7bPK/FrXCa8PpEr+lbBwkNxflEOyl/Qdp5HwPcikT0eEjT2XFbAJ/zdWAu+mkx9
 +l81TS3tdF/8QpB9Dp5fqaogRTafmNji+4KxzXMRGtkJBgXQ5eeN4brRbT85x8s9XSFw
 m0Uq/V9lFhwua+8W6eAPzclzuUxH9QXcc+w1hZAEFwN3c/3VlFx9fA3cZLQw53ZSzFVt
 f1iTldQs/7jJY4Kd/L9VuW8f2V8dpFkPJPHK3Ksf1z8h6ykCTQFc//+jWZHKyHmGJe/l
 zIAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=90upK2rNWVbhL85i5hQP/jGsi5V6IZt+HmB20otgQwk=;
 b=nILtXuoFvY4glQMRdf7OK7I76gnoZC9YhjBMBNnIszWHFhF29Tv+qTs4tkmvb5zavI
 A5wqZMEmU2sB7wK662lGWTBqoWTScFZQVIVova9lAnFewVpdFPOFfQVISE/WUxls44j6
 b52t85gy6LedGfFslvVpRgLz5JHN4TLMY+OY45Z7NLctFXwQAE4RjksdMeNo6CN6RdzV
 OmteKQtiqjZ6KxcaW/39kqqqEcPuF6Yv18Rq8uZ7ur9ue4gs3GI7K5S9hLzaLPm9hAeh
 Meid3nLpVLQ0VWKAvTqqG+TM9vbe8a3nrnTRGSvOYzjRSqKmnj4mVes2iCBkHihUT3Yz
 6Y+A==
X-Gm-Message-State: APjAAAWCotgTYaQHrfeNl7LkqPwDNZNrSkLBClLRmtibdwAg95e2LWiE
 MuC9c9t8KxnzWMk+TUUb+QzA8A==
X-Google-Smtp-Source: APXvYqyok9Kicleir7Xd8YV5SWVEkQodaxMdZkamceeJ64Z0/AdH1eoy7toZYsJlUIwn6MPBrJuoPA==
X-Received: by 2002:a17:90a:1b6b:: with SMTP id
 q98mr13390438pjq.106.1576195669296; 
 Thu, 12 Dec 2019 16:07:49 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id j38sm8317647pgj.27.2019.12.12.16.07.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 16:07:48 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 12/58] tty/serial: Migrate atmel_serial to use has_sysrq
Date: Fri, 13 Dec 2019 00:06:11 +0000
Message-Id: <20191213000657.931618-13-dima@arista.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213000657.931618-1-dima@arista.com>
References: <20191213000657.931618-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_160750_212203_1D977A80 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vasiliy Khoruzhick <vasilykh@arista.com>, Dmitry Safonov <dima@arista.com>,
 Richard Genoud <richard.genoud@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SUPPORT_SYSRQ ifdeffery is not nice as:
- May create misunderstanding about sizeof(struct uart_port) between
  different objects
- Prevents moving functions from serial_core.h
- Reduces readability (well, it's ifdeffery - it's hard to follow)

In order to remove SUPPORT_SYSRQ, has_sysrq variable has been added.
Initialise it in driver's probe and remove ifdeffery.

While at it, remove forward-declaration of atmel_console - it wasn't
needed even at the moment the driver was first time introduced:
commit 1e6c9c2878c9 ("[ARM] 3242/2: AT91RM9200 support for 2.6 (Serial)")

Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Cc: Richard Genoud <richard.genoud@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 drivers/tty/serial/atmel_serial.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/tty/serial/atmel_serial.c b/drivers/tty/serial/atmel_serial.c
index a8dc8af83f39..4020fc8ceb49 100644
--- a/drivers/tty/serial/atmel_serial.c
+++ b/drivers/tty/serial/atmel_serial.c
@@ -51,10 +51,6 @@
 #define ATMEL_RTS_HIGH_OFFSET	16
 #define ATMEL_RTS_LOW_OFFSET	20
 
-#if defined(CONFIG_SERIAL_ATMEL_CONSOLE) && defined(CONFIG_MAGIC_SYSRQ)
-#define SUPPORT_SYSRQ
-#endif
-
 #include <linux/serial_core.h>
 
 #include "serial_mctrl_gpio.h"
@@ -196,10 +192,6 @@ struct atmel_uart_port {
 static struct atmel_uart_port atmel_ports[ATMEL_MAX_UART];
 static DECLARE_BITMAP(atmel_ports_in_use, ATMEL_MAX_UART);
 
-#ifdef SUPPORT_SYSRQ
-static struct console atmel_console;
-#endif
-
 #if defined(CONFIG_OF)
 static const struct of_device_id atmel_serial_dt_ids[] = {
 	{ .compatible = "atmel,at91rm9200-usart-serial" },
@@ -2877,6 +2869,7 @@ static int atmel_serial_probe(struct platform_device *pdev)
 	atmel_port = &atmel_ports[ret];
 	atmel_port->backup_imr = 0;
 	atmel_port->uart.line = ret;
+	atmel_port->uart.has_sysrq = IS_ENABLED(CONFIG_SERIAL_ATMEL_CONSOLE);
 	atmel_serial_probe_fifos(atmel_port, pdev);
 
 	atomic_set(&atmel_port->tasklet_shutdown, 0);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
