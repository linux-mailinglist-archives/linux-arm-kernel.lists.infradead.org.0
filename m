Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAB819DAE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 18:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BV/Mf38yDu4c5i0p6aGL8839AK2AUgsw5IZeUjUeUGw=; b=atW9enDW+tvQt/
	NJKllUasCdIn/8+zsTkycCWMizViZ5uimkVcGyljim1GnZ+L/1D9RYSLJBar8QGRtrTO69GFr3GjA
	J76qIU725jFw6Lj0edN1jthdDP8j86XJ2HWMh3/ig+xzGbxJ7wyMawDB5v4LaKfBVRhk9YV09J17v
	AeszJNxv/ff+OjN9dzznwsCntg3btzDy9ff8Ss7sNa7pPDWK5n1a6wCokvMYeK3JESwWCUUYCpUSc
	E1fPpH44CwytxoZOgpZ9HEinVv3j9qY/NyH3MKPMTuXI8x0fnTquqRiKhyxrRlSuTNimf19vh37hc
	B/jvWAegMgnjIh8cCgyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKOri-0000KL-B3; Fri, 03 Apr 2020 16:08:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKOrb-0000Jd-1i; Fri, 03 Apr 2020 16:08:13 +0000
Received: from p5b127fb0.dip0.t-ipconnect.de ([91.18.127.176]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jKOrV-0005vZ-5e; Fri, 03 Apr 2020 18:08:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: remove include for irq.h
Date: Fri, 03 Apr 2020 18:08:04 +0200
Message-ID: <2606579.xTHnjFkxbI@phil>
In-Reply-To: <20200403154329.11256-2-jbx6244@gmail.com>
References: <20200403154329.11256-1-jbx6244@gmail.com>
 <20200403154329.11256-2-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_090811_239397_28FCECC5 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Johan,

Am Freitag, 3. April 2020, 17:43:28 CEST schrieb Johan Jonker:
> The 'irq.h' file is already included through 'arm-gic.h',
> so remove them from all Rockchip dtsi files.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm/boot/dts/rk3036.dtsi | 3 +--
>  arch/arm/boot/dts/rk322x.dtsi | 3 +--
>  arch/arm/boot/dts/rk3288.dtsi | 5 ++---
>  arch/arm/boot/dts/rk3xxx.dtsi | 1 -
>  arch/arm/boot/dts/rv1108.dtsi | 4 ++--
>  5 files changed, 6 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
> index 781ac7583..55f3838b2 100644
> --- a/arch/arm/boot/dts/rk3036.dtsi
> +++ b/arch/arm/boot/dts/rk3036.dtsi
> @@ -1,10 +1,9 @@
>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>  
> +#include <dt-bindings/clock/rk3036-cru.h>
>  #include <dt-bindings/gpio/gpio.h>
> -#include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> -#include <dt-bindings/clock/rk3036-cru.h>
>  #include <dt-bindings/soc/rockchip,boot-mode.h>

that movement of the *-cru.h files are unrelated changes,
as they're not described in the commit message.

If you really want to move these this should be a separate commit.


Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
