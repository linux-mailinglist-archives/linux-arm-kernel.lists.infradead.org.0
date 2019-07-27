Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F3B77852
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 12:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+iYJv60worFjshXrN165xsT5mcBZlpZPwITL23gtsY=; b=ONs8gKQY4HZELY
	i4dJLunm9cXby2KOM21yChP/gzq7OhtN76bTepb6XEZ1yqAznPHhDbPlo6jzbpYn0M+ES8wTxJiKH
	JkXhaJlJKJQqL7YMKa066jKUspOQXOahZvXPL2y+fFbB52Atdj/0WYnEJjs5Dox2t2beMK05iOKmc
	jy8yi2zFHHcX6x+fQuG41CYzYtHSGHOlJCFsBdS8BYcfgkAtmqbVjj6LvaVaJdBqjsTLuV4iKG/65
	Ob1Mqx07zv913+Z/U1CZVS6PB1fd/d2Wl2dy/QP/xxhcXuXFbeOnwvxwfEUguDX/PnGAjvr5YKuaY
	+jjtX7H/jqM1j5QoLbbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrKIT-0007b3-4N; Sat, 27 Jul 2019 10:51:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrKIK-0007aV-SY
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 10:51:22 +0000
Received: from localhost (lfbn-1-17239-195.w86-248.abo.wanadoo.fr
 [86.248.61.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B0942081B;
 Sat, 27 Jul 2019 10:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564224680;
 bh=aC5qgfw92/SyHhkS/dx9G3VFGN8AyvxWdxsBO5J3CLA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FUBL8iC2OQ/Iglwg6Jc5NYtBB7Vm/CzzU+JLG84hfHyy/3KjvuaCTfk8gZVZGe3l+
 jvgXa+7knlA8dhUsXjOeLPFXrGCCNQp/2TqEAFyu7IUg8ly7JlQ8FqK2rsd+PQ+Kx/
 RQsTfj02ruUkvhUxBwbOj2wEAIyzfioxipvV9NvA=
Date: Sat, 27 Jul 2019 12:51:17 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 6/6] arm64: dts: allwinner: h6: Add PWM node
Message-ID: <20190727105117.rcud3x6oskc43zso@flea.home>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-7-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726184045.14669-7-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_035120_937704_AAF17E48 
X-CRM114-Status: GOOD (  19.39  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 wens@csie.org, thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 08:40:45PM +0200, Jernej Skrabec wrote:
> Allwinner H6 PWM is similar to that in A20 except that it has additional
> bus clock and reset line.
>
> Note that first PWM channel is connected to output pin and second
> channel is used internally, as a clock source to AC200 co-packaged chip.
> This means that any combination of these two channels can be used and
> thus it doesn't make sense to add pinctrl nodes at this point.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> index e8bed58e7246..c1abd805cfdc 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> @@ -229,6 +229,16 @@
>  			status = "disabled";
>  		};
>
> +		pwm: pwm@300a000 {
> +			compatible = "allwinner,sun50i-h6-pwm";
> +			reg = <0x0300a000 0x400>;
> +			clocks = <&osc24M>, <&ccu CLK_BUS_PWM>;
> +			clock-names = "pwm", "bus";

We always have the bus clock first, so I'd really like to keep
that. We also usually use mod for the second clock, and not the name
of the device itself.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
