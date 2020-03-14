Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2CF1853F5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 03:15:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8O1ZZkd/uqQwW2mmWZ+KJGrD7ehHHqAmCwxiV+5IGE0=; b=EYF6aoLlhH7wTc
	8mFNzzC4EwXT2njsTwufpr8kL+g58BQp9bpmvQ2MkkDEocVCGQrvWZ+eC3ACs78K4Gh5t8/98u7WM
	tpNCV9z5ZdKam2HYa/+ymmTHzbvIQTKWpGQ6Se7WdecAGqMUxNPZBkJmo/MoLQIb7evd8ceMYGqP2
	iNqNKqO6GBQpqooGXSlWFlfXPrG9M68jMizJQrCm4iYJa3EZuw6MxOemPAdCJ/UM6Gl5E4oKH0fl5
	dhc8QIXtURpEq+qPolvNxqglibxAoIhpUDHi4qK7jpemcn+MaUNguzMYbfmb3nD+AJlW+Nj1naA6u
	iAzA02zbavbo71134GdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCwKd-0001AO-N6; Sat, 14 Mar 2020 02:15:19 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCwKV-0000kw-R8
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 02:15:14 +0000
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com
 [209.85.221.182]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 02E2EkuD018931
 for <linux-arm-kernel@lists.infradead.org>; Sat, 14 Mar 2020 11:14:47 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 02E2EkuD018931
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1584152087;
 bh=340svhN800T2tL7lQwgD39Edrp37kk1kfHafjXxduD4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OeHxhrJxxWF2ikFgA5ueTvT4IzvtJjv+S+NYU6w1tHxL5CwOqlT2liFzwo/dSjB3A
 orswaNdSbrHzoNchczjj4HqUACPKIgqnIkwkv8b9prePjhy7vPQXGUHNdklr865Lfc
 aTtfIb/QrvfOMN/4uk+F+FKwXZLXdov9QgsGdP0mivBkhhfAE80WdqOm7fpPPDkkan
 SPfDNSe2tMEDS/P8fVB2VN6kZ7n8WLkI1cimwIAgn8Q7b58ZF/3k7m7/uo0taLMKGy
 Htwah58zs8H62PXaXglXaRnsyG+hufdITHM2jDwWutBtW+tUkibZGW/MpGBLysflXE
 UaIMOXi8WEtfw==
X-Nifty-SrcIP: [209.85.221.182]
Received: by mail-vk1-f182.google.com with SMTP id m131so1564082vkh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 19:14:47 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0+yqlmd34SepGfbdA/W+YwOHhKK0AYuD0SU9DlW2GmlKikkeTj
 Q+tZl6LKImEaGmlU2c3fSikgHM14MDolvapfiWY=
X-Google-Smtp-Source: ADFU+vsTXrIehdH+8pQ7jb2b+XNZrUl+uiqcXs30gckO7t4OrY3ahwS7gVeukdvd00gtPleg1Li7o6ITtpPCTHoRftI=
X-Received: by 2002:a1f:900c:: with SMTP id s12mr11189857vkd.96.1584152085998; 
 Fri, 13 Mar 2020 19:14:45 -0700 (PDT)
MIME-Version: 1.0
References: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1584061096-23686-2-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1584061096-23686-2-git-send-email-hayashi.kunihiko@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 14 Mar 2020 11:14:09 +0900
X-Gmail-Original-Message-ID: <CAK7LNASCOhZ5BMWWCA1zKep-sXra1pBBTxjsDp816k8Ph1m1Pw@mail.gmail.com>
Message-ID: <CAK7LNASCOhZ5BMWWCA1zKep-sXra1pBBTxjsDp816k8Ph1m1Pw@mail.gmail.com>
Subject: Re: [PATCH 01/10] ARM: dts: uniphier: Add XDMAC node
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_191512_115718_7F2ECE68 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Fri, Mar 13, 2020 at 9:58 AM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> Add external DMA controller support implemented in UniPhier SoCs.
> This supports for Pro4, Pro5 and PXs2.
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  arch/arm/boot/dts/uniphier-pro4.dtsi | 8 ++++++++
>  arch/arm/boot/dts/uniphier-pro5.dtsi | 8 ++++++++
>  arch/arm/boot/dts/uniphier-pxs2.dtsi | 8 ++++++++
>  3 files changed, 24 insertions(+)
>
> diff --git a/arch/arm/boot/dts/uniphier-pro4.dtsi b/arch/arm/boot/dts/uniphier-pro4.dtsi
> index 2ec04d7..a1bfe0f 100644
> --- a/arch/arm/boot/dts/uniphier-pro4.dtsi
> +++ b/arch/arm/boot/dts/uniphier-pro4.dtsi
> @@ -426,6 +426,14 @@
>                         };
>                 };
>
> +               xdmac: dma-controller@5fc10000 {
> +                       compatible = "socionext,uniphier-xdmac";
> +                       reg = <0x5fc10000 0x1000>, <0x5fc20000 0x800>;



This is odd.
<0x5fc20000 0x800> causes reg overwrap with
aidet@5fc20000 below.



> +                       interrupts = <0 188 4>;
> +                       dma-channels = <16>;
> +                       #dma-cells = <2>;
> +               };
> +
>                 aidet: aidet@5fc20000 {
>                         compatible = "socionext,uniphier-pro4-aidet";
>                         reg = <0x5fc20000 0x200>;
> diff --git a/arch/arm/boot/dts/uniphier-pro5.dtsi b/arch/arm/boot/dts/uniphier-pro5.dtsi
> index ea3961f..ecab061 100644
> --- a/arch/arm/boot/dts/uniphier-pro5.dtsi
> +++ b/arch/arm/boot/dts/uniphier-pro5.dtsi
> @@ -408,6 +408,14 @@
>                         };
>                 };
>
> +               xdmac: dma-controller@5fc10000 {
> +                       compatible = "socionext,uniphier-xdmac";
> +                       reg = <0x5fc10000 0x1000>, <0x5fc20000 0x800>;
> +                       interrupts = <0 188 4>;
> +                       dma-channels = <16>;
> +                       #dma-cells = <2>;
> +               };
> +
>                 aidet: aidet@5fc20000 {
>                         compatible = "socionext,uniphier-pro5-aidet";
>                         reg = <0x5fc20000 0x200>;
> diff --git a/arch/arm/boot/dts/uniphier-pxs2.dtsi b/arch/arm/boot/dts/uniphier-pxs2.dtsi
> index 13b0d4a..6e60154 100644
> --- a/arch/arm/boot/dts/uniphier-pxs2.dtsi
> +++ b/arch/arm/boot/dts/uniphier-pxs2.dtsi
> @@ -508,6 +508,14 @@
>                         };
>                 };
>
> +               xdmac: dma-controller@5fc10000 {
> +                       compatible = "socionext,uniphier-xdmac";
> +                       reg = <0x5fc10000 0x1000>, <0x5fc20000 0x800>;
> +                       interrupts = <0 188 4>;
> +                       dma-channels = <16>;
> +                       #dma-cells = <2>;
> +               };
> +
>                 aidet: aidet@5fc20000 {
>                         compatible = "socionext,uniphier-pxs2-aidet";
>                         reg = <0x5fc20000 0x200>;
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
