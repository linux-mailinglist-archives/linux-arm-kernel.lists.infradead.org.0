Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B09321FD
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Jun 2019 06:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4LWhxpiHLu7PIthy3tRix7WLjT+NSED8Afnmr16xQE=; b=ckOEKqXnKYeQX2
	U2YiU4C9jALNaLc9xeMdqbqpHJQ7/JoHFOY6f/vpK3K3niBYFJ+c1OBGBIQtXugrwm+aSUgNPFQ5f
	q02qV4kYa5WjgPnC4fLiNq6xURUjGTtW3h6lh4BuiKhzCRlZAEvbEsiMBSSjDA0X85u0rbq0oo6pC
	6sOA4DReOiLbptgvAGP+eo1cLCLJbnYm04XaO3lEFIRPCi5vBXrhFunwKW2pacv4cZSpmoXIWjOJa
	L1oopjujogA/eFp8O0g1BTj+h3L7tnH8vLgF/03w0R/YyrcAw1yJwbt0kIute9+vO9YH4EsFqa0G4
	GEGjxY9i5ZHQfzdPMMyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXIDM-0001uU-Oy; Sun, 02 Jun 2019 04:35:24 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXIDH-0001tv-0I; Sun, 02 Jun 2019 04:35:20 +0000
Received: by mail-it1-x142.google.com with SMTP id n189so3260709itd.0;
 Sat, 01 Jun 2019 21:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v4CanWuqlNjLflmz2Qk/RlQLeFzHSfAI7esEAGrAgZw=;
 b=l5F5ZBWA+DIDLYP5up+gD3seEEamNpL0MIqvd2Dnmdzhee4Vu3Qq86qHO7VzvIibYj
 dfY4wHw1J+8/HcOLOBnYfdo6CXkMP02GgHcPT1j1imyhoYpcU3tsvT3Wige8AkhKKba+
 uoq40Z505t+MEPTpTDwGFM2wi/CDY0dul+QJC3PwCbYoKSNUwjiZh7UuzC6iDpWhI3oo
 119NU4yjBTiceJGveft99++sSNK9OGlX6Dt3WIeDa2pgKdMzib/4hYDg5nnJ1mC5PkMP
 /7fDWrV/2FI5awIClRiZelc98NLmR1Pdxc0NrlnCBpMbi15KMXw4BiZyHSvjiIJCZied
 fFlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v4CanWuqlNjLflmz2Qk/RlQLeFzHSfAI7esEAGrAgZw=;
 b=a0lS2U6/wXTjhyl0zCRjAnfnSNP/KqezZlvSX6r22enpK2p+i3i4OWekN8auXfg4of
 FJAn9pn93uIzTUhxXRGQHjp55KrEZP6pLDSP0WewqWgNSC5YPulK1iB0BOhDXeLRZF2J
 b3dmzscqpbqPp2nc0KTatKk+PYS44Y3lWDsdXHwjUuCc+/oGpP2WGDzuiC/Akp1Tl32o
 V2Sy6uQedPiat4BlvYHGPVYH2uy3XqeFyJ4L/6XxKGYG1N0WHcKlRhkpr19JDITHqkje
 6z5utcxp8eUzxH6fbHeaPleQevNQJkBlZ66UueCPHVJ+PwLAgejdi3V0lUx3nc65Ul2a
 rU5Q==
X-Gm-Message-State: APjAAAWrlEnVQ8nSJhs1S5Dnts9dSv34+RAd+0T95fPqjFReYt9gJN1c
 0FRWUjK8Tp8FMTkoHykGX55Ok256hwj4SCBuTlY=
X-Google-Smtp-Source: APXvYqwXbkiXIYjDHXmh3/thigHgwkv16g5iRA7ZvyyvH5clOqzbumpceyiCVbQ5RGunSbjGlHDuLiCOYNTYxPCyj8E=
X-Received: by 2002:a24:ed7:: with SMTP id 206mr9474956ite.97.1559450117296;
 Sat, 01 Jun 2019 21:35:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190531201913.1122-1-linux.amoon@gmail.com>
 <20190601095106.GA2213@Mani-XPS-13-9360>
In-Reply-To: <20190601095106.GA2213@Mani-XPS-13-9360>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sun, 2 Jun 2019 10:05:06 +0530
Message-ID: <CANAwSgQXrp5+UOdBEjq9PvBHw9KmgxpkVsENc05MoBMDBOoczg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add missing configuration pwr
 amd rst for PCIe
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_213519_073439_42BC2F33 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Vicente Bergas <vicencb@gmail.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Manivannan,

Thanks for your review comment.

On Sat, 1 Jun 2019 at 15:21, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Hi,
>
> On Fri, May 31, 2019 at 08:19:13PM +0000, Anand Moon wrote:
> > This patch add missing PCIe gpio pin (#PCIE_PWR) for vcc3v3_pcie power
> > regulator node also add missing reset pinctrl (#PCIE_PERST_L) for PCIe node.
> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> > using schematics: thanks for suggested by Manivannan
> > [1] https://dl.vamrs.com/products/rock960/docs/hw/rock960_sch_v12_20180314.pdf
> >
> > Changes from prevoius patch:
> > [2] https://patchwork.kernel.org/patch/10968695/
> >
> > Fix the suject and commit message and corrected the PWR and PERST configuration
> > as per shematics and dts nodes.
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-ficus.dts    | 7 +++++++
> >  arch/arm64/boot/dts/rockchip/rk3399-rock960.dts  | 7 +++++++
> >  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 3 +--
> >  3 files changed, 15 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> > index 6b059bd7a04f..94e2a59bc1c7 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> > @@ -89,6 +89,8 @@
> >
> >  &pcie0 {
> >       ep-gpios = <&gpio4 RK_PD4 GPIO_ACTIVE_HIGH>;
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pcie_clkreqn_cpm &pcie_perst_l>;
>
> Looks like ep-gpio is wrong here :/ I probably referred old schematics
> at that time. Correct pin mapping is,
>
> ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
>
> And this should be fixed in a separate patch with "Fixes" tag!
>

Ok I will changes per the above. I have also check this with the
u-boot changes .

> >  };
> >
> >  &pinctrl {
> > @@ -104,6 +106,11 @@
> >                       rockchip,pins =
> >                               <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
> >                       };
> > +
> > +             pcie_perst_l: pcie-perst-l {
> > +                     rockchip,pins =
> > +                             <4 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> > +             };
> >       };
> >
> >       usb2 {
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> > index 12285c51cceb..665fe09c7c74 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> > @@ -64,6 +64,8 @@
> >
> >  &pcie0 {
> >       ep-gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_HIGH>;
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pcie_clkreqn_cpm &pcie_perst_l>;
> >  };
> >
> >  &pinctrl {
> > @@ -104,6 +106,11 @@
> >                       rockchip,pins =
> >                               <2 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
> >                       };
> > +
> > +             pcie_perst_l: pcie-perst-l {
> > +                     rockchip,pins =
> > +                             <2 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> > +             };
> >       };
> >
> >       usb2 {
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > index c7d48d41e184..3df0cd67b4b2 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > @@ -55,6 +55,7 @@
> >
> >       vcc3v3_pcie: vcc3v3-pcie-regulator {
> >               compatible = "regulator-fixed";
> > +             gpio = <&gpio2 RK_PA5 GPIO_ACTIVE_HIGH>;
>
> Actually the PWR pin mapping is defined in a separate node for both Rock960
> and Ficus in respective dts. So defining it here would be wrong as the PWR
> pin mapping is different for both boards.
>

Ok Thanks, so I will move the PWR pin nodes the respective dts files.

                  PCIE_PERST     PCIE_PWR
Rock960     GPIO2_A2          GPIO2_A5
Ficus          GPIO2_D4          GPIO1_D0   /* reference u-boot */

Pls confirm this is correct.

Best Regards
-Anand

> Thanks,
> Mani

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
