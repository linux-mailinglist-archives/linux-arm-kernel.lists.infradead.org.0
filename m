Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5A019D390
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epbH/0rzlh7NTaS7i0MENlJiF+MLDHAIeLPQhXE4iXY=; b=npHOsCqtpQQQV9
	C+lESm+5TolZpVUefieohH5wukgZ7G3Gj51FbrB6qJ26a/uJHDK2PimX0fitnP4G8dhhqCC4aeiis
	KyleFDr14MF7OTuc1qn++A7zPmqlEB5rG8jBc//fywOv6VwSNz8+DrutYXDbtu2pOB0X+pV7gbTBR
	E+xf15yYp0N1MIWhn6xzSv2dgECi9ujBdvsbfAhso1toa2+mWLQ+JIC7I+ypOUxs2RU5lug6thQKb
	QiJqNYC4vgzVVbmzHnsBoFcx7o7v++CODxrdupNbh85Ee/0cielwBVtEBQ/iWeUOElyqRFk7NSYFv
	JjNm6AubCXCbd7tUJH2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIaU-0005fA-1k; Fri, 03 Apr 2020 09:26:06 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIZF-0002IG-QX
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 09:24:51 +0000
Received: by mail-wm1-x341.google.com with SMTP id d202so6925518wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 02:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z4X9CztVv9fuiwGgU0m8a6G5JZzhVQteYALGdpAp1X0=;
 b=x21dt5c2oqbttSzIm/GZIb7/QsS3KtZXZgyAyN2Xse45a99hSr5eVgqq8spcF/SQVZ
 qgUF+VQ2qONzOO5CUInCWe31mzt1Pv6h2KZuLurNrhWbwpy6uX01/UbRSdVBblHnX7cA
 r/iiLD1ddJETbqB2QE056DrI7zCE/qV9RKnbcw90CmmICoXI8uvPks8pYHxIz+O0m/sX
 OfdeiUcVZGhPXh8CuLTDR204+4VnRHn5enAMclLlGS/7udW/kt1i8VTyEDNzRi3o0e3U
 4aQsJIlGVSHkMH99GVa84vSMxbqoyFMOuGJWX/TsCY4AIYBhF33LEjC0DrF969HuKROL
 JP+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=Z4X9CztVv9fuiwGgU0m8a6G5JZzhVQteYALGdpAp1X0=;
 b=pNh+Pet6L+5956eoZmnO4h2hIhvPNdsZUZM1KMQZEz+BJW526hKy4mQVKQBaIkw3ud
 KGfiCkZNs2eoJzpj75sm7M1maxGVscsnvLhmLeqieUzftMp4JwFCAPjcObypA0XtDQ/X
 JjVJecaNvwRrwCybGbEhJuLm1XlSUQdeps0qKJVCDXAvF2h36jvxVyFulcXMRTbmhRCa
 jEzIz7dvHH6EtK8oH2xsRx222i4kcRJfF/tSCmt6AhTo6OrhsIiYne+/uJv2mMEdd3Ry
 +MndZn7SD4dTPE+a5t5xwsZmG2iXHLf/Gx/TgoOv5Ee9aUgrVkomvObyB8ay+YGYdIyZ
 B8WQ==
X-Gm-Message-State: AGi0PuZgl8u0om6Z2gvmcz+SIi9VsxkgUd2Hh5NzsYeZa3aKQpmgGGNj
 RVsk6HaGVeveHbZ87bnFgYal1g==
X-Google-Smtp-Source: APiQypLXsFB4Nhp1P6wz0oWS1uTO4dCw50x90jze73F6lCQ9haNDHgdotGFAdwgjiq807zSRUQZjiA==
X-Received: by 2002:a7b:c452:: with SMTP id l18mr8086444wmi.140.1585905888590; 
 Fri, 03 Apr 2020 02:24:48 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id q4sm14554079wmj.1.2020.04.03.02.24.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Apr 2020 02:24:48 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: johan@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com
Subject: [PATCH 4/7] Revert "serial: uartps: Do not allow use aliases >=
 MAX_UART_INSTANCES"
Date: Fri,  3 Apr 2020 11:24:33 +0200
Message-Id: <dac3898e3e32d963f357fb436ac9a7ac3cbcf933.1585905873.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1585905873.git.michal.simek@xilinx.com>
References: <cover.1585905873.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_022449_856320_599614B8 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

This reverts commit 2088cfd882d0403609bdf426e9b24372fe1b8337.

As Johan says, this driver needs a lot more work and these changes are
only going in the wrong direction:
  https://lkml.kernel.org/r/20190523091839.GC568@localhost

Reported-by: Johan Hovold <johan@kernel.org>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 drivers/tty/serial/xilinx_uartps.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 412bfc51f546..9db3cd120057 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -1712,8 +1712,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
 	uart_unregister_driver(cdns_uart_data->cdns_uart_driver);
 err_out_id:
 	mutex_lock(&bitmap_lock);
-	if (cdns_uart_data->id < MAX_UART_INSTANCES)
-		clear_bit(cdns_uart_data->id, bitmap);
+	clear_bit(cdns_uart_data->id, bitmap);
 	mutex_unlock(&bitmap_lock);
 	return rc;
 }
@@ -1738,8 +1737,7 @@ static int cdns_uart_remove(struct platform_device *pdev)
 	rc = uart_remove_one_port(cdns_uart_data->cdns_uart_driver, port);
 	port->mapbase = 0;
 	mutex_lock(&bitmap_lock);
-	if (cdns_uart_data->id < MAX_UART_INSTANCES)
-		clear_bit(cdns_uart_data->id, bitmap);
+	clear_bit(cdns_uart_data->id, bitmap);
 	mutex_unlock(&bitmap_lock);
 	clk_disable_unprepare(cdns_uart_data->uartclk);
 	clk_disable_unprepare(cdns_uart_data->pclk);
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
