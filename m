Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEE91D62E8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 19:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjB4zYgcMOrIAwG7TvSk2qi10eJgDlRkzTmRlVqXGQM=; b=J0b0UK1ji1Ga6q
	2ZXzpNL4Fb0xfFxffMemMQpZY2FEOrHzaJ/hsohj1K87IZd4j96opwIhAKqg0fY7w7L7iEmwyBlzK
	+zN6e7VzYH3CL52J0w7evA5u0Bip5TDu7uARPGxsTPkjEF+5XT4mRVdcl9Q2f/hlHg/FiBDhjIwBQ
	+P/PZbabZT6NSLvehsN1lnKjTpukbbXbsmpVuRQdNLxi3EjPO3gPGSp0Mqt3IsepbjpuC96ecM/B8
	1Fl3kGC2UpBiRkjQR9JOlQjM0oDr4jstakb9StDPJ82b/PvqH4uGj1yMcWOHQahh5Ta/6Yy8SqggB
	ipNTxbcZn1F+ci+ehLYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja0Mr-0000kv-GQ; Sat, 16 May 2020 17:12:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja0Mj-0000kX-UV
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 17:12:51 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D9E8206D8;
 Sat, 16 May 2020 17:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589649169;
 bh=6IJY4KxDuWPHH1o658HGioayIj3kO/S0obPuk7kZ6mU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=STLdi0QoDx5qKD4mjTSUI0w8gqa09q+XkcRAlqIajis1bhP/yjdMgL5GfnID13mXG
 BBjJ6101DlofeKYd3TIyMzLQ01BPWN7aQMhu+bjpzro1KL4aeQkp2r2kKlv2GmQ4/V
 0OnH77GGibp4wG/Bpvc9DiX+lQeesvHCgsq6wqxU=
Date: Sat, 16 May 2020 18:12:44 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [PATCH v2 1/8] iio: proximity: ping: pass reference to IIO
 device via call-stack
Message-ID: <20200516181244.4d22c60b@archlinux>
In-Reply-To: <20200514131710.84201-2-alexandru.ardelean@analog.com>
References: <20200514131710.84201-1-alexandru.ardelean@analog.com>
 <20200514131710.84201-2-alexandru.ardelean@analog.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_101250_002815_7F297CE6 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.belloni@bootlin.com, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, ak@it-klinger.de, mcoquelin.stm32@gmail.com,
 eugen.hristev@microchip.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 16:17:03 +0300
Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:

> Since there will be some changes to how iio_priv_to_dev() is implemented,
> it could be that the helper becomes a bit slower, as it will be hidden away
> in the IIO core.
> 
> For this driver, the IIO device can be passed directly as a parameter to
> the ping_read() function, thus making it immune to the change of
> iio_priv_to_dev().
> 
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>

Patch makes sense and I should have spotted this one during original
review :( Going backwards and forwards is never a good idea even without
the rework you have.

But... (you knew that was coming :), there is no need to pass
data to the the read function.  It is the structure returned by
iio_priv() and not used anywhere else in the read_raw callback.
So might as well just pass the iio_dev and get the data structure
with in the read function via iio_priv(indio_dev)

Thanks,

J

> ---
>  drivers/iio/proximity/ping.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/proximity/ping.c b/drivers/iio/proximity/ping.c
> index 12b893c5b0ee..ddc43a5a2ef8 100644
> --- a/drivers/iio/proximity/ping.c
> +++ b/drivers/iio/proximity/ping.c
> @@ -89,14 +89,13 @@ static irqreturn_t ping_handle_irq(int irq, void *dev_id)
>  	return IRQ_HANDLED;
>  }
>  
> -static int ping_read(struct ping_data *data)
> +static int ping_read(struct iio_dev *indio_dev, struct ping_data *data)
>  {
>  	int ret;
>  	ktime_t ktime_dt;
>  	s64 dt_ns;
>  	u32 time_ns, distance_mm;
>  	struct platform_device *pdev = to_platform_device(data->dev);
> -	struct iio_dev *indio_dev = iio_priv_to_dev(data);
>  
>  	/*
>  	 * just one read-echo-cycle can take place at a time
> @@ -236,7 +235,7 @@ static int ping_read_raw(struct iio_dev *indio_dev,
>  
>  	switch (info) {
>  	case IIO_CHAN_INFO_RAW:
> -		ret = ping_read(data);
> +		ret = ping_read(indio_dev, data);
>  		if (ret < 0)
>  			return ret;
>  		*val = ret;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
