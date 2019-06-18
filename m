Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C126A49BF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 10:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FsD0aAHuU6zpUzP0K9CddfHcxRWF5A5Xwi0grxKeXPI=; b=OfxE2aX2iK+CNG
	p482YGTHGeBT2Jae1D8XljkNt9nkVhdpdlJMUbML44MZLfsBcllL0D7qgF3aRNnvsvRYr6hELMz3X
	zIVcVI8+R/PwoJaROhj1+CpM5bAEF1fywFJ41Q6MZzdU9s3CD+35wwc6ooEnGtJYuFYOSGJVbyfhG
	HoruJnyj74s98mq+wv1TPC9lC9GQ4yHoUshMc2ZPsvbgiGzfQYSsvu0/kIWrJMklyFTQBiNEaCyip
	cK5YkMn5B9uEpR+nn5IxMYBt8D6G0820CIyHjMWceWRgMBakNZwZFRm43jUsfrgUkvWSzSdbdk9ts
	v0s2M2c0ceaK0TIejTlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd9NY-0008Uk-Lt; Tue, 18 Jun 2019 08:22:08 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd9NN-0008SX-Bu; Tue, 18 Jun 2019 08:21:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 5AE0D2813A9
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: set PWM delay backlight
 settings for Minnie"
To: Matthias Kaehlcke <mka@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20190614224533.169881-1-mka@chromium.org>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <45f94c6a-5bd7-92b0-d23f-ae7e0481935f@collabora.com>
Date: Tue, 18 Jun 2019 10:21:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190614224533.169881-1-mka@chromium.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_012157_538704_F841119E 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Pavel Machek <pavel@ucw.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthias,

On 15/6/19 0:45, Matthias Kaehlcke wrote:
> This reverts commit 288ceb85b505c19abe1895df068dda5ed20cf482.
> 
> According to the commit message the AUO B101EAN01 panel on minnie
> requires a PWM delay of 200 ms, however this is not what the
> datasheet says. The datasheet mentions a *max* delay of 200 ms
> for T2 ("delay from LCDVDD to black video generation") and T3
> ("delay from LCDVDD to HPD high"), which aren't related to the
> PWM. The backlight power sequence does not specify min/max
> constraints for T15 (time from PWM on to BL enable) or T16
> (time from BL disable to PWM off).
> 

Could you point from where the confusion comes from? I think will be helpful for
the record. B101EAN01.8 vs B101EAN01.1

> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>

With the above added:

Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Thanks,
~ Enric

> ---
> Enric, if you think I misinterpreted the datasheet please holler!
> ---
>  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> index 468a1818545d..28cbe07f96ec 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> @@ -86,8 +86,6 @@
>  			240 241 242 243 244 245 246 247
>  			248 249 250 251 252 253 254 255>;
>  	power-supply = <&backlight_regulator>;
> -	post-pwm-on-delay-ms = <200>;
> -	pwm-off-delay-ms = <200>;
>  };
>  
>  &emmc {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
