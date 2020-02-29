Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C88C174565
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 07:13:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rXl5MMiIoeS5yVDDI/Wf0FVb8rxWbv1ZoemdsExM4JE=; b=ivIye/8gtfHuE6
	DkkrdqxtoQxv7hyvD+AyFc5GanSKbZsCYLIDEEjjrLtjL7OUicRV/NGmPlUYjbA4kxE1qe3ReRVqN
	iBstfX6JWUAq4X8aptCVJMbz5kP6MQAGoAL/PC90J/RsTRIeNqZkbtgXO+VurHef7ymLnLQTiAS7+
	Ma1rZ3l/F7Pf7YRiAda7KQZ6LM8PpRW7NZTzA6C/p2uciCgmEJPoCtFie3FI/xBEjiNQcHwgtPNtJ
	E07xsBtVZjsHh/KjwVT0cg+2s58790r2oFPrVu2aD4RNYoKswDmcn7nO9M4+AFNknM/CKwaJOZb2s
	UDz+20A0sFRKjj4RdwuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7vMz-0000qQ-5H; Sat, 29 Feb 2020 06:13:01 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7vMh-0000nx-VR
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 06:12:46 +0000
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com
 [209.85.221.169]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 01T6CU0n007885
 for <linux-arm-kernel@lists.infradead.org>; Sat, 29 Feb 2020 15:12:31 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 01T6CU0n007885
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582956751;
 bh=eUac00y4+KjD0ZFkpw13qSxG2E1VV85gjairgIZ++iU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BiwbYIPvVAtUArrnn9d47b0HltiNy5y8LXEUK8LZB1Kp4Yyog9aLThfOcmqwT7aFi
 NKeewG1nLH5CSU3rr9scD0zEIjKW1khdHKTyBRIDwri0r4bTUKLK7g7NUuBk9rscVE
 V6hFn9NEZTMn7o8fKQqCfWRE1VOMUp5Wu67h7S+NbgB7uqH+NhdbOi9CS3k0uDXs5A
 K7yAkkeL4ibsqZHwl/QoK3ctHqj6bID2THaT36Kvcz5onAWcJSUJPTtpGTormdXCoh
 vw4qQww4Rgv8wWhqEznT1jQjUO8ZICeJI+NRBdVQ5ds1ES9c7HCiUgqgZJ4Ed5DIfi
 wB5pYXpF4FY5g==
X-Nifty-SrcIP: [209.85.221.169]
Received: by mail-vk1-f169.google.com with SMTP id t129so1566835vkg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 22:12:31 -0800 (PST)
X-Gm-Message-State: ANhLgQ3YL7M25p9uDODernVd5peCBYDkhj00Z+quzJ8AdjetIyjBaR8c
 mC0cMWQRvNQ+jEuqlAXhk9U/Y1CD6/br7WoVr2Y=
X-Google-Smtp-Source: ADFU+vuplMIRZuW5G8+FaAaCGMpR7KsnrGDyb+zzSiSHiyXAJwy+8RJztwATJpKRuKBVa3zHwzqoCxDMrmkWljbu8g4=
X-Received: by 2002:a1f:b401:: with SMTP id d1mr2587941vkf.26.1582956750237;
 Fri, 28 Feb 2020 22:12:30 -0800 (PST)
MIME-Version: 1.0
References: <20200222064445.14903-1-yamada.masahiro@socionext.com>
 <20200222064445.14903-2-yamada.masahiro@socionext.com>
In-Reply-To: <20200222064445.14903-2-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 29 Feb 2020 15:11:54 +0900
X-Gmail-Original-Message-ID: <CAK7LNARE4uo8+_+zHthy+nQQrVvT-DeNx8F_7i5jWF-33DMkMQ@mail.gmail.com>
Message-ID: <CAK7LNARE4uo8+_+zHthy+nQQrVvT-DeNx8F_7i5jWF-33DMkMQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: uniphier: change SD/eMMC node names to
 follow json-schema
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_221244_539961_8388DDEB 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.82 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 22, 2020 at 3:45 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Follow the standard nodename pattern "^mmc(@.*)?$" defined in
> Documentation/devicetree/bindings/mmc/mmc-controller.yaml
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---


Applied to linux-uniphier.



>  arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi | 2 +-
>  arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 4 ++--
>  arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 4 ++--
>  3 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
> index 5b18bda9c5a6..7510db465f33 100644
> --- a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
> +++ b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
> @@ -433,7 +433,7 @@
>                         };
>                 };
>
> -               emmc: sdhc@5a000000 {
> +               emmc: mmc@5a000000 {
>                         compatible = "socionext,uniphier-sd4hc", "cdns,sd4hc";
>                         reg = <0x5a000000 0x400>;
>                         interrupts = <0 78 4>;
> diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
> index f2dc5f695020..8d360c5cc32b 100644
> --- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
> +++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
> @@ -559,7 +559,7 @@
>                         };
>                 };
>
> -               emmc: sdhc@5a000000 {
> +               emmc: mmc@5a000000 {
>                         compatible = "socionext,uniphier-sd4hc", "cdns,sd4hc";
>                         reg = <0x5a000000 0x400>;
>                         interrupts = <0 78 4>;
> @@ -578,7 +578,7 @@
>                         cdns,phy-dll-delay-sdclk-hsmmc = <21>;
>                 };
>
> -               sd: sdhc@5a400000 {
> +               sd: mmc@5a400000 {
>                         compatible = "socionext,uniphier-sd-v3.1.1";
>                         status = "disabled";
>                         reg = <0x5a400000 0x800>;
> diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
> index 73e7e1203b09..d51b0735917c 100644
> --- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
> +++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
> @@ -353,7 +353,7 @@
>                         };
>                 };
>
> -               emmc: sdhc@5a000000 {
> +               emmc: mmc@5a000000 {
>                         compatible = "socionext,uniphier-sd4hc", "cdns,sd4hc";
>                         reg = <0x5a000000 0x400>;
>                         interrupts = <0 78 4>;
> @@ -372,7 +372,7 @@
>                         cdns,phy-dll-delay-sdclk-hsmmc = <21>;
>                 };
>
> -               sd: sdhc@5a400000 {
> +               sd: mmc@5a400000 {
>                         compatible = "socionext,uniphier-sd-v3.1.1";
>                         status = "disabled";
>                         reg = <0x5a400000 0x800>;
> --
> 2.17.1
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
