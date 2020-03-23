Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA5418F380
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 12:12:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICk1wflPhe1/mX7PR/tySDOeMofTwRQe51nY67qCWZw=; b=ckPWzoLkhxxwKy
	g0FmXHy8g+DaPn1GQhRvnb+6pA0CxZvoHCkPzdbK/xCHgjiMg48D5rpAEi82jVgYLQfzjY4F+BYpM
	xZQBOTHiNWZFsZqrWwV+hOFBEAFTxv/oEA4ZARYY4IjAt25FqRL9EmGNATxyMeW7augwm6gsHmTE7
	aOPmsmuM+L09se5UzaEfAXWgyXsr2KdQG0eUZ0fNdjUrsL9GDfLi3T04MQ0QcrTIxUTPUIZMEj6IW
	DWE2uIc4UvTFhKm6LRV49s6EsqJEf5szxdhhTq84QtQ21xmExhm1bnHB4pjwA/A73Z2Rp94e0XtZd
	QwMvAzk4+VOwS3B3BmYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGL0N-0001Cx-CG; Mon, 23 Mar 2020 11:12:27 +0000
Received: from mail.baikalelectronics.com ([87.245.175.226]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGL0E-0001CE-5z
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 11:12:20 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id C565980307CA;
 Mon, 23 Mar 2020 11:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FxD9Ltd8BT8a; Mon, 23 Mar 2020 14:12:13 +0300 (MSK)
Date: Mon, 23 Mar 2020 14:11:49 +0300
From: Sergey Semin <Sergey.Semin@baikalelectronics.ru>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v2] serial: 8250_dw: Fix common clocks usage race condition
Message-ID: <20200323111149.73wqrd7qnkkiitbe@ubsrv2.baikal.int>
References: <20200306130231.05BBC8030795@mail.baikalelectronics.ru>
 <20200323024611.16039-1-Sergey.Semin@baikalelectronics.ru>
 <20200323092051.GB1922688@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323092051.GB1922688@smile.fi.intel.com>
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_041218_585202_04DCAE2A 
X-CRM114-Status: GOOD (  34.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Andrew Lunn <andrew@lunn.ch>, Kefeng Wang <wangkefeng.wang@huawei.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
 Will Deacon <will@kernel.org>, linux-clk@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>,
 Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, Wei Xu <xuwei5@hisilicon.com>,
 Chen-Yu Tsai <wens@csie.org>,
 Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>,
 Jiri Slaby <jslaby@suse.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Ray Jui <rjui@broadcom.com>,
 Maxime Ripard <mripard@kernel.org>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Vadim Vlasov <V.Vlasov@baikalelectronics.ru>,
 Paul Burton <paulburton@kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>,
 Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On Mon, Mar 23, 2020 at 11:20:51AM +0200, Andy Shevchenko wrote:
> On Mon, Mar 23, 2020 at 05:46:09AM +0300, Sergey.Semin@baikalelectronics.ru wrote:
> > From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> 
> The question to CLK framework maintainers, is it correct approach in general
> for this case?
> 

You should have been more specific then, if you wanted to see someone
special.

> On Wed, Mar 18, 2020 at 05:19:53PM +0200, Andy Shevchenko wrote:
>> Also it would be nice to see come clock framework guys' opinions...

Who can give a better comments regarding the clk API if not the
subsystem maintainers?

> > There are races possible in the dw8250_set_termios() callback method
> > and while the device is in PM suspend state. A race condition may
> > happen if the baudrate clock source device is shared with some other
> > device (in our machine it's another DW UART port). In this case if that
> > device changes the clock rate while serial console is using it the
> > DW 8250 UART port might not only end up with an invalid uartclk value
> > saved, but may also experience a distorted output data since baud-clock
> > could have been changed. In order to fix this lets enable an exclusive
> > reference clock rate access in case if "baudclk" device is specified.
> > 
> > So if some other device also acquires the rate exclusivity during the
> > time of a DW UART 8250 port being opened, then DW UART 8250 driver
> > won't be able to alter the baud-clock. It shall just use the available
> > clock rate. Similarly another device also won't manage to change the
> > rate at that time. If nothing else have the exclusive rate access
> > acquired except DW UART 8250 driver, then the driver will be able to
> > alter the rate as much as it needs to in accordance with the currently
> > implemented logic.
> 
> Thank you for an update, my comments below.
> 
> ...
> 
> > +static int dw8250_startup(struct uart_port *p)
> > +{
> > +	struct dw8250_data *d = to_dw8250_data(p->private_data);
> > +
> > +	/*
> > +	 * Some platforms may provide a reference clock shared between several
> > +	 * devices. In this case before using the serial port first we have to
> > +	 * make sure nothing will change the rate behind our back and second
> > +	 * the tty/serial subsystem knows the actual reference clock rate of
> > +	 * the port.
> > +	 */
> 
> > +	if (clk_rate_exclusive_get(d->clk)) {
> > +		dev_warn(p->dev, "Couldn't lock the clock rate\n");
> 
> So, if this fails, in ->shutdown you will disbalance reference count, or did I
> miss something?
> 

Hm, you are right. I didn't fully thought this through. The thing is
that according to the clk_rate_exclusive_get() function code currently
it never fails. Though this isn't excuse for introducing a prone to future
bugs code.

Anyway if according to design a function may return an error we must take
into account in the code using it. Due to this obligation and seeing we can't
easily detect whether clk_rate_exclusive_get() has been failed while the
driver is being executed in the shutdown method, the best approach would be
to just return an error in startup method in case of the clock rate exclusivity
acquisition failure. If you are ok with this, I'll have it fixed in v3
patchset.

> > +	} else if (d->clk) {
> 
> > +		p->uartclk = clk_get_rate(d->clk);
> > +		if (!p->uartclk) {
> > +			clk_rate_exclusive_put(d->clk);
> > +			dev_err(p->dev, "Clock rate not defined\n");
> > +			return -EINVAL;
> > +		}
> 
> This operations I didn't get. If we have d->clk and suddenly get 0 as a rate
> (and note, that we still update uartclk member!), we try to put (why?) the
> exclusiveness of rate.
> 

Here is what I had in my mind while implementing this code. If d->clk
isn't NULL, then there is a "baudclk" clock handler and we can use it to
alter/retrieve the baud clock rate. But the same clock could be used by
some other driver and that driver could have changed the rate while we
didn't have this tty port started up (opened). In this case that driver
could also have the clock exclusively acquired. So instead of trying to
set the current p->uartclk rate to the clock, check the return value,
if it's an error, try to get the current clock rate, check the return
value, and so on, I just get the current baud clock rate and make sure
the value is not zero (clk_get_rate() returns a zero rate in case of
internal errors). At the same time dw8250_set_termios() will try to update
the baud clock rate anyway (also by the serial core at the point of the port
startup), so we don't need such complication in the DW 8250 port startup
code.

> (and note, that we still update uartclk member!),

Yes, if we can't determine the current baud clock rate, then the there is
a problem with the clock device, so we don't know at what rate it's
currently working. Zero is the most appropriate value to be set in this case.

> we try to put (why?) the > exclusiveness of rate.

Yes, we put the exclusivity and return an error, because this if-branch has
been taken only if the exclusivity has been successfully acquired.

Regards,
-Sergey

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
> > +	clk_rate_exclusive_put(d->clk);
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
