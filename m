Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A96F1A78D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 12:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vb0qfFDOVn2S8FUGGqkGVVNVYEMB+xR89pZQYOqyvxM=; b=XqKSMs0ppAYaJF
	+HOIA26KoMb2eszFReSMxYS2vRz6lp4KKiGHa6QyAayn+DbaIrmK3Bqy0espC6oUESPaqizm66JyZ
	ojRSvq6YWUA4fOdtNLT3wE9kYSsVUOW75/vIxtS6C8vy5Z0XFVtKg33F6WzTpZ4STcHP8E1HE2wLh
	F6oHMJ/3eJdkvefpxNEV9yYu2XZXBRoOMsU3D3a5DwipeqZebOYvHzHc3xRcUJjHvsrwDWIxoAe0v
	Mg0cCmVcF96YgaiTBls+zhE3v282NpZ+m8Zohh7+5NTz74KFQPX0TXIH6PqOkZOLjz3+6Ll/z4pQA
	GvNNq86JuKimk5+EzcQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPPBN-0007ve-4S; Sat, 11 May 2019 10:24:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPPBE-0007vD-Gt
 for linux-arm-kernel@lists.infradead.org; Sat, 11 May 2019 10:24:37 +0000
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE1E62173B;
 Sat, 11 May 2019 10:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557570276;
 bh=Ol9ib5bihEYIjrd1c8mt+AxCWFeb4Ti7BaHuwJkxvQA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=v4U603/bLabnldrLM6MOiPNDVz7DK0r/MC9QoaiSqqorwz+ySd4TjrJKypZ3+bF9s
 Oi7pE83vuWve+W8K6qopE3LO/K10MtfkVM1TJXht3uXte67oWPnpF2vxXDyky7JEUN
 So9eLCXfDPm7MdKyCanuDsLdFHH6/rXp2DvYpyD8=
Date: Sat, 11 May 2019 11:24:29 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Philippe Schenker <dev@pschenker.ch>
Subject: Re: [PATCH 5/5] iio: stmpe-adc: Reset possible interrupts
Message-ID: <20190511112429.25ddd84d@archlinux>
In-Reply-To: <20190507143615.28477-5-dev@pschenker.ch>
References: <20190507143615.28477-1-dev@pschenker.ch>
 <20190507143615.28477-5-dev@pschenker.ch>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_032436_582496_7CED96A7 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 David Laight <David.Laight@ACULAB.COM>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Lee Jones <lee.jones@linaro.org>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  7 May 2019 16:36:15 +0200
Philippe Schenker <dev@pschenker.ch> wrote:

> From: Philippe Schenker <philippe.schenker@toradex.com>
> 
> Clear any interrupt that still is on the device on every channel
> this driver is activated for in probe and specific channels in
> the timeout handler.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
I'm never particularly clean on blanket resets as they do tend to
hide bugs. However, the probe one is something that would happen anyway
if there was a 'reset' function.

Applied to the togreg branch of iio.git and pushed out as testing
for the autobuilders to play with it.

Thanks,

Jonathan

> 
> ---
> 
>  drivers/iio/adc/stmpe-adc.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/iio/adc/stmpe-adc.c b/drivers/iio/adc/stmpe-adc.c
> index cc752a47444c..a5990e9f2c80 100644
> --- a/drivers/iio/adc/stmpe-adc.c
> +++ b/drivers/iio/adc/stmpe-adc.c
> @@ -80,6 +80,8 @@ static int stmpe_read_voltage(struct stmpe_adc *info,
>  	ret = wait_for_completion_timeout(&info->completion, STMPE_ADC_TIMEOUT);
>  
>  	if (ret <= 0) {
> +		stmpe_reg_write(info->stmpe, STMPE_REG_ADC_INT_STA,
> +				STMPE_ADC_CH(info->channel));
>  		mutex_unlock(&info->lock);
>  		return -ETIMEDOUT;
>  	}
> @@ -326,6 +328,9 @@ static int stmpe_adc_probe(struct platform_device *pdev)
>  	stmpe_reg_write(info->stmpe, STMPE_REG_ADC_INT_EN,
>  			~(norequest_mask & 0xFF));
>  
> +	stmpe_reg_write(info->stmpe, STMPE_REG_ADC_INT_STA,
> +			~(norequest_mask & 0xFF));
> +
>  	return devm_iio_device_register(&pdev->dev, indio_dev);
>  }
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
