Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8ED956BA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0jeta4ZlEa7F5fBHpoukj8EKRvQbWIS7DFIr28pBd0A=; b=tIypKF6PvXef4QEGQ5ue189X9G
	36pXxnvt5yue/vU6yC8XPzIShhQ5u4/9Fkf3EQFiBVdVMXwSDaRSxp1OfVveUukHz1IG49gnVhcgR
	wzIAKyNbr+w3A2irDlLIiOcFUyy7FbaF5/xixL6jz7Ltil/4GVUGMGCJYNI3law28xpF+RmEwePsG
	tbqxEUtsLrLhjOqGVDRVIFbeumgXm3p7Wkh0lBWPZ7JAeoIhpGG4/L6KFhUYH3ndQNGWgS7BG/udx
	NH3vE5/2OnSr7dsyxWmsSCZikNuLIIXAb6j6F57Tw83ooLoKIFCHGO0DmFKIfPtB270BppnAtn2FG
	lVwTLx6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8ix-0006MV-6r; Wed, 26 Jun 2019 14:16:35 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8go-0003zt-2H
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:14:23 +0000
Received: by mail-lf1-x141.google.com with SMTP id d11so1696159lfb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 07:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Cru3DQ0cf7AVa+7W6ow471nhNIp8xE7O+QraDjrOeNI=;
 b=oGSohR+AMbgw3RJe6dElbWB7kM/ng20QeMXi7srOmz1ae9AIpYC42091JUF7gRtRQI
 U6InvOg08QosR9ixVkmIIv8uBJ3Imd8Dhnj18XNyUgxhAsZRC1VDRY3xqlqT5RABwSrh
 J0nugtNshxwM97+dZSJs+IUkSIfEBMa8rqRMW/sYT/3vcUhXdb9kWi479vMmhCxpf24S
 f0Ocy1I+stdB19JV2iX4tFEtWt+b5bM29PWgVMpz4iqdgVMsRoVC1ftKK2JWKJDa3TaG
 9mJ1r0Q9UbR0g/MCDrSa5X9SfOCKfKnp33T6i3zUQLNZ8GCyb7wUNyXfU08SFRW1+4qw
 0g7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Cru3DQ0cf7AVa+7W6ow471nhNIp8xE7O+QraDjrOeNI=;
 b=PAA8w5Of2ndyQJl9to7uchIweWfp8FvBG/fI5uihM1MUXJ2TBJ6rUOAQnZn2f6xfQH
 LNPl2KYyEr++fmMWvhLwz1oOn6l2woXiDCuGMErszwx1hBujDXdRmE0IdidaNyihhGxH
 YNzLEl01LkgzCkEX9TinpC2YJgubF61ibn/5XpQujKEGFaU7MGR/4rr0cAaLFBpeH8bj
 xmknT962+88JrniLSkW7esVBXCOkmYyv7bf9otYQ1dA0Kjq9ETQ8LDHnTXYtsEZtiZdj
 O7nAisklsxEZw2ItayfAqo18z0wSb/4EF2kjy31zzysnMEpNh4mZFv3/U08J1h55Oe3V
 056Q==
X-Gm-Message-State: APjAAAXJB8eYW3O5LqsoGCDaqIcr0MAMfzAT830JqQR1NG0UJaGyouO8
 fHAfr3Rqh6NJEFqmmV+n9f8BF7l9
X-Google-Smtp-Source: APXvYqyL1RGOMBYqi/6sv3nKZIVcrOLXsrmGA0M5Cj0IiQP51tp7X8MAQLS00+1fgkBYgDv6grPSfw==
X-Received: by 2002:a19:490d:: with SMTP id w13mr2761425lfa.58.1561558460721; 
 Wed, 26 Jun 2019 07:14:20 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id 25sm2863825ljn.62.2019.06.26.07.14.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 26 Jun 2019 07:14:20 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 6/7] serial: imx: set_mctrl(): correctly restore autoRTS
 state
Date: Wed, 26 Jun 2019 17:11:32 +0300
Message-Id: <1561558293-7683-7-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1561558293-7683-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_071422_145453_D6F71896 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

imx_uart_set_mctrl() happened to set UCR2_CTSC bit whenever TIOCM_RTS
was set, no matter if RTS/CTS handshake is enabled or not. Now fixed by
turning handshake on only when CRTSCTS bit for the port is set.

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 4867f80..171347d 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -970,10 +970,19 @@ static void imx_uart_set_mctrl(struct uart_port *port, unsigned int mctrl)
 	if (!(port->rs485.flags & SER_RS485_ENABLED)) {
 		u32 ucr2;
 
+		/*
+		 * Turn off autoRTS (UCR2_CTSC) if RTS is lowered and restore
+		 * autoRTS setting if RTS is raised. Inverted UCR2_IRTS is set
+		 * if and only if CRTSCTS bit is set for the port, so we use it
+		 * to get the state to restore to.
+		 */
 		ucr2 = imx_uart_readl(sport, UCR2);
 		ucr2 &= ~(UCR2_CTS | UCR2_CTSC);
-		if (mctrl & TIOCM_RTS)
-			ucr2 |= UCR2_CTS | UCR2_CTSC;
+		if (mctrl & TIOCM_RTS) {
+			ucr2 |= UCR2_CTS;
+			if (!(ucr2 & UCR2_IRTS))
+				ucr2 |= UCR2_CTSC;
+		}
 		imx_uart_writel(sport, ucr2, UCR2);
 	}
 
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
