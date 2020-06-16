Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D011FBEE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 21:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zlf8R8wBW15NXEmlwcaW2X0lOwg3Y7IjLZgV7PQIjlc=; b=aHVDWkSmUwQwtM
	80E+Rjlm6VWyXGlgOL2VxCmeMe6m+F7ap0IATcXSc7M/s6aDflKUd8uIAsEBESq9St1fSXYG/edYY
	nMqDg8coVqTYooraNWjctVgLMoG9rL6ivmFVvBKzN5cTrXKKi2ekuQjYfdk+NenfkTAlfVCgneKk2
	wGRAUpPAbxPHDm7yrgAEVnaaRwFsfgYU58FzkAf3rfVbTmK58MuVYPNZ5tcmN9KNE7iYTkI22aAZN
	9XqwivTo/CRTIdAKbc2jT5bdvEL5L/yJ9G9aV7tZHDsBmFUs5n0Mqxr3WnBL038Sfxd5e2nUSA905
	SixbxpPi7EBQW14KTBKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlHC3-0005Fo-E0; Tue, 16 Jun 2020 19:24:23 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlHBv-0005FJ-F9
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 19:24:16 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ee91c2e0000>; Tue, 16 Jun 2020 12:23:26 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 16 Jun 2020 12:24:15 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 16 Jun 2020 12:24:15 -0700
Received: from [10.26.75.222] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 16 Jun
 2020 19:24:14 +0000
Subject: Re: [PATCH 03/73] ARM: tegra: Remove simple regulators bus
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
 <20200616135238.3001888-4-thierry.reding@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <cf8eb9d4-70d5-400f-ecc8-2139c25563a9@nvidia.com>
Date: Tue, 16 Jun 2020 20:24:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200616135238.3001888-4-thierry.reding@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1592335406; bh=IgcYSTEZup91mLMIxzY/KXwrtl0zNB5vnKc+awAbO0w=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=DayI5ToxF82lUpY6WwCokaxcDFhh7HDvmDjr2gWthHSMl9QaSgk834VcLOd4TqPb6
 0pyXrv0z381nreB89mUEA+gPP+uFoTDRaNyxBfgUVpzI2Oa7ZjjDvweEBdx283R8t0
 TCINkSWe8q5sUb32+SJFnjy3aUpVrQTFTPDIhh25SXoKU2jzbNmqX598WYlpJE47I0
 zTpgWcf6dM1GmGPjVqWS5gDEaMqtz8+WYJkyr3dw8pmn5eFG8OCVJBhhf/SCjkjyen
 EnnPTZFCNWkQBZq8ii8IE6VOrwcZ539uAdcDRc+pjP+I/UmRT/dD6hDeI/dBz0n+Z1
 0AzS6dH+3fA4g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_122415_514551_A68D1DEB 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 16/06/2020 14:51, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The standard way to do this is to list out the regulators at the top
> level. Adopt the standard way to fix validation.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  arch/arm/boot/dts/tegra114-dalmore.dts    | 129 +++++------
>  arch/arm/boot/dts/tegra114-roth.dts       | 120 +++++-----
>  arch/arm/boot/dts/tegra114-tn7.dts        |  65 +++---
>  arch/arm/boot/dts/tegra124-jetson-tk1.dts | 238 +++++++++----------
>  arch/arm/boot/dts/tegra124-nyan.dtsi      | 259 ++++++++++-----------
>  arch/arm/boot/dts/tegra124-venice2.dts    | 265 ++++++++++------------
>  arch/arm/boot/dts/tegra20-harmony.dts     | 121 +++++-----
>  arch/arm/boot/dts/tegra20-medcom-wide.dts |  66 +++---
>  arch/arm/boot/dts/tegra20-paz00.dts       |  38 ++--
>  arch/arm/boot/dts/tegra20-plutux.dts      |  66 +++---
>  arch/arm/boot/dts/tegra20-seaboard.dts    | 125 +++++-----
>  arch/arm/boot/dts/tegra20-tamonten.dtsi   |  39 +---
>  arch/arm/boot/dts/tegra20-tec.dts         |  66 +++---
>  arch/arm/boot/dts/tegra20-trimslice.dts   |  85 +++----
>  arch/arm/boot/dts/tegra20-ventana.dts     |  85 +++----
>  arch/arm/boot/dts/tegra30-beaver.dts      | 193 ++++++++--------
>  arch/arm/boot/dts/tegra30-cardhu-a02.dts  | 128 +++++------
>  arch/arm/boot/dts/tegra30-cardhu-a04.dts  | 149 ++++++------
>  arch/arm/boot/dts/tegra30-cardhu.dtsi     | 261 ++++++++++-----------
>  19 files changed, 1130 insertions(+), 1368 deletions(-)

...

> diff --git a/arch/arm/boot/dts/tegra124-venice2.dts b/arch/arm/boot/dts/tegra124-venice2.dts
> index 6a7a31c831c5..effdb303c7f7 100644
> --- a/arch/arm/boot/dts/tegra124-venice2.dts
> +++ b/arch/arm/boot/dts/tegra124-venice2.dts
> @@ -1077,164 +1077,145 @@ power {
>  
>  	panel: panel {
>  		compatible = "lg,lp129qe";
> -
> +		power-supply = <&vdd_3v3_panel>;
>  		backlight = <&backlight>;
>  		ddc-i2c-bus = <&dpaux>;
>  	};

Is this meant to be in this patch?

> diff --git a/arch/arm/boot/dts/tegra20-tamonten.dtsi b/arch/arm/boot/dts/tegra20-tamonten.dtsi
> index 20137fc578b1..95e6bccdb4f6 100644
> --- a/arch/arm/boot/dts/tegra20-tamonten.dtsi
> +++ b/arch/arm/boot/dts/tegra20-tamonten.dtsi
> @@ -495,40 +495,25 @@ usb-phy@c5008000 {
>  		status = "okay";
>  	};
>  
> -	sdhci@c8000600 {
> +	mmc@c8000600 {
>  		cd-gpios = <&gpio TEGRA_GPIO(H, 2) GPIO_ACTIVE_LOW>;
>  		wp-gpios = <&gpio TEGRA_GPIO(H, 3) GPIO_ACTIVE_HIGH>;
>  		bus-width = <4>;
>  		status = "okay";
>  	};
>  
> -	clocks {
> -		compatible = "simple-bus";
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		clk32k_in: clock@0 {
> -			compatible = "fixed-clock";
> -			reg = <0>;
> -			#clock-cells = <0>;
> -			clock-frequency = <32768>;
> -		};
> +	clk32k_in: clock@0 {
> +		compatible = "fixed-clock";
> +		clock-frequency = <32768>;
> +		#clock-cells = <0>;
>  	};

The above appears in to be in the wrong patch.

> diff --git a/arch/arm/boot/dts/tegra30-cardhu-a02.dts b/arch/arm/boot/dts/tegra30-cardhu-a02.dts
> index a02ec5082287..4899e05a0d9c 100644
> --- a/arch/arm/boot/dts/tegra30-cardhu-a02.dts
> +++ b/arch/arm/boot/dts/tegra30-cardhu-a02.dts
> @@ -9,87 +9,75 @@ / {
>  	model = "NVIDIA Tegra30 Cardhu A02 evaluation board";
>  	compatible = "nvidia,cardhu-a02", "nvidia,cardhu", "nvidia,tegra30";
>  
> -	sdhci@78000400 {
> +	mmc@78000400 {
>  		status = "okay";
>  		power-gpios = <&gpio TEGRA_GPIO(D, 4) GPIO_ACTIVE_HIGH>;
>  		bus-width = <4>;
>  		keep-power-in-suspend;
>  	};

And here.

> diff --git a/arch/arm/boot/dts/tegra30-cardhu-a04.dts b/arch/arm/boot/dts/tegra30-cardhu-a04.dts
> index 9234988624ec..c1c0ca628af1 100644
> --- a/arch/arm/boot/dts/tegra30-cardhu-a04.dts
> +++ b/arch/arm/boot/dts/tegra30-cardhu-a04.dts
> @@ -11,99 +11,86 @@ / {
>  	model = "NVIDIA Tegra30 Cardhu A04 (A05, A06, A07) evaluation board";
>  	compatible = "nvidia,cardhu-a04", "nvidia,cardhu", "nvidia,tegra30";
>  
> -	sdhci@78000400 {
> +	mmc@78000400 {
>  		status = "okay";
>  		power-gpios = <&gpio TEGRA_GPIO(D, 3) GPIO_ACTIVE_HIGH>;
>  		bus-width = <4>;
>  		keep-power-in-suspend;
>  	};

And here.

Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
