Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D581A14FCC2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 12:02:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IkL8B569oEh657/oUyOiYg20I1V79PlXZctzCi0KGz4=; b=VMvEOizr4yaVPi
	Q1j6EQiIKzwqUpNqMn7r53agiIaADK8QPVr9k55ey6vmdBzvALwLAxhYjaQRcMidHUfp4ywdXbHgg
	y/gPQ6AnOs+5A9JLTzVLvARTHn+POq4VUO/94QZ5VmTyN3IepGE3KOXLp6v5W2g95vUyLM2zcQzZI
	iyrMJZbHmoTPI2mWbx0SQFj91lvWGYPI+i/yYz2bCYhZUJZtbpT8taP0vW28hgcsiBMz2AQtdrKa0
	yBatS5sHIfUi+DmzdBzDxYRH9UtttQrgQgmwxqAVSEET/xmxbpV/vfctEceShmzcsy0XUgcIHaCSQ
	swbX37FX0Q0PCn2nzOmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyD16-00055U-Bl; Sun, 02 Feb 2020 11:02:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyD11-00055A-Jj
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 11:02:13 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 63BC62067C;
 Sun,  2 Feb 2020 11:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580641330;
 bh=6u1cqWAlRBMJoZ/FrQ6uyLCG43c5Zdqjtczp7wHzdIg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=insNWVp1qUlymq8s4QspcXAXmxa6tJm5CYz/LWS9mvrzUlPhQP5QBkNl8AI9Aawm/
 l3URLlAuRMSfWB1RW3SWyfpu7QEa5UlMsaRyGp/w4E5swg1QUsLMeMf/+z2OUzThAN
 oW3PZpWQoEQPZBMNacyb2cSZVz93ov8SW+2tW2jk=
Date: Sun, 2 Feb 2020 11:02:06 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: <Eugen.Hristev@microchip.com>
Subject: Re: [PATCH v3 1/3] iio: adc: at91-sama5d2_adc: fix differential
 channels in triggered mode
Message-ID: <20200202110206.7326ce4d@archlinux>
In-Reply-To: <1580216189-27418-2-git-send-email-eugen.hristev@microchip.com>
References: <1580216189-27418-1-git-send-email-eugen.hristev@microchip.com>
 <1580216189-27418-2-git-send-email-eugen.hristev@microchip.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_030211_671613_641EE348 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-iio@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 alexandru.ardelean@analog.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Jan 2020 12:57:39 +0000
<Eugen.Hristev@microchip.com> wrote:

> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> The differential channels require writing the channel offset register (COR).
> Otherwise they do not work in differential mode.
> The configuration of COR is missing in triggered mode.
> 
> Fixes: 5e1a1da0f8c9 ("iio: adc: at91-sama5d2_adc: add hw trigger and buffer support")
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
Applied to the fixes-togreg branch of iio.git.  Normally I avoid rebasing that
branch but I may do so this time given it's currently mid merge window.

The other two patches will have to wait for this one to get upstream of
my togreg branch which will take a few weeks.

Please give me a poke if I seem to have forgotten about them!

Thanks,

Jonathan

> ---
> Changes in v2:
> - moved to the start of the list
> 
>  drivers/iio/adc/at91-sama5d2_adc.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
> index e1850f3..2a6950a 100644
> --- a/drivers/iio/adc/at91-sama5d2_adc.c
> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> @@ -723,6 +723,7 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
>  
>  	for_each_set_bit(bit, indio->active_scan_mask, indio->num_channels) {
>  		struct iio_chan_spec const *chan = at91_adc_chan_get(indio, bit);
> +		u32 cor;
>  
>  		if (!chan)
>  			continue;
> @@ -732,6 +733,20 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
>  			continue;
>  
>  		if (state) {
> +			cor = at91_adc_readl(st, AT91_SAMA5D2_COR);
> +
> +			if (chan->differential)
> +				cor |= (BIT(chan->channel) |
> +					BIT(chan->channel2)) <<
> +					AT91_SAMA5D2_COR_DIFF_OFFSET;
> +			else
> +				cor &= ~(BIT(chan->channel) <<
> +				       AT91_SAMA5D2_COR_DIFF_OFFSET);
> +
> +			at91_adc_writel(st, AT91_SAMA5D2_COR, cor);
> +		}
> +
> +		if (state) {
>  			at91_adc_writel(st, AT91_SAMA5D2_CHER,
>  					BIT(chan->channel));
>  			/* enable irq only if not using DMA */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
