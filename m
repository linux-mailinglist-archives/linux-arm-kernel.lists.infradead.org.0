Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEDD45C4F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hUogu3k/ywvT/E73aXDTJ6XVz+5R2dolbJ1BjiXrf3M=; b=adSE2FkV9nr3yEXFFdb2E1uxCy
	Kg4hbyZUO/Yn0k1tg3EqRGZLZYUuKKfoluQQCr8Fep8npTPCnFRTElpV+V/45oDFxE8jC1G5TbZf7
	yYHoyjYiAeN6SclVsIuy/Lj+/OnotEbg3dJMU0HjlRYmnPyhXojeH4/XExRa7cuztQIsK5CKebei+
	np+tSbUYcTviRIBCA5mL8sMW1SAu76WlM7JIrZYUcuWIdxyUBUxPhkzvdBUnjxNAWcayqLIbCoS5M
	Gc4V8z1k0e6lJvt1DyrOvSkziPPv8cg5L9oWYfik/x47cC7hbkFREoYIL3huFmj9OWHlCzYS6txLl
	1aXhGbKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbl4p-0003Uh-Ln; Fri, 14 Jun 2019 12:13:03 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl3j-0002mj-QM
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:11:57 +0000
Received: by mail-lj1-x243.google.com with SMTP id s21so2143060lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 05:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MnAE4r5Gl1VIMZviL9ksOeXJGJoVijEdryliB0x51XQ=;
 b=WU87SO0rFdKL0jGGN3E6Yp4DQcPvigBLGDldakRZfF9oHXptATGbb3eOe65YT23hUd
 dkf7UPpuSeYpi6DzYDXNoxAv/mWc8BepQwQVRO5NR6Xc+CaKDd6L/Sq6oCweq6YLldxE
 A29Df0QutRTjnn1BG6/cz2jJovdwQGI3+JxTV0sLtr2CS8gr6sfFthAaaUuJnBQT07an
 P+tJX6Lj5Lr4NDPk9RgIWe8h1nMMR2kqTT+xMnrfTeoRBEGZkF/kFczWQFQ2/lRPXbJL
 rLCHCfKS9qmAouwI9qDFy5XqlHg8tj7DD0g6RGnJ3U2Z3oOJZ2vPNkZ0M9hBm3S8Jwih
 MPyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MnAE4r5Gl1VIMZviL9ksOeXJGJoVijEdryliB0x51XQ=;
 b=tNzechaWJ1pJnFHYCOF5n+XEUQvirsNWaNbVddqOAQvSmwCFPcq2GsMna3CeVIbRJ7
 hfGwW4XBJliFvI98nycTiQN9fjuploGeXfwU65sayoDLqODcQZahxqah8zHUCBUUnjKK
 kWfUKTyQ/Wr7SbujyIwoFyFgKHeOzjEC/pg9P7aNCQ0uz8whFrGItNhPLQRJxAeGmWGp
 Gd+1I71TRi31UoSs3vnOIREec4t3yoms95AEoLinTFGY1qQ6KSYCf/A6YBrR8SGtPaHZ
 VUmjxDCexhH8BzDuKnHMUlikF57swRuLK8wQD2OuhoXM9q2bZe017q5Ye0YwPL9dPn3w
 85DQ==
X-Gm-Message-State: APjAAAX8YuadMTVvpZsN+yO9CLLkNuozr6Nr9axmAsDqBjtPz3jBZbub
 5J4hfBl4P/PenZIhMqlkzW4=
X-Google-Smtp-Source: APXvYqxW2PF12BhUCKAQN98WEsRpNhDJrFTYunpAY6YNMydMQgm5z9W1FQbZS6qhN/xSK/JDxqUcHw==
X-Received: by 2002:a2e:4a1a:: with SMTP id x26mr35479854lja.207.1560514314037; 
 Fri, 14 Jun 2019 05:11:54 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id p27sm459683lfh.8.2019.06.14.05.11.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 14 Jun 2019 05:11:53 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH RFC 3/7] serial: imx: set_termios(): clarify RTS/CTS bits
 calculation
Date: Fri, 14 Jun 2019 15:11:30 +0300
Message-Id: <1560514294-29111-4-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1560514294-29111-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1560514294-29111-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051155_880672_83FF3E7E 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
