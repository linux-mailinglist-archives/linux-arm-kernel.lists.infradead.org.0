Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC6F11DAA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 01:09:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6EK5vhQ+jJEeVPSM/K3gdVDQmqvQmDvukJPDAeDpGxo=; b=Y6yJCLGUJdTN+9
	oVs7T28J1MEr+wHRQCuhsMW+6SmhA0lMy1zmALZGaSe9JfZfgQaLPWtNa+WHRDOWxV7e8XoAsiZvv
	l2MIR5bX2jbnBlJqOPohRd/2vVs01uvGuuxzK4v7CaruHS+yZf6CfNW6py1JPlhzIJDn0YbDI06GU
	g0W1mczbbXbiPRPc/l17vvU1NVo8TdxYejDo9Jer9V8Ue1NTV3JzjPwpZe8YaHDNAU/GsFkKJVNQ8
	a9ySmuJoADxIalu2w9w2IenrqMFj3Q9wbvV0NkqWqYat7dRoy3WcmIjrkVS0J3Fa6qT5y+N1M41rC
	xfcoLQ91NfOdYYpmQMqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifYWA-0005PP-3B; Fri, 13 Dec 2019 00:09:14 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifYVF-0004aS-7K
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 00:08:19 +0000
Received: by mail-pf1-x442.google.com with SMTP id h14so376620pfe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 16:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Uk3TZICnk6L8+YQsKzp4vXh6Lz+AHFrWnELXXHSVLmg=;
 b=MEiquop+dWgeX+dUKlkKtAa/DS84d2iq6ZW3M0G1Psp+yW+8kVNAYH6uQjsPE6JJ5i
 za7C7kyKxoDAA2dn0siHaxDAEijdX3Pcmou7RQYXmgc4vMF/39b3nBwSAnB7xRC9myN9
 t2TD35xkpGzZz9eHkb5uaIx/Jki9YMY0Hxw/TQqUh0/FAtfLYZcdkHvXPq0eFyvHHyeu
 HfjUzcroMqSh7D6/IYRUpsyQDt3CqfFUX+Pm8BoUYGT88RmIXIFDxmWn6vlIye7C2QGn
 2HwQ81fDPi+rbdnS+9f0Y7tr9+nNMau4z5t+HuFuO6XZeNFTOvveWSvDx00bm7lseGgW
 KJwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Uk3TZICnk6L8+YQsKzp4vXh6Lz+AHFrWnELXXHSVLmg=;
 b=s0OY0IewP/EBQJEJ9KGCn2QLNMWAF0xIVm6pfNzYhR0Yldne8S94sexnIIj79qFNye
 Z1WtY1rKNartNVpk5Y/CN0uOtki4NHWaK1StP0WdV99SiKm6xrEcgLuVfTpavkiPa+MR
 5Tf0zg30gZ65uajd9Ial/M+YUYfT1OLkDGfHpNTuTXgCw27Klt9WlTphSGrrQVohjflO
 wW+PikIuC0YaqV64KJ/KN5xyUexgQ+PC7QeOjKQf5rM+uCXfKCjAkgSMt014jYugOhQ3
 OCqYiuO/WmHuIktKnJ3SQHNHyZHQtlvK4IZG8lA/t8xsOKhBFbUbgOUlKVnlcesgWe97
 7f0Q==
X-Gm-Message-State: APjAAAUWmfH+EmA1HHEjQqo8wWGLiMM+XJgHpROHnQcjs50l/sCBZ2wr
 tdkXB0H1K47Hwq+h+FfWzyAt9w==
X-Google-Smtp-Source: APXvYqzavE1+kkQp1uQB6Awu3jk2+Wse3GRBkbNukVGHGUDFeOheGMh3MBohyrMn3SZ2woUxcYQijQ==
X-Received: by 2002:a63:ca4d:: with SMTP id o13mr13550977pgi.360.1576195696496; 
 Thu, 12 Dec 2019 16:08:16 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id j38sm8317647pgj.27.2019.12.12.16.08.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 16:08:15 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 21/58] tty/serial: Migrate meson_uart to use has_sysrq
Date: Fri, 13 Dec 2019 00:06:20 +0000
Message-Id: <20191213000657.931618-22-dima@arista.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213000657.931618-1-dima@arista.com>
References: <20191213000657.931618-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_160817_274946_46EE06B4 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
Cc: Vasiliy Khoruzhick <vasilykh@arista.com>, Dmitry Safonov <dima@arista.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Kevin Hilman <khilman@baylibre.com>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
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

Cc: Kevin Hilman <khilman@baylibre.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-amlogic@lists.infradead.org
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 drivers/tty/serial/meson_uart.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/tty/serial/meson_uart.c b/drivers/tty/serial/meson_uart.c
index fbc5bc022a39..12e15358554c 100644
--- a/drivers/tty/serial/meson_uart.c
+++ b/drivers/tty/serial/meson_uart.c
@@ -5,10 +5,6 @@
  * Copyright (C) 2014 Carlo Caione <carlo@caione.org>
  */
 
-#if defined(CONFIG_SERIAL_MESON_CONSOLE) && defined(CONFIG_MAGIC_SYSRQ)
-#define SUPPORT_SYSRQ
-#endif
-
 #include <linux/clk.h>
 #include <linux/console.h>
 #include <linux/delay.h>
@@ -703,6 +699,7 @@ static int meson_uart_probe(struct platform_device *pdev)
 	port->mapsize = resource_size(res_mem);
 	port->irq = res_irq->start;
 	port->flags = UPF_BOOT_AUTOCONF | UPF_LOW_LATENCY;
+	port->has_sysrq = IS_ENABLED(CONFIG_SERIAL_MESON_CONSOLE);
 	port->dev = &pdev->dev;
 	port->line = pdev->id;
 	port->type = PORT_MESON;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
