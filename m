Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E595C19D38A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:25:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bho/1wY6GAz8tZeC+TOXWRxZbKBSvqk+idhxb8nEyFk=; b=J9OJiB3RJGN98y
	ZJuvNg4kjZ77Mst/APp3uSsDcXNmKwHQGg2OM4MotTleu/ViyG18nmgjkM97xSRz9cRrHBbrIA9zt
	lkzBs7Bpnj6E3eknDpX98FjO4+ceo8KrQYQpxdx332KqrfDsAfPhTKEtLyBlYQ655vD3gLQqoQRjb
	73H58VzM3pGBw5SFhec2kMwMpC7BGFlG8TLQeJHglbeUJO73gyKUBX2OzPCWXQSCBU9wWEajcGM8i
	T0S2Nc5Mx1yxCedFI7SkX09BF+iFKBVnP7afduWdjdWfLtWZW8QxvRdB0DuzBNh+QhvL/JgJpYufa
	V1VNAUxefIgX3q3IbdUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIa2-0005A4-Cv; Fri, 03 Apr 2020 09:25:38 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIZD-0002Gm-Vv
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 09:24:50 +0000
Received: by mail-wr1-x442.google.com with SMTP id s8so5511797wrt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 02:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ew63BkEv/kfxHpMMNdikCR0PEHDgqdNqoqdmac2PSKA=;
 b=nqXDAcA18svfS3jZNCR7amAzTEV4XFdGl7xmK2DqvINR+SkL1t+v8YLTMfgVloHqWn
 E2/RWW/BQ2XYUiz4jg7loCIE4ACzMxBNacaqILqfCpg6CWfUmNCSvbwQ2nJHKIOD4EaC
 IE1IazZ8GWvVKNxBNCCeSqwDwqBgFI5W/NGHcR1txkEN2m2pIK/JQtar5bhcNw3foAZc
 GJ4WVmIXES9AVisyyi5zFCgUO2nfSx5d+cd6dTJ+ZW10LD7lqG3W+E38k/F2t966o4+v
 oRFbOvLLnMqcSkC63jPYy888YjYcM+ZdkthQDRmWDXqMmIpwKo5ZM6Gd1yuGEs/rnz/r
 /zHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=Ew63BkEv/kfxHpMMNdikCR0PEHDgqdNqoqdmac2PSKA=;
 b=aceCrBEolhX/OvBwFA9Fhpeuv4DvRfWCfC8R89iZl8373DFMfvNFokXa5LC91Zs4qa
 Fu73b456UBDh/0/omIo+aIhXgGYRyyhSO61fBWvbuFxAC7mNJxJEHeLIP1eGTi6FWjpG
 9UHEEOJFEml+tQQ3XC7zsM1kkKmwZiJvSKRLy8IFCHflc3kRhG/s2g76zwTY2J16Nog+
 y7NwSWlXQQbso9euleB0AIYAZKjU96pHppcd1q82TXsYGreOKtpiVxy+GHEybN5bJW6a
 k0uf46EhcFK87H0+gu1JRssR+QgbF/W/MP0rJtc09g+QDVhUX9pXabxMTRxIYa3dKg/6
 wawQ==
X-Gm-Message-State: AGi0PuZey2cSI888C/h20XhzZl25d1xqNV/zfMPXq0JseY9DslC5s0KN
 dHeassFwVH4tPelXa9lt6CVX/Q==
X-Google-Smtp-Source: APiQypKUEmHsm1YoMsvpKAQDoaPcz47Ucobj2J3VmxgQorhw8miHjx4iVotM1xfJKqJqgSaSIvlvDA==
X-Received: by 2002:adf:e445:: with SMTP id t5mr8138163wrm.352.1585905885230; 
 Fri, 03 Apr 2020 02:24:45 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id b6sm11508761wrp.59.2020.04.03.02.24.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Apr 2020 02:24:44 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: johan@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com
Subject: [PATCH 2/7] Revert "serial: uartps: Use the same dynamic major number
 for all ports"
Date: Fri,  3 Apr 2020 11:24:31 +0200
Message-Id: <14a565fc1e14a5ec6cc6a6710deb878ae8305f22.1585905873.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1585905873.git.michal.simek@xilinx.com>
References: <cover.1585905873.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_022448_021676_02301E0E 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

This reverts commit ab262666018de6f4e206b021386b93ed0c164316.

As Johan says, this driver needs a lot more work and these changes are
only going in the wrong direction:
  https://lkml.kernel.org/r/20190523091839.GC568@localhost

Reported-by: Johan Hovold <johan@kernel.org>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 drivers/tty/serial/xilinx_uartps.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index b858fb14833d..4e3fefa70b56 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -26,13 +26,13 @@
 
 #define CDNS_UART_TTY_NAME	"ttyPS"
 #define CDNS_UART_NAME		"xuartps"
+#define CDNS_UART_MAJOR		0	/* use dynamic node allocation */
 #define CDNS_UART_FIFO_SIZE	64	/* FIFO size */
 #define CDNS_UART_REGISTER_SPACE	0x1000
 #define TX_TIMEOUT		500000
 
 /* Rx Trigger level */
 static int rx_trigger_level = 56;
-static int uartps_major;
 module_param(rx_trigger_level, uint, 0444);
 MODULE_PARM_DESC(rx_trigger_level, "Rx trigger level, 1-63 bytes");
 
@@ -1535,7 +1535,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
 	cdns_uart_uart_driver->owner = THIS_MODULE;
 	cdns_uart_uart_driver->driver_name = driver_name;
 	cdns_uart_uart_driver->dev_name	= CDNS_UART_TTY_NAME;
-	cdns_uart_uart_driver->major = uartps_major;
+	cdns_uart_uart_driver->major = CDNS_UART_MAJOR;
 	cdns_uart_uart_driver->minor = cdns_uart_data->id;
 	cdns_uart_uart_driver->nr = 1;
 
@@ -1564,7 +1564,6 @@ static int cdns_uart_probe(struct platform_device *pdev)
 		goto err_out_id;
 	}
 
-	uartps_major = cdns_uart_uart_driver->tty_driver->major;
 	cdns_uart_data->cdns_uart_driver = cdns_uart_uart_driver;
 
 	/*
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
