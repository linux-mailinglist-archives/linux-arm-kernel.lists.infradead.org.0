Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2933E56BB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:17:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9QjjjJBhVvxEOusCEBcXtmTTTScCP+z68IpwtETfuu0=; b=mVr5W4+vucOtRUJTPZ/W264O71
	SCcoyOVjOpy56BzNjp33Rqmp7GOdM2Dkw48bvJsa2tlwGCubnvumc6ShJTayBPiQKdGZcst1qy+kB
	agZ/yXqN+VKucU1GLZiXYh1ATpfqXQ8MMaVklk5jODxTDQbZA+/ZssBWEboZuId7IkMAWszXs9x5G
	IVtbM4s07qIy+io3NGmG4eSRIITbbDpgQyicmj/E3/8HU+Z+/2Nc0u/EU1q4+kQokBIN55B2efri+
	B6loMh3AK76GA6fm0XP9E+XYqyI0k4fWZNeSqwKve1qCcqq2T9dMVdo2sezXpWRGmCh8rM9FqK0wD
	biREXydg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8jf-0006rc-8V; Wed, 26 Jun 2019 14:17:19 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8gp-00040Y-Rq
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:14:25 +0000
Received: by mail-lj1-x241.google.com with SMTP id m23so2356754lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 07:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=disSROzqfUTYpKBNgu+W39ygIWnnZb5HbJrhGeUkuwI=;
 b=BZj8H7g+wSJU3LS7Okj/+Un4KL2iGuLBDqcdcEdVq5R5tg43lDh8RHDvP8Sjk1tgAg
 EGPnu5JOWBCXeBM4+Fa6IUVYWxIowJrKn+Y1CXKRDUpeDChs/B1CkGmVDXZakNdU3NIG
 igwQWHWYjAOErhpFJF7lMMWIDcPk11H10UoxW7atwM3x2CyXcqzaCpndkP1qQZiOcke+
 uUtA5tj/61A5V/YvQ12mM2yVqkYxtSN5JST2LKGOf+HX7KnWw5ycCmFylwdhAuLPEpQ8
 WrlIQTH3X3fJ924sImugV+iwxzEoqwZ7m82jaLI9XAQd/ZXS7I+8A/0zCvFAhXHSelQ9
 ncdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=disSROzqfUTYpKBNgu+W39ygIWnnZb5HbJrhGeUkuwI=;
 b=IhiZFnjBW3muPpMWoEfdDAJuraxthZ6ShzqMB0AkmbHUVC/QZ4stD7xq5/GPbIKijy
 k4izOdvS/9gE8IzVor4IxF5+ZVFENMeMQGYUKDYWKGp//KAD9KEbasAbIxW0AdKBbc2o
 LslBykXZmk3/oxZTMlikj80ZKKIhOOKzALR3FdBpmKh3+IVgUBH6HtPLv9Gow7qwkvO9
 5LZL5RNSXsBFiI9QNJ+l251ZX0PnLfD7Qr1un+dm0fv8h/IdzU3kIG6BuU0RER2rkbLl
 RhLWHq7IeWI0Qf+exmnqAXU/wA1aIaPjmBLCT091a6CSioKuQyxdMY4z2KfacVgU9iPi
 NYaQ==
X-Gm-Message-State: APjAAAWZo3BkGYSLHFMe8FoEBz/q41wP7Gwq1ck1dQKiJv75qluPx3sf
 RKaMwadBeD7YwRzaURMFEqM=
X-Google-Smtp-Source: APXvYqzQ3GQSF/ngOsv3mi41ox5k13SoEkk3vZAxzYGrp0VMn7mMceHw0FTkyiuSkMxqLHYFdZ3q9Q==
X-Received: by 2002:a2e:988b:: with SMTP id b11mr3080348ljj.110.1561558461628; 
 Wed, 26 Jun 2019 07:14:21 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id 25sm2863825ljn.62.2019.06.26.07.14.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 26 Jun 2019 07:14:21 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 7/7] serial: imx: get rid of imx_uart_rts_auto()
Date: Wed, 26 Jun 2019 17:11:33 +0300
Message-Id: <1561558293-7683-8-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1561558293-7683-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_071423_931282_FE60C212 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 171347d..a5e80a0 100644
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
