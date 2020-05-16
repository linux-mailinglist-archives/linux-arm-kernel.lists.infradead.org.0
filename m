Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEF21D621A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 17:35:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LCHjTdj92STnFilNsYufNe+/7rAihJk6PeSOxMGJYPM=; b=fI8wDBXvnzQBwV
	EDUmDd6qZt2nuCrbghSVHbR6ZoyTIh1JbuYKNukcE8sOFlYqJC+WvQIWqaj4rm8zqvuWjSUOhq8bX
	NB4UuWGYRZuUHsQ20t3hTsorDRibH7dEsbpUlkVp/UAbQL2RLaM6JMjVeaQclVoiE+lGD7ewywMgI
	wf41IKtf79y8wI0+iz2ZCJxIdq9xTbzKOqPTnkeYj8ULGVOVPe6J9YMjqH7J3qltze5GAKMaTa1tI
	TeqaFPuFVJp/GA1SSeaMarWkkfk/M8909z+02+O0Tk0ThGJGsfEXdVzN/STqQabwUyMj3iG7IltER
	BOGA53savyl7WP+o0DoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZyqt-0007fj-5M; Sat, 16 May 2020 15:35:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZyqU-0007WJ-UY
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 15:35:28 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3DE4720727;
 Sat, 16 May 2020 15:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589643326;
 bh=6bIdM83OAz8NTK5LfuYkYjYz/+gMNTHlGbMRn7g3eRA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=b4273gexRENjUClnSjPWBqppBfsxCPCulwXSSMnKmtQkW2MzB/1hej7sgTuuHA8M4
 CmO7PmyAlU/3gX5mX2zuFSuVCQ6W0S4XZnhrLtaL0TAmHvKPfY8ew93CtkLKczWPRC
 xHYCcily2ddVLnRI0BJ88lzvL1gYXZ9Q3vp1ttjE=
Date: Sat, 16 May 2020 16:35:21 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
Subject: Re: [PATCH] iio: stm32-dac: Replace indio_dev->mlock with own
 device lock
Message-ID: <20200516163521.2812cf86@archlinux>
In-Reply-To: <20200514085018.79948-1-sergiu.cuciurean@analog.com>
References: <20200514085018.79948-1-sergiu.cuciurean@analog.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_083527_076724_1BBB0318 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Hartmut Knaack <knaack.h@gmx.de>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 11:50:12 +0300
Sergiu Cuciurean <sergiu.cuciurean@analog.com> wrote:

> As part of the general cleanup of indio_dev->mlock, this change replaces
> it with a local lock on the device's state structure.
> 
> Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> ---
>  drivers/iio/dac/stm32-dac.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iio/dac/stm32-dac.c b/drivers/iio/dac/stm32-dac.c
> index f22c1d9129b2..74b9474c8590 100644
> --- a/drivers/iio/dac/stm32-dac.c
> +++ b/drivers/iio/dac/stm32-dac.c
> @@ -26,9 +26,11 @@
>  /**
>   * struct stm32_dac - private data of DAC driver
>   * @common:		reference to DAC common data
> + * @lock: lock to protect the data buffer during regmap ops

In this particular case I'm not sure that's what mlock was being used for.
I think it's about avoiding races around checking if powered down and
actually doing it.


>   */
>  struct stm32_dac {
>  	struct stm32_dac_common *common;
> +	struct mutex		lock;
>  };
>  
>  static int stm32_dac_is_enabled(struct iio_dev *indio_dev, int channel)
> @@ -58,10 +60,10 @@ static int stm32_dac_set_enable_state(struct iio_dev *indio_dev, int ch,
>  	int ret;
>  
>  	/* already enabled / disabled ? */
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&dac->lock);
>  	ret = stm32_dac_is_enabled(indio_dev, ch);
>  	if (ret < 0 || enable == !!ret) {
> -		mutex_unlock(&indio_dev->mlock);
> +		mutex_unlock(&dac->lock);
>  		return ret < 0 ? ret : 0;
>  	}
>  
> @@ -69,13 +71,13 @@ static int stm32_dac_set_enable_state(struct iio_dev *indio_dev, int ch,
>  		ret = pm_runtime_get_sync(dev);
>  		if (ret < 0) {
>  			pm_runtime_put_noidle(dev);
> -			mutex_unlock(&indio_dev->mlock);
> +			mutex_unlock(&dac->lock);
>  			return ret;
>  		}
>  	}
>  
>  	ret = regmap_update_bits(dac->common->regmap, STM32_DAC_CR, msk, en);
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&dac->lock);
>  	if (ret < 0) {
>  		dev_err(&indio_dev->dev, "%s failed\n", en ?
>  			"Enable" : "Disable");
> @@ -328,6 +330,8 @@ static int stm32_dac_probe(struct platform_device *pdev)
>  	indio_dev->info = &stm32_dac_iio_info;
>  	indio_dev->modes = INDIO_DIRECT_MODE;
>  
> +	mutex_init(&dac->lock);
> +
>  	ret = stm32_dac_chan_of_init(indio_dev);
>  	if (ret < 0)
>  		return ret;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
