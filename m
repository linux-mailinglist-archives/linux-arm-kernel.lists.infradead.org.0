Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E53A74CE3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 13:20:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SC+FVhxgCnVKXn7lOkMYvdxSA1hwyXIRGPwrtwujeno=; b=CoyvYQXJtQCm6j
	3F7NQxcqLWxvq1cd/KiogyhKza2edw75ADOjdeLYLP1PjQ3idVJFo3K2t5VJ0OuEMemifxH31WEc4
	zFWkroNwUjaaLevGsiIiGRRp9Lj6SOpBYycF+Xe/bUs+GYtjczJwQrpGyPOLGwVPhCsH5LW7BqBJn
	3ZZMtd/dywwbq6D8+rTzjW7aLcpDaiWhg4oy2QLHgzU43lA98cNnb6zZkvjHp5g0l7K27vMq9qN56
	0rxc2lL5SwcJy6XhwsVReblGfrspyNtLXdLQ7ZEg/pyw0HfnIkXU76QfDZ/XIfUaNJ7CagAZXQkgF
	NYARGm8uzL95UQpdHbLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqbmv-0005lm-GV; Thu, 25 Jul 2019 11:19:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqbmR-0005fR-B5
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 11:19:29 +0000
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83AF522C7B
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 11:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564053565;
 bh=RsITX6ePkAMVGG3hL+GoDv/TMw1QkOZFUsmJ32yFJHs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=IyIyoZGXnqdm45B+CAVG+GX2HdB16KcPBTrEBHdeSpQNU6/JM5ZF6nX0OgHdhbFZY
 oW6VgopC311MpHX5NMZ7mOiBLJRlDrRj00ITyHeZtv+TpaeihVLOHjZgo57P+EHV52
 Sd7Mdjt3MmyTcWgIMxYM3C9RX0iVl5sWiC0XRRc4=
Received: by mail-lf1-f48.google.com with SMTP id q26so34286775lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 04:19:25 -0700 (PDT)
X-Gm-Message-State: APjAAAWrxreaglV3gbDRPCJBQAh7Sz70J9iALfNiXGpPQhB8UYkPdhBg
 GejPCl4zu/EeRsl/HCwxKDkThPdLLqz2w30/iGg=
X-Google-Smtp-Source: APXvYqx1lM65hedlAaq5hJ9vcQnP8ka92OsgDK7he9h2XV+2K7EJvucPEzFYBmj3wjtr7i5NjbNjx5LfPxJPbg3eueM=
X-Received: by 2002:ac2:5601:: with SMTP id v1mr277121lfd.106.1564053563654;
 Thu, 25 Jul 2019 04:19:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190724072008.6272-1-guillaume.gardet@free.fr>
 <20190725083433.6505-1-guillaume.gardet@arm.com>
In-Reply-To: <20190725083433.6505-1-guillaume.gardet@arm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 25 Jul 2019 13:19:12 +0200
X-Gmail-Original-Message-ID: <CAJKOXPejSxxH5DJPyEHTt=VEOdVgiXOm1c3MKKir-qRxtDcLLA@mail.gmail.com>
Message-ID: <CAJKOXPejSxxH5DJPyEHTt=VEOdVgiXOm1c3MKKir-qRxtDcLLA@mail.gmail.com>
Subject: Re: [PATCH V2 1/2] arm: dts: exynos: Add GPU/Mali T604 node to
 exynos5250
To: Guillaume <guillaume.gardet@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_041927_447310_B4690729 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 25 Jul 2019 at 10:34, Guillaume <guillaume.gardet@arm.com> wrote:
>
> From: Guillaume GARDET <guillaume.gardet@arm.com>
>
> Add nodes for GPU (Mali T604) to Exynos5250.
> Tested with kmscube and glmark2-es2-drm on Chromebook snow.
> Load tested on arndale board.
>
> Signed-off-by: Guillaume GARDET <guillaume.gardet@arm.com>
>
> Cc: Kukjin Kim <kgene@kernel.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
> V2 changes:
>   * move mali node as /soc sub-node
>   * move gpu_opp_table as mali sub-node
>   * minor style updates
>   * test on arndale board
>   * enable by default

I was not specific enough. It can stay disabled in the DTSI because
not all resources are provided. The board DTSes (all or ones which are
tested) will enable it and provide missing resources - mali-supply.
Just like:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f0a6208b90bdd44f48f5718c8bb0eb1e763d14c0

>   * add dt bindings, in a separate patch

Put the bindings before DTS change.

>
>  arch/arm/boot/dts/exynos5250.dtsi | 47 +++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
>
> diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
> index d5e0392b409e..f7f34d469bde 100644
> --- a/arch/arm/boot/dts/exynos5250.dtsi
> +++ b/arch/arm/boot/dts/exynos5250.dtsi
> @@ -328,6 +328,52 @@
>                         iommus = <&sysmmu_rotator>;
>                 };
>
> +               mali: gpu@11800000 {
> +                       compatible = "samsung,exynos5250-mali", "arm,mali-t604";
> +                       reg = <0x11800000 0x5000>;
> +                       interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "job", "mmu", "gpu";
> +                       clocks = <&clock CLK_G3D>;
> +                       clock-names = "g3d";

According to bindings this is not proper clock name. I wonder why it
was working... it seems the driver expects first clock to be always
the core clock.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
