Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2479190A5B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:13:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asamXdqb1QV5KrGZUxWrbKB7imdvBfeCiuAvf5gQsIc=; b=dYuOzR1+yz33iq
	CXtpWGBye7PbW5td3gHv+7wIIvm8dLCk1QwifEEmK5NeE0AFmZUxcgk52gMMT/RsAJveDy7CQxZMB
	ZgiYzpvT+tm7F1MMa1y2cvjjtMwLi+vX5NK2YzNLz/lLQhyVderyZajzP9/Dv+pVFzLy7maRAgKpB
	WEbpuIAQkm4CxwgJdhLl7cHQIbbGXezuhDEKwFUuuEQPm1culhKbAuK6WPE70/+nTa2ZaiuTa7cN+
	l3Esg+jrBjgzLL96xXrRb8Djm3WDvnHYYbfLAtRXU0b6m18O7GyqzKkqTGX1wQMc10u1s9jOVN9oc
	TNs767cL9Fij3lTOhrOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGgYU-0006xO-FP; Tue, 24 Mar 2020 10:13:06 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGgYL-0006w3-Fo
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:12:58 +0000
IronPort-SDR: 6o/dnVNWEbjJv/ZDbcbexfEpM2JGul86Ajs1rxlONFej3+GB404VJFAJIu8jHfE7llkrriQynm
 OstCwqKTThlA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 03:12:50 -0700
IronPort-SDR: H1G/Zvt1jaTSGbi+Yl2JDyCmzkOd2vLqEQ+npdJn5EvBgeUUvy7jdmCw8AJIOFp+tVH24c7yXm
 69TYpwV1Ya4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,300,1580803200"; d="scan'208";a="249996635"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga006.jf.intel.com with ESMTP; 24 Mar 2020 03:12:42 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jGgY7-00CUuU-F9; Tue, 24 Mar 2020 12:12:43 +0200
Date: Tue, 24 Mar 2020 12:12:43 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Sergey Semin <Sergey.Semin@baikalelectronics.ru>
Subject: Re: [PATCH v2] serial: 8250_dw: Fix common clocks usage race condition
Message-ID: <20200324101243.GG1922688@smile.fi.intel.com>
References: <20200306130231.05BBC8030795@mail.baikalelectronics.ru>
 <20200323024611.16039-1-Sergey.Semin@baikalelectronics.ru>
 <20200323100109.k2gckdyneyzo23fb@gilmour.lan>
 <20200323135017.4vi5nwam2rlpepgn@ubsrv2.baikal.int>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323135017.4vi5nwam2rlpepgn@ubsrv2.baikal.int>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_031257_548077_79683817 
X-CRM114-Status: GOOD (  35.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Maxime Ripard <maxime@cerno.tech>, linux-serial@vger.kernel.org,
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

On Mon, Mar 23, 2020 at 04:50:17PM +0300, Sergey Semin wrote:
> On Mon, Mar 23, 2020 at 11:01:09AM +0100, Maxime Ripard wrote:
> > On Mon, Mar 23, 2020 at 05:46:09AM +0300, Sergey.Semin@baikalelectronics.ru wrote:
> > > From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> > >
> > > There are races possible in the dw8250_set_termios() callback method
> > > and while the device is in PM suspend state. A race condition may
> > > happen if the baudrate clock source device is shared with some other
> > > device (in our machine it's another DW UART port). In this case if that
> > > device changes the clock rate while serial console is using it the
> > > DW 8250 UART port might not only end up with an invalid uartclk value
> > > saved, but may also experience a distorted output data since baud-clock
> > > could have been changed. In order to fix this lets enable an exclusive
> > > reference clock rate access in case if "baudclk" device is specified.
> > >
> > > So if some other device also acquires the rate exclusivity during the
> > > time of a DW UART 8250 port being opened, then DW UART 8250 driver
> > > won't be able to alter the baud-clock. It shall just use the available
> > > clock rate. Similarly another device also won't manage to change the
> > > rate at that time. If nothing else have the exclusive rate access
> > > acquired except DW UART 8250 driver, then the driver will be able to
> > > alter the rate as much as it needs to in accordance with the currently
> > > implemented logic.

> > clk_rate_exclusive_get is pretty intrusive, and due to the usual
> > topology of clock trees, this will lock down 3-4 parent clocks to
> > their current rate as well. In the Allwinner SoCs case for example,
> > this will lock down the same PLL than the one used by the CPU,
> > preventing cpufreq from running.
> 
> Speaking about weak design of a SoC' clock tree. Our problems are nothing
> with respect to the Allwinner SoC, in which case of changing the
> CPU-frequency may cause the UART glitches subsequently causing data
> transfer artefacts.) Moreover as I can see the same issue may raise for
> I2C, QSPI, PWM devices there.
> 
> Anyway your concern does make sense.
> 
> > However, the 8250 has a pretty wide range of dividers and can adapt to
> > any reasonable parent clock rate, so we don't really need to lock the
> > rate either, we can simply react to a parent clock rate change using
> > the clock notifiers, just like the SiFive UART is doing.
> > 
> > I tried to do that, but given that I don't really have an extensive
> > knowledge of the 8250, I couldn't find a way to stop the TX of chars
> > while we change the clock rate. I'm not sure if this is a big deal or
> > not, the SiFive UART doesn't seem to care.
> 
> Yes, your solution is also possible, but even in case of stopping Tx/Rx it
> doesn't lack drawbacks. First of all AFAIK there is no easy way to just
> pause the transfers. We'd have to first wait for the current transfers
> to be completed, then somehow lock the port usage (both Tx and Rx
> traffic), permit the reference clock rate change, accordingly adjust the
> UART clock divider, and finally unlock the port. While if we don't mind
> to occasionally have UART data glitches, we can just adjust the UART ref
> divider synchronously with ref clock rate change as you and SiFive UART
> driver suggest.
> 
> So we are now at a zugzwang - a fork to three not that good solutions:
> 1) lock the whole clock branch and provide a glitchless interfaces. But
> by doing so we may (in case of Allwinner SoCs we will) lockup some very
> important functionality like CPU-frequency change while the UART port is
> started up. In this case we won't have the data glitches.
> 2) just adjust the UART clock divider in case of reference clock rate
> change (use the SiFive UART driver approach). In this case we may have the
> data corruption.
> 3) somehow implement the algo: wait for the transfers to be completed,
> lock UART interface (it's possible for Tx, but for Rx in case of no handshake
> enabled it's simply impossible), permit the ref clock rate change,
> adjust the UART divider, then unlock the UART interface. In this case the data
> glitches still may happen (if no modem control is available or
> handshakes are disabled).
> 
> As for the cases of Baikal-T1 UARTs the first solutions is the most suitable.
> We don't lock anything valuable, since a base PLL output isn't directly
> connected to any device and it's rate once setup isn't changed during the
> system running. On the other hand I don't mind to implement the second
> solution, even though it's prone to data glitches. Regarding the solution
> 3) I won't even try. It's too complicated, I don't have time and
> test-infrastructure for this.
> 
> So Andy what do you think?

From Intel HW perspective the first two are okay, but since Maxime is against
first, you have the only option from your list. Perhaps somebody may give
option 4) here...

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
