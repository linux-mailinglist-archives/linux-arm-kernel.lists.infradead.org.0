Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37544B1550
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 22:21:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLvB60bLQIVubLH8pDs9cw0ObNGabXg+53SphaZcKIo=; b=BSQzyulQW8ekYq
	+/kvhONuqGd6/jDgExLcFklMR2n7AEGcptKfHajmxVZJbLLxncDZZ0Go+Q0oBh2uBihxuCFF9t//i
	CHY3qC5sjIdMnY1btlpcp+T9AOB8uOrGctwi8LaNcxoGa+n9/6+fMAPU+yk+QqDYl33VKbD9d8fjM
	4xN1KGwrzkCkjcaoyH2c8ZjCxwLwbWJWjiyejzQCC1CxxB8A0erzeGrWVAMiTnwAkYbPnRnHwyytZ
	KbRbTiZ9BQ3q9076GYLRBdQN/wtTpkEmsUTUEiF1GTrAXZn/qYxMPQMIKOFmxb+oA1ejkDhfRzWdk
	v8tH58npmOBPtJMspCQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Vae-0005jf-2J; Thu, 12 Sep 2019 20:21:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8VaP-0005j9-HB
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 20:21:02 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3ABB020663;
 Thu, 12 Sep 2019 20:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568319660;
 bh=l2NAdBIQ4Z3zUHMO8cl9sMZVQOpKcb4IKh5SGYzqnUw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HcMHJ8/VTSujngw2sG/YUpTBVedAbF59mgqRGLNz0nTXyUIefs1UMjNnekxklREHQ
 QA1rU81q07pCFdAG+K4VEOizOODHaBZVOAllODrbuMZj3/Ib7MqnkHlecVMmg5JGLL
 zW2g8lnfLHq4jW7EyZtp5EeEz/U5f5+bZRCLlYFQ=
Date: Thu, 12 Sep 2019 22:20:57 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 3/6] ARM: dts: sunxi: h3/h5: Add MBUS controller node
Message-ID: <20190912202057.czb6nzgssg442isi@localhost.localdomain>
References: <20190912175132.411-1-jernej.skrabec@siol.net>
 <20190912175132.411-4-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912175132.411-4-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_132101_595901_76BE0E75 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Sep 12, 2019 at 07:51:29PM +0200, Jernej Skrabec wrote:
> Both, H3 and H5, contain MBUS, which is the bus used by DMA devices to
> access system memory.
> 
> MBUS controller is responsible for arbitration between channels based
> on set priority and can do some other things as well, like report
> bandwidth used. It also maps RAM region to different address than CPU.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  arch/arm/boot/dts/sunxi-h3-h5.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
> index eba190b3f9de..ef1d03812636 100644
> --- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
> +++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
> @@ -109,6 +109,7 @@
>  		compatible = "simple-bus";
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> +		dma-ranges;
>  		ranges;
>  
>  		display_clocks: clock@1000000 {
> @@ -538,6 +539,14 @@
>  			};
>  		};
>  
> +		mbus: dram-controller@1c62000 {
> +			compatible = "allwinner,sun8i-h3-mbus";
> +			reg = <0x01c62000 0x1000>;
> +			clocks = <&ccu 113>;
> +			dma-ranges = <0x00000000 0x40000000 0xc0000000>;
> +			#interconnect-cells = <1>;
> +		};
> +

If that's easy enough to access, can you also add the references in
the devices that are already there? (CSI and DE comes to my mind, but
there might be others).

Thanks!
Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
