Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2034D45C68
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vAjmB1wdTrX332UKXQPmDzNhnrmynfLgYpYFry7YkTw=; b=jLWtLra0miGgBa4f8SfUiXZiBu
	guedF4dgNn42RN/buHK6FybEU6o1hthgm0Mantm/E7IHSHje2ZnBVHreks9PPcy/xOaBrG+xWSisJ
	0K9qxxp75fwsdNozp8bymfKYpguuhB2jeIo5dbHF22GF9OjvlEELayAQG6Aa+qgLSSGn8eeIte8/q
	CzTMxo9bAqveouxDH0CrregZ41iI5LgohyO1fDZU/SYppNJtYEaBSFD0DUswJRPyPBTeQowOdL3IS
	RpugUWhK848xeoPXpQExnzMN4S61YvSfdeYvxIODY1t7ctW70qhCNTvgWKeUw/fJg280S8R5abCav
	B8y9zqDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbl6G-0004id-QK; Fri, 14 Jun 2019 12:14:32 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl3o-0002rg-0H
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:12:01 +0000
Received: by mail-lf1-x143.google.com with SMTP id q26so1587757lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 05:11:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Pvz4HiqActHfdiRpn2UDi2+QMjvhRluYztx0f3X9Mpg=;
 b=ALprnGLKTGKIqLJ3QZLWDYLTuJaddVtQQM8XIhhQWPKi+WmSl1BLYvmCMjWMObXSWk
 E2F7WblfXqBqllh9IRtujow7PcUcprDpME3bsE8aA70KNvyOsuK7uJGLoFyHd59F8OdA
 Jp+KkN6U2p0+HElhlmfTJmDrC4Y/7CCnsbffBt+8PaIEzmtdzvYtJYHSnK63rCe3rTBl
 /XicR+oanY9KVZs32ZP0FqWRnqGHxl2dQjLH8Cm8/K0vYJ6jZvGeIChZurZShL5Cjlyb
 ngUiITPldNa92Dkh2gLfXmUnhkZtOV7pz9wOw40Z7NYbjemsvGVnit2vzn/qASLpfaHF
 rOOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Pvz4HiqActHfdiRpn2UDi2+QMjvhRluYztx0f3X9Mpg=;
 b=otmydmRclQWoS20bTSkbzUVPop3aCEjygkQ+pUAWoMHU1mlKd2lG1SgWQVD/GR5lVz
 8jmDHqNDd0vOEpmwBjX+O6bEWMj6IZKMONZnCP06PJ/0Yj7LuOD9JlWieAzgYytoaEXn
 K9Bn/z3Z1yIF9zz1Vp5Po4PprJQ0Ji6byZoYGFAdCUmhhIzEnrxTSh19RVnuGDaSEfHz
 zcfmnTlnVR609GA8OqDCY/mlbpP48jQz0CEzm+tx3FOhixFA+9u/jmtb2ONQOHWIeVgf
 fAWJrHirbsTLCj7wMVO91CedyX3SgE95Y/kAMxcDLAm4fWYtC2LI2r+kDJCMPHBL20nI
 FZAw==
X-Gm-Message-State: APjAAAX7SKJqe3hME9qDSpO5ADkloUF3zBDschC/CsR2q0wx/cS07IZk
 9PwP8vwQwbVl1vMl0TTtgXE=
X-Google-Smtp-Source: APXvYqy4Z/aRBglvdZ5tjtESTDHX1S/1sS3lr4b01PScZdlYvgVS908OnmwCYDrE/8k36xjHntXm9g==
X-Received: by 2002:ac2:5981:: with SMTP id w1mr27213594lfn.48.1560514318592; 
 Fri, 14 Jun 2019 05:11:58 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id p27sm459683lfh.8.2019.06.14.05.11.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 14 Jun 2019 05:11:57 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH RFC 7/7] serial: imx: get rid of imx_uart_rts_auto()
Date: Fri, 14 Jun 2019 15:11:34 +0300
Message-Id: <1560514294-29111-8-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1560514294-29111-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1560514294-29111-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051200_061936_3D58555C 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

Called in only one place, for RS232, it only obscures things, as it
doesn't go well with 2 similar named functions,
imx_uart_rts_inactive() and imx_uart_rts_active(), that both are
RS485-specific.

Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index bdb8b6a..cb28cff 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -402,13 +402,6 @@ static void imx_uart_rts_inactive(struct imx_port *sport, u32 *ucr2)
 	mctrl_gpio_set(sport->gpios, sport->port.mctrl);
 }
 
-/* called with port.lock taken and irqs caller dependent */
-static void imx_uart_rts_auto(struct imx_port *sport, u32 *ucr2)
-{
-	if (*ucr2 & UCR2_CTS)
-		*ucr2 |= UCR2_CTSC;
-}
-
 /* called with port.lock taken and irqs off */
 static void imx_uart_start_rx(struct uart_port *port)
 {
@@ -1598,8 +1591,10 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 		else
 			imx_uart_rts_inactive(sport, &ucr2);
 
-	} else if (termios->c_cflag & CRTSCTS)
-		imx_uart_rts_auto(sport, &ucr2);
+	} else if (termios->c_cflag & CRTSCTS) {
+		if (ucr2 & UCR2_CTS)
+			ucr2 |= UCR2_CTSC;
+	}
 
 	if (termios->c_cflag & CRTSCTS)
 		ucr2 &= ~UCR2_IRTS;
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
