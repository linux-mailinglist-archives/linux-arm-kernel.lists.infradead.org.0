Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0769EC1994
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 23:22:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2yjWl3BFTF3m9QsLBrDpoVpIb3OOqmypC021JBPy9VY=; b=WPVSyrgASvTJD0
	CJ1pxL86fxUj8cfgVHhUPFPTpP3V5qzBKgDIZH9oYxUNR9uArudQxoyuQ2pLhTU4nCWtOjIJdiYcp
	TSF4WPLx4DEgypOP7YpFzOn+41a0NStjNbrYDjSxfa2hD+fnsZWy8q2IQOlMzdkULblEdjVOemfmg
	3d772qvzPMi1B8OvbJTCCJ2LE1NiFmnNuKCmZ/Cp9QZKCIDPVJWfevb17hKF2IVsCCVYvmmqm4chi
	HVdo5YYAylL6sTLHbGCEkYFZ70EYLMzXoTDwe1XUwCG/iAH60dqqXelmfe4CdwYsCg3kkoYvFSjon
	62bWolMkuEUjAOZkbkgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEgdk-00022b-Qb; Sun, 29 Sep 2019 21:22:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEgdb-000226-98; Sun, 29 Sep 2019 21:21:52 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iEgdL-0001at-6x; Sun, 29 Sep 2019 23:21:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
Date: Sun, 29 Sep 2019 23:21:34 +0200
Message-ID: <6797961.eJj5WIFbM9@phil>
In-Reply-To: <20190919052822.10403-2-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <20190919052822.10403-2-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_142151_468400_46001260 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Da Xue <da@lessconfused.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Akash Gajjar <akash@openedev.com>, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jagan,

Am Donnerstag, 19. September 2019, 07:28:17 CEST schrieb Jagan Teki:
> ROC-PC is not able to boot linux console if PWM2_d is
> unattached to any pinctrl logic.
> 
> To be precise the linux boot hang with last logs as,
> ...
> .....
> [    0.003367] Console: colour dummy device 80x25
> [    0.003788] printk: console [tty0] enabled
> [    0.004178] printk: bootconsole [uart8250] disabled
> 
> In ROC-PC the PWM2_d pin is connected to LOG_DVS_PWM of
> VDD_LOG. So, for normal working operations this needs to
> active and pull-down.
> 
> This patch fix, by attaching pinctrl active and pull-down
> the pwm2.

This looks highly dubious on first glance. The pwm subsystem nor
the Rockchip pwm driver do not do any pinctrl handling.

So I don't really see where that "active" pinctrl state is supposed
to come from.

Comparing with the pwm driver in the vendor tree I see that there
is such a state defined there. But that code there also looks strange
as that driver never again leaves this active state after entering it.

Also for example all the Gru devices run with quite a number of pwm-
regulators without needing additional fiddling with the pwm itself, so
I don't really see why that should be different here.

Heiko

> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> index 19f7732d728c..c53f3d571620 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> @@ -548,6 +548,8 @@
>  };
>  
>  &pwm2 {
> +	pinctrl-names = "active";
> +	pinctrl-0 = <&pwm2_pin_pull_down>;
>  	status = "okay";
>  };
>  
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
