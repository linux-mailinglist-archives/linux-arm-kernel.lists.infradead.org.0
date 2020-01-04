Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9954912FFC9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 01:47:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1bFtqzZP0dU/kDeXqLSoBK+BlgIrd1pv1c2hpF1+2w=; b=HQqf5Y03TFtmXI
	fBsi3vjbhItzVjLCisEFMdL3rVGjZTfqitHMhWrXKvHKb+4mfXOL2oSEoK0vgMegUui3apU4ODiEU
	YluldHtV712IeAWZCbmBgxYGKeho6XPnMSmRngWTNWG6fDTAUjQ5SiJCMg7bkOs+cApYbswkHJCgU
	HgdfWS3iIIKhBjVhSXMlU56EweGS60zw28yPPPy6AZNBLyMI7mu32CCD14fOdM8O7fl5JVKYOXaGm
	vBH2RkA1eNFFqALzvYCQXWYnctjanaMXLla9BRbI+scjGzYP90psK6i6Yl1MFimKv9b38WZTcaOXF
	NYJNkSBlzlwtTKzDM9dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inXaj-0000GZ-CI; Sat, 04 Jan 2020 00:46:57 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inXac-0000Fa-EI
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 00:46:54 +0000
Received: from localhost (lfbn-lyo-1-1913-102.w90-65.abo.wanadoo.fr
 [90.65.92.102]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 410BA100004;
 Sat,  4 Jan 2020 00:46:39 +0000 (UTC)
Date: Sat, 4 Jan 2020 01:46:38 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Karl =?iso-8859-1?Q?Rudb=E6k?= Olsen <karl@micro-technic.com>
Subject: Re: [PATCH] clk: at91: add sama5d3 pmc driver
Message-ID: <20200104004638.GL3040@piout.net>
References: <a223a3f5c8b64b80afac96a5cc2206ec@ATHSHREX13CAS01.ATHENAMAIL.NET>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a223a3f5c8b64b80afac96a5cc2206ec@ATHSHREX13CAS01.ATHENAMAIL.NET>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_164651_421575_F18E5BDE 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/01/2020 11:37:53+0000, Karl Rudb=E6k Olsen wrote:
> On 2019-12-29 21:29, Alexandre Belloni <alexandre.belloni@bootlin.com> wr=
ote:
> > Add a driver for the PMC clocks of the sama5d3.
> > =

> > Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> =

> The datasheet lists the maximum peripheral clock frequencies in terms of
> MCK dividers, and for those of us using MCK =3D 134 MHz instead of 133 MH=
z,
> the .max values will make the peripherals run at half the possible clock.
> Could we use .max values based on 134 MHz instead? Or based on 166 MHz
> which is the maximum allowed MCK?
> =


I'll update with values based on 166MHz.

> See also comments inline.
> =

> Thanks,
> Karl Olsen
> =

> > ---
> >  drivers/clk/at91/Makefile  |   1 +
> >  drivers/clk/at91/sama5d3.c | 236 +++++++++++++++++++++++++++++++++++++
> >  2 files changed, 237 insertions(+)
> >  create mode 100644 drivers/clk/at91/sama5d3.c
> > =

> > diff --git a/drivers/clk/at91/Makefile b/drivers/clk/at91/Makefile
> > index 3732241352ce..e3be7f40f79e 100644
> > --- a/drivers/clk/at91/Makefile
> > +++ b/drivers/clk/at91/Makefile
> > @@ -17,5 +17,6 @@ obj-$(CONFIG_HAVE_AT91_I2S_MUX_CLK)	+=3D clk-i2s-mux.o
> >  obj-$(CONFIG_HAVE_AT91_SAM9X60_PLL)	+=3D clk-sam9x60-pll.o
> >  obj-$(CONFIG_SOC_AT91SAM9) +=3D at91sam9260.o at91sam9rl.o at91sam9x5.o
> >  obj-$(CONFIG_SOC_SAM9X60) +=3D sam9x60.o
> > +obj-$(CONFIG_SOC_SAMA5D3) +=3D sama5d3.o
> >  obj-$(CONFIG_SOC_SAMA5D4) +=3D sama5d4.o
> >  obj-$(CONFIG_SOC_SAMA5D2) +=3D sama5d2.o
> > diff --git a/drivers/clk/at91/sama5d3.c b/drivers/clk/at91/sama5d3.c
> > new file mode 100644
> > index 000000000000..0b73c174ab56
> > --- /dev/null
> > +++ b/drivers/clk/at91/sama5d3.c
> > @@ -0,0 +1,236 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +#include <linux/clk-provider.h>
> > +#include <linux/mfd/syscon.h>
> > +#include <linux/slab.h>
> > +
> > +#include <dt-bindings/clock/at91.h>
> > +
> > +#include "pmc.h"
> > +
> > +static const struct clk_master_characteristics mck_characteristics =3D=
 {
> > +	.output =3D { .min =3D 0, .max =3D 166000000 },
> > +	.divisors =3D { 1, 2, 4, 3 },
> > +};
> > +
> > +static u8 plla_out[] =3D { 0 };
> > +
> > +static u16 plla_icpll[] =3D { 0 };
> > +
> > +static const struct clk_range plla_outputs[] =3D {
> > +	{ .min =3D 400000000, .max =3D 1000000000 },
> > +};
> > +
> > +static const struct clk_pll_characteristics plla_characteristics =3D {
> > +	.input =3D { .min =3D 8000000, .max =3D 50000000 },
> > +	.num_output =3D ARRAY_SIZE(plla_outputs),
> > +	.output =3D plla_outputs,
> > +	.icpll =3D plla_icpll,
> > +	.out =3D plla_out,
> > +};
> > +
> > +static const struct clk_pcr_layout sama5d3_pcr_layout =3D {
> > +	.offset =3D 0x10c,
> > +	.cmd =3D BIT(12),
> > +	.pid_mask =3D GENMASK(6, 0),
> > +	.div_mask =3D GENMASK(17, 16),
> > +};
> > +
> > +static const struct {
> > +	char *n;
> > +	char *p;
> > +	u8 id;
> > +} sama5d3_systemck[] =3D {
> > +	{ .n =3D "ddrck", .p =3D "masterck", .id =3D 2 },
> > +	{ .n =3D "lcdck", .p =3D "masterck", .id =3D 3 },
> > +	{ .n =3D "smdck", .p =3D "smdclk",   .id =3D 4 },
> > +	{ .n =3D "uhpck", .p =3D "usbck",    .id =3D 6 },
> > +	{ .n =3D "udpck", .p =3D "usbck",    .id =3D 7 },
> > +	{ .n =3D "pck0",  .p =3D "prog0",    .id =3D 8 },
> > +	{ .n =3D "pck1",  .p =3D "prog1",    .id =3D 9 },
> > +	{ .n =3D "pck2",  .p =3D "prog2",    .id =3D 10 },
> > +};
> > +
> > +static const struct {
> > +	char *n;
> > +	u8 id;
> > +	struct clk_range r;
> > +} sama5d3_periphck[] =3D {
> > +	{ .n =3D "dbgu_clk", .id =3D 2, },
> > +	{ .n =3D "hsmc_clk", .id =3D 5, },
> > +	{ .n =3D "pioA_clk", .id =3D 6, },
> > +	{ .n =3D "pioB_clk", .id =3D 7, },
> > +	{ .n =3D "pioC_clk", .id =3D 8, },
> > +	{ .n =3D "pioD_clk", .id =3D 9, },
> > +	{ .n =3D "pioE_clk", .id =3D 10, },
> > +	{ .n =3D "usart0_clk", .id =3D 12, .r =3D { .min =3D 0, .max =3D 6600=
0000 }, },
> > +	{ .n =3D "usart1_clk", .id =3D 13, .r =3D { .min =3D 0, .max =3D 6600=
0000 }, },
> > +	{ .n =3D "usart2_clk", .id =3D 14, .r =3D { .min =3D 0, .max =3D 6600=
0000 }, },
> > +	{ .n =3D "usart3_clk", .id =3D 15, .r =3D { .min =3D 0, .max =3D 6600=
0000 }, },
> > +	{ .n =3D "uart0_clk", .id =3D 16, .r =3D { .min =3D 0, .max =3D 66000=
000 }, },
> > +	{ .n =3D "uart1_clk", .id =3D 17, .r =3D { .min =3D 0, .max =3D 66000=
000 }, },
> > +	{ .n =3D "twi0_clk", .id =3D 18, .r =3D { .min =3D 0, .max =3D 166250=
00 }, },
> > +	{ .n =3D "twi1_clk", .id =3D 19, .r =3D { .min =3D 0, .max =3D 166250=
00 }, },
> > +	{ .n =3D "twi2_clk", .id =3D 20, .r =3D { .min =3D 0, .max =3D 166250=
00 }, },
> =

> The datasheet says max freq for TWI is MCK/4, not MCK/8.
> =


You are right.

> > +	{ .n =3D "mci0_clk", .id =3D 21, },
> > +	{ .n =3D "mci1_clk", .id =3D 22, },
> > +	{ .n =3D "mci2_clk", .id =3D 23, },
> > +	{ .n =3D "spi0_clk", .id =3D 24, .r =3D { .min =3D 0, .max =3D 133000=
000 }, },
> > +	{ .n =3D "spi1_clk", .id =3D 25, .r =3D { .min =3D 0, .max =3D 133000=
000 }, },
> > +	{ .n =3D "tcb0_clk", .id =3D 26, .r =3D { .min =3D 0, .max =3D 133000=
000 }, },
> > +	{ .n =3D "tcb1_clk", .id =3D 27, },
> =

> tcb1_clk should also have .min and .max?
> =


And right again. What is happening here is that all those values are
coming from the dtsi instead of the datasheet, this ensures the PMC
driver behaves the same before and after the DT binding switch.

What I did is first fix the dtsi so the patches can be backported to
stable kernels then I fixed the PMC driver so it is correct from the
beginning. I'll send patches soon.


-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
