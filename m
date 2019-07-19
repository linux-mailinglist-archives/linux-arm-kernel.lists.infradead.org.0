Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E8D6E2DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 10:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K81xGfiIu15nDH2adAXukXkKeKseHA2U5zmTYJgaxrE=; b=HGVY9LAv+h2hPOBHy5z/LDkBvW
	C2dlxmHJhc2vN/rzwjEgO2+ZAxKg6zQ4wJxij1vIHxeBROX7NDkw1avsuqs6tAmXuZemTCMXXpuEH
	eyQWyPTe6XEzJlTpZWzTvjFvwp9z73V8K1NDTLENgsuCuSnPYEDqsD63o8NgqLiuKooOfzLvcxpDL
	lTOj7LjIoUdzU2ORcFKeCEuvCgdhF/rR1eP5uPNvnK8G1qqD8r0iYZB7WZq91/UFaK85inTG7BWf+
	vgIqeesFTBKluGLQYMMdDr/YXp+EvVloltgjWcD9NJCC81rtF/XbJkz0vLP4XPdl86YR2wnlls/pL
	ejCHb4wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoOaF-0001By-3b; Fri, 19 Jul 2019 08:49:43 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoOYq-0000GT-2P
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 08:48:17 +0000
Received: by mail-lf1-x142.google.com with SMTP id x3so21271762lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 01:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vPaPaQoPXlJZwdHwp0bhNLbGscClA6YVVkEeKURmVW4=;
 b=smbmTh1A6Yw9XjULzYo/FESKMEByPHQNYky63gTE1YuUnHHbhD9hNK4Ekf/uIWsq01
 3PdPDMS5BLoy7w1hValHSCBbolbM8c0LSZ8eNKyk5scGe7jf7+nQqgIUx1EORHSc1yab
 f+UEFPHgjH3BPfJIT62ueFbe1zYxxfdu639p60AUB/wCs8PUBzVwiEIeBfwOFtW9i28M
 99ZUgOkSOoa6k+ADPR2omVa7HgkQBHJ0Y7lFVM5T2jKVEjwCVIwDaGSnOjMKZHzY3wPk
 5/eNOltdhzZvSlWA8TbA74udGsdr6cy7UKgjSloAqCzAsOmjMaeSO7D+lpg2ZwLYBfrF
 ykZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vPaPaQoPXlJZwdHwp0bhNLbGscClA6YVVkEeKURmVW4=;
 b=qWBYj+ssFgKkXcn9y5FdAqo+XyhvlvVAzGJP8AF6b6tXXNPpYR97ee5LyJ0PLG/nlR
 Zw4MN21Jg2xtINmTLcMjOVnNhxXhnUZjAfg5e8iBT8hHmweSQ4SN8pwRx2695CUm8e7w
 RjR+Y6kVD2oN4eJAX5Ji3ExPuqEwGxiLQZN51OVk7rsFNNGivpzJEhVLBFLCEtv8DZmf
 LZJP+jhE8nVOG0cSEKM8xNPhWD5ba9a7Y2MBxwYSDlIGDxQmxtWi4iIcO46ZeGqZLxub
 QPeOHE16VzW8gf63snZYXv8ILopMBYZgQssfQJ9iCr5v5C9tTEHGG6CY2RSDoFYx0za6
 mu4Q==
X-Gm-Message-State: APjAAAXbbk1RzlWckQRtOCUfI6BO+ZJx6ayxW4Dalb6FiXjmNtTwuKRX
 1OiopLp+rou7qVAmZJhvhNU=
X-Google-Smtp-Source: APXvYqzJc9wKIhSihgDlx/Cxa8rzGW8B2MmBHeLQNzEdeSH3A4tyY90LTregA77XzXRjsX1TLmoyqQ==
X-Received: by 2002:a19:80c4:: with SMTP id
 b187mr22607365lfd.122.1563526094479; 
 Fri, 19 Jul 2019 01:48:14 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id s21sm5588742ljm.28.2019.07.19.01.48.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 19 Jul 2019 01:48:13 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v4 3/3] serial: imx: get rid of imx_uart_rts_auto()
Date: Fri, 19 Jul 2019 11:47:54 +0300
Message-Id: <1563526074-20399-4-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1563526074-20399-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563526074-20399-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_014816_123422_FBA99645 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/tty/serial/imx.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 34d61c4..971055b 100644
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
@@ -1600,8 +1593,10 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
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
