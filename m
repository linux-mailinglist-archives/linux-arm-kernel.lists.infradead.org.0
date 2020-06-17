Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1081FD92C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 00:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4b7oCZ1mBMcAVDBg9TxEGpyoled7KzEmVH1uPIyvF7M=; b=d7LfQYTmrrgV0l
	oijYQQxWBl/CIPKUhIczsPBzFCsFMVd/LJ/XMSaUOsYo0Ms4Ouknsh8vr6C/N6fHeQon+JZt7YdM5
	VyReJFbb0ZM4fHdRhy36CAGOBfaYbYgTcblK6ZJ3ln5sBvgMm6d6lFBQZD+9R4UZ/i307Sy/Yshae
	DyVu19Q1s5TN5wiTkjCOGnUzBKWf7qF9g1TwxYXx7u/i7aN5Sept6UeHBSQLxU2bp2E6rd1C23758
	PuwfmDJRxtl8ugE32eOQvJgeuN6vZ9cGNAhaAeCpFvAHYEEqUZJkaLvKMY6BabsBziNsoWlgw55D+
	mPrKG319I/Km7AF2aV9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlgrd-0007az-QP; Wed, 17 Jun 2020 22:49:01 +0000
Received: from mx.chip.baikal.ru ([94.125.187.42]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlgrS-0007YB-Ru
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 22:48:52 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id 3388F803202C;
 Wed, 17 Jun 2020 22:48:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E5LHdbCVmdSw; Thu, 18 Jun 2020 01:48:38 +0300 (MSK)
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jslaby@suse.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v6 2/3] serial: 8250_dw: Simplify the ref clock rate setting
 procedure
Date: Thu, 18 Jun 2020 01:48:12 +0300
Message-ID: <20200617224813.23853-3-Sergey.Semin@baikalelectronics.ru>
In-Reply-To: <20200617224813.23853-1-Sergey.Semin@baikalelectronics.ru>
References: <20200617224813.23853-1-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_154851_079993_BCDBDFDC 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Maxime Ripard <mripard@kernel.org>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Serge Semin <fancer.lancer@gmail.com>, linux-serial@vger.kernel.org,
 linux-mips@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Really instead of twice checking the clk_round_rate() return value
we could do it once, and if it isn't error the clock rate can be changed.
By doing so we decrease a number of ret-value tests and remove a weird
goto-based construction implemented in the dw8250_set_termios() method.

Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Cc: Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Will Deacon <will@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-mips@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org

---

Changelog v3:
- This is a new patch.
---
 drivers/tty/serial/8250/8250_dw.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/tty/serial/8250/8250_dw.c b/drivers/tty/serial/8250/8250_dw.c
index aab3cccc6789..12866083731d 100644
--- a/drivers/tty/serial/8250/8250_dw.c
+++ b/drivers/tty/serial/8250/8250_dw.c
@@ -282,20 +282,13 @@ static void dw8250_set_termios(struct uart_port *p, struct ktermios *termios,
 
 	clk_disable_unprepare(d->clk);
 	rate = clk_round_rate(d->clk, baud * 16);
-	if (rate < 0)
-		ret = rate;
-	else if (rate == 0)
-		ret = -ENOENT;
-	else
+	if (rate > 0) {
 		ret = clk_set_rate(d->clk, rate);
+		if (!ret)
+			p->uartclk = rate;
+	}
 	clk_prepare_enable(d->clk);
 
-	if (ret)
-		goto out;
-
-	p->uartclk = rate;
-
-out:
 	p->status &= ~UPSTAT_AUTOCTS;
 	if (termios->c_cflag & CRTSCTS)
 		p->status |= UPSTAT_AUTOCTS;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
