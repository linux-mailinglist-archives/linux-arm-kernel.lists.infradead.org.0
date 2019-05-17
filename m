Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AF321218
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 04:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pncn1J9LbOVxTorkXeBEg8hk22pJgS0nJM6/1v3zDP0=; b=jVe9dJl537BJKu
	9gDxqPtLmNC8z3pyKNk3K5eKHrgVc6ZcKfT+jFaMsCbDBcjdnvVEMVwhwjeP717ZOazdSgyt1plvw
	hG/kaA2T1fTmEGuFQht5wLpnzr1y9QnKYIIY4RetUVJur6gZMkLajK20o/H3MZoGhOEPwa7ZSQ9zS
	JdPt/P6VykxRiO38K62csgtR8vtBmhk3gsvKYeNtmzoFixg8o0jDDiRxetp4gkZayc7tP4Mal2M1u
	r0VuIYPSE52CfeEojSWQvfY4tgHPZ3i4dVd4P3K5Rz1OmrKoFswEykf0hTuS9krtTElzYoJMl4vps
	tRiIuehPJjUD465BG20w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRSlE-0001gZ-Co; Fri, 17 May 2019 02:38:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRSl7-0001gB-DD
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 02:38:10 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E2CD205ED;
 Fri, 17 May 2019 02:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558060688;
 bh=Wr1yzMGgyj3VQSwkaM11AkyNfKyelc2CIBDIDuLoZj4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HeqhCFWTsfpLdJRe6Ty5/qvEgvMjaLDNeCmAeRof2koYmWwR7ysORuJjUrVLv7KXN
 Gl0rEVVTR13BQpCX6raxMQpUsRzyOTkh+eASRBgUNhPgw10VJTo0nrtYJ+qPIjcnPk
 2927FfvMZULbBNyISkFVJRKKPiAoB4WFn8ZSe5r4=
Date: Fri, 17 May 2019 10:37:30 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Chuanhua Han <chuanhua.han@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1028a: fix watchdog device node
Message-ID: <20190517023728.GA15856@dragon>
References: <20190509070657.18281-1-chuanhua.han@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509070657.18281-1-chuanhua.han@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_193809_466105_F51EE8B0 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Zhang Ying-22455 <ying.zhang22455@nxp.com>, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 03:06:57PM +0800, Chuanhua Han wrote:
> ls1028a platform uses sp805 watchdog, and use 1/16 platform clock as
> timer clock, this patch fix device tree node.
> 
> Signed-off-by: Zhang Ying-22455 <ying.zhang22455@nxp.com>
> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
> ---
>  .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index b04581249f0b..1510b1858246 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -285,13 +285,18 @@
>  			#interrupt-cells = <2>;
>  		};
>  
> -		wdog0: watchdog@23c0000 {
> -			compatible = "fsl,ls1028a-wdt", "fsl,imx21-wdt";
> -			reg = <0x0 0x23c0000 0x0 0x10000>;
> -			interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&clockgen 4 1>;
> -			big-endian;
> -			status = "disabled";
> +		cluster1_core0_watchdog: wdt@c000000 {

Keep 'watchdog' as the node name, and keep nodes sort in unit-address.

Shawn

> +			compatible = "arm,sp805", "arm,primecell";
> +			reg = <0x0 0xc000000 0x0 0x1000>;
> +			clocks = <&clockgen 4 15>, <&clockgen 4 15>;
> +			clock-names = "apb_pclk", "wdog_clk";
> +		};
> +
> +		cluster1_core1_watchdog: wdt@c010000 {
> +			compatible = "arm,sp805", "arm,primecell";
> +			reg = <0x0 0xc010000 0x0 0x1000>;
> +			clocks = <&clockgen 4 15>, <&clockgen 4 15>;
> +			clock-names = "apb_pclk", "wdog_clk";
>  		};
>  
>  		sata: sata@3200000 {
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
