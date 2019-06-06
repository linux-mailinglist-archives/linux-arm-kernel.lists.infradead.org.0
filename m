Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1179C371F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6oyHs6KigREJZCu4kLPO/tlVuvUPAyXwE0rbM+0U4k4=; b=PTqU6edB+yUmTv
	vCwFYN/HTZ5XrAA5wRB3iLUc8AEYRlGC4AQAusOyfWkU4Ktf+e/bD0AtAkffC+XC7PqOFBTPeOI9H
	F+wEZDrRjmyiE+PhHbAHEx1aTF2s3tnebUznQohh9VppEbtZZ4yFyxMJm9Y4rcwJ50xpGzo0IL3Rw
	3z12LKl4qK0jQSxkHz9YZ8S70bWWFk/nHBpEEN81aOkbcbUPOLEB7xmI91uYZjSm3OJ1uJqU0Zr+n
	UayLV/cKA4FnhofQkVNq1up3FXwil0Jl118QgC/rbBedONSwNqHwwYCGCtBc7YgPjRUFs01Cyw9B+
	UU8r4xif6knBdOOUrJTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpsz-0005sH-Ms; Thu, 06 Jun 2019 10:44:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpss-0005rs-6p; Thu, 06 Jun 2019 10:44:39 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hYpsp-0003i8-AI; Thu, 06 Jun 2019 12:44:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: Split GPIO keys for veyron into
 multiple devices
Date: Thu, 06 Jun 2019 12:44:34 +0200
Message-ID: <3394571.LkITImzWxP@phil>
In-Reply-To: <20190605204320.22343-1-mka@chromium.org>
References: <20190605204320.22343-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_034438_390899_E9830A8E 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Brian Norris <briannorris@chromium.org>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 5. Juni 2019, 22:43:19 CEST schrieb Matthias Kaehlcke:
> With a single device DT overrides can become messy, especially when
> keys are added or removed. Multiple devices also allow to
> enable/disable wakeup per key/group.
> 
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>

applied for 5.3 with 2 minor changes, detailed below.

> ---
>  .../boot/dts/rk3288-veyron-chromebook.dtsi    | 26 +++++++------
>  arch/arm/boot/dts/rk3288-veyron-minnie.dts    | 38 ++++++++++---------
>  arch/arm/boot/dts/rk3288-veyron-pinky.dts     |  2 +-
>  arch/arm/boot/dts/rk3288-veyron.dtsi          |  4 +-
>  4 files changed, 37 insertions(+), 33 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi b/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
> index fbef34578100..c5f71af84a40 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
> @@ -70,6 +70,20 @@
>  		pinctrl-0 = <&ac_present_ap>;
>  	};
>  
> +	lid_switch: lid-switch {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&ap_lid_int_l>;

added a blank line here

> +		lid {
> +			label = "Lid";
> +			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
> +			wakeup-source;
> +			linux,code = <0>; /* SW_LID */
> +			linux,input-type = <5>; /* EV_SW */

actually used the constants in the properties, we have the keycodes as
dt-binding header nowadays.


Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
