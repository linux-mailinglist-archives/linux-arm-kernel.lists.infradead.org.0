Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B82C202545
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 18:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dl/w+dDCgEXTLrVLBA6sizG96CNvAvdoISjFMvBWRBg=; b=ovcx3hTldmpgID
	W8L+fUSDLNGnnMsVbDioOwxHCnaJdFpbiJOvOG/BNCbKuMRHZhnM1ZUUmyOavSqbMwfPrJCB8iAMT
	V7Szn/mPIkfufG0X+DURPhI+imeXebiSDKaF8NqjUYHdfi1Uh7mhB7Mo/e0C4/s5801d0ZEsK0t7o
	CWTkMC2pqAXx57b5A+zUSvkn2d8tl6HnARFyuPQyFaoORan6W9Mkvq2As1v4Zpw7lMh5/+tLdImsZ
	KYj94mbJznMam3NThZyAQxK6Q8gbXAcvxePc3Rm2/3GVzha+y3RUfhnb1DTriszRAJnWEU/Dl8+US
	MRL1/jbMkdATOUpx1xEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmgLq-0002Bx-2l; Sat, 20 Jun 2020 16:28:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmgLg-0002BZ-Oo
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 16:28:10 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C95123ECE;
 Sat, 20 Jun 2020 16:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592670488;
 bh=yFk/7+rPK7MOqWnuonpQQMycM7+nxJOyOSJPaBANaGM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=AfgPaqgmEq94lRamYUO8hAwdClsaJ7cCGp4mHebkROgiRcDVQ5Xe7RjavQipPVq6R
 5W0QTNoyWXOfrzbB7gzaaHoBHn9qjFNNqmar8nqGvw8rqdpcOmViJJTZSQ0VdLugcA
 /oOd9zXrhvM4KhOPUV3Rw9Kwjky+E8fQdkzgFACk=
Date: Sat, 20 Jun 2020 17:28:04 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
Subject: Re: [PATCH] iio: at91_adc: remove usage of iio_priv_to_dev() helper
Message-ID: <20200620172804.3e28e257@archlinux>
In-Reply-To: <4b07863e8312e2abd0169a456f230a025621419c.camel@analog.com>
References: <20200525102513.130664-1-alexandru.ardelean@analog.com>
 <20200531154216.361285c6@archlinux>
 <4b07863e8312e2abd0169a456f230a025621419c.camel@analog.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_092808_848187_F43B802C 
X-CRM114-Status: GOOD (  26.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 19 Jun 2020 08:02:55 +0000
"Ardelean, Alexandru" <alexandru.Ardelean@analog.com> wrote:

> On Sun, 2020-05-31 at 15:42 +0100, Jonathan Cameron wrote:
> > [External]
> > 
> > On Mon, 25 May 2020 13:25:13 +0300
> > Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
> >   
> > > We may want to get rid of the iio_priv_to_dev() helper. The reason is
> > > that
> > > we will hide some of the members of the iio_dev structure (to prevent
> > > drivers from accessing them directly), and that will also mean hiding
> > > the
> > > implementation of the iio_priv_to_dev() helper inside the IIO core.
> > > 
> > > Hiding the implementation of iio_priv_to_dev() implies that some fast-
> > > paths
> > > may not be fast anymore, so a general idea is to try to get rid of the
> > > iio_priv_to_dev() altogether.
> > > The iio_priv() helper won't be affected by the rework, as the iio_dev
> > > struct will keep a reference to the private information.
> > > 
> > > For this driver, not using iio_priv_to_dev(), means reworking some
> > > paths to
> > > pass the iio device and using iio_priv() to access the private
> > > information.
> > > 
> > > Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>  
> > Looks good to me.  Will leave it a bit longer though to potentially
> > get some people more familiar with the driver to sanity check it.
> > 
> > Poke me after the usual couple of weeks if I seem to have lost it
> > down the back of the sofa.
> >   
> 
> ping on this

Applied to the togreg branch of iio.git and pushed out as testing for
the autobuilders to play with it

Thanks,

J
> 
> > Thanks,
> > 
> > Jonathan
> >   
> > > ---
> > >  drivers/iio/adc/at91_adc.c | 30 +++++++++++++++---------------
> > >  1 file changed, 15 insertions(+), 15 deletions(-)
> > > 
> > > diff --git a/drivers/iio/adc/at91_adc.c b/drivers/iio/adc/at91_adc.c
> > > index 0368b6dc6d60..896af58e88bc 100644
> > > --- a/drivers/iio/adc/at91_adc.c
> > > +++ b/drivers/iio/adc/at91_adc.c
> > > @@ -287,13 +287,13 @@ static void handle_adc_eoc_trigger(int irq,
> > > struct iio_dev *idev)
> > >  	}
> > >  }
> > >  
> > > -static int at91_ts_sample(struct at91_adc_state *st)
> > > +static int at91_ts_sample(struct iio_dev *idev)
> > >  {
> > > +	struct at91_adc_state *st = iio_priv(idev);
> > >  	unsigned int xscale, yscale, reg, z1, z2;
> > >  	unsigned int x, y, pres, xpos, ypos;
> > >  	unsigned int rxp = 1;
> > >  	unsigned int factor = 1000;
> > > -	struct iio_dev *idev = iio_priv_to_dev(st);
> > >  
> > >  	unsigned int xyz_mask_bits = st->res;
> > >  	unsigned int xyz_mask = (1 << xyz_mask_bits) - 1;
> > > @@ -449,7 +449,7 @@ static irqreturn_t at91_adc_9x5_interrupt(int irq,
> > > void *private)
> > >  
> > >  		if (status & AT91_ADC_ISR_PENS) {
> > >  			/* validate data by pen contact */
> > > -			at91_ts_sample(st);
> > > +			at91_ts_sample(idev);
> > >  		} else {
> > >  			/* triggered by event that is no pen contact, just
> > > read
> > >  			 * them to clean the interrupt and discard all.
> > > @@ -737,10 +737,10 @@ static int at91_adc_read_raw(struct iio_dev
> > > *idev,
> > >  	return -EINVAL;
> > >  }
> > >  
> > > -static int at91_adc_of_get_resolution(struct at91_adc_state *st,
> > > +static int at91_adc_of_get_resolution(struct iio_dev *idev,
> > >  				      struct platform_device *pdev)
> > >  {
> > > -	struct iio_dev *idev = iio_priv_to_dev(st);
> > > +	struct at91_adc_state *st = iio_priv(idev);
> > >  	struct device_node *np = pdev->dev.of_node;
> > >  	int count, i, ret = 0;
> > >  	char *res_name, *s;
> > > @@ -866,10 +866,10 @@ static int at91_adc_probe_dt_ts(struct
> > > device_node *node,
> > >  	}
> > >  }
> > >  
> > > -static int at91_adc_probe_dt(struct at91_adc_state *st,
> > > +static int at91_adc_probe_dt(struct iio_dev *idev,
> > >  			     struct platform_device *pdev)
> > >  {
> > > -	struct iio_dev *idev = iio_priv_to_dev(st);
> > > +	struct at91_adc_state *st = iio_priv(idev);
> > >  	struct device_node *node = pdev->dev.of_node;
> > >  	struct device_node *trig_node;
> > >  	int i = 0, ret;
> > > @@ -910,7 +910,7 @@ static int at91_adc_probe_dt(struct at91_adc_state
> > > *st,
> > >  	}
> > >  	st->vref_mv = prop;
> > >  
> > > -	ret = at91_adc_of_get_resolution(st, pdev);
> > > +	ret = at91_adc_of_get_resolution(idev, pdev);
> > >  	if (ret)
> > >  		goto error_ret;
> > >  
> > > @@ -1010,9 +1010,9 @@ static void atmel_ts_close(struct input_dev *dev)
> > >  		at91_adc_writel(st, AT91_ADC_IDR, AT91RL_ADC_IER_PEN);
> > >  }
> > >  
> > > -static int at91_ts_hw_init(struct at91_adc_state *st, u32 adc_clk_khz)
> > > +static int at91_ts_hw_init(struct iio_dev *idev, u32 adc_clk_khz)
> > >  {
> > > -	struct iio_dev *idev = iio_priv_to_dev(st);
> > > +	struct at91_adc_state *st = iio_priv(idev);
> > >  	u32 reg = 0;
> > >  	u32 tssctim = 0;
> > >  	int i = 0;
> > > @@ -1085,11 +1085,11 @@ static int at91_ts_hw_init(struct
> > > at91_adc_state *st, u32 adc_clk_khz)
> > >  	return 0;
> > >  }
> > >  
> > > -static int at91_ts_register(struct at91_adc_state *st,
> > > +static int at91_ts_register(struct iio_dev *idev,
> > >  		struct platform_device *pdev)
> > >  {
> > > +	struct at91_adc_state *st = iio_priv(idev);
> > >  	struct input_dev *input;
> > > -	struct iio_dev *idev = iio_priv_to_dev(st);
> > >  	int ret;
> > >  
> > >  	input = input_allocate_device();
> > > @@ -1161,7 +1161,7 @@ static int at91_adc_probe(struct platform_device
> > > *pdev)
> > >  	st = iio_priv(idev);
> > >  
> > >  	if (pdev->dev.of_node)
> > > -		ret = at91_adc_probe_dt(st, pdev);
> > > +		ret = at91_adc_probe_dt(idev, pdev);
> > >  	else
> > >  		ret = at91_adc_probe_pdata(st, pdev);
> > >  
> > > @@ -1301,11 +1301,11 @@ static int at91_adc_probe(struct
> > > platform_device *pdev)
> > >  			goto error_disable_adc_clk;
> > >  		}
> > >  	} else {
> > > -		ret = at91_ts_register(st, pdev);
> > > +		ret = at91_ts_register(idev, pdev);
> > >  		if (ret)
> > >  			goto error_disable_adc_clk;
> > >  
> > > -		at91_ts_hw_init(st, adc_clk_khz);
> > > +		at91_ts_hw_init(idev, adc_clk_khz);
> > >  	}
> > >  
> > >  	ret = iio_device_register(idev);  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
