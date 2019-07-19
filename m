Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA8A6E2D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 10:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v7Zw6hEc5ikjieqvIQ9Jm80MIFetcZZThMKvimxDXzg=; b=lm2FaIPv7Bq9fVXmBzwmQpaquF
	TVjb0bIoD4/3kXVsag3H5/7C9g0z2gL5jrgg5PBDhyF/Zpl2IQ52Cb2SIOHyzBV3FHzE2bH8BAT4R
	PUdmf/+wxD0keV35wYBA4fgq2y6Wh4NjYAUB/ls43klMXes52FmDQi1BAvhTH05fGp+Qu4T2KjJ+k
	u6pfSBdgyGXpnp6s7hxGlQ2plDsoitUltq+cp2ttKlQHvWmZ9ISql1f/EcFlhpmGfqCTs7mk1YENw
	zdopBphEARKEZwuwOrCnyIHT2RFxJexLz8cAsHiEZey1EKBgZUpYUsJeNw6RSH9YovjhXkAa7iXom
	7Ba7mqIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoOZi-0000xj-RU; Fri, 19 Jul 2019 08:49:10 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoOYp-0000Ff-1R
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 08:48:16 +0000
Received: by mail-lj1-x241.google.com with SMTP id p17so30047672ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 01:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CKEfXVruFdZBhIgkyanOgCxjpHC1q3hmrulsl0t52XY=;
 b=WCTAmUGDqvk//uRjsx4yNZwDWCEZaUh9EqQ5WAyIJ61y63JhMrT4/rmPTjZx605sRM
 gEsSMkEGNCNlBoDbQ3VHnyKQPwI4x0j4unKXn//7+8rGand8vNpSVY9eSBiH/1QIWhU6
 yrG0+bqFN/YCtCGyjxPfkWs4v8X9Ni6K7Urs7swOksTuqqPDbx9Yun/1CnoUNTx3g/K2
 J/Lp74oUkzFaaGM6odKQKyBjQgmuF+KbXustr9/eNRpp+/fn9u+W5b+KDWJtlc8Zgfhs
 5L+6ddrVo3gI+3QbD88Axaif551DaRuwWChS0hidEFYZIjM4zEmqi4ExOMVeV5Vf0OTT
 N5gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CKEfXVruFdZBhIgkyanOgCxjpHC1q3hmrulsl0t52XY=;
 b=FfuWxh1VNx/Dbn/mf+EbJHvQIrDp8/1AMRH17mHOGC4YLojiQXAA6PP++ueWfgxVS4
 I+/a4tFjpn+ddOAKEEU3LiEPILmRVWM9uN/yxTeArkFM2tfmdWRQ6sNOlVcfXs2hRk3K
 FzxDMJobS8NVktH0GkzFsTAXJJmzVA7S6ebI6jbLwFcfZ9Ahy+EbnlEZxAehgg6L9rd6
 PSbfGbWtW6hvl+R/ECdo9hPTOP4BDr/1skFfCeV8pJbhYVHscUJIDZ7ywTYtlayR7yEJ
 OTTlEa1O8sL9pKDYREgSF+PmQpLv+R5fHXaw3aWO8qhwyzEPnynPgfLG3pDbCfq6T/l+
 8+WA==
X-Gm-Message-State: APjAAAVKK7jxVZvfomxtUD8+Z2t5+3UriYUqm+/4o7aTtYEW+axSfIqX
 CsrsJJanBt+EExPd5Nc+laQ=
X-Google-Smtp-Source: APXvYqwDLMEJw/biWbIx3p9NfsGu/4MNp8AGQDzrNPIyoiDgfhVgD2DB93aCbDYl/FyEaHqnyg6UuA==
X-Received: by 2002:a2e:3807:: with SMTP id f7mr13452098lja.87.1563526093353; 
 Fri, 19 Jul 2019 01:48:13 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id s21sm5588742ljm.28.2019.07.19.01.48.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 19 Jul 2019 01:48:12 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v4 2/3] serial: imx: set_mctrl(): correctly restore autoRTS
 state
Date: Fri, 19 Jul 2019 11:47:53 +0300
Message-Id: <1563526074-20399-3-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1563526074-20399-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563526074-20399-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_014815_082262_C997A3E1 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
index 95d7984..34d61c4 100644
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
