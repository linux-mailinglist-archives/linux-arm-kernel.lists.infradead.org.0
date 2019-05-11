Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D941A76E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 12:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oyc55EjhTkDgGJfjsyjkwwl3L5NfhteIRh4bvkABENs=; b=bobEgXjYz/3UEW
	0YgSdPOiMrnIh4AV959tpeSynuKStIgPycO+H9hOtnt4IIu2IL+oC4xfdQJl5em2af6GMCJ9Tq1PB
	Y6FpZeMLiAng9ZcRLNouRIdOXnacIDHFFfD+l7YlSBNdQu08j8P1FZrXfUeM9OouQE476dyX3uwa7
	rXO0KSNinW4aZdI2P7zNeGyK85vH7Z6RWpxmbqZZs2b7JPi35JuI1QkMGMLEwgCiJPg1C++mM4kSd
	0gjjFAb4Ob3GVWTJp5lrKOShawLMvMJwhVrt9UkYEKuidUsc1dHzED/afqxCktWTgMBd8cm2UnVHh
	maVpqOI29v3N5ffpeMmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPOwE-0002EX-KA; Sat, 11 May 2019 10:09:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPOvn-0001l8-Fr
 for linux-arm-kernel@lists.infradead.org; Sat, 11 May 2019 10:08:47 +0000
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBB3E217D6;
 Sat, 11 May 2019 10:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557569319;
 bh=SsM1ofarQZfVphiOzN1Muff7BbA5Z1fF8eufyrWWeQI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HAXe6MeobDUFP7WvrCs1xsgjUoGOeAmEG9RNlbuH+Ab7ZuTAzxqpPSMxZdkfT5wtQ
 aQsGa/YmucANFbQql6kff84p7mospL8kV8nxz1TrQyR+xpNWlZI8bFaiPCfeDi02Hb
 VoB5x2tTwt28/2zhixssWI4f11DWdWK3ai+hQEbw=
Date: Sat, 11 May 2019 11:08:32 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Philippe Schenker <dev@pschenker.ch>
Subject: Re: [PATCH 2/5] iio: stmpe-adc: Reinit completion struct on begin
 conversion
Message-ID: <20190511110832.24f58e4a@archlinux>
In-Reply-To: <20190507143615.28477-2-dev@pschenker.ch>
References: <20190507143615.28477-1-dev@pschenker.ch>
 <20190507143615.28477-2-dev@pschenker.ch>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_030839_943053_0725F311 
X-CRM114-Status: GOOD (  17.29  )
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

On Tue,  7 May 2019 16:36:12 +0200
Philippe Schenker <dev@pschenker.ch> wrote:

> From: Philippe Schenker <philippe.schenker@toradex.com>
> 
> In some cases, the wait_completion got interrupted. This caused the
> error-handling to mutex_unlock the function. The before turned on
> interrupt then got called anyway. In the ISR then completion() was
> called causing wrong adc-values returned in a following adc-readout.
> 
> Reinitialise completion struct to make sure the counter is zero
> when beginning a new adc-conversion.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
Hi Philippe, 

To me this looks like a fix that we should consider applying to stable.
However, as it is in the middle of this series I'm not going to take
it via the fast route (during rc's). If people want to backport it
they will have to wait until after the next merge window.
If anyone has an urgent need, then shout in the next week and I'll
pull this version out and we can restructure the set.

Applied to the togreg branch of iio.git and pushed out as testing
for the autobuilders to play with it.

Thanks,

Jonathan

> ---
> 
>  drivers/iio/adc/stmpe-adc.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/iio/adc/stmpe-adc.c b/drivers/iio/adc/stmpe-adc.c
> index 9ec338ba3440..b3872eb37293 100644
> --- a/drivers/iio/adc/stmpe-adc.c
> +++ b/drivers/iio/adc/stmpe-adc.c
> @@ -65,6 +65,8 @@ static int stmpe_read_voltage(struct stmpe_adc *info,
>  
>  	mutex_lock(&info->lock);
>  
> +	reinit_completion(&info->completion);
> +
>  	info->channel = (u8)chan->channel;
>  
>  	if (info->channel > STMPE_ADC_LAST_NR) {
> @@ -105,6 +107,8 @@ static int stmpe_read_temp(struct stmpe_adc *info,
>  
>  	mutex_lock(&info->lock);
>  
> +	reinit_completion(&info->completion);
> +
>  	info->channel = (u8)chan->channel;
>  
>  	if (info->channel != STMPE_TEMP_CHANNEL) {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
