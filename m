Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D605D12034F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:07:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+79sRUgFhtAjeEr1rGsxuomfVXQz96LofrWZuBl1TU=; b=Uv4Iq40EId2kKI
	Fwt294tTDJwtWv5NhTtIBH0vaCzlKPEHKRS0AL9hn9+DeaafkoeYxcM7P6Cu2Nr1fgC3yU3DlzMAm
	3xOKxa3ozlG5DAuAX9QHw/Tqrzn5MTvqlRlWSshuQdNOLadDMS2S+OwR/lEz4wJ2CTpqT0K18Sz8c
	yIqe7auRr87x1eTeRDTVOLKeOYbrwwiQXfFyuPeaXL63TPK0CDBcyJpvJJ3NJxfQyDoAS+TDrbYtD
	l2mycHXoAr8ECLJMbO7Xwp+6aVt8C+mFbxc0xLpjiMCpdPOJC2sQkzsoetMvW5ysozqRdPFKlImmQ
	8Ld7hGu4I+tR1mQWVKbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoE8-0006vJ-8M; Mon, 16 Dec 2019 11:07:48 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoDu-0006tX-SV
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 11:07:36 +0000
Received: by mail-io1-xd44.google.com with SMTP id k24so4791816ioc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 03:07:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KfZaSbdFEASJkf9WsXHl71dcv4ETqMgnXgcnwp3Mq+I=;
 b=dP+KqavQmuo0QMDmi4neiVk93gyhwe17pjwdfjNCR4kaW410MUv5U9XBebG0Af2JUg
 uSjY0f9+4haCQspqumE1JA6bnz8vOxRbsSA26BD2mrXZCVUyRjkx08KynOVeOGtZ0Ok4
 rzKSsE7NpKWocqf5Jm4pm2f4YI9vDE48P61aE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KfZaSbdFEASJkf9WsXHl71dcv4ETqMgnXgcnwp3Mq+I=;
 b=MN7ZK0NUk9FmD5ftueFlIp82XwGbonPLlHqS8m9+9alUezzMBFHwceSSZJI+/bxfux
 V2om5V5UQjtZG1cUaBtWl/WiBmDY8G7PNn/TjA0esxFIReItNgv0CJIwcPNvEawHeLPe
 lXxN6XbcPH2OkaCYUf4FyKPBtWYijXlYiBLjuLz1Y4+9wjGBUKsI6/pJAK0jC5jmgrcD
 ckZHgiWDNHztshj7R30ulMmQxB2Xdc+eAtThrsGgGBStZskw0uUqRNlyjC+cxUHrIs4i
 IXmWg1FRKwqZjlk0BW0nOJxoGININJg1fXVR8tm5zdxq2Uspj2El7A4ntg4npDWhZu61
 y1Tw==
X-Gm-Message-State: APjAAAVd9KkUXgBdZOLFDVvNcGFaUU7BMMRTwPNy5Wp0/WA4OeCJ9knk
 cVkvr+JW5yIfa402XYvqITZWyU3SU8RbwlElXdbiqj+I
X-Google-Smtp-Source: APXvYqxYm4/U2soHztfqAotrtRHQmYHhxvY2dRK0oTC0bL7+7SnLpoXa+xv9qJGP1N2VQheZkh2UqTeKeOZ/EbOzqgQ=
X-Received: by 2002:a5d:97c9:: with SMTP id k9mr17260864ios.297.1576494451527; 
 Mon, 16 Dec 2019 03:07:31 -0800 (PST)
MIME-Version: 1.0
References: <20191203134816.5319-1-jagan@amarulasolutions.com>
 <20191203134816.5319-2-jagan@amarulasolutions.com>
 <20191204133600.gnv6dnhk6upe7xod@gilmour.lan>
In-Reply-To: <20191204133600.gnv6dnhk6upe7xod@gilmour.lan>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 16 Dec 2019 16:37:20 +0530
Message-ID: <CAMty3ZDU57Hj3ZSBC6sSMFWN9-HQadA03hmXUNUVS1W0UQQ3DA@mail.gmail.com>
Subject: Re: [PATCH v12 1/7] dt-bindings: sun6i-dsi: Document A64 MIPI-DSI
 controller
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_030735_069680_76362E8C 
X-CRM114-Status: GOOD (  20.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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

On Wed, Dec 4, 2019 at 7:06 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Tue, Dec 03, 2019 at 07:18:10PM +0530, Jagan Teki wrote:
> > The MIPI DSI controller in Allwinner A64 is similar to A33.
> >
> > But unlike A33, A64 doesn't have DSI_SCLK gating so it is valid
> > to have separate compatible for A64 on the same driver.
> >
> > DSI_SCLK uses mod clock-names on dt-bindings, so the same
> > is not required for A64.
> >
> > On that note
> > - A64 require minimum of 1 clock like the bus clock
> > - A33 require minimum of 2 clocks like both bus, mod clocks
> >
> > So, update dt-bindings so-that it can document both A33,
> > A64 bindings requirements.
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v12:
> > - Use 'enum' instead of oneOf+const
> >
> >  .../display/allwinner,sun6i-a31-mipi-dsi.yaml | 20 +++++++++++++++++--
> >  1 file changed, 18 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > index dafc0980c4fa..b91446475f35 100644
> > --- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > +++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > @@ -15,7 +15,9 @@ properties:
> >    "#size-cells": true
> >
> >    compatible:
> > -    const: allwinner,sun6i-a31-mipi-dsi
> > +    enum:
> > +      - allwinner,sun6i-a31-mipi-dsi
> > +      - allwinner,sun50i-a64-mipi-dsi
> >
> >    reg:
> >      maxItems: 1
> > @@ -24,6 +26,8 @@ properties:
> >      maxItems: 1
> >
> >    clocks:
> > +    minItems: 1
> > +    maxItems: 2
> >      items:
> >        - description: Bus Clock
> >        - description: Module Clock
> > @@ -63,13 +67,25 @@ required:
> >    - reg
> >    - interrupts
> >    - clocks
> > -  - clock-names
> >    - phys
> >    - phy-names
> >    - resets
> >    - vcc-dsi-supply
> >    - port
> >
> > +allOf:
> > +  - if:
> > +      properties:
> > +         compatible:
> > +           contains:
> > +             const: allwinner,sun6i-a31-mipi-dsi
> > +      then:
> > +        properties:
> > +          clocks:
> > +            minItems: 2
> > +        required:
> > +          - clock-names
> > +
>
> Your else condition should check that the number of clocks items is 1
> on the A64

But the minItems mentioned as 1 in clocks, which is unchanged number
by default. doesn't it sufficient?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
