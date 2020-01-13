Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5BA1398BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 19:18:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+/zZgS1kyJ0XkM8l7xRWl7X0odV8kChIx8mR3rwijA=; b=nF9craMjVdqdN1
	7Suoi+fk3D+2+ri9jD9H+sZoe6fE3l8NKKQIzhKtCoE0oJ+3kB/JFBKHwZT4xQhtXeXalsdgxuC84
	u5vlmEk5L6s/wNawiodGPUGGW3W8bE2iIuCFQc50gUopZY0oH14t4bLuTAv+YJscq1gIttynbSj0C
	AJ0RternPE8cxlJr1XYW2btcri2RxSEmgnbiGeH8Q0C6iZsTXjUxgTSMLmSd/8VrUjeeYaxQsxxGi
	E1OZiwJiXdoupGSawlEfC0X+SFHjgFwX5kkHVCDGsosGj2IRIl23PTYz9qpyvgzQA13Rkavm87JE4
	wvL5GRDLjaa8J7uKbBAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir4I8-0000ty-Fq; Mon, 13 Jan 2020 18:18:20 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir4Hz-0000sn-3H
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 18:18:12 +0000
Received: by mail-pg1-x543.google.com with SMTP id x8so5076417pgk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 10:18:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=J17YeTOEpSo1FzyDOd+9aTAz8l6C4D4MHcZ+fgWk1Mo=;
 b=lzbZp2lH/gU4yPLMC6wYwDVhgGCuadvdlO8VX6DZQrbqAzclxITjWEIKq2Cl0jbIcH
 Pb8rfbp3ZyzD/ei8vViUF082DNsG9iO8XsvKWbhCH0UhNEiqZ0iHet659p8zuGShBJ8J
 oex8GmqQsyyu5bKGxGtL87Enz1KnBZJyEXUdo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=J17YeTOEpSo1FzyDOd+9aTAz8l6C4D4MHcZ+fgWk1Mo=;
 b=frIUWF+5omHlP4UzJFfLYXQEDt4ljLJbAvG8XfgpaywkKaIuOaAnDNPYpDBR5/sDwT
 keHWP7tG4pJndcxk6vN8XFYFI0fqFQ3LfqcZbcH/4NdxerCedG1gqozT29LXZezFmAM7
 RHp5Vzr8j2jOJJPS8ylYVLKr1hzYehXQ4jb+RZOf5grPy3BS1iB2VxP3K+qiLsXGKGvQ
 fwnV6HiWwYBbN8NlWniO1VW99nEqPxmtJkqo2H2ZLL4Co8u+WYCqy9+UfOpNd+UMxyVu
 vBN4EwscDPkUf9TtVq48HamU1XpG3rbhnBy9hN9rMNX8ofQH4+nlf6M0QmzZZ7B2lpIf
 29mw==
X-Gm-Message-State: APjAAAXDci2y0JV/Ik3kp8cR7FOUFAgskCv3bBtHWbdt+UMyQJe174P/
 HqtFnkjmFzNbQYoB+KGEIgFgbA==
X-Google-Smtp-Source: APXvYqyO2vTrtNquO0tteVK8jK7Phzfpow0bBhbfaw7+obCd30pnX73il3H6mcF4Pibd+xR5fcY2gA==
X-Received: by 2002:a62:c541:: with SMTP id j62mr21026945pfg.237.1578939490112; 
 Mon, 13 Jan 2020 10:18:10 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id z22sm15206346pfr.83.2020.01.13.10.18.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Jan 2020 10:18:09 -0800 (PST)
Date: Mon, 13 Jan 2020 10:18:07 -0800
From: Matthias Kaehlcke <mka@chromium.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: mediatek: add mt8173 elm and hana board
Message-ID: <20200113181807.GH89495@google.com>
References: <20200110073730.213789-1-hsinyi@chromium.org>
 <20200110073730.213789-3-hsinyi@chromium.org>
 <cce7b5a4-7e5e-99c7-c647-fbb2d58ff3e0@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cce7b5a4-7e5e-99c7-c647-fbb2d58ff3e0@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_101811_166103_8519BCC1 
X-CRM114-Status: GOOD (  32.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>, Doug Anderson <dianders@google.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Jan 13, 2020 at 10:29:51AM +0100, Enric Balletbo i Serra wrote:
> Hi Hsin-Yi,
> 
> Apart from the maintainer comments, a few more comments ...
> 
> cc'ing Matthias and Doug who I know played a bit with the pwm-backlight for the
> uprev of the veyron devices, and you might be interested in his feedback in general.
> 
> On 10/1/20 8:37, Hsin-Yi Wang wrote:
> > Elm is Acer Chromebook R13. Hana is Lenovo Chromebook. Both uses mt8173
> > SoC.
> > 
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> > Changes in v2:
> > - remove downstream nodes and unused nodes
> > - use GPIO_ACTIVE_LOW for ps8640 gpios
> > - move trackpad to hana
> > ---
> >  arch/arm64/boot/dts/mediatek/Makefile         |    3 +
> >  .../dts/mediatek/mt8173-elm-hana-rev7.dts     |   27 +
> >  .../boot/dts/mediatek/mt8173-elm-hana.dts     |   16 +
> >  .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |   60 +
> >  arch/arm64/boot/dts/mediatek/mt8173-elm.dts   |   15 +
> >  arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 1040 +++++++++++++++++
> >  6 files changed, 1161 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi

<snip>

> > diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> > new file mode 100644
> > index 000000000000..2ac738bebe04
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> > @@ -0,0 +1,1040 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright 2016 MediaTek Inc.
> > + */
> > +
> > +#include <dt-bindings/input/input.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include "mt8173.dtsi"
> > +
> > +/ {
> > +	aliases {
> > +		serial0 = &uart0;
> > +		serial1 = &uart1;
> > +		serial2 = &uart2;
> > +		serial3 = &uart3;
> > +	};
> 
> I think this should be in mt8173.dtsi?
> 
> > +
> > +	memory@40000000 {
> > +		device_type = "memory";
> > +		reg = <0 0x40000000 0 0x80000000>;
> > +	};
> > +
> > +	backlight_lcd: backlight_lcd {
> 
> nit: Not sure if you need to change or not, but this node is usually called
> backlight: backlight without the _lcd. Note that this imply a userspace change
> but /sys/class/backlight/backlight is more aligned with other boards (I guess)
> when you have only one backlight. See for example:
> 
>  git grep backlight arch/arm64/boot/*
> 
> > +		compatible = "pwm-backlight";
> > +		pwms = <&pwm0 0 1000000>;
> > +		brightness-levels = <
> > +			  0  16  32  48  64  80  96 112
> > +			128 144 160 176 192 208 224 240
> > +			255
> > +		>;
> > +		default-brightness-level = <9>;
> 
> The reason you see the display too dark is because userspace sets and remembers
> the default value you have using the above configuration which is only 16
> levels. So after removing the two above properties you should set a new
> brightness from userspace.
> 
> AFAIK 16 levels is not enough to have fancy backlight effects on Chrome OS
> userspace, at least is not enough for Rockchip devices so I suppose is the same
> for Mediatek.
> 
> You have to options here.
> 
> A) Remove brightness-levels and default-brightness-level. This will end with a
> non-linear brightness curve for the backlight up to 4095 levels.
> 
> # cat max_brightness
> 4095
> 
> B) Use the num-interpolated-steps and default-brightness-level properties. This
> will end with a linear curve brightness. Similar to what is done for veyron
> devices but in this case with more levels because the PWM to control the
> backlight is 16-bits instead of 8-bits for veyron devices.
> 
> *
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/rk3288-veyron-edp.dtsi#n42
> 
> My guess is that you're interested on option B here to be coherent with other
> Chromebooks.

You could evaluate either way. One of the reasons to chose the interpolated-steps
for veyron was that some veyron panels require a minimum backlight level to
work properly. This can be easily configured with the linear curve, but
currently not with the non-linear one. Another reason was to keep the backlight
curve of a released device unaltered, though I think that's not strictly
required as long as the behavior with the non-linear curve is close/good enough.

Chrome OS user space supports both types of curves, for a new device I would
probably start with a non-linear curve, and only change that if the resulting
behavior doesn't meet expectations for some reason.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
