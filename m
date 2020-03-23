Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4152D18F1AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 10:21:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJYR5FAddGRXFtUvmAWmV1NscRvENuKdNlz0+zz2yUQ=; b=JcmQ0Vi1fMgwoR
	dmLYsLcJbrJIH88cZBa5ugy0WPQbIMnet7Co8q+ZJ7MDq2oWpS4Q8X/rWh5c8Q15heDWsXuP1yQGh
	CdW137QA4SyQKtAAGYfCtS/rXOknxNYnmQ0mPbI4d46tdikMN9L/gRzirtU+JMZkLYRsM/85N9PG8
	nWUoAazAY+i88aaeQabVMHSFDEGPLjCauYCACa1XqUGFN8tGhLMNbDixqYhAV2r3tVBBVSxPFnCi1
	Arlk7N86EIgrEg+GRuzqMMoWdttx60PVkVw1rkxuvlXRk07bzyXH50I17eHA0ARloRPpgSKEzDAvu
	k4zve7jY/r0WSjbDaNRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJGf-0003iy-9q; Mon, 23 Mar 2020 09:21:09 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJGX-0003iL-Kb
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 09:21:03 +0000
IronPort-SDR: 3nluzYlJ88BDcyZV9EpoQfsh7nzUt6SZR8JCwuEMEJH4h5d9XXy86VxK8n0k8+I2+430mozura
 CdQ8OuZ6QM7g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 02:20:57 -0700
IronPort-SDR: NXZmagiSdrqKSbmt0vSeK1caYhZUJdpRy1VNqw/fs6h11L6MFR3KCibk2GOh3bYY+mYvl5cexF
 nNhcReiFjm9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,295,1580803200"; d="scan'208";a="239873817"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga008.jf.intel.com with ESMTP; 23 Mar 2020 02:20:50 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jGJGN-00CCZd-2B; Mon, 23 Mar 2020 11:20:51 +0200
Date: Mon, 23 Mar 2020 11:20:51 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Sergey.Semin@baikalelectronics.ru
Subject: Re: [PATCH v2] serial: 8250_dw: Fix common clocks usage race condition
Message-ID: <20200323092051.GB1922688@smile.fi.intel.com>
References: <20200306130231.05BBC8030795@mail.baikalelectronics.ru>
 <20200323024611.16039-1-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323024611.16039-1-Sergey.Semin@baikalelectronics.ru>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_022101_728280_8EAA95A2 
X-CRM114-Status: GOOD (  23.74  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Kefeng Wang <wangkefeng.wang@huawei.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Serge Semin <fancer.lancer@gmail.com>, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
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
 Jisheng Zhang <Jisheng.Zhang@synaptics.com>,
 Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 05:46:09AM +0300, Sergey.Semin@baikalelectronics.ru wrote:
> From: Serge Semin <Sergey.Semin@baikalelectronics.ru>

The question to CLK framework maintainers, is it correct approach in general
for this case?

> There are races possible in the dw8250_set_termios() callback method
> and while the device is in PM suspend state. A race condition may
> happen if the baudrate clock source device is shared with some other
> device (in our machine it's another DW UART port). In this case if that
> device changes the clock rate while serial console is using it the
> DW 8250 UART port might not only end up with an invalid uartclk value
> saved, but may also experience a distorted output data since baud-clock
> could have been changed. In order to fix this lets enable an exclusive
> reference clock rate access in case if "baudclk" device is specified.
> 
> So if some other device also acquires the rate exclusivity during the
> time of a DW UART 8250 port being opened, then DW UART 8250 driver
> won't be able to alter the baud-clock. It shall just use the available
> clock rate. Similarly another device also won't manage to change the
> rate at that time. If nothing else have the exclusive rate access
> acquired except DW UART 8250 driver, then the driver will be able to
> alter the rate as much as it needs to in accordance with the currently
> implemented logic.

Thank you for an update, my comments below.

...

> +static int dw8250_startup(struct uart_port *p)
> +{
> +	struct dw8250_data *d = to_dw8250_data(p->private_data);
> +
> +	/*
> +	 * Some platforms may provide a reference clock shared between several
> +	 * devices. In this case before using the serial port first we have to
> +	 * make sure nothing will change the rate behind our back and second
> +	 * the tty/serial subsystem knows the actual reference clock rate of
> +	 * the port.
> +	 */

> +	if (clk_rate_exclusive_get(d->clk)) {
> +		dev_warn(p->dev, "Couldn't lock the clock rate\n");

So, if this fails, in ->shutdown you will disbalance reference count, or did I
miss something?

> +	} else if (d->clk) {

> +		p->uartclk = clk_get_rate(d->clk);
> +		if (!p->uartclk) {
> +			clk_rate_exclusive_put(d->clk);
> +			dev_err(p->dev, "Clock rate not defined\n");
> +			return -EINVAL;
> +		}

This operations I didn't get. If we have d->clk and suddenly get 0 as a rate
(and note, that we still update uartclk member!), we try to put (why?) the
exclusiveness of rate.

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
> +	clk_rate_exclusive_put(d->clk);
> +}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
