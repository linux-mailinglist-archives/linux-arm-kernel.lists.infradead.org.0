Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5A834D0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:15:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YsZzPd9DG9iuygLx4eTciK5dmBH4bA1AWL9upVX2k4g=; b=RJsyWmRS5maikthLu6zqMgJ9oQ
	Y26P5OXOX+ksgdPyuZjay9pU99JUnveYwyd2NSQVpcGMwnjfUd+WP0UD5jwIYN7LQufLKUdtodvK0
	VAi8rPv+vZXQsfuTLP+dQoje2igDy/jVQnPnlrHOiLIFbHb52dV76IXXVnaM/cWQoDbF3Q+zBJxkj
	nJkKlqHWMdtiRHTecJYRyjbuip90o6IxeZiplpB9JHGOBRHiNlKvm/XmwopGA8lAl7nXd+ux/rOJz
	td+9IxS7UPVZsHAKibTj2IMiPOHZskqh3DlF5MtWWGvOjDSeSwSRSYVjgk12YVLIGPxS5YVu7/NxQ
	MG6eIf4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYC68-0000FD-E9; Tue, 04 Jun 2019 16:15:40 +0000
Received: from smtp-good-out-2.t-2.net ([84.255.208.44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYC61-0000EV-EF
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:15:35 +0000
Received: from smtp-2.t-2.si (smtp-2.t-2.si [IPv6:2a01:260:1:4::1f])
 by smtp-good-out-2.t-2.net (Postfix) with ESMTP id 45JH8K75cCzZC9;
 Tue,  4 Jun 2019 18:15:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=t-2.net;
 s=smtp-out-2; t=1559664930;
 bh=Nm0CTY9O9Jph9TjFeOTe73ck/7qXqL8hFmMf283KJ4Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=opCDLjuLS51OPR3oIklcGovEgUBHiRmMSNHg38Aacg6q2bxv9U+uCKPRv9+kSaPhh
 QAUf4mwhn3C1WNJ2lxzKodcYA26ZLlUAD2+WjuaBAGXsjy3auN7t6lCFjxLmS/eIrk
 ftutAhUXES57MzBc+xndD4ElCZ6bAeAYn8gBfnrA=
Received: from localhost (localhost [127.0.0.1])
 by smtp-2.t-2.si (Postfix) with ESMTP id 45JH8K6rmFzMs33d;
 Tue,  4 Jun 2019 18:15:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at t-2.si
Received: from smtp-2.t-2.si ([127.0.0.1])
 by localhost (smtp-2.t-2.si [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NRqyCHxikLg0; Tue,  4 Jun 2019 18:15:29 +0200 (CEST)
Received: from localhost.localdomain (unknown [89.212.35.59])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: borut_seljak@t-2.net)
 by smtp-2.t-2.si (Postfix) with ESMTPSA;
 Tue,  4 Jun 2019 18:15:03 +0200 (CEST)
From: Borut Seljak <borut.seljak@t-2.net>
To: borut.seljak@t-2.net
Subject: [PATCH v2] serial: stm32: fix a recursive locking in
 stm32_config_rs485
Date: Tue,  4 Jun 2019 18:14:44 +0200
Message-Id: <20190604161444.8819-1-borut.seljak@t-2.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604095452.6360-1-borut.seljak@t-2.net>
References: <20190604095452.6360-1-borut.seljak@t-2.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_091533_803913_FB8B717A 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [84.255.208.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove spin_lock_irqsave in stm32_config_rs485, it cause recursive locking.
Already locked in uart_set_rs485_config.

fixes: 1bcda09d291081 ("serial: stm32: add support for RS485 hardware control mode")

Signed-off-by: Borut Seljak <borut.seljak@t-2.net>
---
 drivers/tty/serial/stm32-usart.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index e8d7a7bb4339..da373a465f51 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -107,7 +107,6 @@ static int stm32_config_rs485(struct uart_port *port,
 	bool over8;
 	unsigned long flags;
 
-	spin_lock_irqsave(&port->lock, flags);
 	stm32_clr_bits(port, ofs->cr1, BIT(cfg->uart_enable_bit));
 
 	port->rs485 = *rs485conf;
@@ -147,7 +146,6 @@ static int stm32_config_rs485(struct uart_port *port,
 	}
 
 	stm32_set_bits(port, ofs->cr1, BIT(cfg->uart_enable_bit));
-	spin_unlock_irqrestore(&port->lock, flags);
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
