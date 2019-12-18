Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC54F1257A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 00:19:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G1NzUkaEKTnjz31wKLKmZ2L4voA4DZ6vZcvipw8fid0=; b=RtlPuliFuvZLz2
	HIK4q5DY4ebYsCdtOjiYkSWnSfBXQ+/+/5SYiZVCybEoNzhelR37RJ7aLAWdF2+Uc9I5H5nIhSq+J
	n1D4vHoQtOzfTWOAJPDWmFkWpixF4lawyJu26sLy3nP10PHiSZM5ZgPrApSzpHfmbM1vKsJ79mMD8
	EgdmMSlSxpAszRMVYmkirwWt0fG1hahe/sy6oLHnpf4QnvjqtKIKyFGa3F8UKCMCS8Bu8cisBa+Lu
	4iQvaF4pRs8JCbR5RNWJvYb0RziH8g4PmtSFqhI6ADvztYl3M+ZM+Xc4UIL6/M6sIb5IjLDkiwcuL
	mIjoRgvqPWofRRakGWwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihias-00074A-5i; Wed, 18 Dec 2019 23:19:02 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihiaf-00072u-F9
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 23:18:50 +0000
Received: by mail-qk1-x741.google.com with SMTP id x1so3062057qkl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 15:18:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nuyhYd8ECto87m9FuniOXYcBUixqQrUKuyD3AyEWA+A=;
 b=QEJ84Ho9x2u+RDV0L3fVLJ/07KGc8v4ji6189tqfgBzY4T9Zch4GF0ICOVmQiedFkK
 gO4tHFmI5AKY1yHkS5HmwQYH5w099hrSeCmDSLxdHK49ZwJao7LsADt7eFeAk/l3l3Lx
 vhmh1Z55xZ84AoRvPI0kPvYKhWj8/DEvynF8GDGjLZ28A7MxDzE5QZqE8bB348T9Imec
 VnKMOX6inmmxlz1s98+0hVZIcvQEJGNBImQ2V453cN632C6Nk8Vlvesscm4QA8Qmo1aG
 s935HuQHKFwUR6y/qra3A6ib1CF+reB133B+j1W732GGg527pTNwiD0EPZtT4A/ENTwb
 HI4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nuyhYd8ECto87m9FuniOXYcBUixqQrUKuyD3AyEWA+A=;
 b=kEVvSGOROgwHo1+xPwI9q+Z0Ho9dtGDa0L25wIvD+nAFU++qBuT3gdF9VXdgZYAD+i
 3kyNwi308xfFm3sVzUrjf55T9TIYFFSAWbzWnCvthAxNWtfpD1oykycr9MUtuGU7zSn4
 ZXy+Ti9DLAuYuNmBNY32ZH+Q1Op/SKPFEWwE83+YH1GhmdaCe9Wn5JRyFyFlrHY6lgvc
 ot4vBKjLsa0rbsp7jw/l7dBSpN8ItuU21GNvGv2puVu33+4LfHxkYO3rRoRCXdgsndTR
 cp+IpkwZj2O+KuPtvWQnsd6s+rWRdZKdpNNiaOHr544VDN1oDFhTusaa7ptUTZ2iCw+K
 I+Zw==
X-Gm-Message-State: APjAAAWKKWhZ1TRHwK7285F+iAipo7Vme3B6Uz+h4ptnGP3lDL2Nusr0
 7o5YhxnYhd44ZXG3GRH5IeczdB0S8kwPJkWlcB8=
X-Google-Smtp-Source: APXvYqxmCgCcV71Y46Kd1h7x1kMPtfJ8a/HJjus1Y1SOXueUfBb+NFUsWJq8OEdBjSxCnnR0qVG1fuTHKRUTczc2+cE=
X-Received: by 2002:a37:5d0:: with SMTP id 199mr5281279qkf.131.1576711128403; 
 Wed, 18 Dec 2019 15:18:48 -0800 (PST)
MIME-Version: 1.0
References: <20191218042121.1471954-1-anarsoul@gmail.com>
 <20191218042121.1471954-7-anarsoul@gmail.com>
 <CAGb2v65Qv6_KQ_MPg0u37P+o5gnnQWhbifOrY6g5FiWvnadmiw@mail.gmail.com>
In-Reply-To: <CAGb2v65Qv6_KQ_MPg0u37P+o5gnnQWhbifOrY6g5FiWvnadmiw@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 18 Dec 2019 15:18:51 -0800
Message-ID: <CA+E=qVdKwkUSsG9WA_4x5QntaOxQqfH1eZQ7TEeUrM_3W5mqTg@mail.gmail.com>
Subject: Re: [PATCH v7 6/7] arm64: dts: allwinner: h6: Add thermal sensor and
 thermal zones
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_151849_506876_BC81FAFC 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 8:32 PM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Wed, Dec 18, 2019 at 12:22 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
> >
> > From: Ondrej Jirman <megous@megous.com>
> >
> > There are two sensors, one for CPU, one for GPU.
> >
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > ---
> >  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 33 ++++++++++++++++++++
> >  1 file changed, 33 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > index 29824081b43b..cdcb1a36301a 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > @@ -11,6 +11,7 @@
> >  #include <dt-bindings/reset/sun50i-h6-ccu.h>
> >  #include <dt-bindings/reset/sun50i-h6-r-ccu.h>
> >  #include <dt-bindings/reset/sun8i-de2.h>
> > +#include <dt-bindings/thermal/thermal.h>
> >
> >  / {
> >         interrupt-parent = <&gic>;
> > @@ -233,6 +234,12 @@ dma: dma-controller@3002000 {
> >                 sid: efuse@3006000 {
> >                         compatible = "allwinner,sun50i-h6-sid";
> >                         reg = <0x03006000 0x400>;
> > +                       #address-cells = <1>;
> > +                       #size-cells = <1>;
> > +
> > +                       ths_calibration: thermal-sensor-calibration@14 {
> > +                               reg = <0x14 0x6>;
>
> Nit: my preference is to use words as the smallest increment, so this
> would have a size of 8 instead of 6. Same goes for the A64 dts.
>
> AFAICT this doesn't impact the driver in any way.

H6 has only 2 sensors, so it should be 4. That's my overlook, I'll
change it to 4 for H6 and to 8 for A64.

>
> ChenYu
>
>
> > +                       };
> >                 };
> >
> >                 watchdog: watchdog@30090a0 {
> > @@ -856,5 +863,31 @@ r_i2c: i2c@7081400 {
> >                         #address-cells = <1>;
> >                         #size-cells = <0>;
> >                 };
> > +
> > +               ths: thermal-sensor@5070400 {
> > +                       compatible = "allwinner,sun50i-h6-ths";
> > +                       reg = <0x05070400 0x100>;
> > +                       interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
> > +                       clocks = <&ccu CLK_BUS_THS>;
> > +                       clock-names = "bus";
> > +                       resets = <&ccu RST_BUS_THS>;
> > +                       nvmem-cells = <&ths_calibration>;
> > +                       nvmem-cell-names = "calibration";
> > +                       #thermal-sensor-cells = <1>;
> > +               };
> > +       };
> > +
> > +       thermal-zones {
> > +               cpu-thermal {
> > +                       polling-delay-passive = <0>;
> > +                       polling-delay = <0>;
> > +                       thermal-sensors = <&ths 0>;
> > +               };
> > +
> > +               gpu-thermal {
> > +                       polling-delay-passive = <0>;
> > +                       polling-delay = <0>;
> > +                       thermal-sensors = <&ths 1>;
> > +               };
> >         };
> >  };
> > --
> > 2.24.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
