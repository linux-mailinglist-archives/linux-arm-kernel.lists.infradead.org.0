Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8601E27C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 18:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=utvPJTlrzYdvBG/Owu3Dv9rJTY0b3yEqHJt1ZWyAs/g=; b=DZkfCGWiO6hp5y
	k8tQJEpXAYPl4ObyvEypKpuKxgc5tUfozNFlgL5kKPsszZ4y86N4bdfIvbzswErUVVkp/FUvY0zKg
	MbDpjsLI+0Fm7UlfYUtifSy/gIAu3rFG+dYy0Us6+ZJ8/mc1Q5P9Ee4ysKdwoOjHY4gJVzbCLWUBd
	JaIK1vAWxItpu5rxNurw9BKCX7LYoyogwmQFN6a4aSGxYA+ca3LW/qe7BJ3fIJO8ORG0oPiOOC6J+
	QcLjuH4UH/Jm18avSlm+adBMvKrMQie3R9OQJVGq7RXWDmp7BipfXFHCoH9ojQuqH8bvWG0ElkDnI
	4HZnNgmPmAZQnPj9Sm8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdct9-0000EQ-CV; Tue, 26 May 2020 16:57:15 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdcsx-0000DB-Jl
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 16:57:04 +0000
IronPort-SDR: cYqxLtg0+Ybt0ep6K1ralW4tmjpysQtqXKlE1g7pWDnR8W4Y+n7LufPmy1f8M73MdY7BVAEuw4
 VgIb10bGpACg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 09:57:02 -0700
IronPort-SDR: Er2zNXmgAzjRa4OAXcIq2b/xKyApj7yAEdoa4+gewOIBv7hNZ1+ASgdTNPQGRDP2fUT7g6IaUD
 cmfxEw6lq4OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="301780640"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga002.fm.intel.com with ESMTP; 26 May 2020 09:56:59 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jdcsv-0092P9-QH; Tue, 26 May 2020 19:57:01 +0300
Date: Tue, 26 May 2020 19:57:01 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Subject: Re: [PATCH v4 3/3] serial: 8250_dw: Fix common clocks usage race
 condition
Message-ID: <20200526165701.GX1634618@smile.fi.intel.com>
References: <20200526160316.26136-1-Sergey.Semin@baikalelectronics.ru>
 <20200526160316.26136-4-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526160316.26136-4-Sergey.Semin@baikalelectronics.ru>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_095703_690293_FE4BC6C4 
X-CRM114-Status: GOOD (  23.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Tue, May 26, 2020 at 07:03:16PM +0300, Serge Semin wrote:
> The race condition may happen if the UART reference clock is shared with
> some other device (on Baikal-T1 SoC it's another DW UART port). In this
> case if that device changes the clock rate while serial console is using
> it the DW 8250 UART port might not only end up with an invalid uartclk
> value saved, but may also experience a distorted output data since
> baud-clock could have been changed. In order to fix this lets at least
> try to adjust the 8250 port setting like UART clock rate in case if the
> reference clock rate change is discovered. The driver will call the new
> method to update 8250 UART port clock rate settings. It's done by means of
> the clock event notifier registered at the port startup and unregistered
> in the shutdown callback method.
> 
> Note 1. In order to avoid deadlocks we had to execute the UART port update
> method in a dedicated deferred work. This is due to (in my opinion
> redundant) the clock update implemented in the dw8250_set_termios()
> method.
> Note 2. Before the ref clock is manually changed by the custom
> set_termios() function we swap the port uartclk value with new rate
> adjusted to be suitable for the requested baud. It is necessary in
> order to effectively disable a functionality of the ref clock events
> handler for the current UART port, since uartclk update will be done
> a bit further in the generic serial8250_do_set_termios() function.

...

> +static void dw8250_clk_work_cb(struct work_struct *work)
> +{
> +	struct dw8250_data *d = work_to_dw8250_data(work);
> +	struct uart_8250_port *up;
> +	unsigned long rate;
> +
> +	rate = clk_get_rate(d->clk);

> +	if (rate) {

	if (rate <= 0)
		return;

?

> +		up = serial8250_get_port(d->data.line);
> +
> +		serial8250_update_uartclk(&up->port, rate);
> +	}
> +}

...

> +static int dw8250_startup(struct uart_port *p)
> +{
> +	struct dw8250_data *d = to_dw8250_data(p->private_data);
> +	int ret;
> +
> +	/*
> +	 * Some platforms may provide a reference clock shared between several
> +	 * devices. In this case before using the serial port first we have to
> +	 * make sure that any clock state change is known to the UART port at
> +	 * least post factum.
> +	 */

> +	if (d->clk) {

Do you need this?

> +		ret = clk_notifier_register(d->clk, &d->clk_notifier);

Okay, seems clk_notifier_register() and its counterpart should be fixed for
optional clocks.

> +		if (ret)
> +			dev_warn(p->dev, "Failed to set the clock notifier\n");

So, what does this warning mean on the platforms which does not need notifier
at all (i.o.w. all but baikal)?

> +		/*
> +		 * Get current reference clock rate to make sure the UART port
> +		 * is equipped with an up-to-date value before it's started up.
> +		 */

Why? We call ->set_termios() for it, no?

> +		p->uartclk = clk_get_rate(d->clk);
> +		if (!p->uartclk) {
> +			dev_err(p->dev, "Clock rate not defined\n");
> +			return -EINVAL;
> +		}
> +	}
> +
> +	return serial8250_do_startup(p);
> +}
> +
> +static void dw8250_shutdown(struct uart_port *p)
> +{
> +	struct dw8250_data *d = to_dw8250_data(p->private_data);
> +
> +	serial8250_do_shutdown(p);
> +

> +	if (d->clk) {

Ditto.

> +		clk_notifier_unregister(d->clk, &d->clk_notifier);
> +
> +		flush_work(&d->clk_work);
> +	}
> +}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
