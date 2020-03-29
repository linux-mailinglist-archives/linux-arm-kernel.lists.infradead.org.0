Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C02AD196E80
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 18:37:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ejlrcuvc7x5dh19UlHs8RlnIXcCpOr1W2GSlzT0Anmc=; b=QTzRzisj49f3dP
	W9SBv4k32UW61PhV1NwpX2IV5bX2u9lBOdA4BUgsQF/AM6FZBioptmBsWd9N2Rv7G0FlFJ4G2njUb
	oeKhkViL7M9AmsknP8Py8S/trMBosLrKVnCbLJ53bKSocud0UgURDlDfiV979vx0ZKNjdNVXZeD/U
	DRizXWR4ey6E9mk4cjXj3tJdcyXsG0lhYdYe5+ybhNy9Wuxl4R1kUsLH7NAuBsazMAl30+BsKD9Pd
	D72X+CDlNP74HeBOhWntPCPU9ubp73irKHwqQ8VdwrEGmkr//OguDheT6TVYtwdf7qKT4J2ulzIeB
	cdYEdIgeTIMeUnI3tgwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIavl-0007kV-VJ; Sun, 29 Mar 2020 16:37:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIavf-0007ja-Ph; Sun, 29 Mar 2020 16:36:57 +0000
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD9852073E;
 Sun, 29 Mar 2020 16:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585499812;
 bh=FMzyHZQaNh9rSSnGoV0uK9HGlBSqJz8wecfpivb2vYg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hogt6nvF+ZaFYDAazFk65Zjw5Up7FM+iupEhANbB/cOf98Ud9e79zXQJp/NYMgKBq
 0/iYCjBFXpTiTIyvSCzh5Ct6xwLR4N1VOozp/2EAYOrUFmIkYJkhVBKHefY0+DOgIb
 GFkyGPC5J8BvcRMRwOOc7RatjFHsjxjFc+RzCgcI=
Received: by mail-wr1-f48.google.com with SMTP id h9so18036249wrc.8;
 Sun, 29 Mar 2020 09:36:51 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3f/dIudYA+F9k4dc5YaM7V0+5ilfeHMbd3V1VZbZx+/tGq4w+9
 HKcSw+jE/uJ5SqGskBeAa1xptIlzlcw8tkMg/2o=
X-Google-Smtp-Source: ADFU+vuus+o0GpiyX8baecbejTCjcCtvVBUtlbFTDdt2Qa53S2dQx5EulLtLeeYPyI20IUp/svWt9yF+mHdeaiQGGpo=
X-Received: by 2002:a5d:6906:: with SMTP id t6mr5654950wru.64.1585499810267;
 Sun, 29 Mar 2020 09:36:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200327030414.5903-2-wens@kernel.org>
 <684a08e6-7dfe-4cb1-2ae5-c1fb4128976b@gmail.com>
In-Reply-To: <684a08e6-7dfe-4cb1-2ae5-c1fb4128976b@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 30 Mar 2020 00:36:37 +0800
X-Gmail-Original-Message-ID: <CAGb2v65ayZwN14S-Pzu2ip1K=fgzTbNB=ZzUcpou-jtv8m6vBA@mail.gmail.com>
Message-ID: <CAGb2v65ayZwN14S-Pzu2ip1K=fgzTbNB=ZzUcpou-jtv8m6vBA@mail.gmail.com>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
To: Johan Jonker <jbx6244@gmail.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_093655_875201_79CAB7E2 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 5:58 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Chen-Yu Tsai,
>
> The led node names need some changes.
> 'linux,default-trigger' value does not fit.
>
> From leds-gpio.yaml:
>
> patternProperties:
>   # The first form is preferred, but fall back to just 'led' anywhere in the
>   # node name to at least catch some child nodes.
>   "(^led-[0-9a-f]$|led)":
>     type: object
>
> Rename led nodenames to 'led-0' form
>
> Also include all mail lists found with:
> ./scripts/get_maintainer.pl --nogit-fallback --nogit
>
> devicetree@vger.kernel.org

Oops...

> If you like change the rest of dts with leds as well...
>
>   DTC     arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml
>   CHECK   arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml
> arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml: leds:
> yellow-led:linux,default-trigger:0: 'mmc0' is not one of ['backlight',
> 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
> arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml: leds:
> diy-led:linux,default-trigger:0: 'mmc1' is not one of ['backlight',
> 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
>   DTC     arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml
>   CHECK   arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml
> arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
> diy-led:linux,default-trigger:0: 'mmc2' is not one of ['backlight',
> 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
> arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
> yellow-led:linux,default-trigger:0: 'mmc1' is not one of ['backlight',
> 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']

Maybe we should just get rid of linux,default-trigger then?

Heiko?

ChenYu

> make -k ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml
>
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > With SDIO now enabled, the numbering of the existing MMC host controllers
> > gets incremented by 1, as the SDIO host is the first one.
> >
> > Increment the numbering of the MMC LED triggers to match.
> >
> > Fixes: cf3c5397835f ("arm64: dts: rockchip: Enable sdio0 and uart0 on rk3399-roc-pc-mezzanine")
> > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts | 8 ++++++++
> >  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi          | 4 ++--
> >  2 files changed, 10 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
> > index 2acb3d500fb9..f0686fc276be 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
> > @@ -38,6 +38,10 @@ vcc3v3_pcie: vcc3v3-pcie {
> >       };
> >  };
> >
> > +&diy_led {
> > +     linux,default-trigger = "mmc2";
> > +};
> > +
> >  &pcie_phy {
> >       status = "okay";
> >  };
> > @@ -91,3 +95,7 @@ &uart0 {
> >       pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
> >       status = "okay";
> >  };
> > +
> > +&yellow_led {
> > +     linux,default-trigger = "mmc1";
> > +};
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > index 9f225e9c3d54..bc060ac7972d 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > @@ -70,14 +70,14 @@ work-led {
> >                       linux,default-trigger = "heartbeat";
> >               };
> >
> > -             diy-led {
> > +             diy_led: diy-led {
> >                       label = "red:diy";
> >                       gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
> >                       default-state = "off";
> >                       linux,default-trigger = "mmc1";
> >               };
> >
> > -             yellow-led {
> > +             yellow_led: yellow-led {
> >                       label = "yellow:yellow-led";
> >                       gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> >                       default-state = "off";
> > --
> > 2.25.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
