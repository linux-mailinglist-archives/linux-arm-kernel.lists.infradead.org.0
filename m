Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C954F150DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 18:03:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Y0ncntvjRU7IcyM2YfqAk/c8niNYAERUmVLccXO3kE=; b=cXNpky5BYfhSBV
	EFHYlEm/Dwor5UiMhiMw2Rfj8eS9MZ3dGDper/hB+n40VkVdljZxVk9Ih3mwPvkhdeZdR+qRi+pnQ
	cJQueJAn/bskyWTBPqjkgoE1tExdS/g1O3sjg90lNHzX8q9TpML9OEheOw2CedlNIwEeNzxcsmLR1
	iyI3wruvH9rr/e9muIUcFhn4NrA/vbQ7hm6umPy34P6WWzzxqtYiv3DUg3XrpLxlL5fOLIIdOKrtx
	zGvovlhwpB7XzvTJrMPgELDFZpcFy5FHyWiadWYs2FF85KoOxGXHNLRzFTwbSspc9T64LO3RUgSbN
	FlXOzMKyR7SScpUGV7Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNg4w-0003g7-6W; Mon, 06 May 2019 16:02:58 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNg4n-0003fP-CW
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 16:02:51 +0000
Received: by mail-pg1-x541.google.com with SMTP id 85so6673144pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 09:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=h65MRHziS/XlCWzkTo39Affot/MxBBxZ2XDqR6AxO+k=;
 b=T2uzTZYHpOy4PG50ZS7kPplrZmFrxlPpPjn/ROJsOlfzqJ2yB+OpnPQ3f+QwwEMs1d
 2XjnstY7q9UOyC8dekFPY1YWSkRa+y2hpm40p1z8FL4gOgh0sgQWMNlXrK/qHOHJlGXh
 bPnrHchFQHD6WTeCZU3UZUKQqo5SO6Iy5YNtmeL601IurzdsL/jCIKICFaSGWU3kOLZ/
 A0MlkE9UTOCbREzqKh6I6gfztCzSkVzr6DqjAn/eH/c0E+8BPzO8b0f3eiIMPYu1QpbR
 UVfQeIuGAxZov3Jazo2/pKVt12GzU8mTJQ/HsHNdtXC4W5UQ+EMzQrVuWWCQeuA4EX3d
 AbXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=h65MRHziS/XlCWzkTo39Affot/MxBBxZ2XDqR6AxO+k=;
 b=lJM39WjFXRwk/+RPpwJXjRutOT3Jv8K4U2g8fBvHvWLqCqjABcmBeks5/QkF2+rkpS
 CAz2PakHDrVpvdLyBHUoalohTulsyvjVNmQkyr2lSzZe9Ltp3DHT+bCDvpvn1D/MXWdJ
 3n/mRMKFkQ0an4WbJTtszRq5ZpFjPq+HBwsNt9YdooLubfuD+zn9ETvBc7oqVshBNU0q
 4XrtsmuIQa8G9hxKJT46uobVoq+S3l0IS3dGdulas7NdyL3T2nvX2yFHr8kNMRsD2gx0
 CWAs2/qFvlfr2ZN8PuzvSGfh5R4c6SSUbYD7HGYqfshdkueJMwqLWVcl5MReJCc6Z92r
 vGgA==
X-Gm-Message-State: APjAAAXOxOFL1AblU41m51RjN8eiLywE0gSm/QnLvL6Wj3RAjnquweKo
 daNepPLG8rUxaBiXsO5m+A0=
X-Google-Smtp-Source: APXvYqxivXnK448bMAew0yXX3RSNOeE2Ns7z5/ZQ/JaTWPkpJWQ4CnT1HrnEg2Aw6Ar/nsLt7sqegw==
X-Received: by 2002:aa7:8e55:: with SMTP id d21mr34046155pfr.62.1557158568291; 
 Mon, 06 May 2019 09:02:48 -0700 (PDT)
Received: from pc ([219.91.191.230])
 by smtp.gmail.com with ESMTPSA id h127sm14343108pgc.31.2019.05.06.09.02.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 09:02:47 -0700 (PDT)
Date: Mon, 6 May 2019 21:32:40 +0530
From: Raag Jadav <raagjadav@gmail.com>
To: Eugen.Hristev@microchip.com, ludovic.desroches@microchip.com
Subject: Re: [PATCH] i2c: at91: handle TXRDY interrupt spam
Message-ID: <20190506160240.GA3156@pc>
References: <1556005008-6318-1-git-send-email-raagjadav@gmail.com>
 <20190429090005.f6ydghzu5n5yruav@M43218.corp.atmel.com>
 <20190429223332.GA3908@pc>
 <20190502140116.rim72idpgvq4h4vc@M43218.corp.atmel.com>
 <20190503235851.GA4242@pc>
 <408ff580-3633-f510-4223-50064f93024a@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <408ff580-3633-f510-4223-50064f93024a@microchip.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_090249_425518_9A516009 
X-CRM114-Status: GOOD (  38.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (raagjadav[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 08:19:01AM +0000, Eugen.Hristev@microchip.com wrote:
> 
> 
> On 04.05.2019 02:58, Raag Jadav wrote:
> 
> > On Thu, May 02, 2019 at 04:01:16PM +0200, Ludovic Desroches wrote:
> >> On Tue, Apr 30, 2019 at 04:03:32AM +0530, Raag Jadav wrote:
> >>> External E-Mail
> >>>
> >>>
> >>> On Mon, Apr 29, 2019 at 11:00:05AM +0200, Ludovic Desroches wrote:
> >>>> Hello Raag,
> >>>>
> >>>> On Tue, Apr 23, 2019 at 01:06:48PM +0530, Raag Jadav wrote:
> >>>>> External E-Mail
> >>>>>
> >>>>>
> >>>>> Performing i2c write operation while SDA or SCL line is held
> >>>>> or grounded by slave device, we go into infinite at91_twi_write_next_byte
> >>>>> loop with TXRDY interrupt spam.
> >>>>
> >>>> Sorry but I am not sure to have the full picture, the controller is in
> >>>> slave or master mode?
> >>>>
> >>>> SVREAD is only used in slave mode. When SVREAD is set, it means that a read
> >>>> access is performed and your issue concerns the write operation.
> >>>>
> >>>> Regards
> >>>>
> >>>> Ludovic
> >>>
> >>> Yes, even though the datasheet suggests that SVREAD is irrelevant in master mode,
> >>> TXRDY and SVREAD are the only ones being set in status register upon reproducing the issue.
> >>> Couldn't think of a better way to handle such strange behaviour.
> >>> Any suggestions would be appreciated.
> >>
> >> I have the confirmation that you can't rely on the SVREAD flag when in
> >> master mode. This flag should always have the same value.
> >>
> >> I am trying to understand what could lead to your situation. Can you
> >> give me more details. What kind of device it is? What does lead to this
> >> situation? Does it happen randomly or not?
> > 
> > One of the sama5d2 based board I worked on, was having trouble complete its boot
> > because of a faulty i2c device, which was randomly holding down the SDA line
> > on i2c write operation, not allowing the controller to complete its transmission,
> > causing a massive TXRDY interrupt spam, ultimately hanging the processor.
> > 
> > Another strange observation was that SVREAD was being set in the status register
> > along with TXRDY, every time I reproduced the issue.
> > You can reproduce it by simply grounding the SDA line and performing i2c write
> > on the bus.
> > 
> > Note that NACK, LOCK or TXCOMP are never set as the transmission never completes.
> > I'm not sure why slave bits are being set in master mode,
> > but it's been working reliably for me.
> > 
> > This patch doesn't recover the SDA line. It just prevents the processor from
> > getting hanged in case of i2c bus lockup.
> 
> Hello,
> 
> I have noticed the same hanging at some points... In my case it is 
> because of this patch:
> 
> commit e8f39e9fc0e0b7bce24922da925af820bacb8ef8
> Author: David Engraf <david.engraf@sysgo.com>
> Date:   Thu Apr 26 11:53:14 2018 +0200
> 
> 
> diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
> index bfd1fdf..3f3e8b3 100644
> --- a/drivers/i2c/busses/i2c-at91.c
> +++ b/drivers/i2c/busses/i2c-at91.c
> @@ -518,8 +518,16 @@ static irqreturn_t atmel_twi_interrupt(int irq, 
> void *dev_id)
>           * the RXRDY interrupt first in order to not keep garbage data 
> in the
>           * Receive Holding Register for the next transfer.
>           */
> -       if (irqstatus & AT91_TWI_RXRDY)
> -               at91_twi_read_next_byte(dev);
> +       if (irqstatus & AT91_TWI_RXRDY) {
> +               /*
> +                * Read all available bytes at once by polling RXRDY 
> usable w/
> +                * and w/o FIFO. With FIFO enabled we could also read 
> RXFL and
> +                * avoid polling RXRDY.
> +                */
> +               do {
> +                       at91_twi_read_next_byte(dev);
> +               } while (at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_RXRDY);
> +       }
> 
> 
> In my opinion having a do/while with an exit condition relying solely on 
> a bit read from hardware is unacceptable in IRQ context - kernel can 
> hang here.
> A timeout would be a solution...
> 
> For me, reverting this patch solves hanging issues.
> 
> Hope this helps,
> 
> Eugen

Thank you for your input, but my issue concerns i2c write operation.
I haven't noticed any issue with i2c read yet.
But given the same scenario, it could be true for RXRDY as well.

Cheers,
Raag

> 
> > 
> > Cheers,
> > Raag
> > 
> >>
> >> Regards
> >>
> >> Ludovic
> >>
> >>>
> >>> Cheers,
> >>> Raag
> >>>
> >>>>
> >>>>>
> >>>>> Signed-off-by: Raag Jadav <raagjadav@gmail.com>
> >>>>> ---
> >>>>>   drivers/i2c/busses/i2c-at91.c | 6 +++++-
> >>>>>   1 file changed, 5 insertions(+), 1 deletion(-)
> >>>>>
> >>>>> diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
> >>>>> index 3f3e8b3..b2f5fdb 100644
> >>>>> --- a/drivers/i2c/busses/i2c-at91.c
> >>>>> +++ b/drivers/i2c/busses/i2c-at91.c
> >>>>> @@ -72,6 +72,7 @@
> >>>>>   #define	AT91_TWI_TXCOMP		BIT(0)	/* Transmission Complete */
> >>>>>   #define	AT91_TWI_RXRDY		BIT(1)	/* Receive Holding Register Ready */
> >>>>>   #define	AT91_TWI_TXRDY		BIT(2)	/* Transmit Holding Register Ready */
> >>>>> +#define	AT91_TWI_SVREAD		BIT(3)	/* Slave Read */
> >>>>>   #define	AT91_TWI_OVRE		BIT(6)	/* Overrun Error */
> >>>>>   #define	AT91_TWI_UNRE		BIT(7)	/* Underrun Error */
> >>>>>   #define	AT91_TWI_NACK		BIT(8)	/* Not Acknowledged */
> >>>>> @@ -571,7 +572,10 @@ static irqreturn_t atmel_twi_interrupt(int irq, void *dev_id)
> >>>>>   		at91_disable_twi_interrupts(dev);
> >>>>>   		complete(&dev->cmd_complete);
> >>>>>   	} else if (irqstatus & AT91_TWI_TXRDY) {
> >>>>> -		at91_twi_write_next_byte(dev);
> >>>>> +		if ((status & AT91_TWI_SVREAD) && (dev->buf_len == 0))
> >>>>> +			at91_twi_write(dev, AT91_TWI_IDR, AT91_TWI_TXRDY);
> >>>>> +		else
> >>>>> +			at91_twi_write_next_byte(dev);
> >>>>>   	}
> >>>>>   
> >>>>>   	/* catch error flags */
> >>>>> -- 
> >>>>> 2.7.4
> >>>>>
> >>>>>
> >>>
> >>> _______________________________________________
> >>> linux-arm-kernel mailing list
> >>> linux-arm-kernel@lists.infradead.org
> >>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >>>
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > 
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
