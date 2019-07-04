Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CAA5F8C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 15:02:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SxLG6zqW/wKPPMG1+pRHS0PzUUnu21pIZg6NkOjRmZs=; b=cRjmuUfQ9kKCg/gvWbv3C4rkNi
	/kBqVXtHxtbVn97GP10gLd+B2uss4Yh5yjH+QMCcMtk0o3738knGw6Poh8+154d0GVNqTuIcXovd4
	TMM0TyB4joCW8fCKMQ+JKlOaYXbUJTxZ90siP1Mk1z7A7bI83D3jBlZQfu64m3yEOWO7dYvDUa9Bl
	JUbsiWUOoEn8LAKXWWl8dmYnaAkETmNWhLojyDIubFvOY3xBchwMjOrnXC2ZlSL1PXLl5aLaL0kKS
	9KnFDsW4H2LVzOGwFKZC4SznKQjzBuDQ7aQ8jVynZQerkvWeUhHy4f+f3ED3qOHA5X1ziHmjlrv/i
	PbCoA5EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj1NO-0000qk-An; Thu, 04 Jul 2019 13:02:14 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj1MH-0008Ry-BP
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 13:01:06 +0000
Received: by mail-lj1-x244.google.com with SMTP id i21so6104517ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 06:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mRhyyilptEVPd04WdgykTEukksr9XwSZnIYd4NBzYsQ=;
 b=J7KeLt9OoRCHRueMSXq55bYbYpg435r4HjpO3mod8gVs264oODuzbDV2uOxjOUjZrX
 vq+AYm1ZD1zH8BGE/uslpHdEclofsB+OkC6tEFNZUOdPrJ4kNElarw2AJdQLgRAeczH2
 bdxKW4XG6LwXaluA2MB+kzUfBvP24rWAqPO9ztViv88Pjq+URYQhQFnbEt3YZ3pJbSlr
 SPZki8PWWeU6Oyt7SR30UXsZF/A4CKPi85oij/tpM0M0Qf27ajXUGzc1cCozt9sBo5Yz
 0X3Vz7IryZllZj6wzhLW3GbltoEWlYTMb81J+gE42XbMuUwQopDEx5nhmLcUH0PNMPVS
 Tgaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mRhyyilptEVPd04WdgykTEukksr9XwSZnIYd4NBzYsQ=;
 b=GW/uNK4F5j3vjzcOSki23k46/FygLul58VQfmq/9ffpjhBuKy2DeDpKp8oGmf5Rohc
 OaQNO7M+LkgBqkeaKuBZcXtHQqUsSbbBk6QLgWGxSSbc1ClAtuLL2L7LDbYrwx+UAjiX
 dHDqCvqkExHOgsSzdlfTZ/kwbzX5ccRuykccIXF0WC1kpRzGPX92wttEHnsWbz4SGDBf
 4KNYIFp2N87HSgG7QPdp4IIb7YH3vXuZQKgiAjEKWepgPcIFovl1vq9QCUyzRko/8+NZ
 obQVfW5WVOpjcf/eCTOlWh0zdxUVGnlf90nA70CfzonX/niLuG9DZXgnBn4/5vXOZwdr
 aMhA==
X-Gm-Message-State: APjAAAX0yTuY4gKFu7ozYUmZGHYtyw6UpKlYmxoe3uIeMXS0HQVihF/Z
 ZdvjTcE+T5xwFnlb3SokYT0=
X-Google-Smtp-Source: APXvYqwn0RtHcAtS1iKLqSBCZklPg4z5nGhe97iJgNmJX3SuE/EIAWq8RKtGJIfGjyD1ED/O6ptXsQ==
X-Received: by 2002:a2e:864d:: with SMTP id i13mr23876453ljj.92.1562245264059; 
 Thu, 04 Jul 2019 06:01:04 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id h1sm485914lfj.21.2019.07.04.06.01.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 04 Jul 2019 06:01:03 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v3 3/7] serial: imx: set_termios(): clarify RTS/CTS bits
 calculation
Date: Thu,  4 Jul 2019 16:00:25 +0300
Message-Id: <1562245229-709-4-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1562245229-709-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1562245229-709-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_060105_416650_648E718E 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
 Sascha Hauer <s.hauer@pengutronix.de>, Sergey Organov <sorganov@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Avoid repeating the same code for rs485 twice.

Make it obvious we clear CRTSCTS bit in termios->c_cflag whenever
sport->have_rtscts is false.

Make it obvious we clear UCR2_IRTS whenever CRTSCTS is set.

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 36 +++++++++++++-----------------------
 1 file changed, 13 insertions(+), 23 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 87802fd..17e2322 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -1567,35 +1567,25 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 	if ((termios->c_cflag & CSIZE) == CS8)
 		ucr2 |= UCR2_WS;
 
-	if (termios->c_cflag & CRTSCTS) {
-		if (sport->have_rtscts) {
-			ucr2 &= ~UCR2_IRTS;
+	if (!sport->have_rtscts)
+		termios->c_cflag &= ~CRTSCTS;
 
-			if (port->rs485.flags & SER_RS485_ENABLED) {
-				/*
-				 * RTS is mandatory for rs485 operation, so keep
-				 * it under manual control and keep transmitter
-				 * disabled.
-				 */
-				if (port->rs485.flags &
-				    SER_RS485_RTS_AFTER_SEND)
-					imx_uart_rts_active(sport, &ucr2);
-				else
-					imx_uart_rts_inactive(sport, &ucr2);
-			} else {
-				imx_uart_rts_auto(sport, &ucr2);
-			}
-		} else {
-			termios->c_cflag &= ~CRTSCTS;
-		}
-	} else if (port->rs485.flags & SER_RS485_ENABLED) {
-		/* disable transmitter */
+	if (port->rs485.flags & SER_RS485_ENABLED) {
+		/*
+		 * RTS is mandatory for rs485 operation, so keep
+		 * it under manual control and keep transmitter
+		 * disabled.
+		 */
 		if (port->rs485.flags & SER_RS485_RTS_AFTER_SEND)
 			imx_uart_rts_active(sport, &ucr2);
 		else
 			imx_uart_rts_inactive(sport, &ucr2);
-	}
 
+	} else if (termios->c_cflag & CRTSCTS)
+		imx_uart_rts_auto(sport, &ucr2);
+
+	if (termios->c_cflag & CRTSCTS)
+		ucr2 &= ~UCR2_IRTS;
 
 	if (termios->c_cflag & CSTOPB)
 		ucr2 |= UCR2_STPB;
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
