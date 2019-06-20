Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEA44D0D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 16:51:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MBA1qluvTRl9WWClqDS8TFl0o+uD3r6WmG3RJMRMAZA=; b=pVpAiD4SePhMW4d1Y38ahOIpiH
	LiK/Jb3vLmF9K4NRx3orbb6kmjVJ/QblZfDhra/0RpppYHO64EwU/SDuYYkFwxKr7U5qNtF21vXWM
	pKoVJu2MJ1DUNXVq9zyFnPy4qVc5UdPqV96X4QpC/3LOPpuMQh1a+IL+IZITm5W0O926regiin8eL
	RY4pT20tmuTAvRMUPdL1Cp/EuG7NpbJzckQBl/1L5b5dSxZ/c2UTx35L+N9CBfK7JiwscUpVG6riy
	DOGBiRtHlVJDAzz9zC7DisJwP0gbN66qDgA6zJTwfaLjSWsNyyuxq9BC8+C3Bi+hrdTFlKo8H60PP
	4h9qmL/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyPB-0006jl-Th; Thu, 20 Jun 2019 14:51:14 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyMJ-0003oO-3p
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 14:48:16 +0000
Received: by mail-lf1-x141.google.com with SMTP id d11so2652471lfb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 07:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HSmA2mWGWhBQ0CiBD0AKf9JHGKelcp2PJeQT4mYweVc=;
 b=W0pxNpYBz82c1Zqq7Bv96jba79T4vZ/lo8okYya4azYckR7DCxMvsFFPEcU0don4Jf
 LeQbA/ia7ypibGfGWbZ7GvHwJfOLw2T/A/5u2EbJvD4NI8cwgploJ7X4NkZR9kgnU+RJ
 a2bLohuvhra2oiK8RXG9uojMHaTWMcHgLMlvix4h26Tuq34pgd/Ghvj4nA5B9+R2ULjd
 JmnQvtzhrDX8GaJY/gBT0sjJO0oSu9/j189Ca4DVlO6aprfgRT+KygEg9pmP2aMeQFVr
 XcTaMDGY3mNxQRjazj74jlFsh+ikMy+XbFaDdZdxKjbQnj2JEiQtwS3HJ0NEvqdnTi9D
 5xKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HSmA2mWGWhBQ0CiBD0AKf9JHGKelcp2PJeQT4mYweVc=;
 b=Nn31i/B8JKj6WddAnuE8b0yrwyY/JNWZr1PjBB0ZYzebrpHmXzBJYrxLGVnoU4NX8p
 WQUyPdE4cewLOrhrhAZhe/hsOvNpHKWzfd+bm+7bXprmi12xdS0EDME3OpgPdOjtszyN
 nX53posSvR/+/vXHJ/GbpEJHd3h6hmwsJJEbTnRohxtmlxB4WaAwNjQTAhpWHYDIe5Co
 MGBuMmFD3MlgaAuZqwTeIwnxcCwGx6nZSoiY3JMcFPVGPTizaNz0kaA0KillFwz2J9aw
 achm40QDKCW4C4dYCO5WeGHl9oA6uKt++u2WV6l25tq2bdBVRdn8ggKVVGNzwX3PLY2Y
 0t+g==
X-Gm-Message-State: APjAAAWtSSe3810NhbK35oTPpJU0VJCMR9ird7ERPJQC8Z8rNINfmmAL
 wDCkZj/eqCZz4kPG4OhtD14=
X-Google-Smtp-Source: APXvYqzv8uOd/bMglQArMIBQ+KTyM4uiCi+Upep288W03NpjIgQnvzv7cBQnGhuT1n69OPTqA1NXBQ==
X-Received: by 2002:ac2:5922:: with SMTP id v2mr64882966lfi.180.1561042093788; 
 Thu, 20 Jun 2019 07:48:13 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id f10sm3577768ljk.95.2019.06.20.07.48.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 07:48:13 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH RFC v1 7/7] serial: imx: get rid of imx_uart_rts_auto()
Date: Thu, 20 Jun 2019 17:47:53 +0300
Message-Id: <1561042073-617-8-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1561042073-617-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561042073-617-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_074815_251935_F31512D6 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

Called in only one place, for RS232, it only obscures things, as it
doesn't go well with 2 similar named functions,
imx_uart_rts_inactive() and imx_uart_rts_active(), that both are
RS485-specific.

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
