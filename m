Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7FDD8BB6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 10:50:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MpM42pSpMnQBRI3ibZ4nVLjAlhL8jr33Dtt64ckavdA=; b=QVc3REhkWTVohw
	q4w/6xooEW4RVtyFnAuYWvkGeB8HysieN/e6QP+RfNquplWXSESSZn/uigqRX5RztmmarAVuWST1T
	GjaLHsAIONflC+oOHn+NaTq4HwQde09vps6tFOTrDrkWccqJBs+l0SBu1maOu+fEY5C9YfIZpIwpd
	KiFDPT+bhL8m8FJlePO05+4Wp99xoq3LTSajhPjwYb1iWsSlZUv7wwRa4mElBkqW6eqlI6iT/5nXh
	AJTL3Ty6uM4dcS7Y3VdKMHpt6EqMU9a18JS9uTKr+P++e/dv1Euj41N/3wjGXjgtmA+5dq6GMCnmz
	OfizduOJAfSaJxSHmolQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKf0c-0002uW-Uo; Wed, 16 Oct 2019 08:50:18 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKf0J-0002s6-Kr
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 08:50:01 +0000
Received: by mail-io1-xd44.google.com with SMTP id n26so52706243ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 01:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nkFKCgNZd30QrMCh3RiyW6uUTpINk4yhCuU9i7apvF8=;
 b=oDLHRvC6Da2CfSONZTkFu1bX2HUbVJbI71A8Kmnp8x1j9NKcOadDyR4zX0/SUlCeDW
 6EP3b8kcsQfyUBkTYAd4jBTbJotQJjQ39oVD+mG36pdochYrgL1N9fvZ+4W/6s0/hKDV
 BglF9H8nLhQu+PPWgzunU49/vZjl42IXUCUpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nkFKCgNZd30QrMCh3RiyW6uUTpINk4yhCuU9i7apvF8=;
 b=MCjeAi95IwabMk1IsC5GZItnid0Q031B+244x64mCStnX26/LJ5ESY4+e1AV6quYRX
 SofP0cD23HZt/PzcSbfg52NXoyPOPvXt22pkRu6rpN1AQfagMdNZOXe7cs9f+rc7H7sw
 lvTqjbJTDNya/4c6lqhbaHgR/46Mn3QHBZqxkdY1i1CATJ6hXqwUItn+83zOYQbTbSga
 IO7SQVMnB0nvpXEO+0vTB/cXJ/ida8xo4oEjMl/G7B8mz60huzmx1sz/BA7uOMVEW0Ww
 E9sKKRzBHqSRL2JrvF/WEmWTvWwZVtZOLTxywhjV4TlwO+ODFEEa418pR9HGs3UdaT3i
 CY2g==
X-Gm-Message-State: APjAAAVS/jc5fq7MPGPNrsfyKvia6dnU5B/i9eGlbcYAHrAF+goG48A6
 LWAPuk46BTkHK0ADCVJeazDtGSNeTIn3K7Us/e6X6CNSF/Y=
X-Google-Smtp-Source: APXvYqwM/YfYZ+riS2Cum5gGH058KHcCEur2jM3FQN+H7YrTWDuxynyVSyvoqlYwq/gm6khtHfKG1I7SfwJJ3PPT7kg=
X-Received: by 2002:a6b:5c0f:: with SMTP id z15mr8252242ioh.173.1571215796031; 
 Wed, 16 Oct 2019 01:49:56 -0700 (PDT)
MIME-Version: 1.0
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
 <20191005141913.22020-6-jagan@amarulasolutions.com>
 <20191007105708.raxavxk4n7bvxh7x@gilmour>
 <CAMty3ZCiwOGgwbsjTHvEZhwHGhsgb6_FeBs9hHgLai9=rV2_HQ@mail.gmail.com>
 <20191016080306.44pmo3rfmtnkgosq@gilmour>
In-Reply-To: <20191016080306.44pmo3rfmtnkgosq@gilmour>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 16 Oct 2019 14:19:44 +0530
Message-ID: <CAMty3ZCTE=W+TNRvdowec-eYB625j97uG8F3fzVMtRFsKsqFFQ@mail.gmail.com>
Subject: Re: [PATCH v10 5/6] arm64: dts: allwinner: a64: Add MIPI DSI pipeline
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_014959_823363_8D2A41C8 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 1:33 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Mon, Oct 14, 2019 at 05:37:50PM +0530, Jagan Teki wrote:
> > On Mon, Oct 7, 2019 at 4:27 PM Maxime Ripard <mripard@kernel.org> wrote:
> > >
> > > On Sat, Oct 05, 2019 at 07:49:12PM +0530, Jagan Teki wrote:
> > > > Add MIPI DSI pipeline for Allwinner A64.
> > > >
> > > > - dsi node, with A64 compatible since it doesn't support
> > > >   DSI_SCLK gating unlike A33
> > > > - dphy node, with A64 compatible with A33 fallback since
> > > >   DPHY on A64 and A33 is similar
> > > > - finally, attach the dsi_in to tcon0 for complete MIPI DSI
> > > >
> > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> > > > ---
> > > >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 38 +++++++++++++++++++
> > > >  1 file changed, 38 insertions(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > index 69128a6dfc46..ad4170b8aee0 100644
> > > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > @@ -382,6 +382,12 @@
> > > >                                       #address-cells = <1>;
> > > >                                       #size-cells = <0>;
> > > >                                       reg = <1>;
> > > > +
> > > > +                                     tcon0_out_dsi: endpoint@1 {
> > > > +                                             reg = <1>;
> > > > +                                             remote-endpoint = <&dsi_in_tcon0>;
> > > > +                                             allwinner,tcon-channel = <1>;
> > > > +                                     };
> > > >                               };
> > > >                       };
> > > >               };
> > > > @@ -1003,6 +1009,38 @@
> > > >                       status = "disabled";
> > > >               };
> > > >
> > > > +             dsi: dsi@1ca0000 {
> > > > +                     compatible = "allwinner,sun50i-a64-mipi-dsi";
> > > > +                     reg = <0x01ca0000 0x1000>;
> > > > +                     interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> > > > +                     clocks = <&ccu CLK_BUS_MIPI_DSI>;
> > > > +                     clock-names = "bus";
> > >
> > > This won't validate with the bindings you have either here, since it
> > > still expects bus and mod.
> > >
> > > I guess in that cas, we can just drop clock-names, which will require
> > > a bit of work on the driver side as well.
> >
> > Okay.
> > mod clock is not required for a64, ie reason we have has_mod_clk quirk
> > patch. Adjust the clock-names: on dt-bindings would make sense here,
> > what do you think?
>
> I'm confused, what are you suggesting?

Sorry for the confusion.

The mod clock is not required for A64 and we have a patch for handling
mod clock using has_mod_clk quirk(on the series), indeed the mod clock
is available in A31 and not needed for A64. So, to satisfy this
requirement the clock-names on dt-bindings can update to make mod
clock-name is optional and bus clock is required.

I'm not exactly sure, this is correct but trying to understand if it
is possible or not? something like

   clocks:
      minItems: 1
      maxItems: 2
     items:
       - description: Bus Clock
       - description: Module Clock

   clock-names:
      minItems: 1
      maxItems: 2
     items:
       - const: bus
       - const: mod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
