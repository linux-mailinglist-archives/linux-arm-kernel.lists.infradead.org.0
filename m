Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E037111CA85
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 11:22:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jRUR20pex/EfYciWvJQkqpDAoRR2xZ06fq/l5JriP40=; b=SMw2Z4pndR7VFR6RYjNBOzK3H
	JAgKFAAbg/7wWz3WDMLZx6GlNia2zCKmblf+ehPpZuE64HxZWtwEZfP7+LTVEKExGfWs4BwIrdAeM
	HDwIFaGn3T2q8oT4mQdD/IwZEiR3dTuAnRxbZHFPLxHzgKFuc2L8lq/pjv01i/mbV9ZsCdsWaVjWv
	ib2180ld5zeA/xbMJZGjXq0Ob5mwLVnh8aViCCIoCzpf7+HnMxLbQgLDnU0n8jHw0X8bsmTvLesjp
	6DAYzV5ZTGOpsDZbB6BKgSu2BlRHeNum2uR4Q74ZzmS7m2bhPR/gK6WCVjw+oyCMUhMO1M9Yuzj06
	PNv1316wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLcK-0002os-9l; Thu, 12 Dec 2019 10:22:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLcC-0002nK-3C; Thu, 12 Dec 2019 10:22:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 64FED328;
 Thu, 12 Dec 2019 02:22:35 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CF0D23F6CF;
 Thu, 12 Dec 2019 02:22:33 -0800 (PST)
Subject: Re: [PATCH v2 9/9] arm64: dts: rockchip: RockPro64: hook up bluetooth
 at uart0
To: Soeren Moch <smoch@web.de>, Kalle Valo <kvalo@codeaurora.org>,
 Heiko Stuebner <heiko@sntech.de>
References: <20191211235253.2539-1-smoch@web.de>
 <20191211235253.2539-10-smoch@web.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <a0ad4723-db85-0eda-efb5-f0c9a2a6aec3@arm.com>
Date: Thu, 12 Dec 2019 10:22:27 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191211235253.2539-10-smoch@web.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_022236_182691_8AE4DA94 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, brcm80211-dev-list@cypress.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Soeren,

On 11/12/2019 11:52 pm, Soeren Moch wrote:
> With enabled wifi support (required for firmware loading) for the
> Ampak AP6359SA based wifi/bt combo module we now also can enable
> the bluetooth part.
> 
> Suggested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Soeren Moch <smoch@web.de>
> ---
> changes in v2:
> - new patch
> 
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: linux-wireless@vger.kernel.org
> Cc: brcm80211-dev-list.pdl@broadcom.com
> Cc: brcm80211-dev-list@cypress.com
> Cc: netdev@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>   .../boot/dts/rockchip/rk3399-rockpro64.dts    | 29 ++++++++++++++++++-
>   1 file changed, 28 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> index 9fa92790d6e0..94cc462e234d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> @@ -561,6 +561,20 @@
>   };
> 
>   &pinctrl {
> +	bt {
> +		bt_enable_h: bt-enable-h {
> +			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		bt_host_wake_l: bt-host-wake-l {
> +			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +
> +		bt_wake_l: bt-wake-l {
> +			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>   	buttons {
>   		pwrbtn: pwrbtn {
>   			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
> @@ -729,8 +743,21 @@
> 
>   &uart0 {
>   	pinctrl-names = "default";
> -	pinctrl-0 = <&uart0_xfer &uart0_cts>;
> +	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
>   	status = "okay";
> +
> +	bluetooth {
> +		compatible = "brcm,bcm43438-bt";
> +		clocks = <&rk808 1>;
> +		clock-names = "extclk";

Is this right? Comparing the binding and the naming on the schematics, 
it seems more likely that this might be the LPO clock rather than the 
TXCO clock.

Robin.

> +		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
> +		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
> +		vbat-supply = <&vcc3v3_sys>;
> +		vddio-supply = <&vcc_1v8>;
> +	};
>   };
> 
>   &uart2 {
> --
> 2.17.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
