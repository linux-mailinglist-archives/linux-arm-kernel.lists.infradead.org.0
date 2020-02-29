Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D616F17455C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 07:11:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xWYAe2BPXNb4V5A17fjMeO0LFH6almWes8vI0cCbHEI=; b=oV5Bq4paJPBRrZ
	g0xAj7oEH/PPKyot+ueVfPwTx7ExOHrn8aa/3uYNYCHxdsIZkwh+vf7CX5TOPn87fJPOrHraivAV4
	nj2+RtDpPMxu4FfaC1NbfIZZ03+selxUzt+l73HqK1mLk/A2Q6SpyY5V1fh3JM2h/JaqmHOASFANB
	l0cjhKxGQhum72PMVxrBIRKzqTdobnnyBpSt3448oasOzYlFQRJ6H2hTo87A0eLIYOPF0T9R2OyBl
	GQsb+1q6Fzf3nQPeW+tufIfgJmdSmkvPI52zs3+g8DhxlZiDZtdMe6wlpg8LTUy+JPkqDDvboVutS
	rMhjbbBz/BAGNKPROLXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7vLL-0008NR-Od; Sat, 29 Feb 2020 06:11:19 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7vL9-0008MI-9p
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 06:11:08 +0000
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com
 [209.85.222.51]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 01T6AeU8007085
 for <linux-arm-kernel@lists.infradead.org>; Sat, 29 Feb 2020 15:10:41 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 01T6AeU8007085
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582956641;
 bh=dz9GOcgjTtA6sfdBaVeug5DwkkY3/2n7C5+Ih/6zEtQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=yWRSOmixwjfWLtjn3x6iL5ab8PtdvUkxQT84knbAIUBlJaqlxintQsnD4/59LFGTt
 qzyMP0hfTJxZlYGp/QFMgwGAUsaXVKSrm2+kwUNs+rvCEO91BD32rK5ItK3hi8Kdoy
 uHuH2777Z3EHMnkVt69qhITG0MLklG2swUBx5olYXoqOfDgDCgWMMCtkxCOUuI1IPB
 3RSsOTYCOxk810SAVFqnBdmvy8ryyKmU+fD7KbCyPbbY/MXb73JXbxp3Hl839cKibW
 SK0HFsDDQpQgqqX/1Rt0DgtlGpUzQeJGMF80u9sicE2M0lgG1jzTqBgv3FcHHNfsux
 EaaXi9d3v4awg==
X-Nifty-SrcIP: [209.85.222.51]
Received: by mail-ua1-f51.google.com with SMTP id 1so1816182uao.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 22:10:41 -0800 (PST)
X-Gm-Message-State: ANhLgQ3oVr2sIUIm0MNpkZkgOmNAQhTffKcF3cd1vzM3dLdjUijliG4N
 JJ2T6vpQmfoCUfHjOxY/vhawqLjnmf2W0efY7ek=
X-Google-Smtp-Source: ADFU+vtvCaDbHB526SMqgQeaBzfiO1W0aKK0d8VUeVEZJh1KdtKMLUpM7kuHsqh57iAV4ijET8E6PHExl9SuksLyfxg=
X-Received: by 2002:ab0:3485:: with SMTP id c5mr3673324uar.109.1582956640386; 
 Fri, 28 Feb 2020 22:10:40 -0800 (PST)
MIME-Version: 1.0
References: <20200222064445.14903-1-yamada.masahiro@socionext.com>
 <20200222064445.14903-3-yamada.masahiro@socionext.com>
In-Reply-To: <20200222064445.14903-3-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 29 Feb 2020 15:10:04 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQtoPMckm2mgjABX0eHccR0nYM4=gGkdGRv1QVu-Ws=mw@mail.gmail.com>
Message-ID: <CAK7LNAQtoPMckm2mgjABX0eHccR0nYM4=gGkdGRv1QVu-Ws=mw@mail.gmail.com>
Subject: Re: [PATCH 3/4] ARM: dts: uniphier: rename aidet node names to follow
 json-schema
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_221107_569929_A529DA20 
X-CRM114-Status: GOOD (  13.98  )
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
> Follow the standard nodename pattern "^interrupt-controller(@[0-9a-f,]+)*$"
> defined in schemas/interrupt-controller.yaml of dt-schema.
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
> index f3a20dc0b22b..23b8fd627c00 100644
> --- a/arch/arm/boot/dts/uniphier-ld4.dtsi
> +++ b/arch/arm/boot/dts/uniphier-ld4.dtsi
> @@ -375,7 +375,7 @@
>                         interrupt-controller;
>                 };
>
> -               aidet: aidet@61830000 {
> +               aidet: interrupt-controller@61830000 {
>                         compatible = "socionext,uniphier-ld4-aidet";
>                         reg = <0x61830000 0x200>;
>                         interrupt-controller;
> diff --git a/arch/arm/boot/dts/uniphier-pro4.dtsi b/arch/arm/boot/dts/uniphier-pro4.dtsi
> index e96b5796f0f8..eb06c353970f 100644
> --- a/arch/arm/boot/dts/uniphier-pro4.dtsi
> +++ b/arch/arm/boot/dts/uniphier-pro4.dtsi
> @@ -426,7 +426,7 @@
>                         };
>                 };
>
> -               aidet: aidet@5fc20000 {
> +               aidet: interrupt-controller@5fc20000 {
>                         compatible = "socionext,uniphier-pro4-aidet";
>                         reg = <0x5fc20000 0x200>;
>                         interrupt-controller;
> diff --git a/arch/arm/boot/dts/uniphier-pro5.dtsi b/arch/arm/boot/dts/uniphier-pro5.dtsi
> index f794a0676760..c95eb44c816d 100644
> --- a/arch/arm/boot/dts/uniphier-pro5.dtsi
> +++ b/arch/arm/boot/dts/uniphier-pro5.dtsi
> @@ -408,7 +408,7 @@
>                         };
>                 };
>
> -               aidet: aidet@5fc20000 {
> +               aidet: interrupt-controller@5fc20000 {
>                         compatible = "socionext,uniphier-pro5-aidet";
>                         reg = <0x5fc20000 0x200>;
>                         interrupt-controller;
> diff --git a/arch/arm/boot/dts/uniphier-pxs2.dtsi b/arch/arm/boot/dts/uniphier-pxs2.dtsi
> index 04d6bef3a00f..c054d0175df9 100644
> --- a/arch/arm/boot/dts/uniphier-pxs2.dtsi
> +++ b/arch/arm/boot/dts/uniphier-pxs2.dtsi
> @@ -508,7 +508,7 @@
>                         };
>                 };
>
> -               aidet: aidet@5fc20000 {
> +               aidet: interrupt-controller@5fc20000 {
>                         compatible = "socionext,uniphier-pxs2-aidet";
>                         reg = <0x5fc20000 0x200>;
>                         interrupt-controller;
> diff --git a/arch/arm/boot/dts/uniphier-sld8.dtsi b/arch/arm/boot/dts/uniphier-sld8.dtsi
> index beb1eac85436..a05061038e78 100644
> --- a/arch/arm/boot/dts/uniphier-sld8.dtsi
> +++ b/arch/arm/boot/dts/uniphier-sld8.dtsi
> @@ -379,7 +379,7 @@
>                         interrupt-controller;
>                 };
>
> -               aidet: aidet@61830000 {
> +               aidet: interrupt-controller@61830000 {
>                         compatible = "socionext,uniphier-sld8-aidet";
>                         reg = <0x61830000 0x200>;
>                         interrupt-controller;
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
