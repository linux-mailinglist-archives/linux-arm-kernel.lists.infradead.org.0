Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 213961C7DEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 01:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ays5XodmvVS9tI7XWP2jy3d3XE61zzHCDGgy57uD1aY=; b=qORra18CnWiQxV
	n27x8fwyGO9zd87i0G8orK5LEXOLIW9sbVCJ1cg2hgiUDmqyHsqemum3Z/1GhQjRUdCCMVrle1VKp
	i70g+hSnmz0LXzJIxS4XKJjQiYQiN1J3OkO0ttYjCng70QPez/qLvIuudyFWOhwOwwP4sSTxSQ9Zd
	zCXT4SjWMZPzFaAK5OdQrDhgDo/Rzjtp7C59An5jFzZUsZwWy9omEjo4T3N7XttP/DO36nmIgJuCn
	uLVtxZlX288Mj3qy/28U1K2dlT4/HZVBrnUOoRYSwxvt52CXo+lddSO/uM1nM/PlRuFgE1s21pS2o
	e6gDCHGn/TmY+lo1p0/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWTX5-0002ur-RF; Wed, 06 May 2020 23:32:55 +0000
Received: from mx.baikalelectronics.ru ([94.125.187.42]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWTW7-00024i-CB; Wed, 06 May 2020 23:31:58 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id 8CC9C803080B;
 Wed,  6 May 2020 23:31:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZPJCJBFg5i0k; Thu,  7 May 2020 02:31:46 +0300 (MSK)
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jslaby@suse.com>
Subject: [PATCH v3 0/4] serial: 8250_dw: Fix ref clock usage
Date: Thu, 7 May 2020 02:31:31 +0300
Message-ID: <20200506233136.11842-1-Sergey.Semin@baikalelectronics.ru>
In-Reply-To: <20200323024611.16039-1-Sergey.Semin@baikalelectronics.ru>
References: <20200323024611.16039-1-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_163155_775192_13912EE3 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, Will Deacon <will@kernel.org>,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>,
 Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>,
 Russell King <linux@armlinux.org.uk>, Long Cheng <long.cheng@mediatek.com>,
 Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>,
 linux-serial@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Maxime Ripard <mripard@kernel.org>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 linux-mediatek@lists.infradead.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org,
 Vadim Vlasov <V.Vlasov@baikalelectronics.ru>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>,
 Alexey Kolotnikov <Alexey.Kolotnikov@baikalelectronics.ru>,
 Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It might be dangerous if an UART port reference clock rate is suddenly
changed. In particular the 8250 port drivers (and AFAICS most of the tty
drivers using common clock framework clocks) rely either on the
exclusive reference clock utilization or on the ref clock rate being
always constant. Needless to say that it turns out not true and if some
other service suddenly changes the clock rate behind an UART port driver
back it's no good. So the port might not only end up with an invalid
uartclk value saved, but may also experience a distorted output/input
data since such action will effectively update the programmed baud-clock.
We discovered such problem on Baikal-T1 SoC where two DW 8250 ports have
got a shared reference clock. Allwinner SoC is equipped with an UART,
which clock is derived from the CPU PLL clock source, so the CPU frequency
change might be propagated down up to the serial port reference clock.
This patchset provides a way to fix the problem to the 8250 serial port
controllers and mostly fixes it for the DW 8250-compatible UART. I say
mostly because due to not having a facility to pause/stop and resume/
restart on-going transfers we implemented the UART clock rate update
procedure executed post factum of the actual reference clock rate change.

In addition the patchset includes a few fixes we discovered when were
working the issue. First one concerns the maximum baud rate setting used
to determine a serial port baud based on the current UART port clock rate.
Another one simplifies the ref clock rate setting procedure a bit.

This patchset is rebased and tested on the mainline Linux kernel 5.7-rc4:
0e698dfa2822 ("Linux 5.7-rc4")
tag: v5.7-rc4

Changelog v3:
- Refactor the original patch to adjust the UART port divisor instead of
  requesting an exclusive ref clock utilization.

Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Cc: Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>
Cc: Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>
Cc: Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>
Cc: Alexey Kolotnikov <Alexey.Kolotnikov@baikalelectronics.ru>
Cc: Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>
Cc: Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>
Cc: Vadim Vlasov <V.Vlasov@baikalelectronics.ru>
Cc: Alexey Kolotnikov <Alexey.Kolotnikov@baikalelectronics.ru>
Cc: Paul Burton <paulburton@kernel.org>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Long Cheng <long.cheng@mediatek.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-mips@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
Cc: linux-serial@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

Serge Semin (4):
  serial: 8250: Fix max baud limit in generic 8250 port
  serial: 8250: Add 8250 port clock update method
  serial: 8250_dw: Simplify the ref clock rate setting procedure
  serial: 8250_dw: Fix common clocks usage race condition

 drivers/tty/serial/8250/8250_dw.c   | 125 +++++++++++++++++++++++++---
 drivers/tty/serial/8250/8250_port.c |  42 +++++++++-
 include/linux/serial_8250.h         |   2 +
 3 files changed, 156 insertions(+), 13 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
