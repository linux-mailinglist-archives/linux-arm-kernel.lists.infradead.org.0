Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F346A3B125
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 10:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aYgA7Rv61sEUKC7U7YT8a6elNT8OooWYqOogVIR/5yw=; b=ADTcG4De9TmMmJK4U7y4e6/6BM
	7N0OQBEZ3ONCJPFA52qBcpCMBzvvCgPf3lFAq4kDJBfhrzgRoOpkS/Ma9oKnUsuYhpzWbcNFUoSfu
	RU33QjbOw0Q9sfbyT3l1UBnkQC4lfZ3yYmNj7nHV9vNNqfMV+Qj3bqkNdtD3TOKvHldIyqGW/A3zD
	c3ew4Z5ejTNH7j7zLyU+tpch1gfLR/iK/7ggKRYIjH0V6HSXhp0k+k1auVlXD/xVPWEStJA36fODG
	Tinmyz3kg9AbbriSJcbHZRvBB5FpOZru0UCL+FU/8jTAL2GF+v+Rrpl/3vPubxVvfzx2HUmQbsFUI
	U11Ido0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFwH-0006Nl-TY; Mon, 10 Jun 2019 08:46:02 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFvN-0004hG-Ks
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 08:45:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id u8so7305606wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 01:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=M+cP6C7+VK3jw1r29YjrDx6Ndjlh7cgtx3v4K/NgDeo=;
 b=skNfvRf9d+s4BJ3piPlivoHWyDhAwaIRmipuCtcV3u2KR+vFbN4F+TJuRmtQ8/lnvF
 1gtZAsGOd56DCCnP1pmwBnX2m2YQLDATKu4pUkOmahNnAPJ/MNrjJSfW7MSY7+j21xPI
 Mhr9hj0SmaCObOLnsXZTJRZ5thrzaXG3syQQBNPB/FJkoXl4UC7/pALnd/1O1tjvkixy
 DCIbarfpgzpMXJO4PPUWxqzowa49YG/LWIkMjAQpoMn9oZPrX4iN9MGm7n8+SYn9p9kd
 BUAKc/S+myiWbw7/p1Nd/QWCDET3wxjz3eijq8BQ3AVmtbcO5Kcn3gKl1ToUub+WIZ10
 4Gww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:in-reply-to:references;
 bh=M+cP6C7+VK3jw1r29YjrDx6Ndjlh7cgtx3v4K/NgDeo=;
 b=tE9YcEDjv9bwK/PCkakyJFIM3wSljCAV8ZhD9YmG1a9AQHjDfls8dbFZq+XsOSlFXz
 o2OK/SmRqOE7lnbovTRb/D0/75D8/8Qo3KHZNUyFscyhCHSO97KzzyvXlE2x6yYjh5oO
 SAS0Kx1jjptlJtefMIi2AwoiV98T/h1aog9mIAa8r/pucHj5geAch8oL0/bnJTYcCWcd
 M8kfgSlFkdpAcTeG3vUdy1FoBGK9Qx6PWrnbTAr9E6tjAl97mt/Or5crQZzcWsXo5rY2
 mPqcwXGgCuti/t+Ut9ZQQHCua7Hhbv5yVnlfukJyact/Z7Dj+vDH4g/Bk7ZM3wyxpxkd
 1imA==
X-Gm-Message-State: APjAAAUag5s8nxcrdKce4L5HAhbEGmhIH2YOkyX0rmaGKQ2iXNieHAjs
 h7kWE5L6I9D4qKzvtDMWOumixQ==
X-Google-Smtp-Source: APXvYqyqoIr6fU1KzvLY8lEPM3s5B6qJXzVnTwekyShtxIqDrTxMhdNjfJPY9GeTEpwMm2XWi5yoPg==
X-Received: by 2002:a1c:750d:: with SMTP id o13mr12156994wmc.35.1560156303497; 
 Mon, 10 Jun 2019 01:45:03 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id w23sm7629173wmi.45.2019.06.10.01.45.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 01:45:03 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 johan@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH 2/2] serial: uartps: Use the same dynamin major number for all
 ports
Date: Mon, 10 Jun 2019 10:44:56 +0200
Message-Id: <381ea608440345a4424d24296666b2451b1a20ee.1560156294.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <c6753260caf8b20cc002b15fcbf22b759c91d760.1560156294.git.michal.simek@xilinx.com>
References: <c6753260caf8b20cc002b15fcbf22b759c91d760.1560156294.git.michal.simek@xilinx.com>
In-Reply-To: <c6753260caf8b20cc002b15fcbf22b759c91d760.1560156294.git.michal.simek@xilinx.com>
References: <c6753260caf8b20cc002b15fcbf22b759c91d760.1560156294.git.michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_014505_835519_342C411B 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 drivers/tty/serial/xilinx_uartps.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 6af2886f5ba7..a0b51c60faeb 100644
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
 module_param(rx_trigger_level, uint, 0444);
 MODULE_PARM_DESC(rx_trigger_level, "Rx trigger level, 1-63 bytes");
 
@@ -1516,7 +1516,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
 	cdns_uart_uart_driver->owner = THIS_MODULE;
 	cdns_uart_uart_driver->driver_name = driver_name;
 	cdns_uart_uart_driver->dev_name	= CDNS_UART_TTY_NAME;
-	cdns_uart_uart_driver->major = CDNS_UART_MAJOR;
+	cdns_uart_uart_driver->major = uartps_major;
 	cdns_uart_uart_driver->minor = cdns_uart_data->id;
 	cdns_uart_uart_driver->nr = 1;
 
@@ -1545,6 +1545,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
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
