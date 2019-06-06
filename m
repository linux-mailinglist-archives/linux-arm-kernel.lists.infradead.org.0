Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 602A5369F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 04:18:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4PWM3dTMVomX6JV3+2sGLGH8LZhX2ew094hDYTPLdz8=; b=VB9wb6epM0WrCj
	y266p9BEakjbogTART8HuJey6cmVFOnRrI+hqMtrWXMGytPcoAvzcMP6NhSDQhR2wVGL+SIMRusZr
	ewOHw94siYavFXKz/Nl5Ad6Pk3yDmA1Xqb6YKWMoygFynAadI0Mp6dDrReIG7IKdVYwacatWVMbpg
	TwAhIJhiBEwlbZVocszgnbTK3MRdc+n3tAJzpIMUuNcTxTp6m/SW6Vf5qobXO1qDwwD5uddhe7lIM
	TxejdkbH/nNEMdb9SaJbZZk9cHutm6NQr6M5MXM5uzMHDdgZVLNd+FGOC1xAl6vYSnpsdrQ7sZQSL
	7RtZ9+8ReRVzDx3QYuqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYhzG-0002Nw-KA; Thu, 06 Jun 2019 02:18:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYhz9-0002NX-Jj
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 02:18:36 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E44EF2075B;
 Thu,  6 Jun 2019 02:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559787515;
 bh=jPhjz3SJtpJ0/jkTHGUxExTd7E6N9MYmbVa4lf1c1qU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tx77BCu7F5RhelD9SSq0df4I0jWlsUT2lOTZRjCwaZqODpKUomkIQ26UWy8PfrQI1
 eF/o76e5/W7yMBm40XVBo01ZxwtOAq+2sP3IpFZaNPZk2JU4+9rPg2sBPODr+0ea9i
 RHb1wgcbAdGs8NkMV7xMZNOlMXV6wbbjeIErV08k=
Date: Thu, 6 Jun 2019 10:18:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH] arm64: dts: imx8mm: Move gic node into soc node
Message-ID: <20190606021803.GW29853@dragon>
References: <20190603015020.41410-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603015020.41410-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_191835_712805_1736F4C4 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, ping.bai@nxp.com,
 devicetree@vger.kernel.org, viresh.kumar@linaro.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 09:50:20AM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> GIC is inside of SoC from architecture perspective, it should
> be located inside of soc node in DT.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

It doesn't apply to my imx/dt64 branch.  Please generate it against that
branch for my for-next.

Shawn

> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index dc99f45..429312e 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -169,15 +169,6 @@
>  		clock-output-names = "clk_ext4";
>  	};
>  
> -	gic: interrupt-controller@38800000 {
> -		compatible = "arm,gic-v3";
> -		reg = <0x0 0x38800000 0 0x10000>, /* GIC Dist */
> -		      <0x0 0x38880000 0 0xC0000>; /* GICR (RD_base + SGI_base) */
> -		#interrupt-cells = <3>;
> -		interrupt-controller;
> -		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> -	};
> -
>  	psci {
>  		compatible = "arm,psci-1.0";
>  		method = "smc";
> @@ -739,6 +730,15 @@
>  			dma-names = "rx-tx";
>  			status = "disabled";
>  		};
> +
> +		gic: interrupt-controller@38800000 {
> +			compatible = "arm,gic-v3";
> +			reg = <0x38800000 0x10000>, /* GIC Dist */
> +			      <0x38880000 0xc0000>; /* GICR (RD_base + SGI_base) */
> +			#interrupt-cells = <3>;
> +			interrupt-controller;
> +			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +		};
>  	};
>  
>  	usbphynop1: usbphynop1 {
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
