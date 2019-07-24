Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D68A0739BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 21:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qhEdhDfRj64G2uQIYekQXtQaF4XCoSo6muXRw1EFSqQ=; b=k6opqZJsALJqNj
	xoGBge7kxc+Q4lhPzbXDqBHmPCf0Mm6DEJkCAbr3cj/jMfZV2K9Xfcy9GltXNf3qTG4Q5xfPit+Hx
	I+4zjKZ/toOkBasKuOZlxRRp2WeU4QFgowwKAPYoW131SQI6WcX5n/nlidjYCQwagwLALleI8NiM0
	TVX/M//y7AjL4jvjzNYl709u+1SYYM2IZCS50l5+lAT9kMR1c62YHczPIPu+l8FYehVetQsBA8d8W
	k+1nzzU1ken0XQ88Funjs2kCFB70R1KPGBYlIKbdU6On5Mz2reOEvryP4nJvHXvacYkI2V8qyA9d7
	S1qFPr/xuKCLr/hwPTyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNAe-0005xM-CW; Wed, 24 Jul 2019 19:43:28 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNAT-0005wk-69
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 19:43:18 +0000
Received: by mail-wr1-f66.google.com with SMTP id f9so48171986wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 12:43:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dslj9P+lW7e6qJrlTP3vfXS2Cf51Y/kndAh16hKfgsw=;
 b=PIunvEl5i8pitrptK06glmyybUp61SYx2LLDR/4bO3gx18Y5IJyYzyGzcEDSzkpnIu
 HEneEVlls4qYAucZjLJtC8kNjl5ClTjtiZSb0l+PIQYk8r8fnAN9wvwFFThxIVbYpBK4
 qfbpfW5gzZBVmJZCJi+bMrqBCtIPAaHAoQdYmz124++z3ZKYxgOZB6qxtERi/zLjvvbU
 GnJXV4w1YYIalEMZrzzBbYKLZferg7mTj2Bpu/Lf/B6whdIdY+B8lo64ul8+lECTugTM
 IZS2kJ6XWf+Tde5NG9/XrIjMMuEi612hiM+qOc0vtYFQCjo9pwyVmtiCByD+89uCCGzx
 +NWQ==
X-Gm-Message-State: APjAAAVgxMYj+y0yDDBVO+MQIYr98075lCifNdKezQ0PkZqkaTvYk+lK
 ZgwSkK1BagDNFkxfoJ7sExc=
X-Google-Smtp-Source: APXvYqyt/nYi/kv5oSj5A+zQK7NJl5V1Y8FdvyGTPvRoDLXBM1S6Qy2pjonLUX7NnFUtT/p0XDyMQw==
X-Received: by 2002:a05:6000:1203:: with SMTP id
 e3mr13281982wrx.300.1563997395606; 
 Wed, 24 Jul 2019 12:43:15 -0700 (PDT)
Received: from kozik-lap ([194.230.155.239])
 by smtp.googlemail.com with ESMTPSA id q10sm50126245wrf.32.2019.07.24.12.43.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 12:43:15 -0700 (PDT)
Date: Wed, 24 Jul 2019 21:43:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Guillaume GARDET <guillaume.gardet@free.fr>
Subject: Re: [PATCH] arm: dts: exynos: Add GPU/Mali T604 node to exynos5250
Message-ID: <20190724194313.GA1898@kozik-lap>
References: <20190724072008.6272-1-guillaume.gardet@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724072008.6272-1-guillaume.gardet@free.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_124317_230959_7F916B28 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Guillaume GARDET <guillaume.gardet@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Thanks for the patch.

On Wed, Jul 24, 2019 at 09:20:08AM +0200, Guillaume GARDET wrote:
> From: Guillaume GARDET <guillaume.gardet@arm.com>
> 
> Add nodes for GPU (Mali T604) to Exynos5250, disabled by default.

Why disabled? If tested I would expect it to be enabled at least on
tested platforms.

> Tested with kmscube on Chromebook snow.
> 
> Signed-off-by: Guillaume GARDET <guillaume.gardet@arm.com>
> 
> Cc: Kukjin Kim <kgene@kernel.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> 
> ---
>  arch/arm/boot/dts/exynos5250.dtsi | 47 +++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
> index d5e0392b409e..5ce4b2853cf2 100644
> --- a/arch/arm/boot/dts/exynos5250.dtsi
> +++ b/arch/arm/boot/dts/exynos5250.dtsi
> @@ -1097,6 +1097,53 @@
>  		 */
>  		clock-frequency = <24000000>;
>  	};
> +
> +	mali: gpu@0x11800000 {

1. Put the node under /soc (as recently pointed out by Marek Szyprowski)
in an address-sorted mode... if possible (nodes are mixed so find some
reasonable place based on address_.
2. Fix errors from:
make dtbs W=1

> +		compatible = "samsung,exynos5250-mali", "arm,mali-t604";

You also need to update the bindings.

> +		reg = <0x11800000 0x5000>;
> +		interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
> +		             <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,

Please run checkpatch and fix the errors.

> +			     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "job", "mmu", "gpu";
> +		clocks = <&clock CLK_G3D>;
> +		clock-names = "g3d";
> +		operating-points-v2 = <&gpu_opp_table>;
> +		power-domains = <&pd_g3d>;
> +		status = "disabled";
> +	};
> +
> +	gpu_opp_table: gpu-opp-table {

GPU opp table as subnode of Mali node.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
