Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0102201BEA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 22:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3zgGO/KPx3DlREEIVmg07gd9DTLOWYzNHc0/IiJ6lBc=; b=ebSgVeAl5zvmRk
	f9CBSxNVytwWdWoNBs+Y2+2zSzsXBjron8BPqIcpZ1w7HYvEKPexajlLAK0s9LIBVBcffnaM+Zbki
	5sBGJkKl2bsm6pHMJIySZBMetg/fTzM3CA9pFb701Od5t4zxNGwxQshw+feRfYe+To63QJHPuqgbp
	OzwKCElZz2YAtXP6NJRhgXdC3ZDlTNafZiaUhF/agqZmC2QwGiA/+AfjcZ+fdPRU8pyiTz1/kfSeJ
	T2WfLVZ9ZHw7Z6t5WBL5XgOWXSgb2P1ujAe7hh3E8VnVG4Q/1WPLUvRT6N72CTfnk0aR2ilrKeWGt
	gNEpfyYnJNAo2wnrAz5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmNF4-0006Xz-Ne; Fri, 19 Jun 2020 20:04:02 +0000
Received: from ns2.baikalchip.com ([94.125.187.42]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmNEI-00063E-WA
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 20:03:17 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id 0291980045E5;
 Fri, 19 Jun 2020 20:03:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id En_02CvNG5Pe; Fri, 19 Jun 2020 23:03:09 +0300 (MSK)
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jslaby@suse.com>
Subject: [PATCH v7 0/3] serial: 8250_dw: Fix ref clock usage
Date: Fri, 19 Jun 2020 23:02:48 +0300
Message-ID: <20200619200251.9066-1-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_130315_395991_ED0BCCAD 
X-CRM114-Status: GOOD (  11.58  )
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
Cc: Maxime Ripard <mripard@kernel.org>,
 Alexey Kolotnikov <Alexey.Kolotnikov@baikalelectronics.ru>,
 Vadim Vlasov <V.Vlasov@baikalelectronics.ru>,
 Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>,
 Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Serge Semin <fancer.lancer@gmail.com>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>, Arnd Bergmann <arnd@arndb.de>,
 Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
 Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>,
 linux-serial@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Greg, Jiri. We've missed the last merge window. It would be pity to miss
the next one. Please review/merge in the series.

Regarding the patchset. It might be dangerous if an UART port reference
clock rate is suddenly changed. In particular the 8250 port drivers
(and AFAICS most of the tty drivers using common clock framework clocks)
rely either on the exclusive reference clock utilization or on the ref
clock rate being always constant. Needless to say that it turns out not
true and if some other service suddenly changes the clock rate behind an
UART port driver back no good can happen. So the port might not only end
up with an invalid uartclk value saved, but may also experience a
distorted output/input data since such action will effectively update the
programmed baud-clock. We discovered such problem on Baikal-T1 SoC where
two DW 8250 ports have got a shared reference clock. Allwinner SoC is
equipped with an UART, which clock is derived from the CPU PLL clock
source, so the CPU frequency change might be propagated down up to the
serial port reference clock. This patchset provides a way to fix the
problem to the 8250 serial port controllers and mostly fixes it for the
DW 8250-compatible UART. I say mostly because due to not having a facility
to pause/stop and resume/restart on-going transfers we implemented the
UART clock rate update procedure executed post factum of the actual
reference clock rate change.

In addition the patchset includes a small optimization patch. It
simplifies the DW APB UART ref clock rate setting procedure a bit.

This patchset is rebased and tested on the mainline Linux kernel 5.7-rc4:
base-commit: 0e698dfa2822 ("Linux 5.7-rc4")
tag: v5.7-rc4

Changelog v3:
- Refactor the original patch to adjust the UART port divisor instead of
  requesting an exclusive ref clock utilization.

Changelog v4:
- Discard commit b426bf0fb085 ("serial: 8250: Fix max baud limit in generic
  8250 port") since Greg has already merged it into the tty-next branch.
- Use EXPORT_SYMBOL_GPL() for the serial8250_update_uartclk() method.

Changelog v5:
- Refactor dw8250_clk_work_cb() function cheking the clk_get_rate()
  return value for being erroneous and exit if it is.
- Don't update p->uartclk in the port startup. It will be updated later in
  the same procedure at the set_termios() function being invoked by the
  serial_core anyway.

Changelog v6:
- Resend

Link: https://lore.kernel.org/linux-serial/20200617224813.23853-1-Sergey.Semin@baikalelectronics.ru
Changelog v7:
- Wake the device up on the serial port divider update.

Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Cc: Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>
Cc: Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>
Cc: Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>
Cc: Alexey Kolotnikov <Alexey.Kolotnikov@baikalelectronics.ru>
Cc: Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>
Cc: Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>
Cc: Vadim Vlasov <V.Vlasov@baikalelectronics.ru>
Cc: Alexey Kolotnikov <Alexey.Kolotnikov@baikalelectronics.ru>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Will Deacon <will@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-mips@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-serial@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

Serge Semin (3):
  serial: 8250: Add 8250 port clock update method
  serial: 8250_dw: Simplify the ref clock rate setting procedure
  serial: 8250_dw: Fix common clocks usage race condition

 drivers/tty/serial/8250/8250_dw.c   | 116 +++++++++++++++++++++++++---
 drivers/tty/serial/8250/8250_port.c |  40 ++++++++++
 include/linux/serial_8250.h         |   2 +
 3 files changed, 146 insertions(+), 12 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
