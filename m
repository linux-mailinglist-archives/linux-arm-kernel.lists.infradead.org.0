Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7257F1FED55
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 10:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zPVfzpxdKUZmZFXL4IHIzka0ZseDFHtD/0l9G8VXBts=; b=OwlzX53fJQVrC7
	ucGc/1U0KY0VYpn+RjAE6gth24j2MHUt5bn5/Sb5vXEqo1Tazt20wUUHSUmGdvCo72jfegfyl+6YJ
	0E/6ICqlbgSfNwtwYh8/5lrqT2h7MJLhz2wQ0YAwuOXvjh9FADDuyAo6lTrcK4rV/sO9nFZVynJMV
	1XpDpWe+zNGZwdTD6ErAVFxke8CtaVSYdXXF8AWeyhU/y8dS8D1Pupw1Pb3K6lc011sZJW8GgYJVl
	7/2mq1ObUfmu6yal4u1b1yBSKGLa70vNnKd2+2dCoF2NUcVfmdwRmnafOEQCq/C/hF8dlBpfSY+QZ
	kBu9TUCZMRjTRn+3o3vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlpj3-0004Tw-N7; Thu, 18 Jun 2020 08:16:45 +0000
Received: from thoth.sbs.de ([192.35.17.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlpiu-0001N9-Ia
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 08:16:38 +0000
Received: from mail2.sbs.de (mail2.sbs.de [192.129.41.66])
 by thoth.sbs.de (8.15.2/8.15.2) with ESMTPS id 05I8Bhvw013177
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Jun 2020 10:11:43 +0200
Received: from [167.87.31.88] ([167.87.31.88])
 by mail2.sbs.de (8.15.2/8.15.2) with ESMTP id 05I8BetX029723;
 Thu, 18 Jun 2020 10:11:41 +0200
From: Jan Kiszka <jan.kiszka@siemens.com>
Subject: [PATCH] Revert "tty: xilinx_uartps: Fix missing id assignment to the
 console"
To: Michal Simek <michal.simek@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <f4092727-d8f5-5f91-2c9f-76643aace993@siemens.com>
Date: Thu, 18 Jun 2020 10:11:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_011636_916608_D9362F3E 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.35.17.2 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.35.17.2 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, linux-serial <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jan Kiszka <jan.kiszka@siemens.com>

This reverts commit 2ae11c46d5fdc46cb396e35911c713d271056d35.

It turned out to break the ultra96-rev1, e.g., which uses uart1 as
serial0 (and stdout-path = "serial0:115200n8").

Cc: stable <stable@vger.kernel.org>
Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 drivers/tty/serial/xilinx_uartps.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 35e9e8faf8de..ac137b6a1dc1 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -1459,7 +1459,6 @@ static int cdns_uart_probe(struct platform_device *pdev)
 		cdns_uart_uart_driver.nr = CDNS_UART_NR_PORTS;
 #ifdef CONFIG_SERIAL_XILINX_PS_UART_CONSOLE
 		cdns_uart_uart_driver.cons = &cdns_uart_console;
-		cdns_uart_console.index = id;
 #endif
 
 		rc = uart_register_driver(&cdns_uart_uart_driver);
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
