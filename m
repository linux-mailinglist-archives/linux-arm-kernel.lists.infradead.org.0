Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA148771AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 20:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HWP/LCo/fr8GLKkJl8jWHr0yvfUoTdWURQkf9yy6GD4=; b=MDA1F7/F5e//9k/MJx3HBuUVHL
	P0Sn3yEDsTnOEda4FaA5/kTCDHxDyHVR3t1g1tK0Lv28NaHLDqPlBHsZr+48fIfHAmVug3+GNx+xf
	cAHnWiAHdZ14uh35Cp2ehPdRv07uK1nLQmS2eg+qd6Bq6j9H0aFYuwKSHtr/5vqRs+kEinFIuV2qi
	bl0w3PIULqIUWVbhA/NbM0juHtZWfbW2zKn8QWV86dFfsawSX0Hm9SegfkekyzEVBzusOLjGKHoL+
	Fhg+/JtVLttVmWK1Hc61Nnf2lZmjdO6m2HHGN8LfWSjpaQZTITchByLK4cd5x2/d9I0Ys1Mnsib0t
	r18IQtbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr5MG-00015e-7u; Fri, 26 Jul 2019 18:54:24 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr5LG-0000N4-DU
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 18:53:23 +0000
Received: by mail-lj1-x242.google.com with SMTP id i21so52464945ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 11:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sj8RVBs1fk0i3q8Mv8Hvbl0QmOyE222Bssz9akDFVOY=;
 b=sCGwZuU9pvjnkWWzIrVaU5Tt6VgiIQEXIJaeUOSYMNehQmShord01NCMJnfCC5ncrs
 9CVWh72fv1sEcVNnZErHW9QUdHnUCH4b2ntzI3ZfB6SNqyAzJevcMb9OGgdkS5Rw/bfS
 AVWN8uIV3+u29U/zFqux27d/tRGdG7R5Wuj8qhshwZoV2Bha7AnWxUiDBSzlN/lhdk0z
 EtXtsAVq89cVegXtRVCXTwuHTlea8WRG2kj+eqRESGujdyeUSv6yDAf1Duyk4as31gFk
 31JVUGPmqy/mjXVKjO4EpmoHCsR4tjQkdlpOA0X0xB2zihc7UwNLEQCDnNoyISaAe6eE
 EFeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sj8RVBs1fk0i3q8Mv8Hvbl0QmOyE222Bssz9akDFVOY=;
 b=b6abdXvbN8FQOb6nqGSOawKDfWlSv85gX2QA0oe/3VnfWMONQmi86VSqRpu1MlaS6q
 Qr4EfIbr45SbZuoqhIw8BUwSFM7iG8MM9u/U2i5q5gi4eBMbcXbpTkVirrGfoHsg4SOM
 fOW6Fgp/4PfXCxzf8ix4QbHghC0BsYrmnRiIQ9GeLZchKCj5cuR/ILOYnma9T5bu5Se9
 3TAyjX/Wy57Ke9hFLDhqD38xiS6hRdYWYO2z68TOdggkeATU3BBv7M8HbwF3QXWoEGL9
 dC5NzgL9wFzHm0etDHWIdueovMNxl9tvJs0nRFMr7W5Wq0R0/PXV9e3tl1Lhyykg5HUs
 PiSg==
X-Gm-Message-State: APjAAAWc+yaQwXYA4FFVe1x4L1szKihk0Mv6GM24jdz5/+bY6ci16eqz
 dP/ahAd2Lu7TtWomLKcRBqI=
X-Google-Smtp-Source: APXvYqzmB6/vZkocyFQqX9FSF/5ZmmXo9D8WgIVwA5Pw/VEahaXGRoJMOu09/LuIPHzg5UJ8hsucaw==
X-Received: by 2002:a2e:8007:: with SMTP id j7mr50708763ljg.191.1564167201088; 
 Fri, 26 Jul 2019 11:53:21 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id u15sm10254810lji.61.2019.07.26.11.53.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 26 Jul 2019 11:53:20 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v7 3/3] serial: imx: get rid of imx_uart_rts_auto()
Date: Fri, 26 Jul 2019 21:52:41 +0300
Message-Id: <1564167161-3972-4-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1564167161-3972-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1564167161-3972-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_115322_453802_33D0401B 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Called in only one place, for RS232, it only obscures things, as it
doesn't go well with 2 similar named functions,
imx_uart_rts_inactive() and imx_uart_rts_active(), that both are
RS485-specific.

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 21 ++++++++-------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 059ba35..d9a73c7 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -402,17 +402,6 @@ static void imx_uart_rts_inactive(struct imx_port *sport, u32 *ucr2)
 	mctrl_gpio_set(sport->gpios, sport->port.mctrl);
 }
 
-/* called with port.lock taken and irqs caller dependent */
-static void imx_uart_rts_auto(struct imx_port *sport, u32 *ucr2)
-{
-	/*
-	 * Only let receiver control RTS output if we were not requested to have
-	 * RTS inactive (which then should take precedence).
-	 */
-	if (*ucr2 & UCR2_CTS)
-		*ucr2 |= UCR2_CTSC;
-}
-
 /* called with port.lock taken and irqs off */
 static void imx_uart_start_rx(struct uart_port *port)
 {
@@ -1604,8 +1593,14 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 		else
 			imx_uart_rts_inactive(sport, &ucr2);
 
-	} else if (termios->c_cflag & CRTSCTS)
-		imx_uart_rts_auto(sport, &ucr2);
+	} else if (termios->c_cflag & CRTSCTS) {
+		/*
+		 * Only let receiver control RTS output if we were not requested
+		 * to have RTS inactive (which then should take precedence).
+		 */
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
