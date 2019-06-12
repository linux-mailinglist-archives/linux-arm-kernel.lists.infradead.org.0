Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 914FF423C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:15:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aeXMfBe3DHz1Y+HGnERUkQ3n5I2Y/jUom9QH2jPcGlY=; b=l79UAj1qYloL7fftb3ajQ3UCq4
	wsn5xsyTu0ynaDZcDw8uRxn9MypZwrAP8qYRtWEbl02QvbwzcpF16B5kKd/VFFPla18VMGxK6ZrJT
	rtfAWnB8AXHtBA66Yf8kb4nBm05HTaAGtvCxQmP7H+q53ZZEMQz1alDt9biO+TMgWHuwgQCOLOrNY
	gki8YE4HPTlP4nRv2Kwb8TSowpmUI4RmmB/ZzL3aXurTKRW4EKW8ZF/W5T7uTvTQob+u5Fu1VUdNw
	iUQAXPfwbIxi0ZQ4CqJFhyXUJC0Uk5o6ZvJ5ELhw8wa0OjVGTbYBDthedaBHhxoW5HoHf7F/GYYGf
	JMJ3FN7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1Dw-0006Xb-AE; Wed, 12 Jun 2019 11:15:24 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1DP-00066r-Km
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:14:53 +0000
Received: by mail-wr1-x443.google.com with SMTP id d18so16434811wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=NnFm9RoxHS8m0lojdUsIdKlkIcGlKRsn/Qls2kl7Du4=;
 b=vJ8MWs3xCAP10O+/tw+ajXf/Z9z0zjuN6S/iODK4BARmr0JqC7ItWkKbW+uJ99UCvA
 YeOQ5IezMKgR3fuYHyKHzHAUyDZ8HrCWG3+xIgNk/7FYSdLJoxPhJ7a0m9j5pTqD27gH
 nkNVzQVSGJ0vdDrjuSEgM7HrFL8BnqGggijp3gJkg3s372J38utK69Oeiu+1DllfJLYJ
 npIAWwBXk4lCJ5w+q779GctHtwfgbB2t/J3Nkugp3d4XClKjZZsVQ1lEhQe5PTWs1vL6
 iCjoBvtzcD9ZV9EBGi4SyeTOFWqf+++Ixxi8tv7xdA671+urlkeYGAwbMxru+s26Vgoi
 OACw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:in-reply-to:references;
 bh=NnFm9RoxHS8m0lojdUsIdKlkIcGlKRsn/Qls2kl7Du4=;
 b=eEfg1L0ZB3pl/qsT6FrbSTwB5DQ92V/gjnScVfMXkv5oClE30JgrklX+iLTWGiRWCI
 iMeGGL2i01xLxTaU4EsqWK6VvtPRGc6NabkolQ2j30Q9YRifPnRI4jvxznC7/LBUxo6a
 nwFJ+qQIYveGmyEyRcr6cvl1Ux5l19ZvcOUur489gyhs/s8w4yCsmShJrFX6M54HhZIu
 CWlcXJMlKBulLfovNghs0+3ue/CacZl3tJK1PqtKJdQQacQeoVZml8aCUrakA8MCEAv1
 3U23HBIVLmVjgwUgPyc48F3EU87GlMSICzlEjBJdLFrzZVEPqVOkOnymjehWCb2K2zVD
 q1+Q==
X-Gm-Message-State: APjAAAWwrMUni7PVuCzjOAWWXFRQtsCJYMV90wYeeZ2PIFYm1fCzxK8n
 Ty7+tRGfi1xCpk+z9aa6okWDUw==
X-Google-Smtp-Source: APXvYqwbi8W/UYkCzMJLaCklKQBfeHAQMEcDaMqD7GdpzWuZQ8QpJkYincPYnwzm8UpBd5aiyruS6A==
X-Received: by 2002:adf:fb8a:: with SMTP id a10mr18835589wrr.235.1560338089973; 
 Wed, 12 Jun 2019 04:14:49 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id r6sm10675891wrp.85.2019.06.12.04.14.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Jun 2019 04:14:49 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: johan@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, michal.simek@xilinx.com
Subject: [PATCH v2 1/6] serial: uartps: Use the same dynamic major number for
 all ports
Date: Wed, 12 Jun 2019 13:14:38 +0200
Message-Id: <6bacab58ca88dd08c766b571f19d0b26378099fb.1560338079.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1560338079.git.michal.simek@xilinx.com>
References: <cover.1560338079.git.michal.simek@xilinx.com>
In-Reply-To: <cover.1560338079.git.michal.simek@xilinx.com>
References: <cover.1560338079.git.michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_041451_696001_60C4B5FE 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>

Let kernel to find out major number dynamically for the first device and
then reuse it for other instances.
This fixes the issue that each uart is registered with a
different major number.

After the patch:
crw-------    1 root     root      253,   0 Jun 10 08:31 /dev/ttyPS0
crw--w----    1 root     root      253,   1 Jan  1  1970 /dev/ttyPS1

Fixes: 024ca329bfb9 ("serial: uartps: Register own uart console and driver structures")
Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2:
- Fix typo in subject line
- Swap patches compare to previous series
- Add Fixes tag

 drivers/tty/serial/xilinx_uartps.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 605354fd60b1..9dcc4d855ddd 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -29,12 +29,12 @@
 
 #define CDNS_UART_TTY_NAME	"ttyPS"
 #define CDNS_UART_NAME		"xuartps"
-#define CDNS_UART_MAJOR		0	/* use dynamic node allocation */
 #define CDNS_UART_FIFO_SIZE	64	/* FIFO size */
 #define CDNS_UART_REGISTER_SPACE	0x1000
 
 /* Rx Trigger level */
 static int rx_trigger_level = 56;
+static int uartps_major;
 module_param(rx_trigger_level, uint, S_IRUGO);
 MODULE_PARM_DESC(rx_trigger_level, "Rx trigger level, 1-63 bytes");
 
@@ -1517,7 +1517,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
 	cdns_uart_uart_driver->owner = THIS_MODULE;
 	cdns_uart_uart_driver->driver_name = driver_name;
 	cdns_uart_uart_driver->dev_name	= CDNS_UART_TTY_NAME;
-	cdns_uart_uart_driver->major = CDNS_UART_MAJOR;
+	cdns_uart_uart_driver->major = uartps_major;
 	cdns_uart_uart_driver->minor = cdns_uart_data->id;
 	cdns_uart_uart_driver->nr = 1;
 
@@ -1546,6 +1546,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
 		goto err_out_id;
 	}
 
+	uartps_major = cdns_uart_uart_driver->tty_driver->major;
 	cdns_uart_data->cdns_uart_driver = cdns_uart_uart_driver;
 
 	/*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
