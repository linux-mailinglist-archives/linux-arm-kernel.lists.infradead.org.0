Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E184DCBB2C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 15:04:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kZ/wxcEtWF6FowOykEaSFR5Yn7hH8WcRKkknu4DOIXw=; b=pUp
	wFPPCkaLzxbx3xblzwTR9afa9KZM17oBa3HOgpsZNJZAs0Hrmr/cVJ7LQrUA8eQiOXC6TVktCIox0
	/d5zh89zrfgupp6biA78DKG8Ve1K6t9JG3/HRbAJraVILVckMzL7y1vUyJVIDpaxdd2bqG9AC62PX
	Qkh+PT6Z26uFm2mNmW9UbvmKXaDD6GF09CbwSl6H/m5QKmY1IxL4sBUVYQIIZjx8vvOhBJ5hrSDXm
	bWCGG5oZ03PMls79VrkWIfw10KtBs/ZIWM1ZJgByvuuBFOVqHr0oVtSECsTjB2SJiFI7G/p4Y79T5
	nYpOfPZJ0PGvdwHe0VqoMfe43v3UDcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNFz-0001fC-E6; Fri, 04 Oct 2019 13:04:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNFr-0001el-6J
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 13:04:20 +0000
Received: by mail-wm1-x344.google.com with SMTP id a6so5730407wma.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 06:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id;
 bh=6cIhPqLGXV0mIo22OdHVVmjhEt+X44Ftc/dasgZTMCs=;
 b=hpoO5wzoB7KyTA/SQfRaeG7/oLKsQ58wZ42OaVoyWiIuaNrP3ojQCLTM6Qi1Os8oVU
 gno3cKeIwu3sgjAYBg0U5SUthfJc5wm17kx7XBXK6QfQIrBE+FqdPaBXiNQhPgwLLcYY
 nrPfVJuOP48R51bTr642p3RTh9H13FhJUlQipT32PF+iMqUGbDI+CDxyaHhij0AOEbNJ
 yL64ZXuPRZOJKQt66P/bglx8xcRhhDzF0sHLPp2AXmg0Cyfv9a6BF+CJB1xn9qi830D4
 CE4hzw9bv7ykYTO2yGyM/CuDTsRdodyZMwo94BD6Dsw/NdfGtKB93TJxJS4M6i0TEUNZ
 b5lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=6cIhPqLGXV0mIo22OdHVVmjhEt+X44Ftc/dasgZTMCs=;
 b=d0COnXG3wICD61YHQWiHRzaNVGYPcoSqqEhBqCQuIi6w0PPXj/yh+tjCJ4boehV2Zp
 NYEttG/QfEa33+dIynOaHxEYvzp352M6UKrxntP/G+X8Jp13MvOgEQwHl8J3rHhJg66a
 Zmfq0J8Jv2ksF5No1WrTNuipxXv9c+DUZVFf8Fpla9nAV8FfY9392SCVO+w3BB96dFS6
 MFl0EqhH+KBB1dzH5r3w4wfFDzKvRJGSqbID5elmLG55OMbF8CdiV39d/lHDGwS5zN4a
 8KcLvguwOhLhXVKoG4S4cvKPm7UKO57rB6NSUAoxldOvVDM5JXnXOG9r1e3RIzD5TKe9
 sK1A==
X-Gm-Message-State: APjAAAUCh28uYx3LI5KHnCW0u7FwKkn+p3kV/Q+/e6x4qI4Iy+PdoIGN
 5EqVJUzfVDYk2PGKQykfxubxhA==
X-Google-Smtp-Source: APXvYqxPR021c5nzAa3KiGUN5im5Lql/MqfwT4I/CSWRooJDFbWaUR+S79zSEnZdyii+AYqY+9npIw==
X-Received: by 2002:a7b:c088:: with SMTP id r8mr11524493wmh.44.1570194257479; 
 Fri, 04 Oct 2019 06:04:17 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id v16sm5662064wrt.12.2019.10.04.06.04.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 04 Oct 2019 06:04:16 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com, Paul Thomas <pthomas8589@gmail.com>
Subject: [PATCH v2] serial: uartps: Fix uartps_major handling
Date: Fri,  4 Oct 2019 15:04:11 +0200
Message-Id: <d2652cda992833315c4f96f06953eb547f928918.1570194248.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_060419_316853_4430DC0F 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jiri Slaby <jslaby@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two parts which should be fixed. The first one is to assigned
uartps_major at the end of probe() to avoid complicated logic when
something fails.
The second part is initialized uartps_major number to 0 when last device is
removed. This will ensure that on next probe driver will ask for new
dynamic major number.

Fixes: ab262666018d ("serial: uartps: Use the same dynamic major number for all ports")
Reported-by: Paul Thomas <pthomas8589@gmail.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2:
- Use sha1 from Linus tree not stable tree

 drivers/tty/serial/xilinx_uartps.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index da4563aaaf5c..4e55bc327a54 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -1550,7 +1550,6 @@ static int cdns_uart_probe(struct platform_device *pdev)
 		goto err_out_id;
 	}
 
-	uartps_major = cdns_uart_uart_driver->tty_driver->major;
 	cdns_uart_data->cdns_uart_driver = cdns_uart_uart_driver;
 
 	/*
@@ -1680,6 +1679,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
 		console_port = NULL;
 #endif
 
+	uartps_major = cdns_uart_uart_driver->tty_driver->major;
 	cdns_uart_data->cts_override = of_property_read_bool(pdev->dev.of_node,
 							     "cts-override");
 	return 0;
@@ -1741,6 +1741,12 @@ static int cdns_uart_remove(struct platform_device *pdev)
 		console_port = NULL;
 #endif
 
+	/* If this is last instance major number should be initialized */
+	mutex_lock(&bitmap_lock);
+	if (bitmap_empty(bitmap, MAX_UART_INSTANCES))
+		uartps_major = 0;
+	mutex_unlock(&bitmap_lock);
+
 	uart_unregister_driver(cdns_uart_data->cdns_uart_driver);
 	return rc;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
