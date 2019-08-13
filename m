Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 396DF8BADF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 15:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/AF+xk8Lbw1HcMhNju7FJ7yKJ6YcZ/71k2sffYlISQ=; b=CiIoTDuXnFyPn0
	zIJ330780UdBz0kREgqAndmw7/mp/1oPmW/haAoDwckrz5U1W8BfVh6IK0jfJZ/4HPzm21ATinYnu
	FPH1CGdc2Rt5XV6JeTpAUQsClLA3c0qU7R6J0nbEA/ojD8xrz5MJYuFFBVHaS+51OTOh6iid70iIT
	dYqOMEm1Rxz2TWhBpb205j84i4zjAIbNIGDBy9FrD74Dr3XZA+/F+axqkglWf18RbRvfaAQwxxLum
	hL7Zt+nq7FYIdASsEkYBdUKoH5B5sQuqRRRhyfUKdhIE6H2J8XIJnwxuDSbxjB78iFlJFe9RxxP4H
	eAc46Kpvyd+iOjCbJFzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxXFc-0005SZ-Id; Tue, 13 Aug 2019 13:54:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxXFO-0005Rq-FI
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 13:54:00 +0000
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1DBC21743
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 13:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565704438;
 bh=mV2hMDdVWsgLNSwsnMycqNwQRfnzA2CaSgdj5JRuxek=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2jd3dJ7BhVS+IuwYR4cGWvfqZBTp+BrrpDrZ26oHsk+KoUQi6+UTRqaZcH64CZ9bZ
 kvEmbm3gX3HFrdS3acO0Eu+JZir+KeGZXGl8mtZFmwkV3A+9Ufoc2x6AVkbz1n6g1/
 btw5XOg7pMb1wV2SxtVFny/3BJQ1I+tchm+fNhp0=
Received: by mail-qk1-f181.google.com with SMTP id m2so15395467qkd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 06:53:57 -0700 (PDT)
X-Gm-Message-State: APjAAAU2YN5boZBpclY9uLjyK0NUJ2ERBl5WPzVmkjqtmg6caP8Xopr2
 Gz1B9eTHzpbjD46K+7i0+v0PyJrFI9QrS+wFSw==
X-Google-Smtp-Source: APXvYqyxbaUwbmA/4Zv9EuQoRypRXf8X0Pi5SYOVGOb46NaHSbP4GIEa8rDtE5kJWBv6VjPYvmt5Pv1jZAo3jGEyFmo=
X-Received: by 2002:a37:d8f:: with SMTP id 137mr27185024qkn.254.1565704437061; 
 Tue, 13 Aug 2019 06:53:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190723132658.5068-1-maxime.ripard@bootlin.com>
 <20190723132658.5068-2-maxime.ripard@bootlin.com>
 <CAL_JsqJkTrCuscnWgm5cDmQj5RPGnd3qXkzR40XWKB2skZFwXA@mail.gmail.com>
 <20190813054738.ge2jdu6qn2vaoasd@flea>
In-Reply-To: <20190813054738.ge2jdu6qn2vaoasd@flea>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 13 Aug 2019 07:53:46 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLAA6v1BCFHGrDR7WzOE9ri6MNq6WCkvJ5NTDnhDcAqyg@mail.gmail.com>
Message-ID: <CAL_JsqLAA6v1BCFHGrDR7WzOE9ri6MNq6WCkvJ5NTDnhDcAqyg@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: irq: Convert Allwinner NMI Controller to
 a schema
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_065358_551756_F3F9A1F5 
X-CRM114-Status: GOOD (  25.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Jason Cooper <jason@lakedaemon.net>, maz@kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Thomas Gleixner <tglx@linutronix.de>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 11:47 PM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> Hi Rob,
>
> On Tue, Jul 23, 2019 at 10:32:41AM -0600, Rob Herring wrote:
> > On Tue, Jul 23, 2019 at 7:27 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > The Allwinner SoCs have an interrupt controller called NMI supported in
> > > Linux, with a matching Device Tree binding.
> > >
> > > Now that we have the DT validation in place, let's convert the device tree
> > > bindings for that controller over to a YAML schemas.
> > >
> > > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > > ---
> > >  .../allwinner,sun7i-a20-sc-nmi.yaml           | 83 +++++++++++++++++++
> > >  .../allwinner,sunxi-nmi.txt                   | 29 -------
> > >  2 files changed, 83 insertions(+), 29 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> > >  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sunxi-nmi.txt
> > >
> > > diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> > > new file mode 100644
> > > index 000000000000..cb8077b0c8dd
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> > > @@ -0,0 +1,83 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Allwinner A20 Non-Maskable Interrupt Controller Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Chen-Yu Tsai <wens@csie.org>
> > > +  - Maxime Ripard <maxime.ripard@bootlin.com>
> > > +
> > > +allOf:
> > > +  - $ref: /schemas/interrupt-controller.yaml#
> > > +
> > > +select:
> > > +  properties:
> > > +    compatible:
> > > +      contains:
> > > +        enum:
> > > +          - allwinner,sun6i-a31-r-intc
> > > +          - allwinner,sun7i-a20-sc-nmi
> > > +          - allwinner,sun9i-a80-sc-nmi
> >
> > This should have all the possible compatibles in case all are not
> > listed.
>
> I'm sorry, but I'm not sure I understood what you meant here :/

You are missing these from the list:
allwinner,sun8i-a83t-r-intc
allwinner,sun50i-a64-r-intc
allwinner,sun50i-h6-r-intc

We need them all to catch any DTs with only the above strings.

>
> >
> > > +
> > > +          # Deprecated
> > > +          - allwinner,sun6i-a31-sc-nmi
> >
> > I know we already did things this way before, but perhaps this should
> > be listed below with the 'deprecated' property. The tools can include
> > it in select, but then remove it from compatible property.
>
> Can we have more than just one of the choice for an enum?
>
> In this particular case, since we have oneOf it's not really too much
> of an issue, but there's a significant amount of users of enum for the
> compatibles.

I think we have to use oneOf here. There's not that many cases of
deprecated compatibles.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
