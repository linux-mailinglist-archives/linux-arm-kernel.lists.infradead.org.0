Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0712711DA91
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 01:08:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvp+ONtjHbfSY8RZ7dVi+I5iKoaw3/1TvrNtRJ4gUok=; b=Y1F4QrSYjewsO3
	mhoQHvTjmGowT9MB3kOSuGnBYNv66gGgorlQSAhJw1Kywho1BtiNq3gxxUJbCGqzAeWHfXTrCjjSc
	WVnXxSyHhqwBplLLLlGpejE4UWuZYR4viRVOhe/Hchw6U6xR66JbEc6wb2iXaAOPyV9CwkFEV88UZ
	Ir1COQ8MvXopmUOGlUUC9b+uOMxtZX431/4byLQKOyL433Plqfh+sZNPij3e/dfYcsuDmfOKvqqqC
	XlX904x/k0ltlcgdbSH/35OhC2NMYPez0XaKKZdk7YiMQH7NX8sSOLgfW6dUfRU1Mq8oY/p5Jdkkv
	AvYUqrmLzdukijEwz+rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifYVR-0004Xt-Ca; Fri, 13 Dec 2019 00:08:29 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifYUr-0004Fb-BK
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 00:07:58 +0000
Received: by mail-pl1-x642.google.com with SMTP id k20so368627pll.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 16:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1lzeOKE7E2xm2Pt7osPxOs8CjOGmgq2Y6YA5myrIRwI=;
 b=UAGjR5Lwhlk2Ldz8b3cTLehatxJ/23uzY+Ob377pN0apnlpA770tNf4dQhE0OtCW+S
 L/QyIj6i2JC/neA9LoyfQmluxjAFkAcgszhlqfHmyDmHOlom6m3rRD1AvK2WraW9al61
 +iTX8p0wkbUv84baDL/YqJX2paQPCuceH4dmb8uMHS83muaLzVYaj6xTSassG8mmh4E8
 /u1z4oMQmA03jFhf/icDV8SAhnxBTKqNv5SiNq0FEyMdIdVPWm+mrzos74CwWVUzCXC8
 S45FAbDm+7QtukDSwo73q4zwfwMRmH8aVTECzWx4T3AaPfQRYMdqcrYcYSZJ55o7+exF
 AGuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1lzeOKE7E2xm2Pt7osPxOs8CjOGmgq2Y6YA5myrIRwI=;
 b=ovP4fnRdLLh5l/sy3YulN/8vrCkBUnRxVbY/CdabwScy9akbBF52c2oBs+HeFfPu49
 Ji3RwZdFKiSSFfkPbmUK+fjNy/QppoKAsZwBb3geFKAA1DTZCKhReSOpmP9SjgwI2bND
 TvwLbyvuJdQ1/VRr8Smr4nSGIXgOfuGLvZ0QDmcEM9K708s9DFRT9COABdII0Z9RrwhU
 h7PhF1GIgldt/Jnx+om4HVKeHHnI0bfKi+fGjsArg78NmMVGAUbnEIkDBtiSglgljzVh
 iFfqay9rE/kpBwb6L3cXdpFhGxpimaWhXyALc2FffnSVpq2rNHBW/aU0Yufaif0heCMJ
 MbaA==
X-Gm-Message-State: APjAAAXyrHzl0z3K1q+vl0j5XpVXVNpqHwWby5nTopluwhYmE+i3nIEn
 xR1L6TgKVu2bnc+w8uq7WUKi6g==
X-Google-Smtp-Source: APXvYqwojedrKhxZAq5cumleNwwcoSZ1lEw0FeB3H5QkX03T5VYZcpLlDknvC/Jx8tVgNaDLXobTIg==
X-Received: by 2002:a17:902:6b:: with SMTP id
 98mr13070692pla.128.1576195672261; 
 Thu, 12 Dec 2019 16:07:52 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id j38sm8317647pgj.27.2019.12.12.16.07.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 16:07:51 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 13/58] tty/serial: Migrate clps711x to use has_sysrq
Date: Fri, 13 Dec 2019 00:06:12 +0000
Message-Id: <20191213000657.931618-14-dima@arista.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213000657.931618-1-dima@arista.com>
References: <20191213000657.931618-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_160753_424490_FEA2E84B 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: Vasiliy Khoruzhick <vasilykh@arista.com>,
 Alexander Shiyan <shc_work@mail.ru>, Dmitry Safonov <dima@arista.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
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

Cc: Alexander Shiyan <shc_work@mail.ru>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 drivers/tty/serial/clps711x.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/tty/serial/clps711x.c b/drivers/tty/serial/clps711x.c
index 061590795680..95abc6faa3d5 100644
--- a/drivers/tty/serial/clps711x.c
+++ b/drivers/tty/serial/clps711x.c
@@ -8,10 +8,6 @@
  *  Copyright (C) 2000 Deep Blue Solutions Ltd.
  */
 
-#if defined(CONFIG_SERIAL_CLPS711X_CONSOLE) && defined(CONFIG_MAGIC_SYSRQ)
-#define SUPPORT_SYSRQ
-#endif
-
 #include <linux/module.h>
 #include <linux/device.h>
 #include <linux/console.h>
@@ -479,6 +475,7 @@ static int uart_clps711x_probe(struct platform_device *pdev)
 	s->port.mapbase		= res->start;
 	s->port.type		= PORT_CLPS711X;
 	s->port.fifosize	= 16;
+	s->port.has_sysrq	= IS_ENABLED(CONFIG_SERIAL_CLPS711X_CONSOLE);
 	s->port.flags		= UPF_SKIP_TEST | UPF_FIXED_TYPE;
 	s->port.uartclk		= clk_get_rate(uart_clk);
 	s->port.ops		= &uart_clps711x_ops;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
