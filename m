Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBC22019B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 19:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=btylC2tTmcgwu48dUEuGAV6jlEB0i8uy2FzhuSDG0Ls=; b=jrEaHm0CZBHTzn
	3S2phODndziDXvyyLdoQHEeFzKMKed6S6P4DhVzTwTI7U1M6fvZczm7b7qfzrZeHklywL5lwVXif3
	T0niMCMk8WNx5dKeLcgLycKK8DlPv41kPRAHtbdnRUv8L+mw9kWdLPxwnoKwdRx39HKdoub2x4ZKf
	BGzX+7tv1IdHcLhjAzBp7CLUV9+dPvixXnjnDxh01foATfCJJCV5uxv+R5i6+TZ9ucmqiFGrpelCG
	/oXeXlNbN4mDRCq4u1SSRquzxpTMTjrT6Wa/3daCuPm9Hzp0lxzZLg/XBHu7JiuOcoQSVV/IDZC0W
	xbOT4v95k8zMp9AsSxEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmL6o-0007DJ-7V; Fri, 19 Jun 2020 17:47:22 +0000
Received: from ns2.baikalchip.com ([94.125.187.42]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmL6e-0007Cj-CG
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 17:47:15 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id 5CD1F8030866;
 Fri, 19 Jun 2020 17:47:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ok4AU7qgxyVE; Fri, 19 Jun 2020 20:47:09 +0300 (MSK)
Date: Fri, 19 Jun 2020 20:47:08 +0300
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v6 3/3] serial: 8250_dw: Fix common clocks usage race
 condition
Message-ID: <20200619174708.qcke3w7ltiv7rp7y@mobilestation>
References: <20200617224813.23853-1-Sergey.Semin@baikalelectronics.ru>
 <20200617224813.23853-4-Sergey.Semin@baikalelectronics.ru>
 <CAHp75VcoV+aC9H5TYAxQX2O9HLz==xnts9bcKKQBcdtvohpi6g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75VcoV+aC9H5TYAxQX2O9HLz==xnts9bcKKQBcdtvohpi6g@mail.gmail.com>
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_104712_771508_B8741151 
X-CRM114-Status: GOOD (  23.43  )
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
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-mips@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Serge Semin <fancer.lancer@gmail.com>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 Maxime Ripard <mripard@kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Will Deacon <will@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 11:29:36AM +0300, Andy Shevchenko wrote:
> On Thu, Jun 18, 2020 at 1:50 AM Serge Semin
> <Sergey.Semin@baikalelectronics.ru> wrote:
> >
> > The race condition may happen if the UART reference clock is shared with
> > some other device (on Baikal-T1 SoC it's another DW UART port). In this
> > case if that device changes the clock rate while serial console is using
> > it the DW 8250 UART port might not only end up with an invalid uartclk
> > value saved, but may also experience a distorted output data since
> > baud-clock could have been changed. In order to fix this lets at least
> > try to adjust the 8250 port setting like UART clock rate in case if the
> > reference clock rate change is discovered. The driver will call the new
> > method to update 8250 UART port clock rate settings. It's done by means of
> > the clock event notifier registered at the port startup and unregistered
> > in the shutdown callback method.
> >
> > Note 1. In order to avoid deadlocks we had to execute the UART port update
> > method in a dedicated deferred work. This is due to (in my opinion
> > redundant) the clock update implemented in the dw8250_set_termios()
> > method.
> > Note 2. Before the ref clock is manually changed by the custom
> > set_termios() function we swap the port uartclk value with new rate
> > adjusted to be suitable for the requested baud. It is necessary in
> > order to effectively disable a functionality of the ref clock events
> > handler for the current UART port, since uartclk update will be done
> > a bit further in the generic serial8250_do_set_termios() function.
> 
> So, regarding runtime PM...
> 
> > +static void dw8250_clk_work_cb(struct work_struct *work)
> > +{
> > +       struct dw8250_data *d = work_to_dw8250_data(work);
> > +       struct uart_8250_port *up;
> > +       unsigned long rate;
> > +
> > +       rate = clk_get_rate(d->clk);
> > +       if (rate <= 0)
> > +               return;
> > +
> 
> > +       up = serial8250_get_port(d->data.line);
> 

> (Btw, this can be done directly in the definition block above.)

I would have done like you said if serial8250_get_port() was an inline or
macro. But since it's a normal exported function I'd leave the invocation
here, since calling it takes though small but still some time.

> 
> > +       serial8250_update_uartclk(&up->port, rate);
> 
> This I think should require a device to be powered on. What in your
> opinion is a better place to have it done?

> To me it looks like serial8250_update_uartclk() misses it.

Right. the PM thing should be there similarly to the rest of the serial8250
methods. I'll add the serial8250_rpm_get(up) and serial8250_rpm_put(up)
functions invocation around the divisor update clause, like it's done in the
serial8250_do_set_termios() method.

Thanks for noticing this.

-Sergey

> 
> > +}
> 
> --
> With Best Regards,
> Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
