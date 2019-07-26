Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01D9771AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 20:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZelUfE2u0eHeIDfg/5/2+5RbY9HgWtVJIEgczYPAPWI=; b=nSA8qgc8afKmzMj6f/fx6fAsSk
	KVYTIvtBDxmRHQynCFitLhc3XCEBSpkjlnnmt5nI6f4JIv9psj8WKwBUGXdjvsoi/r48w44iD/iZl
	jsVI8kz9FEjCB4v5UwXgeNib+bxJnkuTy6UzZR8uVh9W105lRLowiwk7Ht7GvPXDEnRvTd/JJsXYy
	09kNrnRFt4UPiDgx4BZhkx8Lbrb8wmzgdEJF9eq25yJuUmWj9u27/51zZY+xyM2ncTvXSmLPTcXHB
	5B6Bn9Xsh5Evko9gwORNXu1Dtutp8h1XRtiehaLX1lY0pWu0fSiMY4s9/0m8hPKta5pUcVRVSh9L7
	hNJSGx2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr5Ly-0000pc-Ts; Fri, 26 Jul 2019 18:54:07 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr5LF-0000Mb-8C
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 18:53:22 +0000
Received: by mail-lf1-x144.google.com with SMTP id u10so37735301lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 11:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jZWmDj4ynzd3H3aeFWqnlP+/VckrZm4pXfnfA3698MQ=;
 b=t5TcUS9UG2i5BR3IcZr5CmtPv66vh9zRIHMqIt473cvspguf8CZe3XhCSnDOBGMWA6
 eldCZ9MHwOB4FqX2NZ9kFZpblp41KqM86nHTzn+sDqjcpEMN9SVPfjbqah+X7cjKkxj4
 UBkGk05DQBCAk/uvjG5M9ZopALgp/vk9DFqrR2LoN4zW2D93/gi36smZWEzb9HlNSIAA
 K/7v6gZ9G4RpQifGemYt1Gj9BO/W8h/HMVFX7tOywWxr/hON/wIs2L3VERCK7ZbeOcec
 owqpIWi5oNY4OblefEjU6W2VBwpQY/XxfgIzg93eACVx2iqMnKdX1blwnXuXxLkig3R7
 b6YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jZWmDj4ynzd3H3aeFWqnlP+/VckrZm4pXfnfA3698MQ=;
 b=Rrrd6RkSTvYagwRAbWgOStfEJoHDeOeNHri/Wg5KlRRvPODu/wJ73P4TSCKKgS7u0J
 lBn6p7jpDrnqxOnnXvBgJsrBqBir8uEHCLU8V7Bk5l48/L4hGhr03mkrUpQHR3kOTTQa
 R82kVUQMwPXFK1XZsjh08pwMp6XQ7qlEcYM9EzfL9TjP99/W8Wo78taffNwj8hZsZFyF
 PQKjsyyX36V6eQ1HDxSMLE9x5qgp+k0IYAOa9EKPShsiPHY3HS1QnKGXJ/60i2BWwi7T
 SI6/3R4s8O5U/RGMFULvyO0LxkgRiSNn9AV2WN4KkJ7CPLQ1668xHRAu09Oz9EA5w1OK
 Omyg==
X-Gm-Message-State: APjAAAUCcFqFTrInrFCAIVuoFrC5xeFjEZlUB9qHkBIr3v36nJ/uZLbl
 UW+WddGWSKtYAXiFS20/fKw=
X-Google-Smtp-Source: APXvYqyGHeBm5PjleeluML4AzpxpOJHQoGmOKRykfTe+PMMgtgbeCze1llNiRpIuXxA9yu4ft7G/bA==
X-Received: by 2002:a19:5217:: with SMTP id m23mr44591619lfb.124.1564167199911; 
 Fri, 26 Jul 2019 11:53:19 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id u15sm10254810lji.61.2019.07.26.11.53.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 26 Jul 2019 11:53:19 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v7 2/3] serial: imx: set_mctrl(): correctly restore autoRTS
 state
Date: Fri, 26 Jul 2019 21:52:40 +0300
Message-Id: <1564167161-3972-3-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1564167161-3972-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1564167161-3972-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_115321_291375_AD8E14C0 
X-CRM114-Status: GOOD (  13.54  )
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
index 32f36d8..059ba35 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -974,10 +974,22 @@ static void imx_uart_set_mctrl(struct uart_port *port, unsigned int mctrl)
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
