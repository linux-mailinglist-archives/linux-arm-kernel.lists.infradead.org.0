Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D94394D0C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 16:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hUogu3k/ywvT/E73aXDTJ6XVz+5R2dolbJ1BjiXrf3M=; b=mlVaWdSmVoeOjUJyfP8GcLh61M
	47H9U/YEJHu3ilM6HTIfkAcOelS89dCraZtMabDexP2VwweA9pfrHrSA8f8leEycV4bdSSB3crOeS
	91GFzEqI/gG/YLNmf4HihAUvS79eUFiOZGgZDdtwRTIsQciuXu2RqvYipj1cCpSbUEKempXHIHnhv
	QFIzt7mjjLRTo9N+2qRVDaObMBotgXhoAdTntkRNUfBOUS+qF901BrNIGnCHkCNnchXhBQYxMD4ft
	AKckpZl/a7JVCZtpvr5QJHIBXMltPdcAZCrfq4p/vR6qibTn8U2BUGbXauJ+gFNH2KSsjflq7iP4v
	9NJ+DoNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyNg-0004XE-Is; Thu, 20 Jun 2019 14:49:40 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyMF-0003k8-8o
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 14:48:12 +0000
Received: by mail-lj1-x241.google.com with SMTP id k18so2943949ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 07:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MnAE4r5Gl1VIMZviL9ksOeXJGJoVijEdryliB0x51XQ=;
 b=esADZiMgQW0phjcMP5wGBWdGf0sjWXZVlUmxjk3spgkE/2OYr3lKq6mqsOhzTXqQTz
 ukrVC0PnYxysphIT72J+suxXuM+zzaE6PC8qMPXxAuV/4nAYBnfhsD5MoZ4XQ91mFNNJ
 /zowM5mm9mSgyrnhhUn/AXHgM7i5bdxbxQLSzlHmIG+DOezY6j3Usr+zlDoTIg/Y1DYR
 bzJ8UvMloxzecGl0ZCInvukHiBubu3yzoJPTjLfQiroCfEZqMq93myXDzXQP1uzt3f0c
 m/cKWIacS1yy1Ggyfq5cShrzF7N4WF73SPj6z6/NcYru+XuJmRdJNTvWL02kcSitUXjF
 6J4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MnAE4r5Gl1VIMZviL9ksOeXJGJoVijEdryliB0x51XQ=;
 b=SiHJw28Iu5I9QM0QTlpS/ftFntKGc5tIDMydzAOj2F0MukSOKkeZBIxVYTQYqZoKnQ
 r+0IcfIfxr8I7S2ZICjXllhGFB1PZh3nHxMA1+w+0APi6GGB8Ve7XEPPUJbMrkQpC9/b
 o6pIBpIJO4vHnaVKlXrTFvAHDPe4a7iCASyDlznNyStCfnbFsJX82UyZCKhUD6jHo+PK
 EhwxUmvDF5BKIJno43yqZlbenm8LewRp4uIDS/VbtiS1xWfpdmITql3zWu63UIgPpbcS
 vx/FY2kqkpUkFdhLbBeXCkxSs4UIwTzY1FHddr9lVGc98jOnsU/ve1E+uYcaJ8fdMFWz
 NRRg==
X-Gm-Message-State: APjAAAVgzEXgulgxLwPY8NovIf/6WsXIH8TSypURkIXisWemcFwSONkZ
 yGIXQcA9qRiiry/+y1kFjxI=
X-Google-Smtp-Source: APXvYqyAnGzVJ/Osqss5wtdaH9tLn+JR7FRReDUCijI7YySbgQBmR2hFw/wCoPHZYc2MS5T3JLwUfw==
X-Received: by 2002:a2e:989a:: with SMTP id b26mr9690786ljj.31.1561042089823; 
 Thu, 20 Jun 2019 07:48:09 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id f10sm3577768ljk.95.2019.06.20.07.48.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 07:48:09 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH RFC v1 3/7] serial: imx: set_termios(): clarify RTS/CTS bits
 calculation
Date: Thu, 20 Jun 2019 17:47:49 +0300
Message-Id: <1561042073-617-4-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1561042073-617-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561042073-617-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_074811_331589_762E2888 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Avoid repeating the same code for rs485 twice.

Make it obvious we clear CRTSCTS bit in termios->c_cflag whenever
sport->have_rtscts is false.

Make it obvious we clear UCR2_IRTS whenever CRTSCTS is set.

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
