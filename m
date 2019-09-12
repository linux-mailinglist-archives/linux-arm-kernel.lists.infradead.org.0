Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1011B1564
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 22:27:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7K3+OFXVsADS2WbbRh+TSP2/MRSfS2QXJ5inwTcyzA4=; b=GoSU5TdIEpYRgy
	OPpltHJCEMzNce23O3/UaBAThnBa7KkOK7qrmnvr0Kyojsip0TifZna338L1vPuN3kYiz+0O/UbBa
	IycWdEBwn735LOeQ+bx9Lrz6Wv1rBzGHBfnI6BZg0DBSuGE1Fd7Ah9eSd02UewDOq/OgpzOv4h9Ps
	Vu71wFR7FvOWlk4JmxyxLY/a6PWqWw1bKSx3Zb7f0hJ+rxyJJUbm/W74czuQJoJMU0JWCiQNyDmsR
	ZdR+Rdryo7URy9NJIKU+nm51cEw2GBrvtNvR3TvBSYbz09kP3a8dfSKym/YSvujse4cga3Kck0Gws
	dNQg5O2IEi+VNUpyMOJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Vgr-0007WM-KV; Thu, 12 Sep 2019 20:27:42 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Vfw-0007VF-Jq
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 20:26:47 +0000
Received: by mail-ed1-f68.google.com with SMTP id f24so7502731edv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 13:26:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l8Ov5y/tQkSs6Q5vM7CFAAbYYGZtyUJhfeWygf8r9JE=;
 b=h9Qv8rXtPzBgGxB6yKUxMw6w7zW/gC6+pmOq3nUnGPjXzv5ofh7uYZetYOqK0l+PUV
 XuewEDb22u5McUJ5GlYMLd/+LNcNM5r62yKbwc80m/xYLogbQtBf7X1Z3G2ud4hfFLD2
 wa8xiKt8n5IUMnrtsg/LQcs9XzzvwbgpYJCNvXGmA07/K1sHeM+Gij5SIKP1xWGyZExO
 VfuiwPGhTvZBXmg9ElIk2o78smYxERxh5uZAhg7UHNOkyxGV3uj3Q4+dcxTPpD/BJR16
 iG7mEO8qVg2MN7vJR3Tp4cFxsIuukqlg3SDHZs3HSL/vGVdRzHm0YLcqWmM6sWyk1FTq
 4zcw==
X-Gm-Message-State: APjAAAWIX1m3ICbjobJpuVPT1WRSn7ee+s+k3hIn913UnZbj/IiqZ33b
 WU1wlAcynHA9+wcSzXQqVFQGmeppLEI=
X-Google-Smtp-Source: APXvYqxMofvAORioCpeirdNLegZj5NN36rE9Kb/s0zwyjZ3WUArwNH7JLFlz/CrqzKTuonRY7mcqYw==
X-Received: by 2002:a05:6402:b2d:: with SMTP id
 bo13mr43342746edb.170.1568320001037; 
 Thu, 12 Sep 2019 13:26:41 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com.
 [209.85.221.48])
 by smtp.gmail.com with ESMTPSA id a36sm4989681edc.58.2019.09.12.13.26.40
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Sep 2019 13:26:40 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id k6so17664184wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 13:26:40 -0700 (PDT)
X-Received: by 2002:a5d:6785:: with SMTP id v5mr12785154wru.9.1568319999923;
 Thu, 12 Sep 2019 13:26:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-4-clabbe.montjoie@gmail.com>
 <20190907040116.lib532o2eqt4qnvv@flea> <20190911183158.GA8264@Red>
 <20190912093737.s6iu63sdncij2qib@localhost.localdomain>
In-Reply-To: <20190912093737.s6iu63sdncij2qib@localhost.localdomain>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 12 Sep 2019 21:26:27 +0100
X-Gmail-Original-Message-ID: <CAGb2v678WGQm5PNy8GhOTpz+fYeLP3k0dnR0F00yyZpSRcA4yA@mail.gmail.com>
Message-ID: <CAGb2v678WGQm5PNy8GhOTpz+fYeLP3k0dnR0F00yyZpSRcA4yA@mail.gmail.com>
Subject: Re: [PATCH 3/9] dt-bindings: crypto: Add DT bindings documentation
 for sun8i-ce Crypto Engine
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_132644_917076_BF7F9B7F 
X-CRM114-Status: GOOD (  23.49  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Herbert Xu <herbert@gondor.apana.org.au>, Russell King <linux@armlinux.org.uk>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 David Miller <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 10:37 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi Corentin,
>
> On Wed, Sep 11, 2019 at 08:31:58PM +0200, Corentin Labbe wrote:
> > On Sat, Sep 07, 2019 at 07:01:16AM +0300, Maxime Ripard wrote:
> > > On Fri, Sep 06, 2019 at 08:45:45PM +0200, Corentin Labbe wrote:
> > > > This patch adds documentation for Device-Tree bindings for the
> > > > Crypto Engine cryptographic accelerator driver.
> > > >
> > > > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > > > ---
> > > >  .../bindings/crypto/allwinner,sun8i-ce.yaml   | 84 +++++++++++++++++++
> > > >  1 file changed, 84 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
> > [...]
> > > > +else:
> > > > +  clocks:
> > > > +    items:
> > > > +      - description: Bus clock
> > > > +      - description: Module clock
> > > > +
> > > > +  clock-names:
> > > > +    items:
> > > > +      - const: ahb
> > > > +      - const: mod
> > > > +
> > > > +  resets:
> > > > +    maxItems: 1
> > > > +
> > > > +  reset-names:
> > > > +    const: ahb
> > >
> > > This prevents the usage of the additionalProperties property, which
> > > you should really use.
> > >
> > > What you can do instead is moving the clocks and clock-names
> > > description under properties, with a minItems of 2 and a maxItems of
> > > 3. Then you can restrict the length of that property to either 2 or 3
> > > depending on the case here.
> > >
> >
> > Hello
> >
> > I fail to do this.
> > I do the following (keeped only clock stuff)
> > properties:
> >
> >   clocks:
> >     items:
> >       - description: Bus clock
> >       - description: Module clock
> >       - description: MBus clock
>
> Add minItems: 2  and maxItems: 3 at the same level than items
>
> >
> >   clock-names:
> >     items:
> >       - const: ahb
> >       - const: mod
> >       - const: mbus
>
> And here as well
>
> Something I missed earlier though was that we've tried to unify as
> much as possible the ahb / apb / axi clocks around the bus name, it
> would be great if you could do it.

I think we also want to standardize "mbus" as "dram"?

ChenYu

> >
> > if:
> >   properties:
> >     compatible:
> >       items:
> >         const: allwinner,sun50i-h6-crypto
> > then:
> >   properties:
> >       clocks:
> >         minItems: 3
> >         maxItems: 3
> >       clock-names:
> >         minItems: 3
> >         maxItems: 3
>
> You don't need to duplicate the min and maxItems here
>
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
