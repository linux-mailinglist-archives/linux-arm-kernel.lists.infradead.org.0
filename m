Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 594561B3BB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 11:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rUSbj2wWXSmcvh0ife3SFoCy8BspQZFWrGiZLt0wxaw=; b=PayeJ00YTxNkG7
	jzLY0/7o6SbYbhIY641FVhvPvM2vLkky2larufu6MMJfRTNSNL+nNKx41tEdRdLsl3YXTuCOnfKP+
	q32GoBNfVF+dIja6OTvleYsZdJ6ryy8l75AtxaHotFdsDP0d4PqEdSVO/6pD3S0LgN+gXJrdqOXez
	eWHEnK/u7HgsPBNhLdq0T28ibWqOg8liyraNf3OpYoyknn4EtgSm+iKMJh1KOkCaV4GlfhpG2cWzb
	p54573WNjotzcw6tSmOYcTMiubVC6cAW7tyy5PD8gYIzYI03iNGP4YNVwa/+PS1D57S1DikLutY9l
	gbTIUO+4QpL7vNeHlh1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRBz7-0008RJ-E4; Wed, 22 Apr 2020 09:48:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRByv-0008QP-8x
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 09:47:50 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8FBED2071E;
 Wed, 22 Apr 2020 09:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587548868;
 bh=VDHv7iN7f71wDl0Vm0L8nrtTCwARrTeDoVAxeAGLVmo=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=VbAV/lWHS2qQ8ld0T0GumGUybrF3+jzfqIyvP++6F+z/oF6aGijuYj7rFrmyK4hXh
 IVpszqtn7I+Khe4u6muPSMSuIY68b/BnG+9+iiTjimExGrZ2VNCAXOgZOT0lKpe+eX
 duDW8qDbVJCQrR6kaxDa/V0LidGo8iCNTAM+NhEY=
MIME-Version: 1.0
In-Reply-To: <20200419170810.5738-6-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-6-robh@kernel.org>
Subject: Re: [PATCH 05/17] clk: versatile: Kill CONFIG_COMMON_CLK_VERSATILE
From: Stephen Boyd <sboyd@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>
Date: Wed, 22 Apr 2020 02:47:47 -0700
Message-ID: <158754886772.132238.8648193086417881263@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_024749_336034_00C55C72 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rob Herring (2020-04-19 10:07:58)
> diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
> index c2618f1477a2..3465fb291998 100644
> --- a/drivers/clk/versatile/Kconfig
> +++ b/drivers/clk/versatile/Kconfig
> @@ -1,22 +1,14 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  config ICST
> -       bool
> -
> -config COMMON_CLK_VERSATILE
> -       bool "Clock driver for ARM Reference designs"
> -       depends on ARCH_INTEGRATOR || ARCH_REALVIEW || \
> -               ARCH_VERSATILE || ARCH_VEXPRESS || ARM64 || \
> -               COMPILE_TEST
> +       bool "Clock driver for ARM Reference designs ICST" if COMPILE_TEST
>         select REGMAP_MMIO
>         ---help---
>           Supports clocking on ARM Reference designs:
>           - Integrator/AP and Integrator/CP
>           - RealView PB1176, EB, PB11MP and PBX
> -         - Versatile Express
>  
>  config CLK_SP810
>         bool "Clock driver for ARM SP810 System Controller"
> -       depends on COMMON_CLK_VERSATILE

Shouldn't this get the depends from COMMON_CLK_VERSATILE so that this
option isn't exposed unless someone is compile testing or using that
platform?

>         default y if ARCH_VEXPRESS
>         ---help---
>           Supports clock muxing (REFCLK/TIMCLK to TIMERCLKEN0-3) capabilities
> @@ -24,8 +16,7 @@ config CLK_SP810
>  
>  config CLK_VEXPRESS_OSC
>         bool "Clock driver for Versatile Express OSC clock generators"
> -       depends on COMMON_CLK_VERSATILE
> -       depends on VEXPRESS_CONFIG
> +       depends on VEXPRESS_CONFIG || COMPILE_TEST
>         default y if ARCH_VEXPRESS
>         ---help---
>           Simple regmap-based driver driving clock generators on Versatile

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
