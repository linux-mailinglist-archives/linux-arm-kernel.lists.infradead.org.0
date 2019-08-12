Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01E58A08E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 16:17:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p1fbRcv4mV7qlOU91fTLVeXKzVU3JyDx5mlJpdVruOQ=; b=UVsVnyejZ5FWPL
	Vvc5PYNPfQbvoyy569IxDTtfhcgvGBFzGBRb+WJ6OTSjfVnWjq6kzMkDVEZm4a9japhlN5SpUI/7O
	FTbLdRRLONzdcPervHqMqeWWDL9EtpnU5zeYRukTnSNTlm/ynel8XJRzVdYvN62G2dyOEM++SIg1r
	gxlDhXEALa7F84AQFDHzfxZUyB2dBPAqV+FHVl2jnJkNqYcKvTVrvNxDxXHZNwD90nwHE2U0OPsCR
	+BhmFB7c9x094fNDKVzSJOPOKwmfpcFeDu79AN3j9BplXVC3u6Kw3YlwDHwKyhxv2R8+RW3wZs/nx
	/QXK0JBq7likU6bhOJvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxB8u-0008Om-PC; Mon, 12 Aug 2019 14:17:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxB8f-0008O9-Jx
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 14:17:35 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7AAFE20679;
 Mon, 12 Aug 2019 14:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565619453;
 bh=29VUEDM2dmCIL10kGZLjVx43mBJDQtDwf0Ic1S1sTGo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iPo9emimkCnzzzAxb2H8E560aYiHwJHh7Psl/fziDqjGoLkHs3vb6blwqkwcN46JF
 b598yTAgaD/nRH7UskzS1p9KKlDV3iu8DQFYZcnUWXeBfEQC9MYMyAIR7vO3xjjOrB
 eyhELkzHxw5Q82A/CMvAK9eCWpNLgKGgZfhpChH0=
Date: Mon, 12 Aug 2019 16:17:24 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Chuanhua Han <chuanhua.han@nxp.com>
Subject: Re: [PATCH 1/4] arm64: dts: ls1088a: Fix incorrect I2C clock divider
Message-ID: <20190812141722.GJ27041@X250>
References: <20190806084223.23543-1-chuanhua.han@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806084223.23543-1-chuanhua.han@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_071733_670291_79D60F9C 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 04:42:20PM +0800, Chuanhua Han wrote:
> Ls1088a platform, the i2c input clock is actually platform pll CLK / 8
> (this is the hardware connection), other clock divider can not get the
> correct i2c clock, resulting in the output of SCL pin clock is not
> accurate.
> 
> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>

@Leo, looks good?

Shawn

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> index 20f5ebd..30b760e 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> @@ -324,7 +324,7 @@
>  			#size-cells = <0>;
>  			reg = <0x0 0x2000000 0x0 0x10000>;
>  			interrupts = <0 34 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&clockgen 4 3>;
> +			clocks = <&clockgen 4 7>;
>  			status = "disabled";
>  		};
>  
> @@ -334,7 +334,7 @@
>  			#size-cells = <0>;
>  			reg = <0x0 0x2010000 0x0 0x10000>;
>  			interrupts = <0 34 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&clockgen 4 3>;
> +			clocks = <&clockgen 4 7>;
>  			status = "disabled";
>  		};
>  
> @@ -344,7 +344,7 @@
>  			#size-cells = <0>;
>  			reg = <0x0 0x2020000 0x0 0x10000>;
>  			interrupts = <0 35 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&clockgen 4 3>;
> +			clocks = <&clockgen 4 7>;
>  			status = "disabled";
>  		};
>  
> @@ -354,7 +354,7 @@
>  			#size-cells = <0>;
>  			reg = <0x0 0x2030000 0x0 0x10000>;
>  			interrupts = <0 35 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&clockgen 4 3>;
> +			clocks = <&clockgen 4 7>;
>  			status = "disabled";
>  		};
>  
> -- 
> 2.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
