Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C21845C4E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bjj99dfZ1AUF4SHwQZoXaCEC5Wnpsj8haFSdu3EluX4=; b=CafrRt8aJ0XaTsQL+mKlqELV+Y
	oiI6XalQ4vUvPh6Anedg5iuTZQWzr9FY+SL+Uv4kR/V4+iBAxiJRLwSycOgP92VDR262wm8XXdVc9
	hwnJI9Y6SEeUUAclUIgq+MMGvgeJABjZh+xsbQmF2+YaBQ6oz70+ideEIqIYBpptAn6M9YY0KQ1C4
	K23pZVSHVpXGYzVoWl2apFGH0bRTSCmCvml59v0FabTDF+DMUqgymXrvXWu0N6Xu5Rfx6O9JgQMMx
	K75SGwY4oqeA/0cp19VCZq4ZkPqImI7B9PHy2JyIslHRWTKhdIK9E/OUj4/d+Awu3555bspHDyAEQ
	83tBw+VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbl4U-0003Ek-Lg; Fri, 14 Jun 2019 12:12:42 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl3i-0002mN-Ky
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:11:55 +0000
Received: by mail-lj1-x242.google.com with SMTP id v24so2122914ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 05:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=D4v0SFR2nHGdYcEZZKZiUTxqoD86zDefhBuvLG6SwpU=;
 b=AhAtzRZR1iNbZtwwefyYQrhCxFjjjj3jcAtizT8hokoo5h70+FSnAE5y+zYDk1LWi4
 NIgeJuyCHNbZ3Yt2eG0yOW3R6bUBLTGn3h7qfGUP27zs6pEW/8A4aMnI/Wi68hjjYCU0
 HCWaq/sL2tY9m9vkgWU13HhB3shFp0FG6wmP91kkFY7W1y+kHkDU1+hbgRyBbNwFxztk
 GbVCABEY/OuCjip8EbMCR5xMi8BRHM2MeL6SqY9tEdxuAmXdw122za1xBMdNAacvx1DI
 jyh6DeZ/9VvOqVFBVa/q7K22U4KXBIDa7TIICQz0P2B3ZDXOE+7Dk2ZnXvhSNlw2l3Fu
 hIEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=D4v0SFR2nHGdYcEZZKZiUTxqoD86zDefhBuvLG6SwpU=;
 b=uYRV43dV1TLKpHfszyfIFDUh+zeIdBMq6HvO3IxkfLIwf9EpeYpGt2aaNsAQlhEzPS
 3Jkxjo4opgdOmpEwYlqpZCjfYB/xbwkm1PYODc9c8S7ZqB2eQjBz84p53MWT6c8JwnaY
 5DLmQGmFdYpalhu7q6dWZiH7HG9H1JC6YUks/jo6hKj0KcY1VQ+rC8FDeziRrSmdBR36
 VxPYy8AewTFOyfGj7OtAjtlOxr4+XnyrSrmVePyKuXMzTL7mZ9uqUi6JcK0EJAp1visX
 3A9OQGWhvwVgljfeYkHqeeXZYrv+9FIh13jcoU3aZyJ5HHz+Y+wKEPzDOl3H6CasOvGT
 2yeg==
X-Gm-Message-State: APjAAAWmwnU8ik4WaMdcIsv/lZsZtFiaK3txxdqnwsO2S1eEBlihSIF3
 BmVGh7WJVgxVndPIj/NJpNg=
X-Google-Smtp-Source: APXvYqwwguL28sV6oiZAQwrOvk7Z9RiemYNUnbx+FhUEesYHx8o0fOJn3igjqb2ZoreP6P9ZiZmGHA==
X-Received: by 2002:a2e:824c:: with SMTP id j12mr42933549ljh.53.1560514312926; 
 Fri, 14 Jun 2019 05:11:52 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id p27sm459683lfh.8.2019.06.14.05.11.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 14 Jun 2019 05:11:52 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH RFC 2/7] serial: imx: set_termios(): factor-out 'ucr2' initial
 value
Date: Fri, 14 Jun 2019 15:11:29 +0300
Message-Id: <1560514294-29111-3-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1560514294-29111-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1560514294-29111-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051154_683478_8251D622 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
