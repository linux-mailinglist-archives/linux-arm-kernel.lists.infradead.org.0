Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD14AE4BFC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 15:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/D8cQOBxxmgDP06ss70NpgIv1XlDuPB8s3A4snLa+M=; b=Ts6O8Xesyhl4Nu
	cOi0jdwXHt129XZnJzI1mnMHJnGoL6RmGMxSrxwgTM/nW1y0Bx9jbA6qU6m5oXAQaBbAO/B03enOP
	008WgybEo6pbptRq3wGuOwPxp7VVQwJPew+fGk/oQVV3v5FUk2UDz8E/QCL/nBu75n368mbqZ2zsT
	KGCLChnRRhXUXI+K6X+v7aIcd15hZRixT5bX9OFDl9gYnlBG2RoWcWV7dFI0IkmhWuc4Jr9AOLebM
	d9px7fvZCaXVn8hhe6mj2KXEvRk9blWFBBOXlllu3/R2C7tsOJrkcgdocwTLoevrwWkzvjGLqgwuL
	6iKIemwBW+uJZpn1nF2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNzYx-0003Wi-E7; Fri, 25 Oct 2019 13:23:31 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNzYo-0003Vk-SQ
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 13:23:24 +0000
Received: by mail-il1-x143.google.com with SMTP id y5so1815025ilb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 06:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ojEgknO9gsXeCFh5vUTwvNw4vcn18ObyJp/IQFfkXH4=;
 b=ghmjdeVEvFvSvG4KtfjhR9Z3D1l6oZlkktIdvWK/D7Ly8jj0WNyKfHtTZc2lgjStTT
 Xhoobs6lf5kaUYh2SlVmVWTe7V9HLUkNK1oACZ2zm8ZnaLajhW8HKmt+IKWw4oUmHjBA
 R4JdZ7vYqxS4PsSR+hVLfAdIlGiVChkESV0Sk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ojEgknO9gsXeCFh5vUTwvNw4vcn18ObyJp/IQFfkXH4=;
 b=SnVJ1goik+jCC9+usE8PXaS6f6xMNlR+7cuZLqiXTs7Vjr/PenLrsvV023sAFPwHjG
 MEtK5TDXxCJGu9YigHhCDhyaKxm+SghjWGneN96KraRqzvr/pWmMRkGKaRD2/iihoWpA
 nUqClDJr6UKTL0dVc+rsuvk1lnjIIpSVoka62BXV5VbasXJ4C+T943fnqlcz/DwBru6W
 WIy/YQ45OXvpJOF6cvM+2hS0g7PlIt4R8fZmHIgmoaT7uThmnS7yIcu2FdymzKw1bHRp
 /EL+NheHTQ748nfmV7kK6BLH6qQhOsqSQKaG9EHqSUWiDgD3aF2LvVIqV1gsK7j0B86c
 b0Lw==
X-Gm-Message-State: APjAAAVG3o3nf3W0nn0qHexLU9uwDL32AXUAPKF6KeS8vrx7bOUEaPY0
 3inKDO1HGbxRkNFmVk93J72Hf/78tPyY+T/dvAl1mQ==
X-Google-Smtp-Source: APXvYqw0pBA4TWcmcAghY5wftGh5PsNrcHujAq3KoFAEr3ZRnDiuFICtxs82RGWOsFQdTo67xfnYb+skWRVTZwG0zos=
X-Received: by 2002:a92:5d8f:: with SMTP id e15mr4259484ilg.173.1572009800025; 
 Fri, 25 Oct 2019 06:23:20 -0700 (PDT)
MIME-Version: 1.0
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
 <20191005141913.22020-6-jagan@amarulasolutions.com>
 <20191007105708.raxavxk4n7bvxh7x@gilmour>
 <CAMty3ZCiwOGgwbsjTHvEZhwHGhsgb6_FeBs9hHgLai9=rV2_HQ@mail.gmail.com>
 <20191016080306.44pmo3rfmtnkgosq@gilmour>
 <CAMty3ZCTE=W+TNRvdowec-eYB625j97uG8F3fzVMtRFsKsqFFQ@mail.gmail.com>
 <20191017095225.ntx647ivegaldlyf@gilmour>
 <CAMty3ZAvqRLh16vFd-63h4+SzQkNydGfNKX_pByqFD-hZfncpQ@mail.gmail.com>
 <20191024182749.czihj3gnvj5yz2eo@hendrix>
In-Reply-To: <20191024182749.czihj3gnvj5yz2eo@hendrix>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 25 Oct 2019 18:53:08 +0530
Message-ID: <CAMty3ZBL+P82uZP0dT0Y695p1K9tyxgqQ-X14OE+H4dZmXMkpg@mail.gmail.com>
Subject: Re: [PATCH v10 5/6] arm64: dts: allwinner: a64: Add MIPI DSI pipeline
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_062323_058984_C5C159B3 
X-CRM114-Status: GOOD (  32.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, Oct 25, 2019 at 12:33 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Thu, Oct 24, 2019 at 01:28:28PM +0530, Jagan Teki wrote:
> > On Thu, Oct 17, 2019 at 3:22 PM Maxime Ripard <mripard@kernel.org> wrote:
> > >
> > > On Wed, Oct 16, 2019 at 02:19:44PM +0530, Jagan Teki wrote:
> > > > On Wed, Oct 16, 2019 at 1:33 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > > >
> > > > > On Mon, Oct 14, 2019 at 05:37:50PM +0530, Jagan Teki wrote:
> > > > > > On Mon, Oct 7, 2019 at 4:27 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > > > > >
> > > > > > > On Sat, Oct 05, 2019 at 07:49:12PM +0530, Jagan Teki wrote:
> > > > > > > > Add MIPI DSI pipeline for Allwinner A64.
> > > > > > > >
> > > > > > > > - dsi node, with A64 compatible since it doesn't support
> > > > > > > >   DSI_SCLK gating unlike A33
> > > > > > > > - dphy node, with A64 compatible with A33 fallback since
> > > > > > > >   DPHY on A64 and A33 is similar
> > > > > > > > - finally, attach the dsi_in to tcon0 for complete MIPI DSI
> > > > > > > >
> > > > > > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > > > > Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> > > > > > > > ---
> > > > > > > >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 38 +++++++++++++++++++
> > > > > > > >  1 file changed, 38 insertions(+)
> > > > > > > >
> > > > > > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > > > > index 69128a6dfc46..ad4170b8aee0 100644
> > > > > > > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > > > > @@ -382,6 +382,12 @@
> > > > > > > >                                       #address-cells = <1>;
> > > > > > > >                                       #size-cells = <0>;
> > > > > > > >                                       reg = <1>;
> > > > > > > > +
> > > > > > > > +                                     tcon0_out_dsi: endpoint@1 {
> > > > > > > > +                                             reg = <1>;
> > > > > > > > +                                             remote-endpoint = <&dsi_in_tcon0>;
> > > > > > > > +                                             allwinner,tcon-channel = <1>;
> > > > > > > > +                                     };
> > > > > > > >                               };
> > > > > > > >                       };
> > > > > > > >               };
> > > > > > > > @@ -1003,6 +1009,38 @@
> > > > > > > >                       status = "disabled";
> > > > > > > >               };
> > > > > > > >
> > > > > > > > +             dsi: dsi@1ca0000 {
> > > > > > > > +                     compatible = "allwinner,sun50i-a64-mipi-dsi";
> > > > > > > > +                     reg = <0x01ca0000 0x1000>;
> > > > > > > > +                     interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> > > > > > > > +                     clocks = <&ccu CLK_BUS_MIPI_DSI>;
> > > > > > > > +                     clock-names = "bus";
> > > > > > >
> > > > > > > This won't validate with the bindings you have either here, since it
> > > > > > > still expects bus and mod.
> > > > > > >
> > > > > > > I guess in that cas, we can just drop clock-names, which will require
> > > > > > > a bit of work on the driver side as well.
> > > > > >
> > > > > > Okay.
> > > > > > mod clock is not required for a64, ie reason we have has_mod_clk quirk
> > > > > > patch. Adjust the clock-names: on dt-bindings would make sense here,
> > > > > > what do you think?
> > > > >
> > > > > I'm confused, what are you suggesting?
> > > >
> > > > Sorry for the confusion.
> > > >
> > > > The mod clock is not required for A64 and we have a patch for handling
> > > > mod clock using has_mod_clk quirk(on the series), indeed the mod clock
> > > > is available in A31 and not needed for A64. So, to satisfy this
> > > > requirement the clock-names on dt-bindings can update to make mod
> > > > clock-name is optional and bus clock is required.
> > >
> > > No, the bus clock name is not needed if there's only one clock.
> >
> > Okay, is it because the same clock handle it on PHY side?
>
> No, because there's only one clock and thus you don't need to
> differentiate them.
>
> > >
> > > > I'm not exactly sure, this is correct but trying to understand if it
> > > > is possible or not? something like
> > > >
> > > >    clocks:
> > > >       minItems: 1
> > > >       maxItems: 2
> > > >      items:
> > > >        - description: Bus Clock
> > > >        - description: Module Clock
> > >
> > > That's correct.
> > >
> > > >    clock-names:
> > > >       minItems: 1
> > > >       maxItems: 2
> > > >      items:
> > > >        - const: bus
> > > >        - const: mod
> > >
> > > Here, just keep the current clock-names definition, and make it
> > > required only for SoCs that are not the A64
> >
> > Okay, please have a look here I have pasted the diff for comments.
> >
> >    clocks:
> > +    minItems: 2
> >      items:
> >        - description: Bus Clock
> >        - description: Module Clock
>
> Didn't you tell me that you didn't need the module clock?
>
> How do you handle the case were you just have the bus clock then?

Make sense, it is my mistake then. we don't require to specify here I
think since it implies globally. I think it should be sufficient to
mention on allOf: section based on the SoC like I mentioned in above
snippet.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
