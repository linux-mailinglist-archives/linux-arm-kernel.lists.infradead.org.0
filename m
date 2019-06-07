Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B52163884A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 12:54:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U/zXuqFbvE8sEufG9ku5wduanUd/l/vqZash6bCy0kA=; b=pFFfw5G0xsHop1X6C9zlfMrBMw
	qUwCmn9ba8VmyhU6j5m1rA9gWlsmtxBijrENZoKtUKC9y3yn74iQLJzWQg3BKR1n+EgwEVMz9gPx1
	l4dmwyx5sz3FbI8HBbVXKi5/bbcacZ+/wkhgWdO32TXOhEWW4gtiu9AeIM3JUl2YuuoFmQGdYlT6m
	jFN53Gi1n3VhxVo+TaIs2b6L7t4T5YxWJhEX3tRR5Fgoau4Wbl46akKLD+54PrK3cnbG3dTJwI5RQ
	JzRK+qz9anOSRyPsshRHV4kaGbjC7hxbLLjkL1W744wpJbzj5pS9azqBVhLax22ZP5yuSCg6fequK
	HFAx1qHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZCW8-0002zR-Uw; Fri, 07 Jun 2019 10:54:40 +0000
Received: from smtp-good-out-2.t-2.net ([84.255.208.44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZCW1-0002yX-5U
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 10:54:35 +0000
Received: from smtp-2.t-2.si (smtp-2.t-2.si [84.255.208.31])
 by smtp-good-out-2.t-2.net (Postfix) with ESMTP id 45KztT5kt0z1Zxh;
 Fri,  7 Jun 2019 12:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=t-2.net;
 s=smtp-out-2; t=1559904865;
 bh=fUk0XkUlQdzlALymuAqAwf9BsyOqku2ixV/KDFYYH2w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=CkpiVnTHhILcYNM8bLBTKukUMr6kDo6yCevSCHEzZo+skyMw1dXe2t7wZ0xyJkmZf
 leNWDKjtyy3aXHGMlcCxffa/wBktUV7h9BXMT/+Fyn7QGSOPoWtR1Js0T8t5RrJBFS
 bYU6/pa844MSuSvUNrgeKnle4sJu74slghAmVIh8=
Received: from localhost (localhost [127.0.0.1])
 by smtp-2.t-2.si (Postfix) with ESMTP id 45KztT5X2tzMsJG1;
 Fri,  7 Jun 2019 12:54:25 +0200 (CEST)
X-Virus-Scanned: amavisd-new at t-2.si
Received: from smtp-2.t-2.si ([127.0.0.1])
 by localhost (smtp-2.t-2.si [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g9GBfN1ATuF1; Fri,  7 Jun 2019 12:54:25 +0200 (CEST)
Received: from localhost.localdomain (unknown [89.212.35.59])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: borut_seljak@t-2.net)
 by smtp-2.t-2.si (Postfix) with ESMTPSA;
 Fri,  7 Jun 2019 12:53:56 +0200 (CEST)
From: Borut Seljak <borut.seljak@t-2.net>
To: erwan.leray@st.com
Subject: [PATCH v4] serial: stm32: fix a recursive locking in
 stm32_config_rs485
Date: Fri,  7 Jun 2019 12:53:06 +0200
Message-Id: <20190607105307.31053-1-borut.seljak@t-2.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <e0f8d4b2-a622-3758-473b-b78bd8949323@st.com>
References: <e0f8d4b2-a622-3758-473b-b78bd8949323@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_035433_368293_17BB5760 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [84.255.208.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Fixes: 1bcda09d291081 ("serial: stm32: add support for RS485 hardware control mode")

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
