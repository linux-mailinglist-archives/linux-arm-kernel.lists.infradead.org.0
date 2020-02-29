Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E0D174557
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 07:09:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WR602mEfIhRlE+p975Dh4l8PlmijA0IY8zHxu+/rhqo=; b=iEMrcIOI0UlqR/
	R1IUYpNnxte+sm50WS/kLJgG2JVl9FN21sBbPhH/nG5/5CWgyPlaGf2bl4SWCLxWSXiCV4N8SgHez
	kv8H2PX/Hmc11q5j+RQMLCir8f8AGDWPKgFHjMXJOSDtOyO3D193FtStETjs86DK+qIaTaxytENGk
	cu8fh9Aul8XD3TTlc+EKrUsOXmbwsOUCmsAfK6T98JhL2ZII0ek7z+U36mdWaX0Tq2wnsLiU+xiVO
	EZc3exbzm47RshyCnbsJRl9h/S8LcUQfUcs3IXTNVa07qMbtpbKjRSi3404XQyj+T3S3FSOIwjDze
	KXRYgGxgnFPGD3b0dxUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7vJs-0006T3-Sg; Sat, 29 Feb 2020 06:09:48 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7vJh-0006Qy-PA
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 06:09:39 +0000
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
 [209.85.222.46]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id 01T69CMf012858
 for <linux-arm-kernel@lists.infradead.org>; Sat, 29 Feb 2020 15:09:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 01T69CMf012858
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582956553;
 bh=FDOn710v7y7+ihVj2jblA+fctMmPwnjIEd1Ea49dLC0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=gCrDiaW46tABUNq60rflRlhsWX10fRekkRTzE8ubR0T4pbNKLlcSNKCg1okjYCVKE
 t2EY3wK5AtiTJKkonEmStcPPLl/dKmZIOgxHtRjO8Z4IPgvm2YWPrwPR/DuYM4N4VG
 8JZhY1ydVOuJKUjHCTpAVL8MZ4jFvgUYAGEqh++JULndT98gjk7cEg9TG8NCDz8lud
 iiDBmJpq9D/nIZBpkNKsXIyQ/2pqBdy+34HmCZLi+J9ekcixRjKaNB1GEQa4+YigX+
 t3vFKVxU//0qtaG1jQCko5qo59cHfX6g2t7wcCk6O/Gm8NMquzgUQH9+iafNZhgEjG
 NjDG3J2drHsFw==
X-Nifty-SrcIP: [209.85.222.46]
Received: by mail-ua1-f46.google.com with SMTP id p2so1801555uao.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 22:09:13 -0800 (PST)
X-Gm-Message-State: ANhLgQ2j9Tza64pkzct0Hhy26nxs2ECev9ZBauttPkjJdnlQ01Src+iC
 S0xopJgqZN3cIEsqU23aFJ6GKyxdfuOsVTmS38o=
X-Google-Smtp-Source: ADFU+vvd2S7Ste0Zn/eGxDN/NNdK6s5ZpfeCHP0r5Cao2Sh6KWRfQ2UxnVFAabBiDACbWhnKN3OXiVkeb8whOGEovwU=
X-Received: by 2002:ab0:2414:: with SMTP id f20mr3763217uan.121.1582956552146; 
 Fri, 28 Feb 2020 22:09:12 -0800 (PST)
MIME-Version: 1.0
References: <20200226035914.23582-1-yamada.masahiro@socionext.com>
In-Reply-To: <20200226035914.23582-1-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 29 Feb 2020 15:08:36 +0900
X-Gmail-Original-Message-ID: <CAK7LNATchD=T_V5Z489FqHB5VkLX4x=gMoq6azMQGk-Q2wQG_Q@mail.gmail.com>
Message-ID: <CAK7LNATchD=T_V5Z489FqHB5VkLX4x=gMoq6azMQGk-Q2wQG_Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: uniphier: rename NAND node names to follow
 json-schema
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_220938_050960_C2A9612C 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
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
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 1:00 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Follow the standard nodename pattern "^nand-controller(@.*)?" defined
> in Documentation/devicetree/bindings/mtd/nand-controller.yaml
>
> Otherwise, after the dt-binding is converted to json-schema,
> 'make ARCH=arm dtbs_check' will show a warning like this:
>
>   nand@68000000: $nodename:0: 'nand@68000000' does not match '^nand-controller(@.*)?'
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---


Applied to linux-uniphier.



>  arch/arm/boot/dts/uniphier-ld4.dtsi  | 2 +-
>  arch/arm/boot/dts/uniphier-pro4.dtsi | 2 +-
>  arch/arm/boot/dts/uniphier-pro5.dtsi | 2 +-
>  arch/arm/boot/dts/uniphier-pxs2.dtsi | 2 +-
>  arch/arm/boot/dts/uniphier-sld8.dtsi | 2 +-
>  5 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm/boot/dts/uniphier-ld4.dtsi b/arch/arm/boot/dts/uniphier-ld4.dtsi
> index 23b8fd627c00..197bee7d8b7f 100644
> --- a/arch/arm/boot/dts/uniphier-ld4.dtsi
> +++ b/arch/arm/boot/dts/uniphier-ld4.dtsi
> @@ -398,7 +398,7 @@
>                         };
>                 };
>
> -               nand: nand@68000000 {
> +               nand: nand-controller@68000000 {
>                         compatible = "socionext,uniphier-denali-nand-v5a";
>                         status = "disabled";
>                         reg-names = "nand_data", "denali_reg";
> diff --git a/arch/arm/boot/dts/uniphier-pro4.dtsi b/arch/arm/boot/dts/uniphier-pro4.dtsi
> index eb06c353970f..b02bc8a6346b 100644
> --- a/arch/arm/boot/dts/uniphier-pro4.dtsi
> +++ b/arch/arm/boot/dts/uniphier-pro4.dtsi
> @@ -588,7 +588,7 @@
>                         };
>                 };
>
> -               nand: nand@68000000 {
> +               nand: nand-controller@68000000 {
>                         compatible = "socionext,uniphier-denali-nand-v5a";
>                         status = "disabled";
>                         reg-names = "nand_data", "denali_reg";
> diff --git a/arch/arm/boot/dts/uniphier-pro5.dtsi b/arch/arm/boot/dts/uniphier-pro5.dtsi
> index c95eb44c816d..f84a43a10f38 100644
> --- a/arch/arm/boot/dts/uniphier-pro5.dtsi
> +++ b/arch/arm/boot/dts/uniphier-pro5.dtsi
> @@ -453,7 +453,7 @@
>                         };
>                 };
>
> -               nand: nand@68000000 {
> +               nand: nand-controller@68000000 {
>                         compatible = "socionext,uniphier-denali-nand-v5b";
>                         status = "disabled";
>                         reg-names = "nand_data", "denali_reg";
> diff --git a/arch/arm/boot/dts/uniphier-pxs2.dtsi b/arch/arm/boot/dts/uniphier-pxs2.dtsi
> index c054d0175df9..989b2a241822 100644
> --- a/arch/arm/boot/dts/uniphier-pxs2.dtsi
> +++ b/arch/arm/boot/dts/uniphier-pxs2.dtsi
> @@ -761,7 +761,7 @@
>                         };
>                 };
>
> -               nand: nand@68000000 {
> +               nand: nand-controller@68000000 {
>                         compatible = "socionext,uniphier-denali-nand-v5b";
>                         status = "disabled";
>                         reg-names = "nand_data", "denali_reg";
> diff --git a/arch/arm/boot/dts/uniphier-sld8.dtsi b/arch/arm/boot/dts/uniphier-sld8.dtsi
> index a05061038e78..fbfd25050a04 100644
> --- a/arch/arm/boot/dts/uniphier-sld8.dtsi
> +++ b/arch/arm/boot/dts/uniphier-sld8.dtsi
> @@ -402,7 +402,7 @@
>                         };
>                 };
>
> -               nand: nand@68000000 {
> +               nand: nand-controller@68000000 {
>                         compatible = "socionext,uniphier-denali-nand-v5a";
>                         status = "disabled";
>                         reg-names = "nand_data", "denali_reg";
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
