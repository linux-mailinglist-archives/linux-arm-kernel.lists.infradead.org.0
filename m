Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE892233B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 12:34:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1vjwo93Pp4nSV+KiojD4LRrvMLk6XP0s8ZOJAKHQWM=; b=eP2R1XhAtwLJtt
	nHet2ddMVHZAhjHc/zPoHkk2DlL7peGIPthUmlKZbVJb0Ddz853exRvZPRr+cMLDKoNC8SxQvpoBi
	qHWD7SbOd5BDqEcdwfpB1vldLd8aVWvfR2kvyZcC6orSYFg1pwfLL/XCHNroe00ooH3vrGn1wfDE2
	opr06i4UsH7hPWIhE1qa0VsvvQKH3OkK0+vx2VP3QkLoBko3l8ZdcMSCGqp1YMODIpje7LMuD62RB
	XxW9PZGXaS0qohOTK8lnn0gIEc8dTXWrL0KZx0uGt0T+qy/Y5xPBDZivejdxkFsQfLQ3Sq8mlYp0N
	Ce2fOIdVHYlzktWdQCxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRwfF-0000ET-Nr; Sat, 18 May 2019 10:34:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRwf8-0000E2-Jm; Sat, 18 May 2019 10:34:00 +0000
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8317C2087E;
 Sat, 18 May 2019 10:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558175635;
 bh=lyxZ2oAa3nSh2jH4FzM6/fqpfbA1xb/Q3QFlyxQaA7Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JG5SW2dvsxct3gLLqXmySEq60SKoEsCtIPeqqqM81XYl23VEimz4AzbQIRAW7qU62
 YPFIYlKSbHtCVVzsjk/BG7dOnd2M67zd8URJa4E7zu3Px5gtQH0PbikZAcV+EGGqFF
 X9LRSDcR5gN0m0F1gvPSweUB1ftGMynLqonM9UQM=
Date: Sat, 18 May 2019 11:33:49 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chun-Hung Wu <chun-hung.wu@mediatek.com>
Subject: Re: [PATCH 2/4] iio: adc: mediatek: mt6765 upstream driver
Message-ID: <20190518113349.2858f5ac@archlinux>
In-Reply-To: <1557994247-16739-3-git-send-email-chun-hung.wu@mediatek.com>
References: <1557994247-16739-1-git-send-email-chun-hung.wu@mediatek.com>
 <1557994247-16739-3-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_033358_686801_C40C2EEE 
X-CRM114-Status: GOOD (  20.11  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>, wsd_upstream@mediatek.com,
 linux-iio@vger.kernel.org, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, jg_poxu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 May 2019 16:10:45 +0800
Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:

Hi, 

I changed the title to just say we were adding support to
the existing driver.

Applied to the togreg branch of iio.git and pushed out as
testing for the autobuilders to play with it.

Thanks,

Jonathan



> 1. Add calibrated sample data support
> 2. Use of_match_table to decide each platform's
>    feature set
> 
> Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> ---
>  drivers/iio/adc/mt6577_auxadc.c | 54 +++++++++++++++++++++++++++++++----------
>  1 file changed, 41 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/iio/adc/mt6577_auxadc.c b/drivers/iio/adc/mt6577_auxadc.c
> index 95d76ab..e1bdcc0 100644
> --- a/drivers/iio/adc/mt6577_auxadc.c
> +++ b/drivers/iio/adc/mt6577_auxadc.c
> @@ -42,10 +42,26 @@
>  #define MT6577_AUXADC_POWER_READY_MS          1
>  #define MT6577_AUXADC_SAMPLE_READY_US         25
>  
> +struct mtk_auxadc_compatible {
> +	bool sample_data_cali;
> +	bool check_global_idle;
> +};
> +
>  struct mt6577_auxadc_device {
>  	void __iomem *reg_base;
>  	struct clk *adc_clk;
>  	struct mutex lock;
> +	const struct mtk_auxadc_compatible *dev_comp;
> +};
> +
> +static const struct mtk_auxadc_compatible mt8173_compat = {
> +	.sample_data_cali = false,
> +	.check_global_idle = true,
> +};
> +
> +static const struct mtk_auxadc_compatible mt6765_compat = {
> +	.sample_data_cali = true,
> +	.check_global_idle = false,
>  };
>  
>  #define MT6577_AUXADC_CHANNEL(idx) {				    \
> @@ -74,6 +90,11 @@ struct mt6577_auxadc_device {
>  	MT6577_AUXADC_CHANNEL(15),
>  };
>  
> +static int mt_auxadc_get_cali_data(int rawdata, bool enable_cali)
> +{
> +	return rawdata;
> +}
> +
>  static inline void mt6577_auxadc_mod_reg(void __iomem *reg,
>  					 u32 or_mask, u32 and_mask)
>  {
> @@ -120,15 +141,17 @@ static int mt6577_auxadc_read(struct iio_dev *indio_dev,
>  	/* we must delay here for hardware sample channel data */
>  	udelay(MT6577_AUXADC_SAMPLE_READY_US);
>  
> -	/* check MTK_AUXADC_CON2 if auxadc is idle */
> -	ret = readl_poll_timeout(adc_dev->reg_base + MT6577_AUXADC_CON2, val,
> -				 ((val & MT6577_AUXADC_STA) == 0),
> -				 MT6577_AUXADC_SLEEP_US,
> -				 MT6577_AUXADC_TIMEOUT_US);
> -	if (ret < 0) {
> -		dev_err(indio_dev->dev.parent,
> -			"wait for auxadc idle time out\n");
> -		goto err_timeout;
> +	if (adc_dev->dev_comp->check_global_idle) {
> +		/* check MTK_AUXADC_CON2 if auxadc is idle */
> +		ret = readl_poll_timeout(adc_dev->reg_base + MT6577_AUXADC_CON2,
> +					 val, ((val & MT6577_AUXADC_STA) == 0),
> +					 MT6577_AUXADC_SLEEP_US,
> +					 MT6577_AUXADC_TIMEOUT_US);
> +		if (ret < 0) {
> +			dev_err(indio_dev->dev.parent,
> +				"wait for auxadc idle time out\n");
> +			goto err_timeout;
> +		}
>  	}
>  
>  	/* read channel and make sure ready bit == 1 */
> @@ -163,6 +186,8 @@ static int mt6577_auxadc_read_raw(struct iio_dev *indio_dev,
>  				  int *val2,
>  				  long info)
>  {
> +	struct mt6577_auxadc_device *adc_dev = iio_priv(indio_dev);
> +
>  	switch (info) {
>  	case IIO_CHAN_INFO_PROCESSED:
>  		*val = mt6577_auxadc_read(indio_dev, chan);
> @@ -172,6 +197,8 @@ static int mt6577_auxadc_read_raw(struct iio_dev *indio_dev,
>  				chan->channel);
>  			return *val;
>  		}
> +		if (adc_dev->dev_comp->sample_data_cali)
> +			*val = mt_auxadc_get_cali_data(*val, true);
>  		return IIO_VAL_INT;
>  
>  	default:
> @@ -304,10 +331,11 @@ static SIMPLE_DEV_PM_OPS(mt6577_auxadc_pm_ops,
>  			 mt6577_auxadc_resume);
>  
>  static const struct of_device_id mt6577_auxadc_of_match[] = {
> -	{ .compatible = "mediatek,mt2701-auxadc", },
> -	{ .compatible = "mediatek,mt2712-auxadc", },
> -	{ .compatible = "mediatek,mt7622-auxadc", },
> -	{ .compatible = "mediatek,mt8173-auxadc", },
> +	{ .compatible = "mediatek,mt2701-auxadc", .data = &mt8173_compat},
> +	{ .compatible = "mediatek,mt2712-auxadc", .data = &mt8173_compat},
> +	{ .compatible = "mediatek,mt7622-auxadc", .data = &mt8173_compat},
> +	{ .compatible = "mediatek,mt8173-auxadc", .data = &mt8173_compat},
> +	{ .compatible = "mediatek,mt6765-auxadc", .data = &mt6765_compat},
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, mt6577_auxadc_of_match);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
