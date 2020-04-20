Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF3B1B0EC8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 16:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YEbJBJAFtNhF0koJvZMDMfmOFxnXWTyExq2MSMtqlGQ=; b=cOiqQGBHxiHoRw
	CP+zJzYnWNHDtAzrUvY5QEUKEcX1dsINjJ7l88cT5chN9I2I8rmTSraB7mK5EyYmE+BHCsHCZKPYj
	cxonPn3fw8pewydco5PjszqJA+F9UzJLwQXw93ut6dlwK4U8X1jQKf3s7htLBeziOILUwraiN5dux
	XaCbvg7UVdGFISPh7MJyl971YIJ0ocXBEaGrgvN9AK3lD6Iw4kc4zTSGaaUsdkNahdIy4y1ACxjZf
	SjEXCto7cmDOEe+qJ6IqDirF86DxjffWDq7RarQdt+eZdjLtO/s3h6foPYdVe2C4zONt4kmRF7CAH
	uztQyXICZRonpV56I5uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXeg-0007er-Te; Mon, 20 Apr 2020 14:44:14 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXeN-0007az-Bv
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 14:43:57 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e9db4b80000>; Mon, 20 Apr 2020 07:42:00 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 20 Apr 2020 07:43:54 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 20 Apr 2020 07:43:54 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 20 Apr
 2020 14:43:54 +0000
Received: from [10.26.73.5] (172.20.13.39) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 20 Apr
 2020 14:43:53 +0000
Subject: Re: [PATCH 2/2] arm64: tegra: Make the RTC a wakeup source on Jetson
 TX2
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200417171117.2556374-1-thierry.reding@gmail.com>
 <20200417171117.2556374-2-thierry.reding@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <07d3ac3a-cfa1-16f3-0401-df478c8e9831@nvidia.com>
Date: Mon, 20 Apr 2020 15:43:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200417171117.2556374-2-thierry.reding@gmail.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1587393720; bh=fJb/HqacmO/rgtSuw6cejOcM6XXVC4/j8qZ6OGkhHYA=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=YQjjVli+wkx4+/tN0Mc2CEavS4pgQ4+lfFBFdP2iTzdzl4P0Jpt7IuFk9NPs6q+r0
 pX6kFiQRoE6hx6s4FYucPC6CpyxM7CktOnuxoqOHKdkS5c9fcxrHzBNdhobEF1wwQD
 esmi0gWWor3VdhtF7OElBUzAszQK83MS2DgH1eRRd9ZqlJOkObut76nAw2Ye9uKY3W
 SZCRtomoOHglbagk2cyw6/F1mJu20qU3LCQWmWhopcT44uMx+yQYV0HJnC11EG9tNu
 qWeobI2gkrrYMVZ80oicMXGTzR0zirXvnjFaCSYo3df1U6QPwbG9S+H0vtF7T5rxY+
 y95BShjwsFWJw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_074355_459729_5E416FF5 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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


On 17/04/2020 18:11, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The RTC found on the MAX77620 PMIC can be used as a wakeup source on
> Jetson TX2, which is useful to wake the system from suspend at a given
> time.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi b/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
> index da96de04d003..7a0fa157f48c 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
> @@ -221,7 +221,8 @@ pmic: pmic@3c {
>  				compatible = "maxim,max77620";
>  				reg = <0x3c>;
>  
> -				interrupts = <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-parent = <&pmc>;
> +				interrupts = <24 IRQ_TYPE_LEVEL_LOW>;
>  				#interrupt-cells = <2>;
>  				interrupt-controller;
>  
> @@ -379,6 +380,10 @@ vdd_pex: ldo8 {
>  						regulator-max-microvolt = <1050000>;
>  					};
>  				};
> +
> +				rtc {
> +					wakeup-source;
> +				};
>  			};
>  		};
>  	};
> 


Acked-by: Jon Hunter <jonathanh@nvidia.com>
Tested-by: Jon Hunter <jonathanh@nvidia.com>

Cheers
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
