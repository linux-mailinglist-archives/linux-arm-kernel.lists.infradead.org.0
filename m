Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C66A1121049
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 17:59:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7JVqJAaKPtij5fORKp3ozujfLwcVVq9cGWLeDN3MJB4=; b=RDp8/TOgke7bsM
	1yPG3a7jcJ835+aC8c1wly1df4xm35+xy9atM2CNngUlrJbt14ici5ImzBAfMI7C1K/nvluj1nDL6
	1vo4e4m31ywT9NTl00i67v+WwqEF6vxsw8mAkkTdkTMFpdAV5GlKkNq4U/rkYYYrj3MGG3cNaqcoV
	IOY8b3LR7Mu50GAq1XX4ZH/4llZY8VPLRoYmbZQevw+E9w0/BxW3zB64qF3iPtUBadWqYog4VpuSL
	LzTRM5rW06RWHyCQd8z/y1q/ZxE/jUlAsfQSAY4/xmOpxqOzG1fAPKmu/PKwrdmxy8Rr/2eAdl1cz
	7xAo3e+iXaSWGM9KSV/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igtia-0008LZ-98; Mon, 16 Dec 2019 16:59:36 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igtiL-0008Kx-KS
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 16:59:23 +0000
Received: by mail-io1-xd41.google.com with SMTP id x1so7691684iop.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 08:59:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wT7SZ+OLO630PVI5NYrvDjy+jNlP7/vPSuqmUxImjRI=;
 b=mvCGoG390lkQhIGt10C5uJOnQlDLqM7ckcj5+vO5/E5UBpBhaLT0+k2/e7I4DLcEeY
 2ifgfrg+zjpexA6m1T2Ge1sRCpRRTyvEIhEZTAMP9J664HhTWziOuDAb1+iyH7srY7PA
 ozqRWgCYhHDvJDJ5yuT6pDwnFshn+bjNE7YmA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wT7SZ+OLO630PVI5NYrvDjy+jNlP7/vPSuqmUxImjRI=;
 b=Pro6jWVjJHO9tfFu3Snh0WmfKoYTABfvAn+IsGpvwEbuYacz0N0mC0lREERbCvW7qU
 UUXEtdcmsSs76CKfi9nWtu9CYKGz12v2RiblkfyTLFtNA3GXfptj5Y2flUbwstyyvW+F
 AamMloz6P5E07kzMZCgI4xhUgfFzDq1UrKhQLQHZ4cDLjonah0u+JXkxShHw6NSykl+X
 GaB03t+UYkd+I5rcBkJBSHFw6L6lKRFI3b91Ul/S6WaQzRPp9Q6Vpd+yPMoxDkMStgWU
 qQOTwM6LnQ8BG0p8USkKpu8fUU5CDWy094gJW/PZ/n+NY6dAT47oy4CmADQEFvJB2SbV
 RlNg==
X-Gm-Message-State: APjAAAVYm9d1t3SmB23Qc4207quIidBZz3Hs0pCRZrLCkvVNKGvfXgug
 BYhkizAiFmTF0OysqwEmZPyFN+Am4bQWZFMzxf/zxw==
X-Google-Smtp-Source: APXvYqxdRoeWD1Tywgum5/3SAGtinVvAq8t3n49rScn14Yz2lW3axKTMURLW3omvXjZ5mdfPRnnhCaLiPDyJLxS1qSY=
X-Received: by 2002:a05:6602:2504:: with SMTP id
 i4mr19060859ioe.173.1576515559642; 
 Mon, 16 Dec 2019 08:59:19 -0800 (PST)
MIME-Version: 1.0
References: <20191203134816.5319-1-jagan@amarulasolutions.com>
 <20191203134816.5319-2-jagan@amarulasolutions.com>
 <20191204133600.gnv6dnhk6upe7xod@gilmour.lan>
 <CAMty3ZDU57Hj3ZSBC6sSMFWN9-HQadA03hmXUNUVS1W0UQQ3DA@mail.gmail.com>
 <20191216112042.f4xvlgnbm4dk6wkq@gilmour.lan>
In-Reply-To: <20191216112042.f4xvlgnbm4dk6wkq@gilmour.lan>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 16 Dec 2019 22:29:08 +0530
Message-ID: <CAMty3ZBU-XaxR_vM5L2yVbhR5ftfbtDn3jP00qCxBF+owVyqDQ@mail.gmail.com>
Subject: Re: [PATCH v12 1/7] dt-bindings: sun6i-dsi: Document A64 MIPI-DSI
 controller
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_085922_108285_0F1B18A6 
X-CRM114-Status: GOOD (  24.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Mon, Dec 16, 2019 at 4:50 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Mon, Dec 16, 2019 at 04:37:20PM +0530, Jagan Teki wrote:
> > On Wed, Dec 4, 2019 at 7:06 PM Maxime Ripard <mripard@kernel.org> wrote:
> > >
> > > On Tue, Dec 03, 2019 at 07:18:10PM +0530, Jagan Teki wrote:
> > > > The MIPI DSI controller in Allwinner A64 is similar to A33.
> > > >
> > > > But unlike A33, A64 doesn't have DSI_SCLK gating so it is valid
> > > > to have separate compatible for A64 on the same driver.
> > > >
> > > > DSI_SCLK uses mod clock-names on dt-bindings, so the same
> > > > is not required for A64.
> > > >
> > > > On that note
> > > > - A64 require minimum of 1 clock like the bus clock
> > > > - A33 require minimum of 2 clocks like both bus, mod clocks
> > > >
> > > > So, update dt-bindings so-that it can document both A33,
> > > > A64 bindings requirements.
> > > >
> > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > ---
> > > > Changes for v12:
> > > > - Use 'enum' instead of oneOf+const
> > > >
> > > >  .../display/allwinner,sun6i-a31-mipi-dsi.yaml | 20 +++++++++++++++++--
> > > >  1 file changed, 18 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > > > index dafc0980c4fa..b91446475f35 100644
> > > > --- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > > > +++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > > > @@ -15,7 +15,9 @@ properties:
> > > >    "#size-cells": true
> > > >
> > > >    compatible:
> > > > -    const: allwinner,sun6i-a31-mipi-dsi
> > > > +    enum:
> > > > +      - allwinner,sun6i-a31-mipi-dsi
> > > > +      - allwinner,sun50i-a64-mipi-dsi
> > > >
> > > >    reg:
> > > >      maxItems: 1
> > > > @@ -24,6 +26,8 @@ properties:
> > > >      maxItems: 1
> > > >
> > > >    clocks:
> > > > +    minItems: 1
> > > > +    maxItems: 2
> > > >      items:
> > > >        - description: Bus Clock
> > > >        - description: Module Clock
> > > > @@ -63,13 +67,25 @@ required:
> > > >    - reg
> > > >    - interrupts
> > > >    - clocks
> > > > -  - clock-names
> > > >    - phys
> > > >    - phy-names
> > > >    - resets
> > > >    - vcc-dsi-supply
> > > >    - port
> > > >
> > > > +allOf:
> > > > +  - if:
> > > > +      properties:
> > > > +         compatible:
> > > > +           contains:
> > > > +             const: allwinner,sun6i-a31-mipi-dsi
> > > > +      then:
> > > > +        properties:
> > > > +          clocks:
> > > > +            minItems: 2
> > > > +        required:
> > > > +          - clock-names
> > > > +
> > >
> > > Your else condition should check that the number of clocks items is 1
> > > on the A64
> >
> > But the minItems mentioned as 1 in clocks, which is unchanged number
> > by default. doesn't it sufficient?
>
> In the main schema, it's said that the clocks property can have one or
> two elements (to cover the A31 case that has one, and the A64 case
> that has 2).
>
> This is fine.
>
> Later on, you enforce that the A64 has two elements, and this is fine
> too.

Actually A31 case has 2 and A64 case has 1.

>
> However, you never check that on the A31 you only have one clock, and
> you could very well have two and no one would notice.

I did check A31 case for 2 but not in A64. this is what you mean? so
adding A64 check like below would fine?

allOf:
  - if:
      properties:
         compatible:
           contains:
             const: allwinner,sun6i-a31-mipi-dsi
      then:
        properties:
          clocks:
            minItems: 2
        required:
          - clock-names
  - if:
      properties:
         compatible:
           contains:
             const: allwinner,sun50i-a64-mipi-dsi
      then:
        properties:
          clocks:
            minItems: 1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
