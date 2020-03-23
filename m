Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA3618F631
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 14:51:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyAx+d+d8jGlyoZYobf6V5BzErZHB46nCcsDtGXQT4o=; b=fQ/7n86PteNwZD
	jfQuy030Mr9w5LTUM/4ZAnWUh/5I8JMIDN/zaOnCIcI70nHz+ZfWYZWnqpEkdpr3RREoC+3jiUYPC
	MhdUklOtbsF3T0H5KQadEURxNLBJEcH+bgGMyGRhCre69uIE/AvYCSKQ35VC9TJ3nE/pCuHMD+0wT
	7l85rFl8ofKnXAJLNt2kXJ/X/vbuqFKXb2ZC5aJitOvTeQ2+2FuC1ED9uXo0U4E124we9iytV3zoV
	yC6ZfadqYSSxw9sjI4WiopDSwT/ncqziZLxcud4kScbuxAiG8aUVSmgIFYWiCvpfuS8WjBiUbN9RR
	CyMX8ZHCmxnl9YvFkr5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGNTz-0001jW-O1; Mon, 23 Mar 2020 13:51:11 +0000
Received: from mail.baikalelectronics.com ([87.245.175.226]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGNTT-0001W5-P2
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 13:50:41 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id 849BB80307CB;
 Mon, 23 Mar 2020 13:50:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6-JY67QKGzOR; Mon, 23 Mar 2020 16:50:33 +0300 (MSK)
Date: Mon, 23 Mar 2020 16:50:17 +0300
From: Sergey Semin <Sergey.Semin@baikalelectronics.ru>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2] serial: 8250_dw: Fix common clocks usage race condition
Message-ID: <20200323135017.4vi5nwam2rlpepgn@ubsrv2.baikal.int>
References: <20200306130231.05BBC8030795@mail.baikalelectronics.ru>
 <20200323024611.16039-1-Sergey.Semin@baikalelectronics.ru>
 <20200323100109.k2gckdyneyzo23fb@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323100109.k2gckdyneyzo23fb@gilmour.lan>
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_065040_169384_00DF19E7 
X-CRM114-Status: GOOD (  40.83  )
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
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 linux-serial@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org,
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

Hello Maxime

On Mon, Mar 23, 2020 at 11:01:09AM +0100, Maxime Ripard wrote:
> Hi,
> 
> On Mon, Mar 23, 2020 at 05:46:09AM +0300, Sergey.Semin@baikalelectronics.ru wrote:
> > From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> >
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
> >
> > Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> > Cc: Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>
> > Cc: Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>
> > Cc: Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>
> > Cc: Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>
> > Cc: Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>
> > Cc: Vadim Vlasov <V.Vlasov@baikalelectronics.ru>
> > Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> > Cc: Paul Burton <paulburton@kernel.org>
> > Cc: Ralf Baechle <ralf@linux-mips.org>
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: Chen-Yu Tsai <wens@csie.org>
> > CC: Ray Jui <rjui@broadcom.com>
> > Cc: Scott Branden <sbranden@broadcom.com>
> > Cc: Florian Fainelli <f.fainelli@gmail.com>
> > Cc: Wei Xu <xuwei5@hisilicon.com>
> > Cc: Jason Cooper <jason@lakedaemon.net>
> > Cc: Andrew Lunn <andrew@lunn.ch>
> > Cc: Gregory Clement <gregory.clement@bootlin.com>
> > Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> > Cc: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> > Cc: Heiko Stuebner <heiko@sntech.de>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Russell King <linux@armlinux.org.uk>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: Michael Turquette <mturquette@baylibre.com>
> > Cc: Stephen Boyd <sboyd@kernel.org>
> > Cc: linux-clk@vger.kernel.org
> >
> > ---
> >
> > Changelog v2:
> > - Move exclusive ref clock lock/unlock precudures to the 8250 port
> >   startup/shutdown methods.
> > - The changelog message has also been slightly modified due to the
> >   alteration.
> > - Remove Alexey' SoB tag.
> > - Cc someone from ARM who might be concerned regarding this change.
> > - Cc someone from Clocks Framework to get their comments on this patch.
> > ---
> >  drivers/tty/serial/8250/8250_dw.c | 36 +++++++++++++++++++++++++++++++
> >  1 file changed, 36 insertions(+)
> >
> > diff --git a/drivers/tty/serial/8250/8250_dw.c b/drivers/tty/serial/8250/8250_dw.c
> > index aab3cccc6789..08f3f745ed54 100644
> > --- a/drivers/tty/serial/8250/8250_dw.c
> > +++ b/drivers/tty/serial/8250/8250_dw.c
> > @@ -319,6 +319,40 @@ static void dw8250_set_ldisc(struct uart_port *p, struct ktermios *termios)
> >  	serial8250_do_set_ldisc(p, termios);
> >  }
> >
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
> > +	if (clk_rate_exclusive_get(d->clk)) {
> > +		dev_warn(p->dev, "Couldn't lock the clock rate\n");
> > +	} else if (d->clk) {
> > +		p->uartclk = clk_get_rate(d->clk);
> > +		if (!p->uartclk) {
> > +			clk_rate_exclusive_put(d->clk);
> > +			dev_err(p->dev, "Clock rate not defined\n");
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> > +	return serial8250_do_startup(p);
> > +}
> 
> I've been facing that issue, so it would be great to get it fixed, but
> I'm not sure this is the right solution.
> 
> clk_rate_exclusive_get is pretty intrusive, and due to the usual
> topology of clock trees, this will lock down 3-4 parent clocks to
> their current rate as well. In the Allwinner SoCs case for example,
> this will lock down the same PLL than the one used by the CPU,
> preventing cpufreq from running.
> 

Speaking about weak design of a SoC' clock tree. Our problems are nothing
with respect to the Allwinner SoC, in which case of changing the
CPU-frequency may cause the UART glitches subsequently causing data
transfer artefacts.) Moreover as I can see the same issue may raise for
I2C, QSPI, PWM devices there.

Anyway your concern does make sense.

> However, the 8250 has a pretty wide range of dividers and can adapt to
> any reasonable parent clock rate, so we don't really need to lock the
> rate either, we can simply react to a parent clock rate change using
> the clock notifiers, just like the SiFive UART is doing.
> 
> I tried to do that, but given that I don't really have an extensive
> knowledge of the 8250, I couldn't find a way to stop the TX of chars
> while we change the clock rate. I'm not sure if this is a big deal or
> not, the SiFive UART doesn't seem to care.
> 
> Maxime

Yes, your solution is also possible, but even in case of stopping Tx/Rx it
doesn't lack drawbacks. First of all AFAIK there is no easy way to just
pause the transfers. We'd have to first wait for the current transfers
to be completed, then somehow lock the port usage (both Tx and Rx
traffic), permit the reference clock rate change, accordingly adjust the
UART clock divider, and finally unlock the port. While if we don't mind
to occasionally have UART data glitches, we can just adjust the UART ref
divider synchronously with ref clock rate change as you and SiFive UART
driver suggest.

So we are now at a zugzwang - a fork to three not that good solutions:
1) lock the whole clock branch and provide a glitchless interfaces. But
by doing so we may (in case of Allwinner SoCs we will) lockup some very
important functionality like CPU-frequency change while the UART port is
started up. In this case we won't have the data glitches.
2) just adjust the UART clock divider in case of reference clock rate
change (use the SiFive UART driver approach). In this case we may have the
data corruption.
3) somehow implement the algo: wait for the transfers to be completed,
lock UART interface (it's possible for Tx, but for Rx in case of no handshake
enabled it's simply impossible), permit the ref clock rate change,
adjust the UART divider, then unlock the UART interface. In this case the data
glitches still may happen (if no modem control is available or
handshakes are disabled).

As for the cases of Baikal-T1 UARTs the first solutions is the most suitable.
We don't lock anything valuable, since a base PLL output isn't directly
connected to any device and it's rate once setup isn't changed during the
system running. On the other hand I don't mind to implement the second
solution, even though it's prone to data glitches. Regarding the solution
3) I won't even try. It's too complicated, I don't have time and
test-infrastructure for this.

So Andy what do you think?

Regards,
-Sergey

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
