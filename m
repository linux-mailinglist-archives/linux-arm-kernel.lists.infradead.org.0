Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E6E4D0C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 16:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bjj99dfZ1AUF4SHwQZoXaCEC5Wnpsj8haFSdu3EluX4=; b=GpVO8Y+KLlRAWuh5JipHCvjcTO
	hnFlEtyFQ8an7dfuPUM9dXlKLXUR3wP9SpORoJnQdgD9p+CQOMK/axGYhiF+iRXjDJbHlTzcSiELN
	bL/T7SWHGO2m3z+gNzXOtAK3DNPNrastPKwzrwkBCyWZCw/Ah9Pkva54uysSC87vHq1UYPmj23Dwx
	WB966sgqLqHMINNCpxMMNs5xs2P5RVrA5NXxb21/TxKFdF6azjI4/C+DyfhF0mdBIXdAqhVHKeQMD
	n3g/qPoomOOusyODWJmORpqrKLxbADrjfP5hbQ+/Uz0fmQpZp/oWJvmLQv15k97M4zckxEZ88K/2v
	HaDwtMow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyNJ-0004HD-UB; Thu, 20 Jun 2019 14:49:18 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyME-0003jh-Hy
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 14:48:11 +0000
Received: by mail-lj1-x241.google.com with SMTP id a21so2965226ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 07:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=D4v0SFR2nHGdYcEZZKZiUTxqoD86zDefhBuvLG6SwpU=;
 b=DUoQH5nzAMQkwMgDK92LnSpcbYkdUejrkX56/rNFbK//1UyTzgqlZZFF4DshEJOCmv
 GBGf+9R9bZmt7SuPgQoCuh4epT0TSA267X+Y8C3Xz3P7Xt6PjtqesEBydf2QHv55oxna
 824UwQN/3woBSubU7mBH4Z24yCD9/EFcycJBTUFj+wrbtfKauxbmqgY4TU6U2zTVoKsa
 V5Yc+3dDUclTIkoTGudTdZTU9OqIU+svFs6JEIWZnY6f4zvu4ze092StynGqssiILxqJ
 TbqjLLEvT5CgmFkn1oWwMXOkK90nKDWPDUw/XCUuIQO7xGQC2gi6Ae9sVpVD/v9NglzA
 UchQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=D4v0SFR2nHGdYcEZZKZiUTxqoD86zDefhBuvLG6SwpU=;
 b=WeYGairAg0H4+i4MKECLSqZcQ/nPiHqJIYrPLUAMcLCK6VQ1lPLWqTrM6OcHkdeKV/
 VI0lHbBjm/XHoLTgdiId2Xzh90SXv/UCq82j7UsBxNM4k6CYSkozdt5aO3UwXfXANP/u
 C31In794wnp3UNrFS+MjuYIccuZamDJvJwZGHdnwmz2XRh9wp3xwTG7aMCisj+Q2H14z
 NfNuOLCgFc9CvZsBgVbeXQKoN0ks/o811TCjM3VMUEdLIn2t5ZPAS87G5z1/av9We35K
 p5zCT6yA4QZIfUml3SOApUUa4NKNuZMHS7A8UmextzMThZZo4p/9ckBSX3Gr+3oPLCl1
 SlNg==
X-Gm-Message-State: APjAAAWCo+BVqixoklumXNkOTgnCwIAgvRGdX48nD8szzuR5ej3ALRQj
 x0rXATTuuXxFR26N2poev+E=
X-Google-Smtp-Source: APXvYqx3FATvUJqLsAjONbNQN8PduHBc6uhH3sMNqzf2nFuoCLFoZo2UvsSlmbNL+Io14cpICWaaZA==
X-Received: by 2002:a2e:5548:: with SMTP id j69mr23778346ljb.48.1561042088818; 
 Thu, 20 Jun 2019 07:48:08 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id f10sm3577768ljk.95.2019.06.20.07.48.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 07:48:08 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH RFC v1 2/7] serial: imx: set_termios(): factor-out 'ucr2'
 initial value
Date: Thu, 20 Jun 2019 17:47:48 +0300
Message-Id: <1561042073-617-3-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1561042073-617-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561042073-617-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_074810_628288_6BBACB5B 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

Set common bits in a separate statement to make initialization
explicit and not repeat the common part.

Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 1055124..87802fd 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -1563,10 +1563,9 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 
 	spin_lock_irqsave(&sport->port.lock, flags);
 
+	ucr2 = UCR2_SRST | UCR2_IRTS;
 	if ((termios->c_cflag & CSIZE) == CS8)
-		ucr2 = UCR2_WS | UCR2_SRST | UCR2_IRTS;
-	else
-		ucr2 = UCR2_SRST | UCR2_IRTS;
+		ucr2 |= UCR2_WS;
 
 	if (termios->c_cflag & CRTSCTS) {
 		if (sport->have_rtscts) {
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
