Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C8A174FA0
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 21:45:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=62OdiIH/NLZyS5SECRpyjYCIsmeVq3zLQ6oXxcuJyEU=; b=LGapNC/Jh9Ip4U
	8eUmBgCl2zzHid7oxGWxHMaL0HlhAv8mOc4qqcf1eQsuD8r7a110wnYS88NdaO4oNn8oVM2lpv0pL
	8NZJI63IXDm+I5X5651Sh0TrLXD049saZpuAvjuvBkEFVhaVq02TeVI8Q4C16W+oMuH7E7G030Iii
	VHzXB3G7ij/o3w4riKdhJa898Cjewhyn+uK0rYbe9Xc+mpR50gE6IEIGCcIcHa/knucyiVvdaj3gZ
	pLqVYWwmawlyIDAkc8pM8OeLV2Pv9xz7HWOcvYs1WQRJyn+rdQHfh0+fb8qrJAF8aBoZ3jhwWO8zS
	+YNQddM8XkJpYvdtsWEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8VT1-0004TY-HH; Sun, 01 Mar 2020 20:45:39 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8VSu-0004Sb-Pz
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 20:45:34 +0000
Received: by mail-pl1-x644.google.com with SMTP id q4so3352320pls.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 12:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=rKTRr7gH/H3erxMOjX8RHhnD0WNXnZrb4KZ5NXj3rVs=;
 b=ED+21RTy6uFrUbhqFAJUvVt0+8PRGDmN4LkSicuW7WxsAJ1k5PUH9cHXRzHlzUhLRe
 UUryCb7SvyQ06BK3HRT6U4qc/rMWFHRxqAqQOoqXmW5gCKRQrqaqH2Se1t/uYts2G6wW
 wQJw4WF16qD0t7P7nJbTPak36k7X6Rj8KHH5saMV9X+4WBEysjSNGxPF28Vn6U61l+Py
 73M0xYa5eAUeOg+kJx4NgxnfVF8McUoG0nSZBghGgX1gH+60tZKM5aBihMesy01KEVs2
 OaXq69FKFk6wGGuxFHeTGZutUEmr6jIusGIjZpE33U8U/gTvvL/vxrPdbhsG7O/jTwu9
 yBrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=rKTRr7gH/H3erxMOjX8RHhnD0WNXnZrb4KZ5NXj3rVs=;
 b=otZy8M0Wk5KzO/xC+4MMHVi1Mu2Kd5madWetTss0CuX340COmFjK0O9+raEGUJjMWl
 KE2uGPXm3pLSNOnLdwujuExhezJOXifHsj6hLLGaYuRLVXdIbCuTaBfvsxzxEdNIcvA0
 LNdS2Ky+T5zhbsTzRCsNf96W1yCQmWePQwhzLhDeVDwJ5iZnWeP1LFJ/RXjA6I6oK56C
 AkRl3+eUwC/UMKt/kQOb7N9ABAGh2M/wV5cJaclQgXqBK5Qq9gBnbkbIulnnx8p3IDyT
 74rgY/n+bDIp2/Vo+Gvwy/IRy/J49IZwCWhl0s3vK+BPHgUKT5BwAxQA/ruoljlnzbbv
 Z+gg==
X-Gm-Message-State: APjAAAUQsFCoe5Drk2lH2UKLHf3IwNBU6rm2n2QwhvmBML3qnIYtLVY8
 ZR4zTI8f+gXuJ7YZLxHraKU=
X-Google-Smtp-Source: APXvYqzTomvywQgBmsA0iDTcN1YhecACD1PW6HLIrDNCKUMpcYT/bZOHQr1NmKuRvn/iMLmXYazJ7A==
X-Received: by 2002:a17:902:ab95:: with SMTP id
 f21mr13470060plr.188.1583095530670; 
 Sun, 01 Mar 2020 12:45:30 -0800 (PST)
Received: from nishad ([106.51.232.103])
 by smtp.gmail.com with ESMTPSA id h10sm18127494pfo.181.2020.03.01.12.45.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 01 Mar 2020 12:45:30 -0800 (PST)
Date: Mon, 2 Mar 2020 02:15:21 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>, Richard Genoud <richard.genoud@gmail.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Barry Song <baohua@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Joe Perches <joe@perches.com>
Subject: [PATCH] tty: serial: Use the correct style for SPDX License Identifier
Message-ID: <20200301204517.GA10368@nishad>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_124532_870452_5F43BD20 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [nishadkamdar[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch corrects the SPDX License Identifier style in
header files related to tty serial drivers.
For C header files Documentation/process/license-rules.rst
mandates C-like comments (opposed to C source files where
C++ style should be used).

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46.

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/tty/serial/8250/8250.h         | 2 +-
 drivers/tty/serial/8250/8250_dwlib.h   | 2 +-
 drivers/tty/serial/atmel_serial.h      | 2 +-
 drivers/tty/serial/cpm_uart/cpm_uart.h | 2 +-
 drivers/tty/serial/icom.h              | 2 +-
 drivers/tty/serial/ifx6x60.h           | 2 +-
 drivers/tty/serial/jsm/jsm.h           | 2 +-
 drivers/tty/serial/pic32_uart.h        | 2 +-
 drivers/tty/serial/serial_mctrl_gpio.h | 2 +-
 drivers/tty/serial/sirfsoc_uart.h      | 2 +-
 drivers/tty/serial/stm32-usart.h       | 2 +-
 drivers/tty/serial/timbuart.h          | 2 +-
 12 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/tty/serial/8250/8250.h b/drivers/tty/serial/8250/8250.h
index 33ad9d6de532..32881e21b0c8 100644
--- a/drivers/tty/serial/8250/8250.h
+++ b/drivers/tty/serial/8250/8250.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  *  Driver for 8250/16550-type serial ports
  *
diff --git a/drivers/tty/serial/8250/8250_dwlib.h b/drivers/tty/serial/8250/8250_dwlib.h
index 87a4db2a8aba..9a12953832d3 100644
--- a/drivers/tty/serial/8250/8250_dwlib.h
+++ b/drivers/tty/serial/8250/8250_dwlib.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /* Synopsys DesignWare 8250 library header file. */
 
 #include <linux/types.h>
diff --git a/drivers/tty/serial/atmel_serial.h b/drivers/tty/serial/atmel_serial.h
index d811d4f2d0c0..0d8a0f9cc5c3 100644
--- a/drivers/tty/serial/atmel_serial.h
+++ b/drivers/tty/serial/atmel_serial.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * include/linux/atmel_serial.h
  *
diff --git a/drivers/tty/serial/cpm_uart/cpm_uart.h b/drivers/tty/serial/cpm_uart/cpm_uart.h
index 9f175a92fb5d..0de77c18c475 100644
--- a/drivers/tty/serial/cpm_uart/cpm_uart.h
+++ b/drivers/tty/serial/cpm_uart/cpm_uart.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  *  Driver for CPM (SCC/SMC) serial ports
  *
diff --git a/drivers/tty/serial/icom.h b/drivers/tty/serial/icom.h
index 8a77e739b333..26e3aa7b01e2 100644
--- a/drivers/tty/serial/icom.h
+++ b/drivers/tty/serial/icom.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * icom.h
  *
diff --git a/drivers/tty/serial/ifx6x60.h b/drivers/tty/serial/ifx6x60.h
index c5a2514212ff..cacca5be7390 100644
--- a/drivers/tty/serial/ifx6x60.h
+++ b/drivers/tty/serial/ifx6x60.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /****************************************************************************
  *
  * Driver for the IFX spi modem.
diff --git a/drivers/tty/serial/jsm/jsm.h b/drivers/tty/serial/jsm/jsm.h
index 7a128aaa3a66..8489c07f4cd5 100644
--- a/drivers/tty/serial/jsm/jsm.h
+++ b/drivers/tty/serial/jsm/jsm.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /************************************************************************
  * Copyright 2003 Digi International (www.digi.com)
  *
diff --git a/drivers/tty/serial/pic32_uart.h b/drivers/tty/serial/pic32_uart.h
index 2f2b56927dc6..b15639cc336b 100644
--- a/drivers/tty/serial/pic32_uart.h
+++ b/drivers/tty/serial/pic32_uart.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * PIC32 Integrated Serial Driver.
  *
diff --git a/drivers/tty/serial/serial_mctrl_gpio.h b/drivers/tty/serial/serial_mctrl_gpio.h
index 1b2ff503b2c2..b134a0ffc894 100644
--- a/drivers/tty/serial/serial_mctrl_gpio.h
+++ b/drivers/tty/serial/serial_mctrl_gpio.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Helpers for controlling modem lines via GPIO
  *
diff --git a/drivers/tty/serial/sirfsoc_uart.h b/drivers/tty/serial/sirfsoc_uart.h
index 637b09d3fe79..fb88ac565227 100644
--- a/drivers/tty/serial/sirfsoc_uart.h
+++ b/drivers/tty/serial/sirfsoc_uart.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Drivers for CSR SiRFprimaII onboard UARTs.
  *
diff --git a/drivers/tty/serial/stm32-usart.h b/drivers/tty/serial/stm32-usart.h
index a175c1094dc8..db8bf0d4982d 100644
--- a/drivers/tty/serial/stm32-usart.h
+++ b/drivers/tty/serial/stm32-usart.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) Maxime Coquelin 2015
  * Copyright (C) STMicroelectronics SA 2017
diff --git a/drivers/tty/serial/timbuart.h b/drivers/tty/serial/timbuart.h
index fb00b172117d..007e59af636d 100644
--- a/drivers/tty/serial/timbuart.h
+++ b/drivers/tty/serial/timbuart.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * timbuart.c timberdale FPGA GPIO driver
  * Copyright (c) 2009 Intel Corporation
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
