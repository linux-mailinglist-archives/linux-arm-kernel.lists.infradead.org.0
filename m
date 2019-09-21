Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F05B9FB3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 22:47:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p220ahbsbsaScamaEQXs7hFo1IY3rtOEYyvIC6MO8pc=; b=fGPPnTckvuInxc
	5JPxjRCGPO2BqD9PHAH8+Zk0NUJro7tqDOW10onUH/yP0KA1NNZCsO3tKyHJGwSbeM9LJUQiU1ew0
	2fvuEzBZ7cGdF2hL1FwtyFH4fjwxr70bk8Fp5iiyfCOEeGgzSz2DDy7sP6qFf2r1Gm906uMyoGVtC
	8DWzgBIqbAW7E+iMtbc7zCLHoGrpfS4swKozQGKwz91PBkJWi36Bmeb1b8OP8OpQPx+DOjlvX6dV1
	TtzHW+q9cYE5QOkTBCzXyI+8l95gwUyqwys1OHwbmdEL0d8ltICAtx+ENj7AwfKRyMkB+KJCAei9e
	p0BlwoX6zSwXHZIa+kRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBmHf-0004PD-Eq; Sat, 21 Sep 2019 20:47:11 +0000
Received: from [2601:1c0:6280:3f0::9a1f]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBmHT-0004P1-42; Sat, 21 Sep 2019 20:46:59 +0000
Subject: Re: [PATCH 2/2] soc: ti: move 2 driver config options into the TI SOC
 drivers menu
To: LKML <linux-kernel@vger.kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>
References: <ae4b494c-9723-1bc2-e471-e0e9f7df6e8f@infradead.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <2f0cd6cf-83c3-f60f-3d72-fd0cec64105e@infradead.org>
Date: Sat, 21 Sep 2019 13:46:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ae4b494c-9723-1bc2-e471-e0e9f7df6e8f@infradead.org>
Content-Language: en-US
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
Cc: Nishanth Menon <nm@ti.com>, Benjamin Fair <b-fair@ti.com>,
 Tony Lindgren <tony@atomide.com>, Tero Kristo <t-kristo@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Santosh,

Would you also pick up patch 2/2, which I didn't Cc: you on?    :(

Do I need to resend it?

Thanks.

On 9/19/19 3:33 PM, Randy Dunlap wrote:
> From: Randy Dunlap <rdunlap@infradead.org>
> 
> Move the AM654 and J721E SOC config options inside the "TI SOC drivers"
> menu with the other TI SOC drivers.
> 
> Fixes: a869b7b30dac ("soc: ti: Add Support for AM654 SoC config option")
> Fixes: cff377f7897a ("soc: ti: Add Support for J721E SoC config option")
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Olof Johansson <olof@lixom.net>
> Cc: Nishanth Menon <nm@ti.com>
> Cc: Benjamin Fair <b-fair@ti.com>
> Cc: Tony Lindgren <tony@atomide.com>
> Cc: Tero Kristo <t-kristo@ti.com>
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  drivers/soc/ti/Kconfig |   20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> --- lnx-53.orig/drivers/soc/ti/Kconfig
> +++ lnx-53/drivers/soc/ti/Kconfig
> @@ -1,4 +1,12 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> +
> +# TI SOC drivers
> +#
> +menuconfig SOC_TI
> +	bool "TI SOC drivers support"
> +
> +if SOC_TI
> +
>  # 64-bit ARM SoCs from TI
>  if ARM64
>  
> @@ -14,17 +22,9 @@ config ARCH_K3_J721E_SOC
>  	help
>  	  Enable support for TI's J721E SoC Family.
>  
> -endif
> +endif # ARCH_K3
>  
> -endif
> -
> -#
> -# TI SOC drivers
> -#
> -menuconfig SOC_TI
> -	bool "TI SOC drivers support"
> -
> -if SOC_TI
> +endif # ARM64
>  
>  config KEYSTONE_NAVIGATOR_QMSS
>  	tristate "Keystone Queue Manager Subsystem"
> 
> 
> 


-- 
~Randy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
