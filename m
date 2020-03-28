Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C00BD196828
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 18:32:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aG/jl8hkqUJAql2vczocfjjMmfxR46v6VMH61Dc1WfY=; b=OIMnXA5woN437M
	XwRF2rO3ttHfOfDTAXqbL4sPiImHkkZegGuqNIa4VKR4mAPjl/9tMF+oUGl+TQ+xjdKMpxbewfWH0
	oEt0MGULDBgg94zUVRGAT2BgpVTCwxhB1D680Z3A0HBNcj0KEkt8K6EwxPk9owF5A0hxyVlMneBPT
	3RF30v0usmReOj9NQZGhgGnc+e0IqCFjZ/htG4Vh82Ag5AAbzuheJR5toIjWcpm5iM8NVDrqOe179
	BeZ5HcncxlORm/rd0KoYag8B0FrBnbuEQvbzJKAVnQXYpdfM9i2Jlv/tlly70rp5bDxUn8lIoTn5R
	0mW4TVD1tHG3tigFh81w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIFJF-0001rR-LM; Sat, 28 Mar 2020 17:31:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIFJ3-0001r2-78
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 17:31:38 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82208206DB;
 Sat, 28 Mar 2020 17:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585416696;
 bh=vG64A0FZ/wyL1OcvxNk+CZBzjwTgOgIwdp7k4GCvs6A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UsHokRD9QbPm4IQfC3LcYutgvPiC6kVQHgDpmVxCG3k+v7UDLNfBrmh7WDZjNP5uB
 FsDLp6LSaDTeH+/uInypdmApoB+gI4QXJ6EsYlclo2IL49L0H59lP9FICBmjLxIjrE
 o44LAH91Jlux5JXzv1nji/Ej/PxzZ+xtxxkS8QSI=
Date: Sat, 28 Mar 2020 17:31:32 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: <Eugen.Hristev@microchip.com>
Subject: Re: [PATCH v3 1/3] iio: adc: at91-sama5d2_adc: fix differential
 channels in triggered mode
Message-ID: <20200328173132.25f7e1d8@archlinux>
In-Reply-To: <5c0829d6-3b8d-0efc-0ffc-042727cb9115@microchip.com>
References: <1580216189-27418-1-git-send-email-eugen.hristev@microchip.com>
 <1580216189-27418-2-git-send-email-eugen.hristev@microchip.com>
 <20200202110206.7326ce4d@archlinux>
 <5c0829d6-3b8d-0efc-0ffc-042727cb9115@microchip.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_103137_302369_BC4A763C 
X-CRM114-Status: GOOD (  22.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-iio@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 alexandru.ardelean@analog.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 23 Mar 2020 10:42:19 +0000
<Eugen.Hristev@microchip.com> wrote:

> On 02.02.2020 13:02, Jonathan Cameron wrote:
> > On Tue, 28 Jan 2020 12:57:39 +0000
> > <Eugen.Hristev@microchip.com> wrote:
> >   
> >> From: Eugen Hristev <eugen.hristev@microchip.com>
> >>
> >> The differential channels require writing the channel offset register (COR).
> >> Otherwise they do not work in differential mode.
> >> The configuration of COR is missing in triggered mode.
> >>
> >> Fixes: 5e1a1da0f8c9 ("iio: adc: at91-sama5d2_adc: add hw trigger and buffer support")
> >> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>  
> > Applied to the fixes-togreg branch of iio.git.  Normally I avoid rebasing that
> > branch but I may do so this time given it's currently mid merge window.
> > 
> > The other two patches will have to wait for this one to get upstream of
> > my togreg branch which will take a few weeks.
> > 
> > Please give me a poke if I seem to have forgotten about them!
> >   
> 
> Poke !
Timings have gone badly this cycle I'm afraid, so whilst it's made it
into staging/staging-next, I'm not going to be rebasing togreg
until after a pull request to Greg KH.  The timing issue was
I didn't get one out before staging most likely closed (one week
ahead of the window opening which it will probably do tomorrow).

So this will have to wait at least a few weeks more.

Sorry for the delay.

Jonathan

> 
> Eugen
> 
> > Thanks,
> > 
> > Jonathan
> >   
> >> ---
> >> Changes in v2:
> >> - moved to the start of the list
> >>
> >>   drivers/iio/adc/at91-sama5d2_adc.c | 15 +++++++++++++++
> >>   1 file changed, 15 insertions(+)
> >>
> >> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
> >> index e1850f3..2a6950a 100644
> >> --- a/drivers/iio/adc/at91-sama5d2_adc.c
> >> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> >> @@ -723,6 +723,7 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
> >>
> >>        for_each_set_bit(bit, indio->active_scan_mask, indio->num_channels) {
> >>                struct iio_chan_spec const *chan = at91_adc_chan_get(indio, bit);
> >> +             u32 cor;
> >>
> >>                if (!chan)
> >>                        continue;
> >> @@ -732,6 +733,20 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
> >>                        continue;
> >>
> >>                if (state) {
> >> +                     cor = at91_adc_readl(st, AT91_SAMA5D2_COR);
> >> +
> >> +                     if (chan->differential)
> >> +                             cor |= (BIT(chan->channel) |
> >> +                                     BIT(chan->channel2)) <<
> >> +                                     AT91_SAMA5D2_COR_DIFF_OFFSET;
> >> +                     else
> >> +                             cor &= ~(BIT(chan->channel) <<
> >> +                                    AT91_SAMA5D2_COR_DIFF_OFFSET);
> >> +
> >> +                     at91_adc_writel(st, AT91_SAMA5D2_COR, cor);
> >> +             }
> >> +
> >> +             if (state) {
> >>                        at91_adc_writel(st, AT91_SAMA5D2_CHER,
> >>                                        BIT(chan->channel));
> >>                        /* enable irq only if not using DMA */  
> >   
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
