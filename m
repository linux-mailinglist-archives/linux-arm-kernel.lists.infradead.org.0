Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D042613275
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKRYGsT/4nUXszHogYD1gwsivQZWnVOVJSmjW1hvFwQ=; b=hhYDvElnWqHW8c
	itWilDYmP1RgsLv6C178TpJnQyjRdQfrnaofF9007ksba+D/tTEvwQu0LrI5PAFJ9Xm1ctj/mEsd9
	tm5ghiE10JcBDtJV8oGq9ATS5xTxobqvHafUvk/fw+mvdE1M7euByJAQ8cQEVIuZgFAQtvqwAmPHN
	m41jA2WZR7sLcrSLHTTDf1/X3YdNR7lFt/e907VkFYqgSawqK0rq1vPQAB4GXey+W7aNXi0tzT3aW
	pjOowaSPiTWgELZVHr7ysQx0AmA618HZq7V3LWKUQJNVjSGTII16pGgm0/rVsSvP1M0djg+dwitnp
	0f30lL9Z+9wIDjXzXmrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbKy-0005IW-UF; Fri, 03 May 2019 16:47:04 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbKo-0005GT-9Y
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:46:56 +0000
Received: by mail-pl1-x642.google.com with SMTP id y3so2966595plp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 09:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=I6Kj7J5O6mOYwdObKv7gUJ8XCyM1RwJ3zMEkMb1FKIA=;
 b=CyQ4K5S6LZCPez3P3h4Yxxkjx5MBxsP5BHCmBIL6WSY0qUlz3mMC4lIpY2Vhriry6a
 oXx9z7VzntcU6eC6xQcsSIzOqmACQmL8DeTBYaE8HymEL4qWrTlVSAmi/F6yKSegpaUY
 yzTiLzZgcSRyaY8DoLKKDvUdX+If3vo60mwTg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=I6Kj7J5O6mOYwdObKv7gUJ8XCyM1RwJ3zMEkMb1FKIA=;
 b=seP//LTg0zhCxSAVbjIUqotvwrVBzUGSbtcuiVCIKR87urioSv3JPCEjtYQdYy1NGJ
 0UYaKZfVDrUK+eAy2ITFzYvlk69RXFC1tnY7c6KF3lD+8kLtqGU0GeYdvf2iYe1+h9aQ
 Ng7K7uhSM1WU9q4wZGTLLL8ubSmUU501049Y+u9FadSYFCkMcmX3c/xZw0qfJ4JxJVIn
 XvXw5nBI+4aRsGjg7zx+sds6l6NTWwXq5YYkv4Xt5xwzkAiBlXbZgXSp66iMSSENPGBQ
 xLfGyC/6vv6Ydgc9za/0qvFgoKKe6H13tbsjDd4J9+u+gsKgbaXlG6tFodC6iOJFxBy2
 8WGw==
X-Gm-Message-State: APjAAAWGbbWZhQniJOI04sP0wpKE0ol3OX8Uwy3yjSoHYnHVbVR8IHvG
 H6by9h9N5AfBG2QmJE+tfr0j5A==
X-Google-Smtp-Source: APXvYqxWg5BvQCMW5sbTPT2MdGAVLNcxxY3llDZ9nW22Kb9AR5oS4k2LVUS2tXpLJVTQ1tgp8Uwwrg==
X-Received: by 2002:a17:902:1c1:: with SMTP id
 b59mr11866780plb.182.1556902013175; 
 Fri, 03 May 2019 09:46:53 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id f21sm3394538pfn.30.2019.05.03.09.46.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 09:46:52 -0700 (PDT)
Date: Fri, 3 May 2019 09:46:51 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH 1/8] arm64: dts: mt8183: add thermal zone node
Message-ID: <20190503164651.GB40515@google.com>
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
 <1556793795-25204-2-git-send-email-michael.kao@mediatek.com>
 <CAJMQK-isJf6f+OubbCdoXs8L2cup=rm3Z8Mr7Q26QshMP-0wxA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJMQK-isJf6f+OubbCdoXs8L2cup=rm3Z8Mr7Q26QshMP-0wxA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_094654_360039_0E065670 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, jamesjj.liao@mediatek.com,
 devicetree@vger.kernel.org, louis.yu@mediatek.com, dawei.chien@mediatek.com,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 roger.lu@mediatek.com, linux-kernel@vger.kernel.org,
 "michael.kao" <michael.kao@mediatek.com>,
 Eduardo Valentin <edubezval@gmail.com>, fan.chen@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, May 03, 2019 at 04:03:58PM +0800, Hsin-Yi Wang wrote:
> On Thu, May 2, 2019 at 10:43 AM michael.kao <michael.kao@mediatek.com> wrote:
> >
> > Add thermal zone node to Mediatek MT8183 dts file.
> >
> > Signed-off-by: Michael Kao <michael.kao@mediatek.com>
> > ---
> >  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 64 ++++++++++++++++++++++++++++++++
> >  1 file changed, 64 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > index 926df75..b92116f 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > @@ -334,6 +334,67 @@
> >                         status = "disabled";
> >                 };
> >
> > +               thermal: thermal@1100b000 {
> > +                       #thermal-sensor-cells = <1>;
> > +                       compatible = "mediatek,mt8183-thermal";
> > +                       reg = <0 0x1100b000 0 0x1000>;
> > +                       interrupts = <0 76 IRQ_TYPE_LEVEL_LOW>;
> > +                       clocks = <&infracfg CLK_INFRA_THERM>,
> > +                                <&infracfg CLK_INFRA_AUXADC>;
> > +                       clock-names = "therm", "auxadc";
> > +                       resets = <&infracfg  MT8183_INFRACFG_AO_THERM_SW_RST>;
> > +                       mediatek,auxadc = <&auxadc>;
> > +                       mediatek,apmixedsys = <&apmixedsys>;
> > +                       mediatek,hw-reset-temp = <117000>;
> > +                       nvmem-cells = <&thermal_calibration>;
> > +                       nvmem-cell-names = "calibration-data";
> > +               };
> > +
> > +               thermal-zones {
> > +                       cpu_thermal: cpu_thermal {
> > +                               polling-delay-passive = <1000>;
> > +                               polling-delay = <1000>;
> > +
> > +                               thermal-sensors = <&thermal 0>;
> > +                               sustainable-power = <1500>;
> > +                       };
> > +
> > +                       tzts1: tzts1 {
> > +                               polling-delay-passive = <1000>;
> > +                               polling-delay = <1000>;
> > +                               thermal-sensors = <&thermal 1>;
> Is sustainable-power required for tzts? Though it's an optional
> property, kernel would have warning:
> [    0.631556] thermal thermal_zone1: power_allocator:
> sustainable_power will be estimated
> [    0.639586] thermal thermal_zone2: power_allocator:
> sustainable_power will be estimated
> [    0.647611] thermal thermal_zone3: power_allocator:
> sustainable_power will be estimated
> [    0.655635] thermal thermal_zone4: power_allocator:
> sustainable_power will be estimated
> [    0.663658] thermal thermal_zone5: power_allocator:
> sustainable_power will be estimated
> if no sustainable-power assigned.

The property is indeed optional, if it isn't specified IPA will use
the sum of the minimum power of all 'power actors' of the zone as
estimate (see estimate_sustainable_power()). This may lead to overly
agressive throttling, since the nominal sustainable power will always
be <= the requested power.

In my understanding the sustainable power may varies between devices,
even for the same SoC. One could have all the hardware crammed into a
tiny plastic enclosure (e.g. ASUS Chromebit), another might have a
laptop form factor and a metal enclosure (e.g. ASUS C201). Both
examples are based on an Rockchip rk3288, but they have completely
different thermal behavior, and would likely have different values for
'sustainable-power'.

In this sense I tend to consider 'sustainable-power' more a device,
than a SoC property. You could specify a 'reasonable' value as a
starting point, but it will likely not be optimal for all or even most
devices. The warning might even be useful for device makers by
indicating them that there is room for tweaking.

I'm not an expert in the matter though, just happend to look into this
recently :)

Cheers

Matthias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
