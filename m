Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F3F1CD110
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 06:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAFUjROmuCwV0c6/cSEwSntal+mE5/SwrTDQJVPTt1M=; b=ofrlLQq0oWP8YY
	TQxUPaAVMWPmS2Nkf8lu/C86bxBC1dFNYq7/jM2Asme125OWJ9L3RfNRxEXJncgKQP13T1L/vWjyH
	VMmuBNAXLRCkgxrFbPUYLWXxIYsfqDMxfD9OD0Wc62ChBZxmUQ8qHRYUpW1XOjcwBZBufVkzOBSe0
	KpDWQ9qcq1WfnTNz/ZK4KUcmhlbaDwcbPg2D8OxKih+d6Vi1OBDO+OceMvycHZ9Cv9aWRINFLUcgT
	NQrZ4Sg6xIN1HoppokFTD5HrUKmb3hqkz/zzsiTzDoxdTOpz/YLvPwybA3/BCy0HRBtsLLG17TO+O
	GTrT9t42alnlCd6cIOkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY0R5-00088g-1U; Mon, 11 May 2020 04:53:03 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY0Qx-00088A-PQ
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 04:52:57 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 5AFCA3FA;
 Mon, 11 May 2020 00:52:49 -0400 (EDT)
Received: from imap26 ([10.202.2.76])
 by compute3.internal (MEProxy); Mon, 11 May 2020 00:52:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=mime-version:message-id:in-reply-to:references:date:from:to
 :cc:subject:content-type; s=fm1; bh=tHIWHGwD2awLQ7YfvHIbcGG38ivg
 dphn08I12CZ2Xx4=; b=QCTj+BVkhFwvH/TOjPuWMhgNEpOGamwHoEcavOmIuSIW
 VPQCGmRBC5zrYOHgXfRxcH7T33qczjumF32ChqB7WqueeG7i86pNit8OspWAhgla
 lQoTj01/mnZLMkxD2xeJBZMRk3AQPLtcJScVuc9BxWzxyHBooRqSBp1kHE+3MhWl
 6Gh4y81FVOHt/UfyOC9d/7NZ73zFDiMul2U8AZgceVQXhYEQkVrOKA1sFc96ViZK
 P/vjcvVmBimEFphNpz8SXx5RwAuOvipiQMZJqU9yM9MNQv0sp84hGO77cAEh2xeP
 v+3aMOA0fOtHVcSSZfKIm5/bfYjzlHqZjeys4Uld+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=tHIWHG
 wD2awLQ7YfvHIbcGG38ivgdphn08I12CZ2Xx4=; b=gFP7sW5ExcrIVbqJ+saGLi
 i99R+Z3Q5Ik33sL3sQpDH+F5vCwrHfC945pQeaA/E0u6Vsfl4bvfd6PwrK2ntx2H
 iSTzHu0fHoD9Uhpt+MjRtr7LXjb8lbME/661m2WKkNFGmI1UDW9QucZHAUAiNjOR
 KScxVJzDTI4eg1F1VqjzyWlkwd2IL1ZPIX62nCS8RyL3XU4LX8E+c3KhxOtxmByX
 /RTfvGanwj5+XvxtH/D0n5S7f9o4fFpGtgTSXkKFw6DPPD3uPe0bHgOkUe4disWz
 z7nJdxzGZqOKigGt6/g0JWJTF9a+qHOe2eStSLtafbo9KAUJA35zAZUFEZDl3Tpg
 ==
X-ME-Sender: <xms:INq4XhHZYc17U9LVumxao8pYJxhjT3UkutMvDJWgUVUtVMrHtf8puQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrkeelgdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpeetlhhishht
 rghirhcuoegrlhhishhtrghirhesrghlihhsthgrihhrvdefrdhmvgeqnecuggftrfgrth
 htvghrnhepueffkeevheejledtueevieekleekjefhjeehudfhtdfgtdfgjeejkedvveej
 veeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
 hlihhsthgrihhrsegrlhhishhtrghirhdvfedrmhgv
X-ME-Proxy: <xmx:INq4XtOYh1BjK-l9aCyqQ3N8CAmTdf-2sj69GAnnPTBJC5QTNA8TOg>
 <xmx:INq4Xrc2oJyv7MLmmA5mEaYGv8hEtzSnDLBuMU8h5kzjbPMiJJDHqw>
 <xmx:INq4XivgtEnnbOfpUcLdjQ-kdG4AX2gtuM9uH7UCQUvvu98hb50nng>
 <xmx:Idq4Xn-si6AyLlkZU2ihXLcHNdiHyr0DRv_TSgEGL63mmPBIJSbPfA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 2766E14200A2; Mon, 11 May 2020 00:52:48 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-dev0-413-g750b809-fmstable-20200507v1
Mime-Version: 1.0
Message-Id: <7d6d1494-31a7-4780-85f3-8bbc2f32bcd6@www.fastmail.com>
In-Reply-To: <CAMuHMdV7qGSbw44O+ykSz3W6h6oxj-ir+9qRbeazKb+p7Z=2Mg@mail.gmail.com>
References: <20200506014135.2941967-1-alistair@alistair23.me>
 <CAMuHMdV7qGSbw44O+ykSz3W6h6oxj-ir+9qRbeazKb+p7Z=2Mg@mail.gmail.com>
Date: Sun, 10 May 2020 21:52:27 -0700
From: Alistair <alistair@alistair23.me>
To: "Geert Uytterhoeven" <geert@linux-m68k.org>
Subject: Re: [PATCH] spi: sun6i: Add support for GPIO chip select lines
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_215255_943428_999B9AA8 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-spi <linux-spi@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Alistair Francis <alistair23@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 6, 2020, at 1:27 AM, Geert Uytterhoeven wrote:
> Hi Alistair,
> 
> On Wed, May 6, 2020 at 3:41 AM Alistair Francis <alistair@alistair23.me> wrote:
> > Add a setup function that can be used to support using generic GPIO
> > lines for the chip select.
> >
> > Signed-off-by: Alistair Francis <alistair@alistair23.me>
> > ---
> > drivers/spi/spi-sun6i.c | 27 +++++++++++++++++++++++++++
> > 1 file changed, 27 insertions(+)
> >
> > diff --git a/drivers/spi/spi-sun6i.c b/drivers/spi/spi-sun6i.c
> > index ec7967be9e2f..fd4e19434942 100644
> > --- a/drivers/spi/spi-sun6i.c
> > +++ b/drivers/spi/spi-sun6i.c
> > @@ -10,6 +10,7 @@
> > #include <linux/clk.h>
> > #include <linux/delay.h>
> > #include <linux/device.h>
> > +#include <linux/gpio.h>
> > #include <linux/interrupt.h>
> > #include <linux/io.h>
> > #include <linux/module.h>
> > @@ -171,6 +172,31 @@ static inline void sun6i_spi_fill_fifo(struct sun6i_spi *sspi, int len)
> > }
> > }
> >
> > +static int sun6i_spi_setup(struct spi_device *spi)
> > +{
> > + int ret;
> > +
> > + /* sanity check for native cs */
> > + if (spi->mode & SPI_NO_CS)
> > + return 0;
> > + if (gpio_is_valid(spi->cs_gpio)) {
> > + /* with gpio-cs set the GPIO to the correct level
> > + * and as output (in case the dt has the gpio not configured
> > + * as output but native cs)
> > + */
> > + ret = gpio_direction_output(spi->cs_gpio,
> > + (spi->mode & SPI_CS_HIGH) ? 0 : 1);
> > + if (ret)
> > + dev_err(&spi->dev,
> > + "could not set gpio %i as output: %i\n",
> > + spi->cs_gpio, ret);
> > +
> > + return ret;
> > + }
> > +
> > + return 0;
> > +}
> > +
> > static void sun6i_spi_set_cs(struct spi_device *spi, bool enable)
> > {
> > struct sun6i_spi *sspi = spi_master_get_devdata(spi->master);
> > @@ -470,6 +496,7 @@ static int sun6i_spi_probe(struct platform_device *pdev)
> >
> > master->max_speed_hz = 100 * 1000 * 1000;
> > master->min_speed_hz = 3 * 1000;
> > + master->setup = sun6i_spi_setup;
> > master->set_cs = sun6i_spi_set_cs;
> > master->transfer_one = sun6i_spi_transfer_one;
> > master->num_chipselect = 4;
> 
> Can't you just set
> 
>  master->use_gpio_descriptors = true;
> 
> instead and be done with it?
> Then drivers/spi/spi.c:spi_get_gpio_descs() will configure the GPIO line
> as output for you.

Yep, it looks like that works. Sending a v2.

Alistair

> 
> Gr{oetje,eeting}s,
> 
>  Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>  -- Linus Torvalds
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
