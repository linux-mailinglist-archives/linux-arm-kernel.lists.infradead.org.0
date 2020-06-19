Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDD320192A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 19:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5gX7kamuh9sjfe5TMwXHkZtkYHGASW3wRdW6N220nTQ=; b=rK0qq6OE1DbJQ6
	7NlOavb9TsDdd4lZWhYAScgC3MUwAj+TlhTscOjEMC9Lu8EHXwvTQAOFY3h8IBAFuPa+2zrlZPz9C
	EbTC3+JxXajl+eddDcXdj2II0KJfr+z14o18AX73zwpPHwYpnfinMYJ7Y74Uxs2vkQPPScKQOYCCa
	4WxtnuDfyvMfnibizUQ2vrIHuAPKjy05zgXmoUHJZTF2hONcJjdAIxie4jfpovougUrm8I+sUzr4m
	AghXlp/Gj9gP0aKzIfT2gtDIytT0Seg0I6T7LhpXDoNKT55a57PT+9fBOvwNYvDloJqDBaglgC1Xt
	28gE/AxXebbrk/sYjqhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmKdD-0005Eu-KI; Fri, 19 Jun 2020 17:16:47 +0000
Received: from ns2.chip.baikal.ru ([94.125.187.42]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmKd3-0005DN-N1
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 17:16:39 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id AFE7480045E4;
 Fri, 19 Jun 2020 17:16:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hbtS4gjqbfqD; Fri, 19 Jun 2020 20:16:18 +0300 (MSK)
Date: Fri, 19 Jun 2020 20:16:17 +0300
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH RESEND v6 0/3] serial: 8250_dw: Fix ref clock usage
Message-ID: <20200619171617.vnzmfds5zvw2ajr7@mobilestation>
References: <20200617224813.23853-1-Sergey.Semin@baikalelectronics.ru>
 <CAHp75VfPEdxN1UeKJ+gCWpgJymK7YzQs1Lznq1aBfoRNBiMHbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75VfPEdxN1UeKJ+gCWpgJymK7YzQs1Lznq1aBfoRNBiMHbQ@mail.gmail.com>
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_101638_102484_271849A9 
X-CRM114-Status: GOOD (  23.59  )
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
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Vadim Vlasov <V.Vlasov@baikalelectronics.ru>,
 Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>,
 Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Serge Semin <fancer.lancer@gmail.com>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 Alexey Kolotnikov <Alexey.Kolotnikov@baikalelectronics.ru>,
 Arnd Bergmann <arnd@arndb.de>,
 Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
 Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>,
 Jiri Slaby <jslaby@suse.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Will Deacon <will@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 11:17:47AM +0300, Andy Shevchenko wrote:
> On Thu, Jun 18, 2020 at 1:52 AM Serge Semin
> <Sergey.Semin@baikalelectronics.ru> wrote:
> >
> > Greg, Jiri. We've missed the last merge window. It would be pity to miss
> > the next one. Please review/merge in the series.
> >
> > Regarding the patchset. It might be dangerous if an UART port reference
> > clock rate is suddenly changed. In particular the 8250 port drivers
> > (and AFAICS most of the tty drivers using common clock framework clocks)
> > rely either on the exclusive reference clock utilization or on the ref
> > clock rate being always constant. Needless to say that it turns out not
> > true and if some other service suddenly changes the clock rate behind an
> > UART port driver back no good can happen. So the port might not only end
> > up with an invalid uartclk value saved, but may also experience a
> > distorted output/input data since such action will effectively update the
> > programmed baud-clock. We discovered such problem on Baikal-T1 SoC where
> > two DW 8250 ports have got a shared reference clock. Allwinner SoC is
> > equipped with an UART, which clock is derived from the CPU PLL clock
> > source, so the CPU frequency change might be propagated down up to the
> > serial port reference clock. This patchset provides a way to fix the
> > problem to the 8250 serial port controllers and mostly fixes it for the
> > DW 8250-compatible UART. I say mostly because due to not having a facility
> > to pause/stop and resume/restart on-going transfers we implemented the
> > UART clock rate update procedure executed post factum of the actual
> > reference clock rate change.
> >
> > In addition the patchset includes a small optimization patch. It
> > simplifies the DW APB UART ref clock rate setting procedure a bit.
> >
> > This patchset is rebased and tested on the mainline Linux kernel 5.7-rc4:
> > base-commit: 0e698dfa2822 ("Linux 5.7-rc4")
> > tag: v5.7-rc4
> 

> I'm wondering how this will collaborate with runtime PM.

Thanks for noticing this. You are right. PM should be taken into account.

-Sergey

> 
> > Changelog v3:
> > - Refactor the original patch to adjust the UART port divisor instead of
> >   requesting an exclusive ref clock utilization.
> >
> > Changelog v4:
> > - Discard commit b426bf0fb085 ("serial: 8250: Fix max baud limit in generic
> >   8250 port") since Greg has already merged it into the tty-next branch.
> > - Use EXPORT_SYMBOL_GPL() for the serial8250_update_uartclk() method.
> >
> > Changelog v5:
> > - Refactor dw8250_clk_work_cb() function cheking the clk_get_rate()
> >   return value for being erroneous and exit if it is.
> > - Don't update p->uartclk in the port startup. It will be updated later in
> >   the same procedure at the set_termios() function being invoked by the
> >   serial_core anyway.
> >
> > Changelog v6:
> > - Resend
> >
> > Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> > Cc: Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>
> > Cc: Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>
> > Cc: Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>
> > Cc: Alexey Kolotnikov <Alexey.Kolotnikov@baikalelectronics.ru>
> > Cc: Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>
> > Cc: Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>
> > Cc: Vadim Vlasov <V.Vlasov@baikalelectronics.ru>
> > Cc: Alexey Kolotnikov <Alexey.Kolotnikov@baikalelectronics.ru>
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Russell King <linux@armlinux.org.uk>
> > Cc: linux-mips@vger.kernel.org
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-serial@vger.kernel.org
> > Cc: linux-kernel@vger.kernel.org
> >
> > Serge Semin (3):
> >   serial: 8250: Add 8250 port clock update method
> >   serial: 8250_dw: Simplify the ref clock rate setting procedure
> >   serial: 8250_dw: Fix common clocks usage race condition
> >
> >  drivers/tty/serial/8250/8250_dw.c   | 116 +++++++++++++++++++++++++---
> >  drivers/tty/serial/8250/8250_port.c |  38 +++++++++
> >  include/linux/serial_8250.h         |   2 +
> >  3 files changed, 144 insertions(+), 12 deletions(-)
> >
> > --
> > 2.26.2
> >
> 
> 
> -- 
> With Best Regards,
> Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
