Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DF515F197
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 19:04:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4Hoo5KUNk5MQJj8hJVYbQI7STM8gDrrBhT+PEV+Gnc=; b=OFpe0SFDrenHtU
	ZE2hPzhfJoNWxxQ0K9z+h9VC7JtHHbqC3JHISGn/TWFjsGeHUC5E7nPqgcYKNE44d1e1Y53ZAJchV
	2NKUXPGO3WHtp6DcatThCc1leP/M2AQnhs33ULpu5wY0wo4BborNf13sujA1xzE2Frqwqt7qRCrwT
	6N25sEVSp0pWriBAhfHaNC5W222xce8ZnLBVmZvQ55bQQz72SJBSZ709RecI0drYqx2Bj4vTxooqd
	fSXu5tz9DD+2RCWrmNS2hRsxFoUPRq5UUROaUpBb9quwyF5NgWh/gwTXR0qgiWnC2f9JHd1vpYoOe
	SoBdzdeB3n3/mW4PJ94w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2fK8-0005RY-F2; Fri, 14 Feb 2020 18:04:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2fJx-0005QZ-KH
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 18:04:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A21F328;
 Fri, 14 Feb 2020 10:04:08 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 344FD3F68E;
 Fri, 14 Feb 2020 10:04:07 -0800 (PST)
Date: Fri, 14 Feb 2020 18:04:04 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <maxime@cerno.tech>, Mark Rutland <Mark.Rutland@arm.com>,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: allwinner: h5: Fix PMU compatible
Message-ID: <20200214180404.24d67f86@donnerap.cambridge.arm.com>
In-Reply-To: <20200210095600.77894-1-maxime@cerno.tech>
References: <20200210095600.77894-1-maxime@cerno.tech>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_100409_710672_FBC3383E 
X-CRM114-Status: GOOD (  20.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 10 Feb 2020 10:55:59 +0100
Maxime Ripard <maxime@cerno.tech> wrote:

Hi,

> The commit c35a516a4618 ("arm64: dts: allwinner: H5: Add PMU node")
> introduced support for the PMU found on the Allwinner H5. However, the
> binding only allows for a single compatible, while the patch was adding
> two.

Maxime, thanks for bringing this up, was that found by some validation tool?

And while this is true, I wonder if this was intentional?
I see several other combinations of PMU compatibles in the tree.

Mark, Rob, can you shed any light on this?

Actually I am wondering why we would need the PMU type in the first place, isn't that discoverable via the MIDR?
And all we actually need from the DT is the interrupts and maybe some quirk info?

It looks like ACPI is always using the generic PMUv3 map, so wouldn't it actually be better to replace the compatible string matching with MIDR matching? Or are those core specific maps somewhat obsolete anyway? Since I don't see any newer cores in there?

Cheers,
Andre

> Make sure we follow the binding.


> 
> Fixes: c35a516a4618 ("arm64: dts: allwinner: H5: Add PMU node")
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
> index 9893aa64dd0b..4462a68c0681 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
> @@ -38,8 +38,7 @@ cpu3: cpu@3 {
>  	};
>  
>  	pmu {
> -		compatible = "arm,cortex-a53-pmu",
> -			     "arm,armv8-pmuv3";
> +		compatible = "arm,cortex-a53-pmu";
>  		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
>  			     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
>  			     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
