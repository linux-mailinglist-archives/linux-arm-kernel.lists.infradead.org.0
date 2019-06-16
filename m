Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9BF473E5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 11:00:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+OaVzn8sYgK/Zqly+BFRyyIbfZRPVtdvehKrpPTZKlo=; b=LkL9ZqbLbZ1Gla
	IGqnBJVhcrx4gKpfgB+tzAwoMcmcxdpXZOA5lvsThuBdusV+de5HAgdW+O1DmrJzCMMZ2gN6LnKO+
	E5jvmAbtdj82pEOLKTT6au5/DNcb+wDPkLy8HnDg2O9YNkn9O7DzKZx40HNExR98epe4R+XNso4mQ
	i55BjG5lpljY+ZfjtcEM25AxbZkKYyDrLC6p2BTWKJ2oxDHoFHS6YxY/2nUHKCDVwAuKjZsKK97C9
	sZd7sEHZ5kueC8boK2w0ypjH2oldhFDzaeI8IF3YI/GaRMYMEa+TtFiRUUFN+AL1rezbajUTR+oQf
	OThoq6I9yqqmgRr+TILA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcR0z-00062y-Gc; Sun, 16 Jun 2019 08:59:53 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcR0k-00062K-WD
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 08:59:40 +0000
Received: by mail-wm1-f68.google.com with SMTP id v19so6066762wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 01:59:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ITLiVQZ3ttHS2OCmJVdr2pwqDxExpjxblx6QJpo79NY=;
 b=R8hM5gor7DTjHrJ5Xx3Kp8zlTE04eaJHQSXS4gdHeThe+e9IHek1H83Sv0zzYSsHIW
 aF327F3lsxZIkCANckNNI57DLgXoJdxHiMsTNu3A+YYfQK9BcmahdaDwAoadXe9lGJom
 IIcr3x5G3/tJqzIrYS9FfEobv3T1BenGJbHfqrHk5gUQQu68aLZb0lJXKmgKw/uXJgLp
 pvUKIviiABWhOCPXqQwuSrbN9P1WWrLke1QEwPlupDmsj0m5rKLBL0AgtnWFxNinqfzQ
 jlBm/Z6+H62d8CkLEsNi42WCZMepRmBse0ZsLK/pjTnKKwivBfpdxUqJAsRHz3/DmEms
 d0lQ==
X-Gm-Message-State: APjAAAW7HMmMl2mMpZJChltrKJPrmnHlUKDQ+s309q+M/xj3tiVGx8Wk
 HljMu7WN4CyTic6Vmldf7Ls=
X-Google-Smtp-Source: APXvYqzSFlADfZGpYrtAtOjU/NYmJZYEAkWsu4on1+2TMhvgCshgH31ng4O8HIUzQ+YcUwFU6kLTWA==
X-Received: by 2002:a1c:6156:: with SMTP id v83mr9069782wmb.81.1560675571337; 
 Sun, 16 Jun 2019 01:59:31 -0700 (PDT)
Received: from kozik-lap ([194.230.155.186])
 by smtp.googlemail.com with ESMTPSA id s7sm4514716wmc.2.2019.06.16.01.59.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 16 Jun 2019 01:59:30 -0700 (PDT)
Date: Sun, 16 Jun 2019 10:59:28 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Joseph Kogut <joseph.kogut@gmail.com>
Subject: Re: [PATCH v2 2/2] arm: dts: add ARM Mali GPU node for Odroid XU3
Message-ID: <20190616085928.GB3826@kozik-lap>
References: <20190614203144.3850-2-joseph.kogut@gmail.com>
 <20190614235719.8134-1-joseph.kogut@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614235719.8134-1-joseph.kogut@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_015939_039780_36F5559A 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 linux-samsung-soc@vger.kernel.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org, kgene@kernel.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 04:57:19PM -0700, Joseph Kogut wrote:
> Add device tree node for mali gpu on Odroid XU3 SoCs.
> 
> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> ---
> 
> Changes v1 -> v2:
> - Use interrupt name ordering from binding doc
> - Specify a single clock for GPU node
> - Add gpu opp table
> - Fix warnings from IRQ_TYPE_NONE
> 
>  .../boot/dts/exynos5422-odroidxu3-common.dtsi | 26 +++++++++++++++++++

This should go to exynos5422-odroid-core.dtsi instead, because it is
common to entire Odroid Exynos5422 family (not only XU3 family).

>  1 file changed, 26 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> index 93a48f2dda49..b8a4246e3b37 100644
> --- a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> +++ b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> @@ -48,6 +48,32 @@
>  		cooling-levels = <0 130 170 230>;
>  	};
> 
> +	gpu: gpu@11800000 {
> +		compatible = "samsung,exynos-mali", "arm,mali-t628";

This is common to all Exynos542x chips so it should go to
exynos5420.dtsi. Here you would need to only enable it and provide
regulator.

Probably this should be also associated with tmu_gpu as a cooling device
(if Mali registers a cooling device...). Otherwise the tmu_gpu is not
really used for it.

> +		reg = <0x11800000 0x5000>;
> +		interrupts = <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 74  IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "job", "mmu", "gpu";
> +		clocks = <&clock CLK_G3D>;
> +		mali-supply = <&buck4_reg>;

Please check if always-on property could be removed from buck4. Also,
what about LDO27? It should be used as well (maybe through
vendor-specific properties which would justify the need of new vendor
compatible).


Best regards,
Krzysztof

> +		operating-points-v2 = <&gpu_opp_table>;
> +	};
> +
> +	gpu_opp_table: gpu-opp-table {
> +		compatible = "operating-points-v2";
> +
> +		opp-177000000 {
> +			opp-hz = /bits/ 64 <117000000>;
> +			opp-microvolt = <812500>;
> +		};
> +
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +			opp-microvolt = <1150000>;
> +		};
> +	};
> +
>  	thermal-zones {
>  		cpu0_thermal: cpu0-thermal {
>  			thermal-sensors = <&tmu_cpu0 0>;
> --
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
