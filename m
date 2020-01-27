Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFC714A391
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 13:13:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y6rQBMpVqyJmE73WtLXNu/Gq0pavjrG9pXscEHnTwuk=; b=Flo+wiYtWi755N
	+gKm2Hlr5y3v/rRm763gdfzabZVakA9i8/iQnnp4c34mpMy5etIeGDNqCWG+PjN23oh+54pmagq1G
	0Hu0IMsM30AtJ2a7da8/0bRZj8Cl4tWxjGhmrPfK1uArip2A0Q9Qs2VWilD865ddDYl5hI1S8nx79
	Z0fc/GGniV21IcpFwFQWQ19u9N1Ugv53xywKMmGBz+Eaktwgob1o/3uB07y70Mf2Aj7+tYYzXlItE
	2fWNFHAypcQ1/Xfs0i60X9QO09MtLSqgpQTL0Ua7HPtSI8O9r6dg7btBs/oe3ehKTANbWEJXeYeJr
	yTsIWTaJlgeoLXubxDrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw3Gb-0007Pp-3r; Mon, 27 Jan 2020 12:13:21 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw3GO-0007P0-Gx
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 12:13:10 +0000
Received: from lhreml706-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id E7EE9CF9B90E00A3F073;
 Mon, 27 Jan 2020 12:13:01 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 lhreml706-cah.china.huawei.com (10.201.108.47) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 27 Jan 2020 12:13:01 +0000
Received: from localhost (10.202.226.57) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 27 Jan
 2020 12:13:01 +0000
Date: Mon, 27 Jan 2020 12:13:00 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: <Eugen.Hristev@microchip.com>
Subject: Re: [PATCH v2 2/3] iio: adc: at91-sama5d2_adc: handle unfinished
 conversions
Message-ID: <20200127121300.00002a38@Huawei.com>
In-Reply-To: <b8eb32be-a3dd-795c-8352-a4155621d10c@microchip.com>
References: <1578917098-9674-1-git-send-email-eugen.hristev@microchip.com>
 <1578917098-9674-3-git-send-email-eugen.hristev@microchip.com>
 <20200117173424.0000244f@Huawei.com>
 <b8eb32be-a3dd-795c-8352-a4155621d10c@microchip.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.57]
X-ClientProxiedBy: lhreml737-chm.china.huawei.com (10.201.108.187) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_041308_859254_DD54BD77 
X-CRM114-Status: GOOD (  33.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-arm-kernel@lists.infradead.org, jic23@kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 Jan 2020 07:27:00 +0000
<Eugen.Hristev@microchip.com> wrote:

> On 17.01.2020 19:34, Jonathan Cameron wrote:
> 
> > On Mon, 13 Jan 2020 12:07:09 +0000
> > <Eugen.Hristev@microchip.com> wrote:
> >   
> >> From: Eugen Hristev <eugen.hristev@microchip.com>
> >>
> >> It can happen that on IRQ trigger, not all conversions are done if
> >> we are enabling multiple channels.
> >> The IRQ is triggered on first EOC (end of channel), but it can happen
> >> that not all channels are done. This leads into erroneous reports to
> >> userspace (zero values or previous values).
> >> To solve this, in trigger handler, check if the mask of done channels
> >> is the same as the mask of active scan channels.
> >> If it's the same, proceed and push to buffers. Otherwise, use usleep
> >> to sleep until the conversion is done or we timeout.
> >> Normally, it should happen that in a short time fashion, all channels are
> >> ready, since the first IRQ triggered.
> >> If a hardware fault happens (for example the clock suddently dissappears),
> >> the handler will not be completed, in which case we do not report anything to
> >> userspace anymore.
> >> Also, change from using the EOC interrupts to DRDY interrupt.
> >> This helps with the fact that not 'n' interrupt statuses are enabled,
> >> each being able to trigger an interrupt, and instead only data ready
> >> interrupt can wake up the CPU. Like this, when data is ready, check in
> >> handler which and how many channels are done. While the DRDY is raised,
> >> other IRQs cannot occur. Once the channel data is being read, we ack the
> >> IRQ and finish the conversion.
> >>
> >> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> >> ---
> >> Changes in v2:
> >> - move start of conversion to threaded irq, removed specific at91 pollfunc
> >> - add timeout to channel mask readiness check in trigger handler
> >> - use DRDY irq instead of EOC irqs.
> >> - move enable irq after DRDY has been acked in reenable_trigger
> >>
> >>   drivers/iio/adc/at91-sama5d2_adc.c | 62 ++++++++++++++++++++++++++++----------
> >>   1 file changed, 46 insertions(+), 16 deletions(-)
> >>
> >> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
> >> index 2a6950a..454a493 100644
> >> --- a/drivers/iio/adc/at91-sama5d2_adc.c
> >> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> >> @@ -8,6 +8,7 @@
> >>
> >>   #include <linux/bitops.h>
> >>   #include <linux/clk.h>
> >> +#include <linux/delay.h>
> >>   #include <linux/dma-mapping.h>
> >>   #include <linux/dmaengine.h>
> >>   #include <linux/interrupt.h>
> >> @@ -100,6 +101,8 @@
> >>   #define AT91_SAMA5D2_IER_YRDY   BIT(21)
> >>   /* Interrupt Enable Register - TS pressure measurement ready */
> >>   #define AT91_SAMA5D2_IER_PRDY   BIT(22)
> >> +/* Interrupt Enable Register - Data ready */
> >> +#define AT91_SAMA5D2_IER_DRDY   BIT(24)
> >>   /* Interrupt Enable Register - general overrun error */
> >>   #define AT91_SAMA5D2_IER_GOVRE BIT(25)
> >>   /* Interrupt Enable Register - Pen detect */
> >> @@ -486,6 +489,21 @@ static inline int at91_adc_of_xlate(struct iio_dev *indio_dev,
> >>        return at91_adc_chan_xlate(indio_dev, iiospec->args[0]);
> >>   }
> >>
> >> +static unsigned int at91_adc_active_scan_mask_to_reg(struct iio_dev *indio_dev)
> >> +{
> >> +     u32 mask = 0;
> >> +     u8 bit;
> >> +
> >> +     for_each_set_bit(bit, indio_dev->active_scan_mask,
> >> +                      indio_dev->num_channels) {
> >> +             struct iio_chan_spec const *chan =
> >> +                      at91_adc_chan_get(indio_dev, bit);
> >> +             mask |= BIT(chan->channel);
> >> +     }
> >> +
> >> +     return mask & GENMASK(11, 0);
> >> +}
> >> +
> >>   static void at91_adc_config_emr(struct at91_adc_state *st)
> >>   {
> >>        /* configure the extended mode register */
> >> @@ -746,24 +764,19 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
> >>                        at91_adc_writel(st, AT91_SAMA5D2_COR, cor);
> >>                }
> >>
> >> -             if (state) {
> >> +             if (state)
> >>                        at91_adc_writel(st, AT91_SAMA5D2_CHER,
> >>                                        BIT(chan->channel));
> >> -                     /* enable irq only if not using DMA */
> >> -                     if (!st->dma_st.dma_chan) {
> >> -                             at91_adc_writel(st, AT91_SAMA5D2_IER,
> >> -                                             BIT(chan->channel));
> >> -                     }
> >> -             } else {
> >> -                     /* disable irq only if not using DMA */
> >> -                     if (!st->dma_st.dma_chan) {
> >> -                             at91_adc_writel(st, AT91_SAMA5D2_IDR,
> >> -                                             BIT(chan->channel));
> >> -                     }
> >> +             else
> >>                        at91_adc_writel(st, AT91_SAMA5D2_CHDR,
> >>                                        BIT(chan->channel));
> >> -             }
> >>        }
> >> +     /* enable irq only if not using DMA */
> >> +     if (state && !st->dma_st.dma_chan)
> >> +             at91_adc_writel(st, AT91_SAMA5D2_IER, AT91_SAMA5D2_IER_DRDY);
> >> +     /* disable irq only if not using DMA */
> >> +     if (!state && !st->dma_st.dma_chan)
> >> +             at91_adc_writel(st, AT91_SAMA5D2_IDR, AT91_SAMA5D2_IER_DRDY);  
> > Hmm. Would have been nicer to avoid the refactor and just have the change to
> > what was written. If you want to keep it, perhaps:
> > 
> >          /* Nothing to do if using DMA */
> >          if (!st->dma_st.dma_chan)
> >                  return 0;
> > 
> >          if (state)
> >                  at91...
> >          else
> >                  at91...
> >   
> 
> Hi Jonathan,
> 
> Ok I will rework it in next version
> 
> >>
> >>        return 0;
> >>   }
> >> @@ -777,10 +790,10 @@ static int at91_adc_reenable_trigger(struct iio_trigger *trig)
> >>        if (st->dma_st.dma_chan)
> >>                return 0;
> >>
> >> -     enable_irq(st->irq);
> >> -
> >>        /* Needed to ACK the DRDY interruption */
> >>        at91_adc_readl(st, AT91_SAMA5D2_LCDR);
> >> +
> >> +     enable_irq(st->irq);  
> > 
> > Why this change?  I'm not totally following the description above.
> >   
> 
> The ' reading of the LCDR register ' makes the DRDY bit in ISR 
> (interrupt status register) to be cleared.
> So, reading that clears the IRQ, but, if we enable the IRQs before this 
> clearance, there is a race chance that we get the DRDY IRQ triggered again.
> It is best to clear the DRDY first, and then re enable the IRQs.
> 
> Does it make sense ?

Why is it an issue if dataready is triggered again?
That should only happen if there really is new data.  In that case we
want to call the interrupt handler again.

Normally hardware will only generate a new interrupt after the status
register is cleared.  If that's not the case here than the hardware is
racy whatever order we do it in.  If not, the old order is correct as
we don't want to potentially miss the interrupt.

Chances are this is a level interrupt so it won't make any difference
either way, we either trigger at or after the readl (original code)
or it's still set when we hit the enable_irq and trigger then
(with reordered code).

So unless I'm missing something, original code order was more 'standard'
but it may make not difference.

Jonathan
   
> 
> >>        return 0;
> >>   }
> >>
> >> @@ -1015,6 +1028,22 @@ static void at91_adc_trigger_handler_nodma(struct iio_dev *indio_dev,
> >>        int i = 0;
> >>        int val;
> >>        u8 bit;
> >> +     u32 mask = at91_adc_active_scan_mask_to_reg(indio_dev);
> >> +     unsigned int timeout = 50;
> >> +
> >> +     /*
> >> +      * Check if the conversion is ready. If not, wait a little bit, and
> >> +      * in case of timeout exit with an error.
> >> +      */
> >> +     while ((at91_adc_readl(st, AT91_SAMA5D2_ISR) & mask) != mask &&
> >> +            timeout) {
> >> +             usleep_range(50, 100);
> >> +             timeout--;
> >> +     }
> >> +
> >> +     /* Cannot read data, not ready. Continue without reporting data */
> >> +     if (!timeout)
> >> +             return;
> >>
> >>        for_each_set_bit(bit, indio_dev->active_scan_mask,
> >>                         indio_dev->num_channels) {
> >> @@ -1281,7 +1310,8 @@ static irqreturn_t at91_adc_interrupt(int irq, void *private)
> >>                status = at91_adc_readl(st, AT91_SAMA5D2_XPOSR);
> >>                status = at91_adc_readl(st, AT91_SAMA5D2_YPOSR);
> >>                status = at91_adc_readl(st, AT91_SAMA5D2_PRESSR);
> >> -     } else if (iio_buffer_enabled(indio) && !st->dma_st.dma_chan) {
> >> +     } else if (iio_buffer_enabled(indio) &&
> >> +                (status & AT91_SAMA5D2_IER_DRDY)) {
> >>                /* triggered buffer without DMA */
> >>                disable_irq_nosync(irq);
> >>                iio_trigger_poll(indio->trig);  
> > 
> > 
> >  



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
