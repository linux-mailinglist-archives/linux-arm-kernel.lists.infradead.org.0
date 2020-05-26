Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3DB1E293F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 19:42:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P+EHH7K8aFZtrzJ8wYW71DaHHmTjms63JcTXyMNFLv8=; b=WlCY7buosWPtYQ
	w/2mAXBnF5PpPuonJXBn7qVASbJe70NDavCbXEpWFn0+k6dNDHXpW34/WAaDp+gHiw9/o/Nbxty0t
	AGb1+dnaREdXUqJzQWIl8RN2Upzu+Pt1X5Us1rGNixPPqBcvYf415YHyFm37Sb7IlpWWkpirrZJBA
	j9WvQMQ+5wDWPN3H6fTD1TGdVYhe5fC/7EPyLR3Z5F3jip4J3fRkmt6osNYKrhwuocPDmRdhX7gLq
	CB3LFTbLfxII42QcePe0SEzsOJnj+4dGPupwrsepRYzy+z9XHVygkLDs480JQJb4U+FLByX+IoWPE
	NM8IdbYjQwhB2g3li+4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jddaY-0006PN-NY; Tue, 26 May 2020 17:42:06 +0000
Received: from mail.baikalelectronics.com ([87.245.175.226]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jddaM-0006Nz-HB
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 17:41:56 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id 44395803086B;
 Tue, 26 May 2020 17:41:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hZUm0VjOyTcJ; Tue, 26 May 2020 20:41:50 +0300 (MSK)
Date: Tue, 26 May 2020 20:41:49 +0300
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v4 3/3] serial: 8250_dw: Fix common clocks usage race
 condition
Message-ID: <20200526174149.wpmto6vx775idbaj@mobilestation>
References: <20200526160316.26136-1-Sergey.Semin@baikalelectronics.ru>
 <20200526160316.26136-4-Sergey.Semin@baikalelectronics.ru>
 <20200526165701.GX1634618@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526165701.GX1634618@smile.fi.intel.com>
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_104154_938107_128B8895 
X-CRM114-Status: GOOD (  25.37  )
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
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Russell King <linux@armlinux.org.uk>, Serge Semin <fancer.lancer@gmail.com>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 Maxime Ripard <mripard@kernel.org>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-mips@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 07:57:01PM +0300, Andy Shevchenko wrote:
> On Tue, May 26, 2020 at 07:03:16PM +0300, Serge Semin wrote:
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
> ...
> 
> > +static void dw8250_clk_work_cb(struct work_struct *work)
> > +{
> > +	struct dw8250_data *d = work_to_dw8250_data(work);
> > +	struct uart_8250_port *up;
> > +	unsigned long rate;
> > +
> > +	rate = clk_get_rate(d->clk);
> 

> > +	if (rate) {
> 
> 	if (rate <= 0)
> 		return;
> 
> ?

Ok. Though there isn't point in a function consisting of a few lines. 

> 
> > +		up = serial8250_get_port(d->data.line);
> > +
> > +		serial8250_update_uartclk(&up->port, rate);
> > +	}
> > +}
> 
> ...
> 
> > +static int dw8250_startup(struct uart_port *p)
> > +{
> > +	struct dw8250_data *d = to_dw8250_data(p->private_data);
> > +	int ret;
> > +
> > +	/*
> > +	 * Some platforms may provide a reference clock shared between several
> > +	 * devices. In this case before using the serial port first we have to
> > +	 * make sure that any clock state change is known to the UART port at
> > +	 * least post factum.
> > +	 */
> 

> > +	if (d->clk) {
> 
> Do you need this?

Yes, I do. The same way as clk_get_rate() needs this.

> 
> > +		ret = clk_notifier_register(d->clk, &d->clk_notifier);
> 
> Okay, seems clk_notifier_register() and its counterpart should be fixed for
> optional clocks.

In order to use the clk_get_rate() function we need to make sure the clk isn't
optional otherwise -EINVAL will be returned, which is indistinguishable from
any another error. The same situation is for the clk_notifier_register() and
clk_notifier_unregister() counterpart.

> 
> > +		if (ret)
> > +			dev_warn(p->dev, "Failed to set the clock notifier\n");
> 
> So, what does this warning mean on the platforms which does not need notifier
> at all

It means "The clk-notifier subsystem is broken. Though if reference clock rate
doesn't change, it won't a problem." Due to the last statement we print a
warning, but not an error message.

> (i.o.w. all but baikal)?

No. As we discussed earlier in the previous pacthset versions there are another
platforms with shared reference clocks behind the DW APB UART, like: Allwinner SoCs,
RPi 3/4, etc.

> 
> > +		/*
> > +		 * Get current reference clock rate to make sure the UART port
> > +		 * is equipped with an up-to-date value before it's started up.
> > +		 */
> 
> Why? We call ->set_termios() for it, no?

This makes sense. Thanks. I'll remove this part.

-Sergey

> 
> > +		p->uartclk = clk_get_rate(d->clk);
> > +		if (!p->uartclk) {
> > +			dev_err(p->dev, "Clock rate not defined\n");
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> > +	return serial8250_do_startup(p);
> > +}
> > +
> > +static void dw8250_shutdown(struct uart_port *p)
> > +{
> > +	struct dw8250_data *d = to_dw8250_data(p->private_data);
> > +
> > +	serial8250_do_shutdown(p);
> > +
> 
> > +	if (d->clk) {
> 
> Ditto.
> 
> > +		clk_notifier_unregister(d->clk, &d->clk_notifier);
> > +
> > +		flush_work(&d->clk_work);
> > +	}
> > +}
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
