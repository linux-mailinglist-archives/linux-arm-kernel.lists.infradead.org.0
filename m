Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 348E611DA7B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 01:08:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gl9CmkpKHOLfjiXZQ6o9mCU9mrPLx6ONtnWAYCI+3qQ=; b=NCE03TCETYn0Od
	JduAL4h9knGx0n6U6XJ4KAqmAcyBFCUQG5bbUTFsFSlnm5+Vjr2+z2dLxHEBJCJ302PDLKL8Cnz3q
	jet1NCwwKVP9RS4m+6tzfvuE9I9HBADmngrYy6eRiaADJVLGRsYn+G7SjKr6T0vF9pi24cLyfoMbP
	P0i8romntZaxXzxzJeSTf3EcCg6FnT13jHzxTrQ4Rc7trqAPOA8/o2TZzD+HUtJ2eOr8hS1aXflYV
	MwJ6yiAJKIq50UXKffkMacdCL5hnL0aeQWqF+93EQ6bevMSGXRk01deptoOg1/3rKwOa+vPTumxpf
	9+cW7w/BrfTP7zkHiQqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifYUn-0003yP-RM; Fri, 13 Dec 2019 00:07:49 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifYUW-0003tk-Tu
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 00:07:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id y14so366327pfm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 16:07:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LfbwjaEyczfW16aq2QbabEEFZwH6hIDwc8GGJT+n3VM=;
 b=kOAr/bESfHMzyhYULKoN7VTqNnOTJpMU0mgk421XezJV5Q1gVDfIowuDsypTlEeG+4
 Wv3ZxkAmjMRDkhkz30epuMui2pMMycipsnvSCcLAfWGgUChLIeG/qDfWA9Q5c9HHwy3u
 XAlGyFETvlNhDdukDWBLxJ3ostWQiTIcZ3rZtZZPz94kuRfPi5qohj+AZPRrHu4PG7dM
 o+S3j4QcHD9ZfqK/MTsu7PgJDr1N/S9YMcvdGzdFkIYDj2yaiJG8g4VE08ogTZnSEJPQ
 9Vys6Ais6lUp/4Io5DC91M9R6TqEdsKDjuzM6Qi7g6M3B8HlP6w/+TdGlLnfzkSYyT8z
 TSxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LfbwjaEyczfW16aq2QbabEEFZwH6hIDwc8GGJT+n3VM=;
 b=O1522nONIrM6DUH0RIbvg2dcQdzPS5nIBJctpGsO035PQ1reQwCoPNVVQjwjqgHnMa
 bCdU9KZE4z4ndgwwP+vGHpUXJ/2ptoNc6ekSDiEO9qGJ95ixm0h393VzFjV0YCwSmyDl
 RsWyiZJMVevpByCQ8x4TSjQbiyX8oHZVhuVDNGOwF3YHhz/efPP7byAGMe0/GUBKk6Dn
 EjFR08aJRR6AkMNhfXxqi2MUakRkrQOkpS6mpxIL2DXGB9MwYZG4LMgvRCQ5qR6m/57F
 mHNMcZuif1LlLJOkPwKzj0Zd47SNdqSTxIBzU13Gwa/CX21hMMO8S0G/lgPIRUtnkSGr
 MFlQ==
X-Gm-Message-State: APjAAAW0a3AwV9/ndX8a6JthRItozhDekH+J1sTpJF4vetmFkXQj43Ct
 m65cZKhS/HYxbJXZ8SFqWCflnQ==
X-Google-Smtp-Source: APXvYqx9E42sVqpByu4dIZemxH7OmhQpFJLjLb3D8cu5jSrISXChsfZ8EkNjZPIX76mtZROIdvfiIQ==
X-Received: by 2002:a62:b60c:: with SMTP id j12mr13118959pff.8.1576195652339; 
 Thu, 12 Dec 2019 16:07:32 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id j38sm8317647pgj.27.2019.12.12.16.07.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 16:07:31 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 06/58] tty/serial: Migrate bcm63xx_uart to use has_sysrq
Date: Fri, 13 Dec 2019 00:06:05 +0000
Message-Id: <20191213000657.931618-7-dima@arista.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213000657.931618-1-dima@arista.com>
References: <20191213000657.931618-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_160733_017252_DFC4A690 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
 Dmitry Safonov <0x7f454c46@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-serial@vger.kernel.org,
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

Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: bcm-kernel-feedback-list@broadcom.com
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 drivers/tty/serial/bcm63xx_uart.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/tty/serial/bcm63xx_uart.c b/drivers/tty/serial/bcm63xx_uart.c
index b7adc6127b3d..5674da2b76f0 100644
--- a/drivers/tty/serial/bcm63xx_uart.c
+++ b/drivers/tty/serial/bcm63xx_uart.c
@@ -10,10 +10,6 @@
  * my board.
  */
 
-#if defined(CONFIG_SERIAL_BCM63XX_CONSOLE) && defined(CONFIG_MAGIC_SYSRQ)
-#define SUPPORT_SYSRQ
-#endif
-
 #include <linux/kernel.h>
 #include <linux/platform_device.h>
 #include <linux/init.h>
@@ -858,6 +854,7 @@ static int bcm_uart_probe(struct platform_device *pdev)
 	port->fifosize = 16;
 	port->uartclk = clk_get_rate(clk) / 2;
 	port->line = pdev->id;
+	port->has_sysrq = IS_ENABLED(CONFIG_SERIAL_BCM63XX_CONSOLE);
 	clk_put(clk);
 
 	ret = uart_add_one_port(&bcm_uart_driver, port);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
