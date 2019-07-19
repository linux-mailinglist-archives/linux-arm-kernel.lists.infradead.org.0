Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D32036E2CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 10:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hQfehp5dinng6ZC306WtnbW+kQ+8YB9exJsi8EKEppg=; b=oGjfgFJvXohc2IrqComl6E8Sni
	+yi77fIvjR7HjBA2whuwXt3oxCYZlDc4Wrrn7ig2ICWf14J674uQHwIdem/e7XMTeA2bcv4L+UG5+
	n3hLv3uni3nb8y13Eq2FNSUabVVhZuNocuvUikej0TYAn24U6yNyX8ioA0B4cQGPwXKKxYiOtTuuI
	oIQotxplqMi0dsR8XBt7EG6169wi2g5OCxQWI7f8zHBmzzSl4GzjSxlKn6575eyWUn1dLAvCu/czR
	PyeNhBxkvmnqeYuDgNMqC2CzO1o5EBkEC33Gsywd6xFGPygPdKgDNeeKaXVv5DwIxyDRHKfDiE+Wm
	EU+VxoZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoOZ5-0000GU-Ol; Fri, 19 Jul 2019 08:48:31 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoOYn-0000Fe-Oo
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 08:48:15 +0000
Received: by mail-lf1-x142.google.com with SMTP id h28so21166202lfj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 01:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=h/OUL4kuYmZg/t1vj3NY/URHnlsp76VVod3OP2DKJZU=;
 b=QndROAkecH/l1lYhw2nvmBaU7QY8yNn758ILO45/PJ4uS9g0QewPkhfBpMoUVoj9U+
 yeRGHu3K2TbsqGhOUU6XXXPoepN+U6JkClsMDar9/vaa58MT6px88zCwtHZRVconnIoE
 PfAfmkGx5UYfQ6BPArOT9fWEsAEQBkQi5227rRVPNEcHoHbIxJg4W+iOI560jXHWidXV
 tCo4Eo5QE2V3lfxu7uAzHfAT9n9LRmO5kC645r1vYH1TOCItG5E4BQgJ0nnLDKygmPEB
 YaEBOb9uYkEked4bxRSSRPFJW9q4k78C80UdoW3b7hgFGJ3p8r7CmXehm3yPn2n36IeR
 +AAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=h/OUL4kuYmZg/t1vj3NY/URHnlsp76VVod3OP2DKJZU=;
 b=lnD9zbvaWsgfGOUfYEYMjkKy5+eODF+97yv2LwbdKYzxoiUFr+t6OPWQsTnXh7264y
 /A05mrkK53r9NTevLWl95SX/2Uf1//Phj/jmJMBMpk8E2SknekMFXnT+lBb3nCOtETJN
 Jfhyn0On00UXzj8BelJOLO7nLsP8L0X9bIB+Ccu2bcgRqdNhL+/DwOI6OFrW8YSKvxtI
 H/PG6HJtpTzlORiEyUh6o50TA9SFLtRWGFbQAT/Am5vGLlZ7eJjXIErtpUt7aAF6WFwT
 9zm9tGxVwZ6IGRSMm33DXUQsLF1vJTHWFpxWsuTSHC41vy7KncfO39OhgEndZOXb2/Lh
 tsAw==
X-Gm-Message-State: APjAAAWbkUVmPtpYozaBIVFQkPFRfNqQoJVjddCBh0wTsj+AOb9dUvRO
 ue0wflaRSoPv1qTXHbL11b20SDgS
X-Google-Smtp-Source: APXvYqy2FGfehFLmTie61L9InK30ezOeOYYqY8rcpDD7bfUOabGgWkAgoF1dGxfMnlyLLGe5rqoPkw==
X-Received: by 2002:ac2:5337:: with SMTP id f23mr23972581lfh.15.1563526092493; 
 Fri, 19 Jul 2019 01:48:12 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id s21sm5588742ljm.28.2019.07.19.01.48.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 19 Jul 2019 01:48:12 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v4 1/3] serial: imx: set_termios(): do not enable autoRTS if
 RTS is unset
Date: Fri, 19 Jul 2019 11:47:52 +0300
Message-Id: <1563526074-20399-2-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1563526074-20399-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563526074-20399-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_014813_822046_BDE974A0 
X-CRM114-Status: GOOD (  12.40  )
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

set_termios() shouldn't set UCR2_CTSC bit if UCR2_CTS (=TIOCM_RTS) is
cleared. Added corresponding check in imx_uart_rts_auto() to fix this.

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 57d6e6b..95d7984 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -405,7 +405,8 @@ static void imx_uart_rts_inactive(struct imx_port *sport, u32 *ucr2)
 /* called with port.lock taken and irqs caller dependent */
 static void imx_uart_rts_auto(struct imx_port *sport, u32 *ucr2)
 {
-	*ucr2 |= UCR2_CTSC;
+	if (*ucr2 & UCR2_CTS)
+		*ucr2 |= UCR2_CTSC;
 }
 
 /* called with port.lock taken and irqs off */
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
