Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1D05F8CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 15:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jPLzpknnuc4tvUlnIVKonzGfntCep0z89Q7+WliPvN4=; b=hlpVYaOFZdMpXXxuUScI6HOBRS
	lKV9EsO3FCohqm2mVK6UO8dC36bpIbP/w8OS5MovWN0ia6GOt4trsyc9bB4Cgtbpv+DumTbQzlvMl
	cN0Gp1oliUVkEsJqUnYwLWmon/kictOY3cHZmZUxn72yyCYG1oDLxTEp51zUJC1YDxVR3twLwk7s3
	gMQLqEu25yYR0QceYhPpmeJnSkKEVWzJjt1/nh7eacVn5rgQCdMGrXaOlA+SYFnTYa57cMM+8oWC6
	t3v8+cFzEMen1bEMEewDDWow7AujM/Dcc3dl0clgEwABeThWyfwS3pTw+nsve3AFAF7gsFd/erk6p
	sbWio71w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj1OE-0001Y1-8j; Thu, 04 Jul 2019 13:03:06 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj1MM-0008VS-Q5
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 13:01:12 +0000
Received: by mail-lj1-x241.google.com with SMTP id v24so6072455ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 06:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Vjqg27zo8GSuJgU6iVxhR1yNRE/ZU22ne3V7jvRsp28=;
 b=QS9k6FW9w4E7lJVl91rKZEbJwQCPFf4dXHEnx92561O9pq8FV57Bu8VQzOZ+tF3acv
 HDzFIeV2nfNItPM1raEZQIs/7jmltHT3/csXL89AmcdXvreOTEUFHhhQnnqiP/bVv15N
 22h/KyIhu8lHKV8Cf0Qq9A/G3avCLY1DOKN7tDHVmuVTAZdUcpemBdo6hJqt5T8oHiPX
 tOBCkYMYXDYXW3Kz5NR4VuRhTR7BkcupkchrFvRKaMcKH31jlQGdchMyyhN9e3NzlzrT
 810EPE02SA7TXnkVI0WJGJ/93KkoCgVyyuP8dppfZ1DkD8cEQfSXpBT3QT20GrAs8tH8
 cQ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Vjqg27zo8GSuJgU6iVxhR1yNRE/ZU22ne3V7jvRsp28=;
 b=gG2IfCMsHinOlEJnidnWdJ/JjiKZsDfLPaqaC13HRYvNJ9ieoas7iVjqySqWIEZaDL
 kbGnD180qIEsEIWs4wniiRYkEngUvzVJyof/X4UFyQ9qbXkvQXfaDVq8uctURGIpUcvq
 zUfl4pbUZmdWiM4bmyijgk2DUsuRnjalkUMcdjNFtKkrbzXSGknfh5PPO6M9kIvhmRc9
 A1WjbcvU8r2jHLmNOJmJrHFFn6qkiopKCpDLjti/BctDRoyzxD95gL4fOVe73+sHSLzT
 EaxGcjo3n+1eoXEpfXlujV5ZOc9Yl/ACad3tzjGKblr2Sfd6gNSZOyx2XbYdqd9ar71Q
 qUHg==
X-Gm-Message-State: APjAAAX6tRSraULN4x7iK248tYr1ORFjlgq9YVyIeqSPfLoRAFkEHjDf
 TnSA4AyXxRB8Z/UUM9ytK/I=
X-Google-Smtp-Source: APXvYqy0O6Yaej+AxploccL21axdxsQ4p5RQt1Xg5aioHDDia+DQANIaVf69pxKtMsc+zBt44esfiw==
X-Received: by 2002:a05:651c:150:: with SMTP id
 c16mr8505844ljd.193.1562245268095; 
 Thu, 04 Jul 2019 06:01:08 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id h1sm485914lfj.21.2019.07.04.06.01.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 04 Jul 2019 06:01:07 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v3 6/7] serial: imx: set_mctrl(): correctly restore autoRTS
 state
Date: Thu,  4 Jul 2019 16:00:28 +0300
Message-Id: <1562245229-709-7-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1562245229-709-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1562245229-709-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_060111_036950_86D8A3F0 
X-CRM114-Status: GOOD (  14.09  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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

imx_uart_set_mctrl() happened to set UCR2_CTSC bit whenever TIOCM_RTS
was set, no matter if RTS/CTS handshake is enabled or not. Now fixed by
turning handshake on only when CRTSCTS bit for the port is set.

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 5532887..582a3fd 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -970,10 +970,22 @@ static void imx_uart_set_mctrl(struct uart_port *port, unsigned int mctrl)
 	if (!(port->rs485.flags & SER_RS485_ENABLED)) {
 		u32 ucr2;
 
+		/*
+		 * Turn off autoRTS if RTS is lowered and restore autoRTS
+		 * setting if RTS is raised.
+		 */
 		ucr2 = imx_uart_readl(sport, UCR2);
 		ucr2 &= ~(UCR2_CTS | UCR2_CTSC);
-		if (mctrl & TIOCM_RTS)
-			ucr2 |= UCR2_CTS | UCR2_CTSC;
+		if (mctrl & TIOCM_RTS) {
+			ucr2 |= UCR2_CTS;
+			/*
+			 * UCR2_IRTS is unset if and only if the port is
+			 * configured for CRTSCTS, so we use inverted UCR2_IRTS
+			 * to get the state to restore to.
+			 */
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
