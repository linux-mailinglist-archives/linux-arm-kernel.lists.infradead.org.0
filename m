Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7A91C3101
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 03:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/3kUuk5tvTI5lSd/O0rMD0O2gj0u6HFkyVsMe/x872Y=; b=T0sxQKsh+kB9IJ
	eZUXXlzKc4DJkDHQC988PDStwuvCgacEiBn/xNDV7WjWLgd+Py0RFrXwMftq/HxRfCe8bJMpuSvZT
	uBsYd2/2cpZTQMQW3yUK4Kcd77Up/5VXuKD5Xjwvslv6m7WGF2Q+ZvLREqHUthLVjWsUGWDLf/Ffd
	3xanUkVS2wzc10GdLl+RkgwiLWiqZWvsTqYg+tbifcqrJjU/Ih8kWrohRR7qx64g9VM+qNmKalFTN
	tDwGN0GDxcyDumeYs1YZbvOy6krEwEu/JGwVFtwxDkhBDB32VtFYc63/XMn1e8AguIvOhxNXZSL6B
	0fkXZ7gBJ9Amc/W280DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVPnu-0007fE-G6; Mon, 04 May 2020 01:21:54 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVPno-0007eU-7h
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 01:21:49 +0000
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com
 [209.85.221.179]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id 0441LNkY015944
 for <linux-arm-kernel@lists.infradead.org>; Mon, 4 May 2020 10:21:24 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 0441LNkY015944
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1588555284;
 bh=jEtAs9O7CmSkCUr9JGM4aFvI0GTrsU70SWfup1ULHCY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0MW5hOw6oQfy1tSmTDfMhhzPm4PRXm34oTOM5b5JOncMhIK+QOK1Ato0vA6kguG/Q
 y34GLUejRhh9h/H4uSskWAeK6NuTUuUkFdgj5BMu6RfT0X/Ir1ige73fjOuPPuC3Fy
 onP+pkiaPF75Cgz5BPMfDUXQnUosY6aBZac9XOLzyvuMqYfLkfMK+EbxVvhBkIprgb
 sT12uZ1L3phpwwhy8A94DkmKR86GFC8MqxHw4CC9SQ+WO2FjtM4Hy8/VQ49bSVn9zE
 4Oc/B39E/kGRjNov/V7867E5w+akCIU2rzPOvhcxR0Gjrwh6XpgNg10yWsdCcYfYPv
 y3eq5IQAysTaw==
X-Nifty-SrcIP: [209.85.221.179]
Received: by mail-vk1-f179.google.com with SMTP id q200so4218143vka.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 18:21:24 -0700 (PDT)
X-Gm-Message-State: AGi0PuY1zUIqOrpZmBFUAYDaAi0pmReek8A25bO42aks6CN3Nzpy9CGv
 yjam5yFzV+MjMWSi2D/AERKDhvwbIzPcPOStraA=
X-Google-Smtp-Source: APiQypJH8KPh7CLSrpYvv1LKW7i4PPU1ROFc8mTCpBhmgvf8qd26fclC7UZdTXqHU5Gw3s9HLM7vnkzJcyOntmBEtTU=
X-Received: by 2002:a1f:5381:: with SMTP id h123mr9028736vkb.66.1588555283173; 
 Sun, 03 May 2020 18:21:23 -0700 (PDT)
MIME-Version: 1.0
References: <1585878187-8131-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1585878187-8131-4-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1585878187-8131-4-git-send-email-hayashi.kunihiko@socionext.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 4 May 2020 10:20:47 +0900
X-Gmail-Original-Message-ID: <CAK7LNATSHYG7UgLoVAXwdi6y8mH+Rbq-y9jT1e6FmaBWYUWUBg@mail.gmail.com>
Message-ID: <CAK7LNATSHYG7UgLoVAXwdi6y8mH+Rbq-y9jT1e6FmaBWYUWUBg@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] ARM: dts: uniphier: Add ethernet aliases
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_182148_600301_5EE263F3 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
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
Cc: DTML <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jassi Brar <jaswinder.singh@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 3, 2020 at 10:43 AM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> Add an 'aliases' property for ethernet device.
>
> U-boot performs a fix-up of the MAC address and will overwrite the values

U-boot -> U-Boot

> from the Linux devicetree for aliased ethernet device. The MAC address can
> be inherited from u-boot by adding aliases of ethernet devices.

u-boot -> U-Boot

I fixed up those, applied the series.


>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  arch/arm/boot/dts/uniphier-ld6b-ref.dts    | 1 +
>  arch/arm/boot/dts/uniphier-pro4-ace.dts    | 1 +
>  arch/arm/boot/dts/uniphier-pro4-ref.dts    | 1 +
>  arch/arm/boot/dts/uniphier-pro4-sanji.dts  | 1 +
>  arch/arm/boot/dts/uniphier-pxs2-gentil.dts | 1 +
>  arch/arm/boot/dts/uniphier-pxs2-vodka.dts  | 1 +
>  6 files changed, 6 insertions(+)
>
> diff --git a/arch/arm/boot/dts/uniphier-ld6b-ref.dts b/arch/arm/boot/dts/uniphier-ld6b-ref.dts
> index 60994b6..079cadc 100644
> --- a/arch/arm/boot/dts/uniphier-ld6b-ref.dts
> +++ b/arch/arm/boot/dts/uniphier-ld6b-ref.dts
> @@ -29,6 +29,7 @@
>                 i2c4 = &i2c4;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> diff --git a/arch/arm/boot/dts/uniphier-pro4-ace.dts b/arch/arm/boot/dts/uniphier-pro4-ace.dts
> index 92cc48d..64246fa 100644
> --- a/arch/arm/boot/dts/uniphier-pro4-ace.dts
> +++ b/arch/arm/boot/dts/uniphier-pro4-ace.dts
> @@ -26,6 +26,7 @@
>                 i2c3 = &i2c3;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> diff --git a/arch/arm/boot/dts/uniphier-pro4-ref.dts b/arch/arm/boot/dts/uniphier-pro4-ref.dts
> index 854f2eb..181442c 100644
> --- a/arch/arm/boot/dts/uniphier-pro4-ref.dts
> +++ b/arch/arm/boot/dts/uniphier-pro4-ref.dts
> @@ -29,6 +29,7 @@
>                 i2c3 = &i2c3;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> diff --git a/arch/arm/boot/dts/uniphier-pro4-sanji.dts b/arch/arm/boot/dts/uniphier-pro4-sanji.dts
> index dda1a2f..5396556 100644
> --- a/arch/arm/boot/dts/uniphier-pro4-sanji.dts
> +++ b/arch/arm/boot/dts/uniphier-pro4-sanji.dts
> @@ -25,6 +25,7 @@
>                 i2c3 = &i2c3;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> diff --git a/arch/arm/boot/dts/uniphier-pxs2-gentil.dts b/arch/arm/boot/dts/uniphier-pxs2-gentil.dts
> index e27fd4f..8e9ac57 100644
> --- a/arch/arm/boot/dts/uniphier-pxs2-gentil.dts
> +++ b/arch/arm/boot/dts/uniphier-pxs2-gentil.dts
> @@ -26,6 +26,7 @@
>                 i2c4 = &i2c4;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> diff --git a/arch/arm/boot/dts/uniphier-pxs2-vodka.dts b/arch/arm/boot/dts/uniphier-pxs2-vodka.dts
> index 23fe42b..8eacc7b 100644
> --- a/arch/arm/boot/dts/uniphier-pxs2-vodka.dts
> +++ b/arch/arm/boot/dts/uniphier-pxs2-vodka.dts
> @@ -24,6 +24,7 @@
>                 i2c4 = &i2c4;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> --
> 2.7.4
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
