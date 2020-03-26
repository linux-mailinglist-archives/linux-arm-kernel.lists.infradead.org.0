Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D87619355A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 02:45:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPyDD17gvRldA3yUBmOYDArklCNpnb8Li9Ry4ZOePc4=; b=jCRN04CmE6iNNp
	qA7Zd9v8DUT+mdEpYlTZgrqdoo4BCMrPaH2U5SQnmIyRBgJqzl4lPyLX/DoxciN+SbUNvnbQMYq4j
	LtWM38VvjYo6bgmcgjM56eaeUAaByuuP45Ooy/cuiEzwezngFDbxKSglGA0ziXRo2rXuk4CZdLSmq
	FvdIlIY0ej+SKq77tGGJZEK7Nlv8SsR1s2rKv+2h8mkz4NzWPbuCRiRQ+n6hiibCCuUX8KzdYokcM
	NJGnyIw4zpF7UvIq1oxI+45FpinBjfIuI8dcYNaXPytnfXcse3qf4SQr6r+K9yTSuWYtj31C0d+pk
	2meUG3/HBHQ16zUx7Fgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHHa5-0002cj-91; Thu, 26 Mar 2020 01:45:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHHZn-0002cO-46
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 01:44:56 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1027020714;
 Thu, 26 Mar 2020 01:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585187094;
 bh=8LbJ1rOzX1zYoBejYpdC7F7zcKGB/JvH0asXD8eYU9E=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=oEs++OaVBTcEmslMsPj+RGYKdfCXHQLyvbzyViFcH0FvbwO86DXYq9nSqLVoiaSmz
 kb/33HUX8VTBtuxqpFrP/iAt11KpyvSCYr8VQ9qIXcG1uK3odHz6cjL7t7AThk7OVq
 GDwsJgi7Nl64caeYnTF2AUaC1UX1J5j+SB+Mulrc=
MIME-Version: 1.0
In-Reply-To: <20200325171109.cohnsw3s57ckaqud@ubsrv2.baikal.int>
References: <20200306130231.05BBC8030795@mail.baikalelectronics.ru>
 <20200323024611.16039-1-Sergey.Semin@baikalelectronics.ru>
 <20200323100109.k2gckdyneyzo23fb@gilmour.lan>
 <20200323135017.4vi5nwam2rlpepgn@ubsrv2.baikal.int>
 <20200324101243.GG1922688@smile.fi.intel.com>
 <20200325171109.cohnsw3s57ckaqud@ubsrv2.baikal.int>
Subject: Re: [PATCH v2] serial: 8250_dw: Fix common clocks usage race condition
From: Stephen Boyd <sboyd@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sergey Semin <Sergey.Semin@baikalelectronics.ru>
Date: Wed, 25 Mar 2020 18:44:53 -0700
Message-ID: <158518709322.125146.10069235641747677647@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_184455_208954_9AD80266 
X-CRM114-Status: GOOD (  33.20  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
 Heiko Stuebner <heiko@sntech.de>, Catalin Marina s <catalin.marinas@arm.com>,
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
 Maxime Ripard <maxime@cerno.tech>, linux-serial@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Vadim Vlasov <V.Vlasov@baikalelectronics.ru>,
 Paul Burton <paulburton@kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>,
 Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sergey Semin (2020-03-25 10:11:09)
> On Tue, Mar 24, 2020 at 12:12:43PM +0200, Andy Shevchenko wrote:
> > On Mon, Mar 23, 2020 at 04:50:17PM +0300, Sergey Semin wrote:
> > > On Mon, Mar 23, 2020 at 11:01:09AM +0100, Maxime Ripard wrote:
> > 
> > > > clk_rate_exclusive_get is pretty intrusive, and due to the usual
> > > > topology of clock trees, this will lock down 3-4 parent clocks to
> > > > their current rate as well. In the Allwinner SoCs case for example,
> > > > this will lock down the same PLL than the one used by the CPU,
> > > > preventing cpufreq from running.
> > > 
> > > Speaking about weak design of a SoC' clock tree. Our problems are nothing
> > > with respect to the Allwinner SoC, in which case of changing the
> > > CPU-frequency may cause the UART glitches subsequently causing data
> > > transfer artefacts.) Moreover as I can see the same issue may raise for
> > > I2C, QSPI, PWM devices there.
> > > 
> > > Anyway your concern does make sense.
> > > 
> > > > However, the 8250 has a pretty wide range of dividers and can adapt to
> > > > any reasonable parent clock rate, so we don't really need to lock the
> > > > rate either, we can simply react to a parent clock rate change using
> > > > the clock notifiers, just like the SiFive UART is doing.
> > > > 
> > > > I tried to do that, but given that I don't really have an extensive
> > > > knowledge of the 8250, I couldn't find a way to stop the TX of chars
> > > > while we change the clock rate. I'm not sure if this is a big deal or
> > > > not, the SiFive UART doesn't seem to care.
> > > 
> > > Yes, your solution is also possible, but even in case of stopping Tx/Rx it
> > > doesn't lack drawbacks. First of all AFAIK there is no easy way to just
> > > pause the transfers. We'd have to first wait for the current transfers
> > > to be completed, then somehow lock the port usage (both Tx and Rx
> > > traffic), permit the reference clock rate change, accordingly adjust the
> > > UART clock divider, and finally unlock the port. While if we don't mind
> > > to occasionally have UART data glitches, we can just adjust the UART ref
> > > divider synchronously with ref clock rate change as you and SiFive UART
> > > driver suggest.
> > > 
> > > So we are now at a zugzwang - a fork to three not that good solutions:
> > > 1) lock the whole clock branch and provide a glitchless interfaces. But
> > > by doing so we may (in case of Allwinner SoCs we will) lockup some very
> > > important functionality like CPU-frequency change while the UART port is
> > > started up. In this case we won't have the data glitches.
> > > 2) just adjust the UART clock divider in case of reference clock rate
> > > change (use the SiFive UART driver approach). In this case we may have the
> > > data corruption.
> > > 3) somehow implement the algo: wait for the transfers to be completed,
> > > lock UART interface (it's possible for Tx, but for Rx in case of no handshake
> > > enabled it's simply impossible), permit the ref clock rate change,
> > > adjust the UART divider, then unlock the UART interface. In this case the data
> > > glitches still may happen (if no modem control is available or
> > > handshakes are disabled).
> > > 
> > > As for the cases of Baikal-T1 UARTs the first solutions is the most suitable.
> > > We don't lock anything valuable, since a base PLL output isn't directly
> > > connected to any device and it's rate once setup isn't changed during the
> > > system running. On the other hand I don't mind to implement the second
> > > solution, even though it's prone to data glitches. Regarding the solution
> > > 3) I won't even try. It's too complicated, I don't have time and
> > > test-infrastructure for this.
> > > 
> > > So Andy what do you think?
> > 
> > From Intel HW perspective the first two are okay, but since Maxime is against
> > first, you have the only option from your list. Perhaps somebody may give
> > option 4) here...
> > 
> 
> Ok then. I'll implement the option 2) in v3 if noone gives any alternatives
> before that.
> 

Sorry, I haven't really read the thread but I'll quickly reply with
this.

Maybe option 4 is to make the uart driver a clk provider that consumes
the single reference clk like it is already doing today? Then when the
rate changes up above for the clk implemented here the clk set rate op
for the newly implemented clk can go poke the uart registers to maintain
the baud or whatever?

That is close to how the notifier design would work, but it avoids
keeping the notifiers around given that the notifiers are not preferred.
It is also closer to reality, the uart has a divider or mux internally
that we don't model as a clk, but we could just as easily model as such.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
