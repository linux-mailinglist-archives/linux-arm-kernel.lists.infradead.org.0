Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E47D45C51
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:13:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EENHpDtn/VHoPae3bb41Aa4i8k2+F8fmz4D1cHg03lQ=; b=CwZVj6tNTCSIYxDPgQU5p6uZ+Y
	DMv2myThcy74qRTkmwG3SEAgnteY+62MNt6tnyxxgesrXnPFtf5A8F6uBzudp5jhdGHZwdYu3nvhV
	IghIadPwLcUqBQ42G/LOTv6ktL6Mdt+QWDX+KVfwIDjTmBP1hGkEmIPCoA6z7uaHgzclUki5fIcgO
	zlRmVbIG23+X7OIJMKvpEaxQhkPSF54zLMQzbgMGvL0uTv26v0FqMvAq1RR7GDJDB8ou8PORDXJJe
	/vVpaLPL4yLRgeQ3ZZbaPtXjXRSP4oRg0Ai9gMPw0iE27B8ONxN2iqEl5ZYX43NYeP1jcRJTH3Rwz
	KA6UlRhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbl55-0003m5-7e; Fri, 14 Jun 2019 12:13:19 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl3k-0002nX-Sm
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:11:58 +0000
Received: by mail-lf1-x143.google.com with SMTP id 136so1566200lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 05:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UYjsmUBIL6tntgGWQMmUG0zM7PGoxZJvICmLpEKuiKM=;
 b=il7i9G1w3SX0Zw4vIbZTsQplXBvEBNZ+eNvDmLzsAFQexzjH9BwvOMZhALmT9Y5DA7
 RVg6hUfJwzJoRyUpD2JtLUJevdCgwMplMPfNfdiiwzyY3BvMOqYmUj+NCQFP2zBQ9YFq
 yJkcaArmW5G6cXeBfEObNJpRV29I+BC8bjnO0tNtniXG+fjo0rsHMPxy8NkFfaXMPaFX
 AlUsdxlbXNi+wd6yNy7OtljKJzeUK+mfQESTfTJ2QXA+xtC1qnE8n1dLXXnqU02x5yna
 ZlNnxlR0rpet7esPf7bPaEgP0kxMpnv+E+oYXmR/FmhlQmM8u2BG54xhpe8Ue2qv9Fsd
 9rqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UYjsmUBIL6tntgGWQMmUG0zM7PGoxZJvICmLpEKuiKM=;
 b=Ssjwke4hq2ub0HgXoG7cOWRLLZRktv07fWdCr6aVGLMtvK/VS129PLlg4vfU9QVoBg
 TO3cmpK7eCJpkQyuVTiqEKjwqCH46uEBJDM3xhRW5fuXwMUEqWLtELhU15gwUpouEl4q
 ZzhoNHc5yGndoOGq22HJbmqSdlTw1JcJid+QgstSaKpq3jddiYXl8Y3BgYWpEt7yuG0J
 zNXeIKy/zral63FCJ8My7U5Ymyh39EFauman0IhLoswj1QJpGfrAQ8EFKa18sFM0ZCwm
 e5LuUIvG2rLu1P81d3z5vxDiWhQFRpFF6vdvCmKpMqNartcoAN+dyNPrOi38Tx8lhWvG
 Mxcw==
X-Gm-Message-State: APjAAAWPAalRwofupiCDlB+Z4qam5V98eVAMOkPj2Z4pEwoNRbOzZxKe
 10q6Afl+H2OTlJJVVhM1UHY=
X-Google-Smtp-Source: APXvYqwE0kQ3/SOZHOsiq+i5HI5BQIQVPxzNpqWa+XM9yTu3PSUfyxB/zEsW9U1o4rVYPTAAidt/xw==
X-Received: by 2002:ac2:5382:: with SMTP id g2mr46735673lfh.92.1560514315029; 
 Fri, 14 Jun 2019 05:11:55 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id p27sm459683lfh.8.2019.06.14.05.11.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 14 Jun 2019 05:11:54 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH RFC 4/7] serial: imx: set_termios(): do not enable autoRTS if
 RTS is unset
Date: Fri, 14 Jun 2019 15:11:31 +0300
Message-Id: <1560514294-29111-5-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1560514294-29111-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1560514294-29111-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051156_953599_D87CF255 
X-CRM114-Status: GOOD (  11.53  )
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

set_termios() shouldn't set UCR2_CTSC bit if UCR2_CTS (=TIOCM_RTS) is
cleared. Added corresponding check in imx_uart_rts_auto() to fix this.

Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 17e2322..8ee910f 100644
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
