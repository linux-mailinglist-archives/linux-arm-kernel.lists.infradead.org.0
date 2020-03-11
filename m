Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E9F180E69
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 04:24:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oEJauy5DXR/NCkB228xsG+yyVAhFXbkhOeR4lj6iPkw=; b=WhQJNF1MIBnwmh
	jmnK9hAULM6wn0LdmyhFIZMq78gJwlfRLwVTmGeRKF3EZPMpwBnAqMk93dp1cfyAgKau+pNOH7YfM
	vXLQos94NjzODS+JbzKvTYCuslNkdLwHOZaSvaQcWrxd1VR8AXktD2/APv0PUDAj988g7igZhre7g
	+w6GVvcCvVcTeZkY41vS9RVmSCzecd1WVdo1rcUGwlHDlBjdMLoZKdELS8Wlml2ZeWkP1cvSNiRfk
	bt+sb9C6gZFLD73hFxCsvjH3fFrvwU9Ob69gV5CmsfmcDNNviT0/8saa/NQOr/vBjoexiB8I6Tvyn
	FEyfBFnfa1S7kAQG/aPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBryS-0004Qo-Sm; Wed, 11 Mar 2020 03:24:00 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBryJ-0004Q1-CM
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 03:23:53 +0000
Received: by mail-ed1-f66.google.com with SMTP id a20so1120008edj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 20:23:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3ubNYkLFBm9LvnmdAtrDMZkV+T+QUMoRprRG4+zyFtg=;
 b=RedyG4iOxi1gdaMLW7FeGemqHDqnzWs4B6xngd+veqh7f/lzIb8NQ0rE0FewYGf4dA
 gIOa4EZPTPsEtP+6ql8Uz9l7eU4L5O03EsGxM1wXGHHu6W6sNT7JtZ9io/N6xERDGZOt
 FGJlnTMhcBdLpxOBCrqjdlk7k7TlvnmuXWqg0yUTDh37tQDJDP/khIBXrfDDDlZBwzab
 1A+B14DlJBoFZ9tliKqVLKPoE4sfaIp1zx4aOeBTtHdC70mHGzCMQXmQrzE+4JQLI8fu
 3B855M4GTRPEwo4HCc2Pb+iMls+s1lFy9VFLg4ezID5+UGLwBQoUw4gxtoEnpZ4IJaxE
 jqkg==
X-Gm-Message-State: ANhLgQ0ErmJw5FzzRJiELy59ifYxXYkPmrH17uXePvQrnFdISU92IEEg
 UiqviTUvYbR92rO+dukdKNZgB3mbmi8=
X-Google-Smtp-Source: ADFU+vuLq3NXQbNcq8ledayF0YlIEdJrYfNC2s7V5jqWuTpWRApojCnVmQB79sa3vuPD9h0bm+OexA==
X-Received: by 2002:a17:906:5612:: with SMTP id
 f18mr536175ejq.69.1583897025675; 
 Tue, 10 Mar 2020 20:23:45 -0700 (PDT)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com.
 [209.85.221.41])
 by smtp.gmail.com with ESMTPSA id z22sm13582ejo.17.2020.03.10.20.23.45
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Mar 2020 20:23:45 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id s14so684828wrt.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 20:23:45 -0700 (PDT)
X-Received: by 2002:a5d:5509:: with SMTP id b9mr1351435wrv.181.1583897024908; 
 Tue, 10 Mar 2020 20:23:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200311010308.11880-1-andre.przywara@arm.com>
In-Reply-To: <20200311010308.11880-1-andre.przywara@arm.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 11 Mar 2020 11:23:33 +0800
X-Gmail-Original-Message-ID: <CAGb2v65gMgLKRwsSVg0i+-uXPWQ_KJhtBdhktB7oOgo+2VAOFQ@mail.gmail.com>
Message-ID: <CAGb2v65gMgLKRwsSVg0i+-uXPWQ_KJhtBdhktB7oOgo+2VAOFQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: sun8i: R40: Fix SPI2 and SPI3 MMIO addresses
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_202351_421523_B18890E5 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree <devicetree@vger.kernel.org>, JuanEsf <juanesf91@gmail.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 9:03 AM Andre Przywara <andre.przywara@arm.com> wrote:
>
> Copy&paste suggested an MMIO pattern that wasn't there, so the wrong
> MMIO base addresses for SPI2 and SPI3 sneaked in.
>
> Fix them, now double checked against the manual and similar SoCs.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Fixes: 554581b79139 ("ARM: dts: sun8i: R40: Add SPI controllers nodes and pinmuxes")
> Reported-by: JuanEsf <juanesf91@gmail.com>

I posted a series fixing this, and some ordering issues yesterday:

https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=254199

I'll add the reported-by tag to my patch when applying.

ChenYu

> ---
>  arch/arm/boot/dts/sun8i-r40.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> index 8f09a24b36ec..8c4c4282a055 100644
> --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> @@ -679,10 +679,10 @@
>                         #size-cells = <0>;
>                 };
>
> -               spi2: spi@1c07000 {
> +               spi2: spi@1c17000 {
>                         compatible = "allwinner,sun8i-r40-spi",
>                                      "allwinner,sun8i-h3-spi";
> -                       reg = <0x01c07000 0x1000>;
> +                       reg = <0x01c17000 0x1000>;
>                         interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
>                         clocks = <&ccu CLK_BUS_SPI2>, <&ccu CLK_SPI2>;
>                         clock-names = "ahb", "mod";
> @@ -692,10 +692,10 @@
>                         #size-cells = <0>;
>                 };
>
> -               spi3: spi@1c0f000 {
> +               spi3: spi@1c1f000 {
>                         compatible = "allwinner,sun8i-r40-spi",
>                                      "allwinner,sun8i-h3-spi";
> -                       reg = <0x01c0f000 0x1000>;
> +                       reg = <0x01c1f000 0x1000>;
>                         interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
>                         clocks = <&ccu CLK_BUS_SPI3>, <&ccu CLK_SPI3>;
>                         clock-names = "ahb", "mod";
> --
> 2.14.5
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
