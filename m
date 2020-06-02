Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5F81EC42F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 23:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CwqwmazNilMUW1lrXdINGYnH4lkDmjKPOHU/gVYDWlk=; b=rl7dMQaGMzqeoi
	q5kXh77sAzK438j7YileRXxivWkVkNYO4dLYyK8OLRNHA+wHJ6czWUmt3O0nKGitKqGXPixsgfJhK
	o/8q6K77Q0AcBVi08AGDo8KAwzpu2BCWUy4qOgg5ftODIlRY10k0x0tGKBnadmyLzdJ0g5SH4+CW6
	xDwqR0/7Fl7nkDLSLbs0d/QaQj/45UwNzvBPUNF2fSk5UODG2iUt38h8r67Dn/IrRFNMzZr7apG/5
	K/45Km26wjDBn4chgWmuek8Ku1N1uxNwHOPhtVajXN+Mq08IeLcQAczOrE5eWAf5NhKpMrLf99F9K
	VPpi/hgTW4ZnkF+6vS5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgECn-0002Zn-8D; Tue, 02 Jun 2020 21:12:17 +0000
Received: from mx.chip.baikal.ru ([94.125.187.42]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgECg-0002ZB-L8
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 21:12:12 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id A56768030835;
 Tue,  2 Jun 2020 21:12:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PmcTIkUkiYD7; Wed,  3 Jun 2020 00:12:04 +0300 (MSK)
Date: Wed, 3 Jun 2020 00:12:04 +0300
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 05/10] spi: spi-dw-mmio: Spin off MSCC platforms into
 spi-dw-mchp
Message-ID: <20200602211203.3lad22zvt5yagane@mobilestation>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-6-lars.povlsen@microchip.com>
 <20200513151811.GL4803@sirena.org.uk>
 <20200519120519.GE24801@soft-dev15.microsemi.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519120519.GE24801@soft-dev15.microsemi.net>
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_141211_051203_BA0E8ABB 
X-CRM114-Status: GOOD (  23.15  )
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Serge Semin <fancer.lancer@gmail.com>,
 linux-spi@vger.kernel.org, SoC Team <soc@kernel.org>,
 Mark Brown <broonie@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 02:05:19PM +0200, Lars Povlsen wrote:
> On 13/05/20 16:18, Mark Brown wrote:
> > Date: Wed, 13 May 2020 16:18:11 +0100
> > From: Mark Brown <broonie@kernel.org>
> > To: Lars Povlsen <lars.povlsen@microchip.com>
> > Cc: SoC Team <soc@kernel.org>, Microchip Linux Driver Support
> >  <UNGLinuxDriver@microchip.com>, linux-spi@vger.kernel.org,
> >  devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
> >  linux-arm-kernel@lists.infradead.org, Alexandre Belloni
> >  <alexandre.belloni@bootlin.com>
> > Subject: Re: [PATCH 05/10] spi: spi-dw-mmio: Spin off MSCC platforms into
> >  spi-dw-mchp
> > User-Agent: Mutt/1.10.1 (2018-07-13)
> > 
> > On Wed, May 13, 2020 at 04:00:26PM +0200, Lars Povlsen wrote:
> > 
> > > +config SPI_DW_MCHP
> > > +	tristate "Memory-mapped io interface driver using DW SPI core of MSCC SoCs"
> > > +	default y if ARCH_SPARX5
> > > +	default y if SOC_VCOREIII
> > 
> > Why the default ys?
> 
> The SoC will typically boot from SPI... But its not a requirement per
> se. I will remove it.
> 
> > 
> > > +++ b/drivers/spi/Makefile
> > > @@ -37,6 +37,7 @@ obj-$(CONFIG_SPI_DAVINCI)		+= spi-davinci.o
> > >  obj-$(CONFIG_SPI_DLN2)			+= spi-dln2.o
> > >  obj-$(CONFIG_SPI_DESIGNWARE)		+= spi-dw.o
> > >  obj-$(CONFIG_SPI_DW_MMIO)		+= spi-dw-mmio.o
> > > +obj-$(CONFIG_SPI_DW_MCHP)		+= spi-dw-mchp.o
> > >  obj-$(CONFIG_SPI_DW_PCI)		+= spi-dw-midpci.o
> > >  spi-dw-midpci-objs			:= spi-dw-pci.o spi-dw-mid.o
> > >  obj-$(CONFIG_SPI_EFM32)			+= spi-efm32.o
> > 
> > Please keep the file alphabetically sorted.
> > 
> 
> Noted.
> 
> > > +++ b/drivers/spi/spi-dw-mchp.c
> > > @@ -0,0 +1,232 @@
> > > +// SPDX-License-Identifier: GPL-2.0-only
> > > +/*
> > > + * Memory-mapped interface driver for MSCC SoCs
> > > + *
> > 
> > Please make the entire comment a C++ one so things look more
> > intentional.
> 
> Sure, I can do that. The presented form matches that of the other
> spi-dw-* drivers, but I can see other using // blocks. Ack.
> 
> > 
> > > +#define MAX_CS		4
> > 
> > This should be namespaced.
> 
> Ack.
> 

> > 
> > > +	rx_sample_dly = 0;
> > > +	device_property_read_u32(&pdev->dev, "spi-rx-delay-us", &rx_sample_dly);
> > > +	dws->rx_sample_dly = DIV_ROUND_UP(rx_sample_dly,
> > > +					  (dws->max_freq / 1000000));

Perhaps 100000 is better to be replace with macro USEC_PER_SEC...

Moreover are you sure the formulae is correct?
dws->rx_sample_dly - a number of ssi_clk periods/cycles to delay the Rx-data sample,
dws->max_freq - ssi_clk frequency (not period).

In real math the formulae would look like:
S = d * P [s], where d - number of delay cycles, P - ssi_clk period in seconds,
S - requested delay in seconds.
In the driver notation: d = dws->rx_sample_dly, P = 1 / dws->max_freq,
S = rx_sample_dly ("spi-rx-delay-us" property value).

dws->rx_sample_dly * (1 / dws->max_freq) = rx_sample_dly <=>
dws->rx_sample_dly = rx_sample_dly * dws->max_freq.

Though that's represented in seconds, so if rx_sample_dly is specified in usec,
then you'd need to scale it down dividing by USEC_PER_SEC.

For example, imagine we need a delay of 1 usec with ssi_clk of 50MHz.
By your formulae we'd have: 1 / (50000000 / 1000000) = 0 cycles (actually 1 due
to DIV_ROUND_UP, but incorrect anyway),
By mine: 1 * (500000000 / 1000000) = 50 cycles. Seems closer to reality.

Am I missing something?

> > 
> > If this is a standard feature of the DesignWare IP why parse it here and
> > not in the generic code?
> 
> This is a standard feature of the DesignWare IP, so good suggestion. I
> will arrange with Serge.

Regarding "spi-rx-delay-us" and the sampling delay the IP supports. Here is what
documentation says regarding the register, which is then initialized with this
parameter "This register controls the number of ssi_clk cycles that are
delayed from the default sample time before the actual sample of the rxd input
signal occurs." While the "spi-rx-delay-us" property is described as: "Delay, in
microseconds, after a read transfer." I may misunderstand something, but IMO
these descriptions don't refer to the same values. The only real use of the
"spi-rx-delay-us" property I've found in "./drivers/input/rmi4/rmi_spi.c".
That driver gets the value of the property and just sets the delay_usecs
of some transfers, which isn't even close to the functionality the RX_SAMPLE_DLY
register provides. 

To be clear the RX_SAMPLE_DLY register can be used to delay the RX-bits sample
with respect to the normal Rx sampling timing. The delay is measured in the 
numbers of the ssi_clk periods. (Note also that the maximum delay is limited
with a constant parameter pre-initialized at the IP-core synthesis stage. It can
be defined within a range [4, 255]. In our IP it's limited with just 4 periods.)

As I see it, a better way would be to either define a new vendor-specific
property like "snps,rx-sample-delay-ns" (note NS here, since normally the
ssi_clk is much higher than 1MHz), or define a new generic SPI property.
Mark, Andy?

-Sergey

> 
> Thank you for your comments!
> 
> ---Lars
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
