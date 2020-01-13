Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14705139C14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 23:02:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ixnq7aqQ2np+3/rw2lTUHNGqMRzFuwnwahPVGkG3jxw=; b=LhCrEzolzb4o9j
	823KM7YnQGqAcOjGM88xT/LJgfJBRNPa/JsZRQaQ+x8HocIhy2qAXbhAh+4VPGACnoYvI6jktBF4X
	t/NG19GiRwMH1b2XqWcsqJwAB2wByRmkuPl9tVDviDAgBKxtefpzCHEZqg+1O9cBNYzDjm+rYiI6r
	FI5q/TOeFzcduoh3hSbsL8BvudwLbiovTpr8V0Sqg0v7UfqWcWm9xPpS6v4xR3aJ0Dv67GaEHlqEu
	awjC3KEjYXcqADf3vVxQod0DQAiOoLTRKlfxxH1kJucz8PVNQfl+LO8fTe2RbOVY3Q6ifaZFDKmDV
	vdPdgUl9jSaaLJbvgfoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir7mx-0003NH-8a; Mon, 13 Jan 2020 22:02:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir7mp-0003Mj-34
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 22:02:16 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D42022072B;
 Mon, 13 Jan 2020 22:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578952934;
 bh=OgKDay9p8f2ObZyGcicQ+gy/7tCHu46EYwzbBIFy4Bw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pHT5bBh0iez8IKcr+GlyuKn5q/SAP7pNTjWGjKMvkbXrd1UI/wSmspGEACN7yYH+I
 /1/yBtWWtpU2t/cc18f2m4bbAs+Isbe3BZKwPYV8SnxhrkdWXoRJX+Oftin0kAmLtO
 +Wkfw8ev1pXrvi9Or7YvB4Zb1BizyIiaKPqXo3EY=
Date: Mon, 13 Jan 2020 22:02:08 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Olivier MOYSAN <olivier.moysan@st.com>
Subject: Re: [PATCH v2] iio: adc: stm32-dfsdm: adapt sampling rate to
 oversampling ratio
Message-ID: <20200113220208.6471ba42@archlinux>
In-Reply-To: <9b7e2161-1a31-8d69-52f9-ae9dedc902e3@st.com>
References: <20191127131008.18896-1-olivier.moysan@st.com>
 <9b7e2161-1a31-8d69-52f9-ae9dedc902e3@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_140215_175410_11F4E7B2 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "lars@metafoo.de" <lars@metafoo.de>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "knaack.h@gmx.de" <knaack.h@gmx.de>, Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 10:06:13 +0000
Olivier MOYSAN <olivier.moysan@st.com> wrote:

> Hi Jonathan, all,
> 
> Kind reminder on this patch.
Thanks!

Applied to the togreg branch of iio.git and pushed out of testing
to give the build bots a brief period to poke at it.

Sorry again for the delay

Thanks,

Jonathan


> Regards
> Olivier
> 
> On 11/27/19 2:10 PM, Olivier Moysan wrote:
> > Update sampling rate when oversampling ratio is changed
> > through the IIO ABI.
> >
> > Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> > ---
> > changes in version 2:
> > - correct title
> > ---
> >   drivers/iio/adc/stm32-dfsdm-adc.c | 32 ++++++++++++++++++-------------
> >   1 file changed, 19 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
> > index 0339ecdd06bd..87a842507509 100644
> > --- a/drivers/iio/adc/stm32-dfsdm-adc.c
> > +++ b/drivers/iio/adc/stm32-dfsdm-adc.c
> > @@ -1221,14 +1221,32 @@ static int stm32_dfsdm_write_raw(struct iio_dev *indio_dev,
> >   	unsigned int spi_freq;
> >   	int ret = -EINVAL;
> >   
> > +	switch (ch->src) {
> > +	case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL:
> > +		spi_freq = adc->dfsdm->spi_master_freq;
> > +		break;
> > +	case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL_DIV2_FALLING:
> > +	case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL_DIV2_RISING:
> > +		spi_freq = adc->dfsdm->spi_master_freq / 2;
> > +		break;
> > +	default:
> > +		spi_freq = adc->spi_freq;
> > +	}
> > +
> >   	switch (mask) {
> >   	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
> >   		ret = iio_device_claim_direct_mode(indio_dev);
> >   		if (ret)
> >   			return ret;
> > +
> >   		ret = stm32_dfsdm_compute_all_osrs(indio_dev, val);
> > -		if (!ret)
> > +		if (!ret) {
> > +			dev_dbg(&indio_dev->dev,
> > +				"Sampling rate changed from (%u) to (%u)\n",
> > +				adc->sample_freq, spi_freq / val);
> >   			adc->oversamp = val;
> > +			adc->sample_freq = spi_freq / val;
> > +		}
> >   		iio_device_release_direct_mode(indio_dev);
> >   		return ret;
> >   
> > @@ -1240,18 +1258,6 @@ static int stm32_dfsdm_write_raw(struct iio_dev *indio_dev,
> >   		if (ret)
> >   			return ret;
> >   
> > -		switch (ch->src) {
> > -		case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL:
> > -			spi_freq = adc->dfsdm->spi_master_freq;
> > -			break;
> > -		case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL_DIV2_FALLING:
> > -		case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL_DIV2_RISING:
> > -			spi_freq = adc->dfsdm->spi_master_freq / 2;
> > -			break;
> > -		default:
> > -			spi_freq = adc->spi_freq;
> > -		}
> > -
> >   		ret = dfsdm_adc_set_samp_freq(indio_dev, val, spi_freq);
> >   		iio_device_release_direct_mode(indio_dev);
> >   		return ret;  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
