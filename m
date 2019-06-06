Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 412173718E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5c0YJfhYZV5CVdEuTTsa7LwJpS9keWM+KyTESjdGvTc=; b=A3Lx7/CmjPYJMXrGPgTCSNQgUo
	Ti0jZe16WNxdOP7sbBzt7OKu5KRbd0E9bNWaIpWXJA7MEnigyEhpG8BvlX5fK5sXb7YF5XlC6obaE
	1uKFiC+vfEpFBvW8FWR3X//l640FCEAEBt7vkG8tkqAaAH6Wgb0AMQ8rPZCzjt+5mx+/HhnSAsZWP
	wUbwq9Kn0dnbIC4WULVj/+ZjD4TrNTmFlZHHcN2LVCUxqilKB7nVZDUPpBoS5A7z4Dv0fseU/DGbK
	eZbBOc4dhCj/O4QDeSmYJbUmCNTwpr8VO3OJGjqMUcpD0kPl4XcutvuiQuXgXlOJXUSxYMV3N829O
	9C0X+A5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpYp-0006Cv-QY; Thu, 06 Jun 2019 10:23:55 +0000
Received: from smtp-good-out-2.t-2.net ([2a01:260:1:4::2c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpYi-0006CF-5S
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 10:23:50 +0000
Received: from smtp-2.t-2.si (smtp-2.t-2.si [IPv6:2a01:260:1:4::1f])
 by smtp-good-out-2.t-2.net (Postfix) with ESMTP id 45KMFS5byrzZG5;
 Thu,  6 Jun 2019 12:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=t-2.net;
 s=smtp-out-2; t=1559816620;
 bh=be0m1mh0IVu6WZqXXkKj2KT0971wDCJEPqmo2Z4Dqlo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=bXJMBBKOyGPE1Iz/ZgOJhixqj2KKwSy7W1bc6vy5iOJHevymr6kDdic8i1NsuiVBj
 jp2tILAneZmB1LUHRd2ypE8pWnmnzK3IV0+iFCFlL4gMov7ysc9RUcpZtHCeKfQkHf
 17Y5eOxM61h8IjQIcAPX9qMQ5wVwKlC6+mR2lgTo=
Received: from localhost (localhost [127.0.0.1])
 by smtp-2.t-2.si (Postfix) with ESMTP id 45KMFS5MwzzMsJFD;
 Thu,  6 Jun 2019 12:23:40 +0200 (CEST)
X-Virus-Scanned: amavisd-new at t-2.si
Received: from smtp-2.t-2.si ([127.0.0.1])
 by localhost (smtp-2.t-2.si [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oGAyOBO-3v3y; Thu,  6 Jun 2019 12:23:40 +0200 (CEST)
Received: from localhost.localdomain (unknown [89.212.35.59])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: borut_seljak@t-2.net)
 by smtp-2.t-2.si (Postfix) with ESMTPSA;
 Thu,  6 Jun 2019 12:23:11 +0200 (CEST)
From: Borut Seljak <borut.seljak@t-2.net>
To: erwan.leray@st.com
Subject: [PATCH v3] serial: stm32: fix a recursive locking in
 stm32_config_rs485
Date: Thu,  6 Jun 2019 12:19:01 +0200
Message-Id: <20190606101901.31151-1-borut.seljak@t-2.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <erwan.leray@st.com>
References: <erwan.leray@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_032348_362407_2CB3300F 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:260:1:4:0:0:0:2c listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 borut.seljak@t-2.net, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
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
 drivers/tty/serial/stm32-usart.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index e8d7a7bb4339..5d072ec61071 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -105,9 +105,7 @@ static int stm32_config_rs485(struct uart_port *port,
 	struct stm32_usart_config *cfg = &stm32_port->info->cfg;
 	u32 usartdiv, baud, cr1, cr3;
 	bool over8;
-	unsigned long flags;
 
-	spin_lock_irqsave(&port->lock, flags);
 	stm32_clr_bits(port, ofs->cr1, BIT(cfg->uart_enable_bit));
 
 	port->rs485 = *rs485conf;
@@ -147,7 +145,6 @@ static int stm32_config_rs485(struct uart_port *port,
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
