Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BEE1291E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 07:28:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0BbtNxe4zX6Hv/72dIw1HtMAIr1QXKBjzRJXZToQ1o=; b=rhmwN6GZSvvB0y
	sMIlgGyA88X5iX6IctT9gB+oeyvqzKfeqL2s6unc+LqDfwCVnBjVdoH5M/np8UNZBP9DOtvqjedCD
	6GEuZFMz1RjIzpMav5JebTut3WctmwM68KDAg4FcNQwRVzi+/hyQ6eh61oJbwhEyt0in6IEDteqg/
	XfGGj9Dric2MxKSOFAMVClMSuCNIUusybISCHA6M4WRa1poyffsYsMzGuIsH8L8c/UbaFbEFD6u/E
	q70swuuJSnVWM+Laukd2Qj8YPEakhMDMcSH6axgXxTIQfoARmTXdPI7BLFaUSfrIXxC+NQ4VP7v/r
	KDi4oy/gNKWAC6nRMniw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijHCT-0000iP-Hs; Mon, 23 Dec 2019 06:28:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijHCL-0000hf-JF
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 06:28:10 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C093B206B7;
 Mon, 23 Dec 2019 06:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577082486;
 bh=AzNaaYdA+aO/mCr5Q/bSgxjw+1HDyCMO7xiteViwaCk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hJjOGS/r/xF2npfcwighqSOeBXm0ja3MQ28pkg7dxCq6h4WnIrWmMm367hTV4Y51n
 sEL2QNmy/3/oO+/ZAfSF8balkwUrb9CPMrlUARbKqHnUaxGxtmQYW2UC74etXyPkLd
 0U/uK4NwFU8/cRtljxtinWM5/8TP7m65dPG2lYvw=
Date: Mon, 23 Dec 2019 14:27:45 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx7: Unify temp-grade and speed-grade nodes
Message-ID: <20191223062744.GL11523@dragon>
References: <20191212133800.17929-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212133800.17929-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_222809_661075_9F9BD664 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 10:38:00AM -0300, Fabio Estevam wrote:
> The following warning is seen when building with W=1:
> 
> arch/arm/boot/dts/imx7s.dtsi:551.39-553.7: Warning (unique_unit_address): /soc/aips-bus@30000000/ocotp-ctrl@30350000/temp-grade@10: duplicate unit-address (also used in node /soc/aips-bus@30000000/ocotp-ctrl@30350000/speed-grade@10)
> 
> Since temp-grade and speed-grade point to the same node, replace them by
> a single one to avoid the duplicate unit-address warning.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  arch/arm/boot/dts/imx7d.dtsi | 2 +-
>  arch/arm/boot/dts/imx7s.dtsi | 9 ++-------
>  2 files changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx7d.dtsi b/arch/arm/boot/dts/imx7d.dtsi
> index d8acd7cc7918..92f6d0c2a74f 100644
> --- a/arch/arm/boot/dts/imx7d.dtsi
> +++ b/arch/arm/boot/dts/imx7d.dtsi
> @@ -12,7 +12,7 @@
>  			clock-frequency = <996000000>;
>  			operating-points-v2 = <&cpu0_opp_table>;
>  			#cooling-cells = <2>;
> -			nvmem-cells = <&cpu_speed_grade>;
> +			nvmem-cells = <&fuse_grade>;
>  			nvmem-cell-names = "speed_grade";
>  		};
>  
> diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
> index 1b812f4e7453..05d099da5a02 100644
> --- a/arch/arm/boot/dts/imx7s.dtsi
> +++ b/arch/arm/boot/dts/imx7s.dtsi
> @@ -152,8 +152,7 @@
>  		interrupt-parent = <&gpc>;
>  		interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
>  		fsl,tempmon = <&anatop>;
> -		nvmem-cells = <&tempmon_calib>,
> -			<&tempmon_temp_grade>;
> +		nvmem-cells = <&tempmon_calib>,	<&fuse_grade>;
>  		nvmem-cell-names = "calib", "temp_grade";
>  		clocks = <&clks IMX7D_PLL_SYS_MAIN_CLK>;
>  	};
> @@ -548,11 +547,7 @@
>  					reg = <0x3c 0x4>;
>  				};
>  
> -				tempmon_temp_grade: temp-grade@10 {
> -					reg = <0x10 0x4>;
> -				};
> -
> -				cpu_speed_grade: speed-grade@10 {
> +				fuse_grade: temp-grade@10 {

Rename the node to fuse-grade too?

Shawn

>  					reg = <0x10 0x4>;
>  				};
>  			};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
