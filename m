Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C477B18EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 09:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6/z3oRENAnIExGyii4jN9iAfsGlII2/gylHV6DIpu1w=; b=c+z
	3wZ80FB32uHpl+Q8kO78TJlaLjedmVAjmxneNaXfGbw1hS0DWDU1rx6pAGX/eiUXf8UvuKQuCBTQZ
	tnL29HV7VqSPPsvz726MboZrhQN6YhvRjRlYDvfNbNMZaEULTetebVX8qZbqg11kI2eJX0kvCCjRP
	NqLmx0hVs4SVblAfXwpu3/wciBidmklniCILpDre0yumAwBWsxkG3gH9lawK5ipwUdqHiI90l/qn6
	fNR/JD2uvwGK7Z96NLOsHmh9iJItBQKXHHO8VOH/03PjK/iUb/QsQfn/Fbeebblp6lYZLoAbGS5wu
	0nsoGYTN0p6M+4PmuY8HBTvG9C72xcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8g1L-00080t-1U; Fri, 13 Sep 2019 07:29:31 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8g0P-00080Y-VE
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 07:28:35 +0000
Received: by mail-wr1-x444.google.com with SMTP id l3so8248224wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 00:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id;
 bh=HBeSnnaknF8l50flmejOlPoMNRFfD6iWBsjsOqPj+d0=;
 b=iBcZbYKS9kEIsmLFLKGgi8dVQynqqARBR3pZUlHdw07+qkP+mM4JaljCPnbXn29WcU
 Wh8LDkQnK2mCu9b3RDxj0kWUysIuRRgYoEDDOLPO3FT4NiWRNj5JpNcZ9W/k8me1dS+o
 y9WEV5ebefC0wyCmSEA2QymG5/UX5qoliD8t6bQ5XVFMgMVuj1h1r49nDIY41AOoFGSb
 g803a8MH9wPQdfuzIfHdYv4N7Xci2NoqYxcdxITcXmjjgB8FEHGqM/o8vRY6ZH8nV9Bj
 1a+T/u268RHPM1a+6HmbgOR5iycHdMktQUA+0JVDx0e+M8khwS+Zk1/Bsk5V6eR9YLcZ
 iYGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=HBeSnnaknF8l50flmejOlPoMNRFfD6iWBsjsOqPj+d0=;
 b=PVUKDTqTH48iuSE/Gb7q+UZ8RTrnJLVVysyJAYFjmJq79EAQiWotDX/oi2piqrm+J/
 mpMLYRyyCeG1JCEhwqPWSr9BkyM8HO0tyArrjMfEIb8ie/m7wvIKNGpbcjsXdfntDjH0
 ljhHOYgEgfUssGAOJJyX1Yl0flZTerOP0R0YHjymHypqok31U59oYCBhkuysInws3IFL
 qDbEv/9kCOlnbhfZUnG1qKcBgYg0OFULBoq5yJ5G5zmkeGJH72IYhoTNfCytIjnu/XNL
 419jlJbYS3pWlcI1I+I1e6Mn11p2IViq5RqOYRxHA1trFeO4avBIQYnis9u7UwbfnAAC
 0aFQ==
X-Gm-Message-State: APjAAAXUIkC0pUcFkix3GQSonzMgZj0m7adw1s3lA9+EuOjvRLGz85VW
 Wgcgt1FeFUiPh+u/peWANY5bkg==
X-Google-Smtp-Source: APXvYqxHBtSh+/6IJVUafbfXSPoUImAQ5IbkQ1l66MjQy8e3RUYc28sXyCP+8jS6lFV9j9YqfpKiRA==
X-Received: by 2002:adf:ce04:: with SMTP id p4mr3773130wrn.130.1568359711768; 
 Fri, 13 Sep 2019 00:28:31 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id w8sm1798031wmc.1.2019.09.13.00.28.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Sep 2019 00:28:31 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com, Paul Thomas <pthomas8589@gmail.com>
Subject: [PATCH] serial: uartps: Fix uartps_major handling
Date: Fri, 13 Sep 2019 09:28:29 +0200
Message-Id: <00a269bc15c4f8c0a73c14958c5d7a5d37ff70ce.1568359707.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_002834_070050_FBE16323 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

Fixes: c9712e333809 ("serial: uartps: Use the same dynamic major number for all ports")
Reported-by: Paul Thomas <pthomas8589@gmail.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 drivers/tty/serial/xilinx_uartps.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index f145946f659b..92df0c4f1c7a 100644
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
