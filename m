Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE5A4D0CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 16:50:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PhIk6sjkvlnKLRtMTMRekcKp9olcThIb5m1Ux8bbToU=; b=DRV3dD2DwCiuRpZQZo0chSU/vV
	UxcYpN02AcIg2ZBKa85SRFGtf+ME2eZgx3idgmdmfhqQOnJ5OlXLgheq8dtxVxKFZsnX1hCAYplD7
	NCSsfbW1DAkvqeT/GTSrnWFuy29EceK8RnBms5dAehtYs4YCkCvzu5uanPdZQLu8241js+MYtq0n4
	mTOsGYsd0HNQ1u7wxYWTWcoYe1xWp4tvGw1l9T6Ypg6L4Th+5ETZvnpt51+UNRBxg18tXJ0rP9lBc
	4Odmpq6ql4zResvCWyaf7z3KDQS2qMuwrBvfJS9pGoZvNcIiPVFqtfJyJfyErZpzNMzYeiDhnlr1j
	KR/BRo5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyOk-0006Si-3a; Thu, 20 Jun 2019 14:50:46 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyMI-0003nX-K2
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 14:48:16 +0000
Received: by mail-lf1-x144.google.com with SMTP id d11so2652413lfb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 07:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/gmvgIGLetUvFcBPF+pJa4U0pLLQ63ecHLMpqfRKqNE=;
 b=EW4Efxi+f4+n9tmUrRsKUWDBDeGfbd8SlIWwqFff40QnougmmpYe9PWBz3PZCpl/Nn
 Su75neDqxDQaHRtw6DQHe33fDum8ZGdp1JnWKQCKoONJFW8zI/g/z1+k5rut8hB32CTM
 vkda5ut3p2Th+ZOXgvI2amW/DS9pUAuAirYj97SfWhi7hvX5OTyHea3Vq1eZcnHepvUf
 6JX9p4GsaXXop3nKoGHxZhzf0ECgcmSXGLGeZLEcq5r9Fa8CoyDexCECLu2PYNff9y0c
 JvIthpVuWEpeNyVyEoEQUb0O2p6sa9a8cqW4HAw2GXKvTelKnXlmfGkU+NV/3KxhpB0l
 FlNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/gmvgIGLetUvFcBPF+pJa4U0pLLQ63ecHLMpqfRKqNE=;
 b=DIO2gJ0EJKaMpXSG72O/7R8mV1M0y3mh1DjdcPCWxvo3qPNRt1ME/f4Refk8clILnA
 g7GV10gMtzS2pWVrk0l9rFK8OXvEn4f6qFulbDgYNC2qQiT66SMifNbpWwUAJT0Q6qXH
 Gug6PelEa6/zV7bT4FZGJ8Sd6aKu9ARjGMTAudrdb1fsCdCaIAlO8+AEsBUrgoLapk0C
 cyIdUuHRGZGoIVUMY6gruJq9ZAPGwdB621XFRBkwd8OyC0RSVg305aQiEJ9tDdfqbLtK
 zA56s0AB8Mj8DmDaofRsB/Y+08ZgyXSV/S6mqnd5EyJtHYpId7ECLbpTUVZx28Gn6Ua6
 op9Q==
X-Gm-Message-State: APjAAAVCkpkQNNVOkiElt7PGynx+4vgj/6TWI0/WWyXQ6IEOCcx+I4Xo
 XQVP50k1UFnKxHexCE+tCMo=
X-Google-Smtp-Source: APXvYqwDmpSWVNY+4QgAKqUYLQ+RxNZ4gmwBGU7Au5lGe/bodTp2ffmy2FO8HU1Hkk13agrWqpSGCw==
X-Received: by 2002:ac2:5b0c:: with SMTP id v12mr53351238lfn.184.1561042092841; 
 Thu, 20 Jun 2019 07:48:12 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id f10sm3577768ljk.95.2019.06.20.07.48.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 07:48:12 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH RFC v1 6/7] serial: imx: set_mctrl(): correctly restore
 autoRTS state
Date: Thu, 20 Jun 2019 17:47:52 +0300
Message-Id: <1561042073-617-7-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1561042073-617-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561042073-617-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_074814_737594_19E1AC35 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

imx_uart_set_mctrl() happened to set UCR2_CTSC bit whenever TIOCM_RTS
was set, no matter if RTS/CTS handshake is enabled or not. Now fixed by
turning handshake on only when CRTSCTS bit for the port is set.

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
