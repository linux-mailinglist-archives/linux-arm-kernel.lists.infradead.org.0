Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA98A544F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 12:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tknAIzCW8fZ6iQKTm8qF0roqikJmwmdu1tJAmnqYE7c=; b=JEHtb6Cl61ThjK
	EUktEtFrw7EkgZnsJfEjBC74y/XpX5+BHK3qUChrcMWc3+dVzNOo14+UJgzwQK6e+dbT7NaAVZfQd
	w12ZVVgcMJkqcwXXuwBI/hYhSSqOOI3o4j01mdf5Q+cq7eh6Z1vvrw3MFLV2DDa6gfMc0KamJnOGn
	5ySomoXPvbBAG3X9ceNcnJVHqaGbvOWDTXInE7IPNddjgCdQCYYjAS0uJQzQycwrPZK1HmrU7JXNh
	keTT8xthjX4wKGEgvWBkw30XetOq5OBOJWkctQcutIj9UuGdT1qYUw1i+fALtwSjTv++Wpgbr8R2R
	B9s1HekfY7t+l3e/DlRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4jsa-0007jv-4B; Mon, 02 Sep 2019 10:48:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4jsN-0007jZ-5v
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 10:48:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9561928;
 Mon,  2 Sep 2019 03:47:58 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D76F03F246;
 Mon,  2 Sep 2019 03:47:57 -0700 (PDT)
Date: Mon, 2 Sep 2019 11:47:56 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V3 6/6] arm64: tegra: Add PCIe slot supply information in
 p2972-0000 platform
Message-ID: <20190902104756.GE9720@e119886-lin.cambridge.arm.com>
References: <20190828172850.19871-1-vidyas@nvidia.com>
 <20190828172850.19871-7-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828172850.19871-7-vidyas@nvidia.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_034759_265492_E31F69B1 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, linux-pci@vger.kernel.org, bhelgaas@google.com,
 digetx@gmail.com, jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 10:58:50PM +0530, Vidya Sagar wrote:
> Add 3.3V and 12V supplies regulators information of x16 PCIe slot in
> p2972-0000 platform which is owned by C5 controller and also enable C5
> controller.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> ---
> V3:
> * None
> 
> V2:
> * None
> 
>  .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi | 24 +++++++++++++++++++
>  .../boot/dts/nvidia/tegra194-p2972-0000.dts   |  4 +++-
>  2 files changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
> index 62e07e1197cc..4c38426a6969 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
> @@ -289,5 +289,29 @@
>  			gpio = <&gpio TEGRA194_MAIN_GPIO(A, 3) GPIO_ACTIVE_HIGH>;
>  			enable-active-high;
>  		};
> +
> +		vdd_3v3_pcie: regulator@2 {
> +			compatible = "regulator-fixed";
> +			reg = <2>;
> +
> +			regulator-name = "PEX_3V3";
> +			regulator-min-microvolt = <3300000>;
> +			regulator-max-microvolt = <3300000>;
> +			gpio = <&gpio TEGRA194_MAIN_GPIO(Z, 2) GPIO_ACTIVE_HIGH>;
> +			regulator-boot-on;
> +			enable-active-high;
> +		};
> +
> +		vdd_12v_pcie: regulator@3 {
> +			compatible = "regulator-fixed";
> +			reg = <3>;
> +
> +			regulator-name = "VDD_12V";
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1200000>;
> +			gpio = <&gpio TEGRA194_MAIN_GPIO(A, 1) GPIO_ACTIVE_LOW>;
> +			regulator-boot-on;
> +			enable-active-low;
> +		};
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> index 23597d53c9c9..d47cd8c4dd24 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> @@ -93,9 +93,11 @@
>  	};
>  
>  	pcie@141a0000 {
> -		status = "disabled";
> +		status = "okay";
>  
>  		vddio-pex-ctl-supply = <&vdd_1v8ao>;
> +		vpcie3v3-supply = <&vdd_3v3_pcie>;
> +		vpcie12v-supply = <&vdd_12v_pcie>;
>  
>  		phys = <&p2u_nvhs_0>, <&p2u_nvhs_1>, <&p2u_nvhs_2>,
>  		       <&p2u_nvhs_3>, <&p2u_nvhs_4>, <&p2u_nvhs_5>,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
