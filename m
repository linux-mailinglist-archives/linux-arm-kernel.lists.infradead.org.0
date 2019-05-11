Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3511B1A782
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 12:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SsqBy6O+veK5GkXXUVdLRjnyF/zY6htr1EQgx+1Pp3M=; b=IM/HZW55wSsSAp
	Hw9GN/fkkPrNCkLlFid078pP7h9omDa01uBNpalA6goGk92ibwdil6SmwImCHdxNk4jUFJ8leSyyB
	Qv0UcBwAzfDw3wXHJCdvBDfHqCabpW130+b/jF+JvQo8GVwKiPFTfkq6+xMr6ZBBy67PYnTWZEmOt
	1Fp0uP+m2BRYcqP3AtAGr8DLKdjaMLThMgjjFj6cte3VdD6kcxJw3n3/7rNe5DKY3kjB40FHAIXsV
	hyB3RGBmPGqxD0vWsAFfKpqHMGrqdag9DO65L63erE3s2l2AlQvRoAJ4Wz680Z2TduALF0vSrpKdV
	cqn8N4Np4A5Q8Y9FJWCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPP2x-0005ta-3w; Sat, 11 May 2019 10:16:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPP2p-0005tH-V5
 for linux-arm-kernel@lists.infradead.org; Sat, 11 May 2019 10:15:57 +0000
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7916D208C0;
 Sat, 11 May 2019 10:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557569755;
 bh=GVjvzUgaZO5L08Vrif/Gj4NVQZ3V+nUBXORBy/xPtl0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VGf7UATU+wbNMZj8Vn2IfAkAO93ECqaYnkNM0nI0ktDg20F/OWYS4d5STB4IPid8V
 bJwGWBld4bljFXZoG2vYlPdfr6JILEOLGCkmixATxgCYkevjNLgQrSVoWQqRtQa9mJ
 m7Z56V8aACpmRetJEsb5WCM9t/TRbG56GmxM5S4k=
Date: Sat, 11 May 2019 11:15:48 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Philippe Schenker <dev@pschenker.ch>
Subject: Re: [PATCH 4/5] iio: stmpe-adc: Use wait_for_completion_timeout
Message-ID: <20190511111548.504948ae@archlinux>
In-Reply-To: <20190507143615.28477-4-dev@pschenker.ch>
References: <20190507143615.28477-1-dev@pschenker.ch>
 <20190507143615.28477-4-dev@pschenker.ch>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_031556_036695_4540E34F 
X-CRM114-Status: GOOD (  17.77  )
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

On Tue,  7 May 2019 16:36:14 +0200
Philippe Schenker <dev@pschenker.ch> wrote:

> From: Philippe Schenker <philippe.schenker@toradex.com>
> 
> Use wait_for_completion_timeout instead of
> wait_for_completion_interuptible_timeout.
> 
> The interruptible variant gets constantly interrupted if a user
> program is compiled with the -pg option.
> The killable variant was not used due to the fact that a second
> program, reading on this device, that gets killed is then also killing
> that wait.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
Hi Phillippe

This one clashed a little bit with our earlier patch to remove the
unnecessary assignment.  I've applied it by hand but please check it.

Applied to the togreg branch of iio.git and pushed out as testing
for the autobuilders to play with it.

Thanks,

Jonathan
> ---
> 
>  drivers/iio/adc/stmpe-adc.c | 18 ++++--------------
>  1 file changed, 4 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/iio/adc/stmpe-adc.c b/drivers/iio/adc/stmpe-adc.c
> index 82b43e4522b6..cc752a47444c 100644
> --- a/drivers/iio/adc/stmpe-adc.c
> +++ b/drivers/iio/adc/stmpe-adc.c
> @@ -77,17 +77,11 @@ static int stmpe_read_voltage(struct stmpe_adc *info,
>  	stmpe_reg_write(info->stmpe, STMPE_REG_ADC_CAPT,
>  			STMPE_ADC_CH(info->channel));
>  
> -	*val = info->value;
> -
> -	ret = wait_for_completion_interruptible_timeout
> -		(&info->completion, STMPE_ADC_TIMEOUT);
> +	ret = wait_for_completion_timeout(&info->completion, STMPE_ADC_TIMEOUT);
>  
>  	if (ret <= 0) {
>  		mutex_unlock(&info->lock);
> -		if (ret == 0)
> -			return -ETIMEDOUT;
> -		else
> -			return ret;
> +		return -ETIMEDOUT;
>  	}
>  
>  	*val = info->value;
> @@ -116,15 +110,11 @@ static int stmpe_read_temp(struct stmpe_adc *info,
>  	stmpe_reg_write(info->stmpe, STMPE_REG_TEMP_CTRL,
>  			STMPE_START_ONE_TEMP_CONV);
>  
> -	ret = wait_for_completion_interruptible_timeout
> -		(&info->completion, STMPE_ADC_TIMEOUT);
> +	ret = wait_for_completion_timeout(&info->completion, STMPE_ADC_TIMEOUT);
>  
>  	if (ret <= 0) {
>  		mutex_unlock(&info->lock);
> -		if (ret == 0)
> -			return -ETIMEDOUT;
> -		else
> -			return ret;
> +		return -ETIMEDOUT;
>  	}
>  
>  	/*


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
