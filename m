Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21326122AEF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 13:07:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUYmsfpQ+gHCJkmXaKCpgpP/32A0Awav9v7qjle1524=; b=kAIy3PE5XHsOXm
	JYAyOj+rmHo2Tfx/JCxGmCd6Gx03e7QEQ3WQjEORz+oBVPD1TU4BqD6YlouT+3TNfDty2M2ZWUKlQ
	IIsaKjucmHrYKE0kHGPfC/rvzSNhXc/nfIOkYt86l9J5pBCsBYRKCJAdluarCyzgoJX9ZmE+WgE5T
	+/R/OQw0ToH/tG+27/Kcu1cv0GwZ54GBlV/hxDu/KNJhRQKRfABuFNiclPcBPF+oMweOCVs2mZvfG
	wlCoPNz+PZixN4hgbY3ihUl1Ywu4m0rsdKCw3fEZOmUp2gWa5m0YmRkHpVgp1623N48FOnYrfYh7e
	2DSpTYMjVcdZw/VBACLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihBcr-0005wu-SG; Tue, 17 Dec 2019 12:06:53 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBci-0005wP-SA
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 12:06:46 +0000
Received: by mail-il1-x144.google.com with SMTP id s15so5102810iln.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 04:06:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kJFvFlTIidZyYqjLvZTlE95MCLu7jntYF3GzY++GrcU=;
 b=qtoUbxZKi8HQaYf/hEuyljG2Lk9x3aTYRUUhA+yNAkDKcQJk7YJ0lE6it9xS7/MtNE
 BH1N5iQvubVOF8dccCLV5moaKunrYjZQI/yqGf3BIh2A6y9OSaM4ASIGeUZi6MMVUOUL
 NaROAhN2+tEmIzppIlC25TZZFlD0N2HhlIUBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kJFvFlTIidZyYqjLvZTlE95MCLu7jntYF3GzY++GrcU=;
 b=gsJ8zs5wgpIUrPKhxYZNm4BuSob3n7pYa/3sZUtR8kpDjxWnQZQ88hzqJ+Kg40zHPS
 9SLVxWyNQfzqRwiafzKgPA5uiu2OlqJThFbLZvipxCiiB/IEr+gZKrbqsGxnefb6ERFB
 mwWWpqTatvJgFBtc1x9k8L9aA5wA3OJx392+Z/sj680L6tLKurTOm9Ld6i96nN9lLtyN
 uVbpxr6S9kghNOyO4gF1Zp98afGmdo0WyCvhS4x669GQz+Djw1i5XLyQIWNRzaTdLpdV
 uHk39XyHTJLtVzwMr9wKPOqtQWORMi+RFO8JYDekyWHL/O+thLQzr/Rxa4e9AfAxbLtv
 i8og==
X-Gm-Message-State: APjAAAU70Fq6mTQTwo9463J8BrbRN1bbL2z4VCb0vpF6O3m/wMxMXsOg
 RHsLG+aClOgYMqcC5E4KbXbm+SyuMSwI6DHv3KKe6w==
X-Google-Smtp-Source: APXvYqzo1LW8pYHyyqjgRw5xkXeBYSK8ws4WYpGdREfWhRvAF2p1T/KlJp3RESV+UxI8vdA2SxK9Moux+dAQE89yUZ0=
X-Received: by 2002:a92:17cb:: with SMTP id 72mr16272735ilx.173.1576584402380; 
 Tue, 17 Dec 2019 04:06:42 -0800 (PST)
MIME-Version: 1.0
References: <20191203134816.5319-1-jagan@amarulasolutions.com>
 <20191203134816.5319-2-jagan@amarulasolutions.com>
 <20191204133600.gnv6dnhk6upe7xod@gilmour.lan>
 <CAMty3ZDU57Hj3ZSBC6sSMFWN9-HQadA03hmXUNUVS1W0UQQ3DA@mail.gmail.com>
 <20191216112042.f4xvlgnbm4dk6wkq@gilmour.lan>
 <CAMty3ZBU-XaxR_vM5L2yVbhR5ftfbtDn3jP00qCxBF+owVyqDQ@mail.gmail.com>
 <20191216183410.akrmytbvaeg37wms@gilmour.lan>
In-Reply-To: <20191216183410.akrmytbvaeg37wms@gilmour.lan>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 17 Dec 2019 17:36:31 +0530
Message-ID: <CAMty3ZDoE6fxA3gSeUAV+WJEz0_qdQgU43Uxiq2YnH-yFuxZfg@mail.gmail.com>
Subject: Re: [PATCH v12 1/7] dt-bindings: sun6i-dsi: Document A64 MIPI-DSI
 controller
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_040645_053456_2884103D 
X-CRM114-Status: GOOD (  28.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 12:04 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Mon, Dec 16, 2019 at 10:29:08PM +0530, Jagan Teki wrote:
> > On Mon, Dec 16, 2019 at 4:50 PM Maxime Ripard <mripard@kernel.org> wrote:
> > >
> > > On Mon, Dec 16, 2019 at 04:37:20PM +0530, Jagan Teki wrote:
> > > > On Wed, Dec 4, 2019 at 7:06 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > > >
> > > > > On Tue, Dec 03, 2019 at 07:18:10PM +0530, Jagan Teki wrote:
> > > > > > The MIPI DSI controller in Allwinner A64 is similar to A33.
> > > > > >
> > > > > > But unlike A33, A64 doesn't have DSI_SCLK gating so it is valid
> > > > > > to have separate compatible for A64 on the same driver.
> > > > > >
> > > > > > DSI_SCLK uses mod clock-names on dt-bindings, so the same
> > > > > > is not required for A64.
> > > > > >
> > > > > > On that note
> > > > > > - A64 require minimum of 1 clock like the bus clock
> > > > > > - A33 require minimum of 2 clocks like both bus, mod clocks
> > > > > >
> > > > > > So, update dt-bindings so-that it can document both A33,
> > > > > > A64 bindings requirements.
> > > > > >
> > > > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > > ---
> > > > > > Changes for v12:
> > > > > > - Use 'enum' instead of oneOf+const
> > > > > >
> > > > > >  .../display/allwinner,sun6i-a31-mipi-dsi.yaml | 20 +++++++++++++++++--
> > > > > >  1 file changed, 18 insertions(+), 2 deletions(-)
> > > > > >
> > > > > > diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > > > > > index dafc0980c4fa..b91446475f35 100644
> > > > > > --- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > > > > > +++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > > > > > @@ -15,7 +15,9 @@ properties:
> > > > > >    "#size-cells": true
> > > > > >
> > > > > >    compatible:
> > > > > > -    const: allwinner,sun6i-a31-mipi-dsi
> > > > > > +    enum:
> > > > > > +      - allwinner,sun6i-a31-mipi-dsi
> > > > > > +      - allwinner,sun50i-a64-mipi-dsi
> > > > > >
> > > > > >    reg:
> > > > > >      maxItems: 1
> > > > > > @@ -24,6 +26,8 @@ properties:
> > > > > >      maxItems: 1
> > > > > >
> > > > > >    clocks:
> > > > > > +    minItems: 1
> > > > > > +    maxItems: 2
> > > > > >      items:
> > > > > >        - description: Bus Clock
> > > > > >        - description: Module Clock
> > > > > > @@ -63,13 +67,25 @@ required:
> > > > > >    - reg
> > > > > >    - interrupts
> > > > > >    - clocks
> > > > > > -  - clock-names
> > > > > >    - phys
> > > > > >    - phy-names
> > > > > >    - resets
> > > > > >    - vcc-dsi-supply
> > > > > >    - port
> > > > > >
> > > > > > +allOf:
> > > > > > +  - if:
> > > > > > +      properties:
> > > > > > +         compatible:
> > > > > > +           contains:
> > > > > > +             const: allwinner,sun6i-a31-mipi-dsi
> > > > > > +      then:
> > > > > > +        properties:
> > > > > > +          clocks:
> > > > > > +            minItems: 2
> > > > > > +        required:
> > > > > > +          - clock-names
> > > > > > +
> > > > >
> > > > > Your else condition should check that the number of clocks items is 1
> > > > > on the A64
> > > >
> > > > But the minItems mentioned as 1 in clocks, which is unchanged number
> > > > by default. doesn't it sufficient?
> > >
> > > In the main schema, it's said that the clocks property can have one or
> > > two elements (to cover the A31 case that has one, and the A64 case
> > > that has 2).
> > >
> > > This is fine.
> > >
> > > Later on, you enforce that the A64 has two elements, and this is fine
> > > too.
> >
> > Actually A31 case has 2 and A64 case has 1.
> >
> > >
> > > However, you never check that on the A31 you only have one clock, and
> > > you could very well have two and no one would notice.
> >
> > I did check A31 case for 2 but not in A64. this is what you mean? so
> > adding A64 check like below would fine?
> >
> > allOf:
> >   - if:
> >       properties:
> >          compatible:
> >            contains:
> >              const: allwinner,sun6i-a31-mipi-dsi
>
> You need a new line here

I couldn't see new line before then: in example schema -
https://elixir.bootlin.com/linux/v5.5-rc2/source/Documentation/devicetree/bindings/example-schema.yaml#L208
May be a new changes for this ML or so?

>
> >       then:
>
> This is the wrong level of indentation, it needs to be at the same level than if

True, I have seen it in example schema.

>
> >         properties:
> >           clocks:
> >             minItems: 2
>
> Newline
>
> >         required:
> >           - clock-names
>
> Newline
>
> >   - if:
> >       properties:
> >          compatible:
> >            contains:
> >              const: allwinner,sun50i-a64-mipi-dsi
> >       then:
> >         properties:
> >           clocks:
> >             minItems: 1
>
> (and same thing here).
>
> But yeah, otherwise that's what I meant

Thanks for the detailed review.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
