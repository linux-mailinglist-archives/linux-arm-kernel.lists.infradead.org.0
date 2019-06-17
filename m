Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AA9488AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:16:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bay6f5SObk4RDjw2hSZzsPNqrdQ6aM63xJJ4dY+Vol0=; b=PtI0TWg4IbE7YQ
	MFI8xDrIstNcC/PqmoLZqmP+9flDsh/+JlGDM9oxaqAwVu8ijpy63MEWrVwdz5aOkvwkZ/SORoJ2K
	cKRQepJZRWlrrZ/7Wv3+uajjFuRWy4aqxPjDqycyUWYh1Pd8HwmqdHAbxqhD6jNCZR9f3WXmCq94R
	al0nLk50eNrhqeota3Q8IOgEpdKrrpW0QQzrVm9nPztcpTKUlx0WlFA34PFn9h4MYDtAjJ4trsZwD
	GqzuMOpxPrqpqsdLqgqT3Te12kKYb44vC+uldmXoCCVkY/n9ifjAcwgDfaeND2whlotkFREOEYFX4
	FKuHUdVElxOHd8KxW2sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuIp-0005dP-8w; Mon, 17 Jun 2019 16:16:15 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuIb-0005cs-Ht
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:16:02 +0000
Received: by mail-vs1-xe44.google.com with SMTP id n2so6493829vso.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 09:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qQmSRu+9/ciMEk74FdjnT5EyLM/oYfhns2Sv98gXQKQ=;
 b=TCZMnL+FLD4zJekHRbUA172UIv9s/PfZRpM+7lk5d5crxqQkbWMH4nQ7nVeABx5Zy1
 VO/tRNFw5InXjJr3dOIiAj6JkBUmUBoU/N3Evcn4NRXL/BF9E9Zcr9GFHqhdSWGOxPhc
 eT8fdgbwbObFgkJ2s0BlHuI+ZfoFlHaKYHG5hGVpYHLxAMdmroXn77Jwh85pgthDHVnt
 RCfOQ7rSL9VGRw1Vb+uIjiUHPTnMJUioxJJt6SQ5EU/0aqoge+8yWJ+k5kOWdbGzFLJ6
 xl6XUTrJa0LLsvVLFfA9qhuZTJ5TpNrkRKZ9Ps2j9+sQIUcitV86uCfbk9Zz1VJHxVkL
 rrnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qQmSRu+9/ciMEk74FdjnT5EyLM/oYfhns2Sv98gXQKQ=;
 b=Em7Ci2SWzw3yNzRDH3iTJ7Ad6NtG69wQFxdWeUqIkCh7mXmBbYQuC1lXo2EyilxBkW
 pwH3JniSG/UrwXA8iUxjrrNvxeo9fo1P7bRB1VczO+L8QXyMcwzLUmZ+c5m1b3hCewb8
 9GmdvCTGSyPS229zS3En/+CuGaoZDbAJ5ryk2ioWjETq++DLW6ZpyfN14Bngs6u3+cYE
 nqRBiwBL+Lb/DGFYDYESO2whBw8KOH67oAcDPPVTuFx+PKqX1Xm41klDAxtGrtaRlpUX
 +LEWr9QbBK8ZzN8viTYHhYqfQzJNnirkYPBBjDBruvOSyeD8YyuCPeFsL+hIlvXECAr8
 5NGg==
X-Gm-Message-State: APjAAAXKi5y21BaPIuOvRfMnndcNvQMOCc0R/xQlKLc/khFd3iGzaLiq
 zwEDqmNkB/nUB+/UAE7bAg+cQPvbxPssodJnczI=
X-Google-Smtp-Source: APXvYqzjRBBZjUcF4pveR06nHvyJQ46JmxJV/AnG40g/cVPwL2BF5JdmZMIDvskR2BhvlBGM6E3kQ6SK1aYsBQ4tJok=
X-Received: by 2002:a67:f998:: with SMTP id b24mr49714206vsq.180.1560788159899; 
 Mon, 17 Jun 2019 09:15:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190614203144.3850-2-joseph.kogut@gmail.com>
 <20190614235719.8134-1-joseph.kogut@gmail.com>
 <20190616085928.GB3826@kozik-lap>
In-Reply-To: <20190616085928.GB3826@kozik-lap>
From: Joseph Kogut <joseph.kogut@gmail.com>
Date: Mon, 17 Jun 2019 09:15:23 -0700
Message-ID: <CAMWSM7j8dtsS4d-hOc3Sk6OJHs+SiGC9tEaZBEmO0VKmtJguKw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm: dts: add ARM Mali GPU node for Odroid XU3
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_091601_593488_315E8D5C 
X-CRM114-Status: GOOD (  21.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joseph.kogut[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

Thanks for the review.

On Sun, Jun 16, 2019 at 1:59 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Fri, Jun 14, 2019 at 04:57:19PM -0700, Joseph Kogut wrote:
> > Add device tree node for mali gpu on Odroid XU3 SoCs.
> >
> > Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> > ---
> >
> > Changes v1 -> v2:
> > - Use interrupt name ordering from binding doc
> > - Specify a single clock for GPU node
> > - Add gpu opp table
> > - Fix warnings from IRQ_TYPE_NONE
> >
> >  .../boot/dts/exynos5422-odroidxu3-common.dtsi | 26 +++++++++++++++++++
>
> This should go to exynos5422-odroid-core.dtsi instead, because it is
> common to entire Odroid Exynos5422 family (not only XU3 family).
>
> >  1 file changed, 26 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> > index 93a48f2dda49..b8a4246e3b37 100644
> > --- a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> > +++ b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> > @@ -48,6 +48,32 @@
> >               cooling-levels = <0 130 170 230>;
> >       };
> >
> > +     gpu: gpu@11800000 {
> > +             compatible = "samsung,exynos-mali", "arm,mali-t628";
>
> This is common to all Exynos542x chips so it should go to
> exynos5420.dtsi. Here you would need to only enable it and provide
> regulator.
>

To clarify, which pieces are specific to the Odroid Exynos 5422
family, and which are common to the entire Exynos 542x family? I'm
thinking the gpu node is common to the 542x family, including the
interrupts and clock, and the regulator and opp table are specific to
the Odroid 5422?

> Probably this should be also associated with tmu_gpu as a cooling device
> (if Mali registers a cooling device...). Otherwise the tmu_gpu is not
> really used for it.
>

We have two operating performance points for the GPU, but I'm not sure
at what temperature we should trip the lower opp. Looking at the trip
temperatures for the CPU, we have four alerts, and one critical trip.
The highest alert is 85 C, would it be reasonable to trigger the lower
GPU opp at this temperature? Should it trigger sooner?

> > +             reg = <0x11800000 0x5000>;
> > +             interrupts = <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>,
> > +                          <GIC_SPI 74  IRQ_TYPE_LEVEL_HIGH>,
> > +                          <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> > +             interrupt-names = "job", "mmu", "gpu";
> > +             clocks = <&clock CLK_G3D>;
> > +             mali-supply = <&buck4_reg>;
>
> Please check if always-on property could be removed from buck4.

I've checked, and this property can be removed safely.

> Also, what about LDO27? It should be used as well (maybe through
> vendor-specific properties which would justify the need of new vendor
> compatible).
>

I'm unsure how LDO27 is used, can you elaborate?

Best,
Joseph

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
