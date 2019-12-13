Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A48D11DAD2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 01:10:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMx7Awny7jc0iW4l37PEFanBkbGJSGLZYA4TobzjkZQ=; b=swpbAtWFL1SvbI
	KA8dzNDSlv2KxFA14UVypdTJvSxeV7cHwQfsgEDH4M4feonvLDUfGA4CF7E1CdcIKABZ14zEAMAhq
	yM1oP9K3WBuR48hPHSi80wD56F2QfC4VCm2spvk/Sag//JQAaynk1wtnGbdeICUc7ot2bvnDSAYUb
	ljUVnXiVWT9lXRzQu/mjuWENCOFhpEoDOJICA4fjXMB2lA1UhrWNz8cPkTvDFgkxG6/LCQJ57kM72
	PQpgwGlhgy/Kq4H6/SwAm/rGQmgdlZF0cREVl4BNZ5jdkgvj6rf+od1mxzW9vvIspyS+f4axFknLo
	hMzL+oi5mlx0WHHp5xnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifYXL-0007qJ-8h; Fri, 13 Dec 2019 00:10:27 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifYWk-0006GT-3u
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 00:09:52 +0000
Received: by mail-pg1-x543.google.com with SMTP id x8so530628pgk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 16:09:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yMq/uVp2bU7wlvZw3KZoovZc3l4G7lkpgRh+6p4cD3E=;
 b=Z/PDy/mVsZTQqr/IepgWfeO3RQGcdegMuGz3YoVARfv4HpthA8oi8i2KQw6uBDhz33
 O4Ow1GEg4g+ZFVImGVpbI1M0s9h/cH7kpfkTKEGX8XgsLS08xVTguobc4MrhmgNwwczx
 KwoJiECme9OsAKNFUInINhcA04o2VBUuROayRtWWZPFfnQSQEC6tWsz5XMDLIodOAt7d
 NDOaFUQAFBCjSweyX/Gw9yxlE+PA9WlQxp/bqfdfHXL14bwTBduKD9zMEzL/aXvPpXfn
 FChEa9mUzsoODPgkqpp5Wrn2rRy+0p3aLx5eVPkkX8gMA80uqMUzR+ZYgmXA7Jp8Ngx9
 TZQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yMq/uVp2bU7wlvZw3KZoovZc3l4G7lkpgRh+6p4cD3E=;
 b=fBOhucCIN1gC+7AwPLkfJ9OJgEb+/0dMDqXN5oHq7XoOzBxwpgj9xy3IJslZYA/kQC
 gS2vrf4TECjSC/bJlXWfL3MiHhQMdZ7zn84gNNA9tm0dPQa1NTuOhxhUHTJ5UtbQjMkY
 HOh1mS9FAxzqeHhXbHqxB3/i9bcmttfjJLf/qZ5iZaruSQQloFcb3eNGD7LN/kbhvhrS
 LQ4d6RKFS10KWpBnzPz81UTuKRWMtxwV7ZePjMlYX9hOtqiLwUuZ7AYSDAV6J1RUJRgg
 /RBK8RCwjOqrL7j/gDGKjOVDwKIxPt7h4c4su04Q8zGuoh5YHR96UfJms/wZi4vnEBun
 siXQ==
X-Gm-Message-State: APjAAAXM0VlxG8gfLmZx5lxJnD+eP89fHEVu+FdWrszp2tzdo5UHBwnb
 RapF/sfH8yJOv+1obpbZcG44KA==
X-Google-Smtp-Source: APXvYqwOENiOM4ymiVUwMat/f33ffxUq/FBlNLHyjzgxpbp6j6YG6HK/8dg6aGyVUNuaJlZ5rmXAzg==
X-Received: by 2002:a63:f844:: with SMTP id v4mr13352747pgj.71.1576195788732; 
 Thu, 12 Dec 2019 16:09:48 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id j38sm8317647pgj.27.2019.12.12.16.09.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 16:09:47 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 52/58] tty/serial: Migrate xilinx_uartps to use has_sysrq
Date: Fri, 13 Dec 2019 00:06:51 +0000
Message-Id: <20191213000657.931618-53-dima@arista.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213000657.931618-1-dima@arista.com>
References: <20191213000657.931618-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_160950_300832_E7127712 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 Dmitry Safonov <0x7f454c46@gmail.com>, Michal Simek <michal.simek@xilinx.com>,
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

Cc: Michal Simek <michal.simek@xilinx.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 drivers/tty/serial/xilinx_uartps.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 4e55bc327a54..2b5606469bed 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -9,10 +9,6 @@
  * in the code.
  */
 
-#if defined(CONFIG_SERIAL_XILINX_PS_UART_CONSOLE) && defined(CONFIG_MAGIC_SYSRQ)
-#define SUPPORT_SYSRQ
-#endif
-
 #include <linux/platform_device.h>
 #include <linux/serial.h>
 #include <linux/console.h>
@@ -1634,6 +1630,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
 	port->flags	= UPF_BOOT_AUTOCONF;
 	port->ops	= &cdns_uart_ops;
 	port->fifosize	= CDNS_UART_FIFO_SIZE;
+	port->has_sysrq = IS_ENABLED(CONFIG_SERIAL_XILINX_PS_UART_CONSOLE);
 
 	/*
 	 * Register the port.
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
