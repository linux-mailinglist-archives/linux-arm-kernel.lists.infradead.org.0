Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B802A11DA9B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 01:09:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irPHWr6sO6Ps86MFoglgaYv+y4ijvmu7ErvkMCP5JoY=; b=bVa1nV+tezf5ii
	GyCri4B31THHg2ROmlK03mnaD2rN2o9DgBGdN/S6+0FvTuEv7gNOrWzpfHg1OeiM03b2CMPsXyw7M
	dLdi/0TvdaD0ZHrWWhC9uKhfXTULqe32p6gWj3bufWTv0qDxtm+JTzsF3tMmJDqAW2XY9sAzLLd04
	TcOKHAjKUfxkMYQQ03S6/nbkbin3CTZ0o24wPAa0nad9mJ6zswhZfJsY6A9Pxm948zh92pvs2R6G1
	FlgF+JLkrOw2CnX3xcDMShTwdYw7TuYio52Iii0g5sAZcvUsgLZpmw9DlBsudtCmtWDfVMODGngHC
	erpfIigASTg3VlGQRyhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifYVs-00056G-1S; Fri, 13 Dec 2019 00:08:56 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifYV9-0004Ub-Mj
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 00:08:15 +0000
Received: by mail-pj1-x1043.google.com with SMTP id o11so335230pjp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 16:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T7vj+qwFtP7xVmHBgaa06jNzp38vBtMsISF/N9QYy00=;
 b=QCtRZf+DpfijvCDxwWd0IInXC860Nhs1gnLTLXGzQrEyny0IANF6c+HSGP+7/iHmdU
 DM5EdeqGyMXymv4UANFp1Z+5EsiHLvgA6yQ+XcMwy+PTcU7R7QFRT2hVgHWVQ/j363l8
 BgI12yjHkE8/3iqxZ3W2zBJMKdvk4VHuyqHjOre1o03hbAnZy/wYG5+qne5I+RuQXv4x
 6O5l4VOyLvv304hUlJOOE+OQBsUq2Uci45yCHYWyQpxJJ/Rqm2pwQa1A9i1DIc80NKuk
 J9YnQDJtbDSrO/95A7qkhUTtDFXEIcXzu6MQ32q41T9H333pdp1QRtBVdj0+kRMAtNdK
 zuzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T7vj+qwFtP7xVmHBgaa06jNzp38vBtMsISF/N9QYy00=;
 b=gSiV7p3JIYfDkIPynl1Q1tOGPhSU6zNd+8+n4aRTdxeulUFwkVDJrk8Xppa1kjuuL1
 mZDp8vvznZVxP5g1D1ZDV+wocCayRjLfeZUAyBppEHCHXy6mhOVMCTnFtgaqu3JCbmuR
 mm8+l+LnCqa1Of3+U/kAUnHAjUnYlEabFtvovLhSWe6/NFoyi+B6MuuljXnTgevyZNcw
 3HpgUl6ectukkGovYSxm7h4b6eznFPno7SxX45v3dLkffD8AdwZ4qf8s2qjijPnwZcB5
 We1qcdCn0J5iKNDOWiwPehZtQJH7yf6QjAXrJOZ7YkU3pzf1+dIJe3vSVj2YGDAGdLRE
 i7vg==
X-Gm-Message-State: APjAAAUdQiV/X1eroSXL71oaj4YMWcJN3w+7n8S7nJoz+sMKlUvxVvTZ
 4XeSjpeUoJTr1cA2xmDkrSUjPA==
X-Google-Smtp-Source: APXvYqwLlbH3BL8PWw8R26CwvErqXpqt7+6m7DaqfHW7yx/zTlishWw5KaaIcP1V5keny7voOTKrsA==
X-Received: by 2002:a17:902:9a02:: with SMTP id
 v2mr12665787plp.221.1576195690418; 
 Thu, 12 Dec 2019 16:08:10 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id j38sm8317647pgj.27.2019.12.12.16.08.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 16:08:09 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 19/58] tty/serial: Migrate imx to use has_sysrq
Date: Fri, 13 Dec 2019 00:06:18 +0000
Message-Id: <20191213000657.931618-20-dima@arista.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213000657.931618-1-dima@arista.com>
References: <20191213000657.931618-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_160811_807414_E15F94EA 
X-CRM114-Status: GOOD (  11.68  )
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
Cc: Vasiliy Khoruzhick <vasilykh@arista.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Dmitry Safonov <dima@arista.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Dmitry Safonov <0x7f454c46@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
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

Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 drivers/tty/serial/imx.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index a9e20e6c63ad..83c6e2ac0e8d 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -8,10 +8,6 @@
  * Copyright (C) 2004 Pengutronix
  */
 
-#if defined(CONFIG_SERIAL_IMX_CONSOLE) && defined(CONFIG_MAGIC_SYSRQ)
-#define SUPPORT_SYSRQ
-#endif
-
 #include <linux/module.h>
 #include <linux/ioport.h>
 #include <linux/init.h>
@@ -779,9 +775,7 @@ static irqreturn_t imx_uart_rxint(int irq, void *dev_id)
 			if (rx & URXD_OVRRUN)
 				flg = TTY_OVERRUN;
 
-#ifdef SUPPORT_SYSRQ
 			sport->port.sysrq = 0;
-#endif
 		}
 
 		if (sport->port.ignore_status_mask & URXD_DUMMY_READ)
@@ -2231,6 +2225,7 @@ static int imx_uart_probe(struct platform_device *pdev)
 	sport->port.iotype = UPIO_MEM;
 	sport->port.irq = rxirq;
 	sport->port.fifosize = 32;
+	sport->port.has_sysrq = IS_ENABLED(CONFIG_SERIAL_IMX_CONSOLE);
 	sport->port.ops = &imx_uart_pops;
 	sport->port.rs485_config = imx_uart_rs485_config;
 	sport->port.flags = UPF_BOOT_AUTOCONF;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
