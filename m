Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7634132EFF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 20:07:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/x/lMIZDkYY8kX6k7uFFLkk4I4imwx2mRy1Z8Kb8JL0=; b=NWgiKoUf0qsmPB
	+WED3cf8oRtEMgrNGJpiBMDJ7dnMKBXpyrC6S+CPJ8jkNu9Y79GxA8eqWVmbP3XglFGAB9ja3NA1d
	iaBP1de8VFw+t4odQTseFIqi/Usc8hlGgsEE+FctWGQdQtknEErfxAO4me0juf/dTp72T2zdUFOca
	56ycyryn7P+Q/DW1lwgxvf+H2u52KzHXy5NHIdZAypzAKnPMxUC2QpMXo0J8hZ4xok5nBKxGXkunU
	214e7kd+XJVR+pxtL5OANZYqDY1Kcy8AF0rroPaI2A0BM8RPc0o/RJbmypM20hJBCJ5sN3MiRM7uf
	7Z1TBurcK+uh//lcPnVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iouCi-0000ew-Sm; Tue, 07 Jan 2020 19:07:48 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iouCZ-0000dT-HI
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 19:07:40 +0000
Received: by mail-io1-xd43.google.com with SMTP id t26so417521ioi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 11:07:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eL83IhmbYca+Npr1asR8CaaCAGTGwRjtX816LINHiJ4=;
 b=RLrZOxXIMmF1MhE4PM1Sa8VQoZKrgU1LR5d0ldT6JogLbeCS661EUDG/pqgyvlDsFL
 IoajV/fjjZ8J45uNX75f8fm7EM5gby4YnelGEZJCvyffXggqoBTZ4XtZSThHMeWog9gu
 dfc/WoVFPLDElSvYXcqqusjISy6MAo/iLCHJVvxuAcTZLGY3WQyybVHmG/3n3Dmz6+z1
 3NNEanzS2pZ91WFp3WFhZTFasbjePbmD2WkV56voSFwZ+0e1C/fyFn04Ru2wzRNiApuj
 z3eY3fmCeK6TCAHnEJMZ2y+4WLY6NPuCrhlBV35zJ58i4meOBn4XDM+xv/SCUWcfrMwB
 uVUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eL83IhmbYca+Npr1asR8CaaCAGTGwRjtX816LINHiJ4=;
 b=DX7BAJ/8yYQewn395g0WydS9k2xpv0LoGjrxcDqYFFcZYRmShbaWNH1UDIOj19SXLf
 wEHqMmUZB89bwnLEsr7KcMdfZRTly7LgemM8IAIitgyb34wvJjBv3GZTReE3W6BXLwMS
 HoERUK1N2yua4j1R4mmJKV7f/tBvOK3qz1RANHU0B4zHwhQFl9bIbkheLtd0ewv528lC
 BI4sYD9LBE6u0UdglGP/bXpDRGCpUd12vCLIMl70Lr97eJd83igHCufvQg7f91mP7YDA
 IFQMv810cemVDpVHLKyWX04+/HUF330b2z3/vx/LZ6lANUSea07nLjOXmPbMT5TK/PLQ
 0pWg==
X-Gm-Message-State: APjAAAUPt4I3VMvqfQ2GKdQEAzU11iMr42VaWtiNbQ4E9pPUIHh9Jyhp
 yRRA8ZK96gv/8F3KdjHzGZ7NupD9gVD6SZ2W/1A=
X-Google-Smtp-Source: APXvYqysZuYS/1n72GZMQD9xKS7PrMAogGWhU3hvRiFtIkWkVbE9ikdKnVSN73EbKlebVJc4I/j1UwQV/tXXzYxNrl4=
X-Received: by 2002:a05:6638:a2c:: with SMTP id 12mr961911jao.60.1578424058012; 
 Tue, 07 Jan 2020 11:07:38 -0800 (PST)
MIME-Version: 1.0
References: <20200106191003.21584-1-tiny.windzz@gmail.com>
 <20200106191003.21584-2-tiny.windzz@gmail.com>
 <20200107090449.GA32007@pi3>
In-Reply-To: <20200107090449.GA32007@pi3>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Wed, 8 Jan 2020 03:07:25 +0800
Message-ID: <CAEExFWvJx82h1c1QBrQ+DpT4kgEZ0o3q_O7JLbk-1L-iuMGPEw@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: exynos: tiny4412: add proper panel node
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_110739_576026_CE2155B6 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 7, 2020 at 5:04 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Mon, Jan 06, 2020 at 07:10:03PM +0000, Yangtao Li wrote:
> > This patch add at070tn92 panel for tiny4412 board.
>
> Please fix description as in patch 1.
>
> >
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > ---
> >  arch/arm/boot/dts/exynos4412-tiny4412.dts | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/exynos4412-tiny4412.dts b/arch/arm/boot/dts/exynos4412-tiny4412.dts
> > index 2b62cb27420c..57f9d09233ad 100644
> > --- a/arch/arm/boot/dts/exynos4412-tiny4412.dts
> > +++ b/arch/arm/boot/dts/exynos4412-tiny4412.dts
> > @@ -66,6 +66,16 @@
> >                       clock-frequency = <24000000>;
> >               };
> >       };
> > +
> > +     panel {
> > +             compatible = "innolux,at070tn92";
> > +
> > +             port {
> > +                     panel_input: endpoint {
> > +                             remote-endpoint = <&lcdc_output>;
> > +                     };
> > +             };
> > +     };
> >  };
> >
> >  &fimd {
> > @@ -74,6 +84,12 @@
> >       #address-cells = <1>;
> >       #size-cells = <0>;
> >       status = "okay";
>
> One empty space here.
>
> > +     port@3 {
> > +             reg = <3>;
>
> Why starting from "3"? Why this is port@3, not just "port"?

From samsung-fimd.txt:
---
The device node can contain 'port' child nodes according to the bindings defined
in [2]. The following are properties specific to those nodes:
- reg: (required) port index, can be:
                0 - for CAMIF0 input,
                1 - for CAMIF1 input,
                2 - for CAMIF2 input,
                3 - for parallel output,
                4 - for write-back interface
---

I guess it is influenced here.
https://elixir.bootlin.com/linux/v5.5-rc5/source/drivers/gpu/drm/exynos/exynos_drm_dpi.c#L170
Without it, lcd is completely black.

Your,
Yangtao

>
> Best regards,
> Krzysztof
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
