Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F55ACFC32
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 16:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=URK4+indTEfxjQ3qisNiz2lVzFgjVnkGJUUt0ovofQ0=; b=Za3Ym6CQSOWIkr
	D65gAF+MI3PEXxl5bmnFISWYqGPRQ9toPe7CrqjtoZfMc31QgP0Ab2Co/N7GH4bohnZ6NGGvJe0Nm
	Wd3CgCNGeXO4X3S3RflF/1RprbD8a3z3hmnRVhAvY5cSt/B6a8ylseoS3v1uNXjehZ5D+FxNX2KI6
	SucdrjIiKRefUONEcxl/TSbnxREmZlUf2GmJuPFaW2ynQU0d5pu3zZkvXinx4lq4Sb9EEfZ2FpiDc
	UftUuukIMSm5IA82tJJG7OWmW3hFda1vs4eP2MEbvi05TC7u6fHM0zaCAM3P7YRGDxMbJte6x98Dj
	kuR8XB+4dBqH6Xg0ce8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqIy-0006oG-91; Tue, 08 Oct 2019 14:17:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqIr-0006nr-Ee
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 14:17:31 +0000
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E186120673
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  8 Oct 2019 14:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570544249;
 bh=k4z9UTPnrwAqsKFn+N7lEY6KbuTPenqCQZ8tcmJoBhg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UTZUXZWmKAZ+ukH2V5cR5yyrA+9EdRZtK3FpVZAV4WniOq8YQvCkqeVoAdDyf69Qc
 o9g71ju8By4N/y/+jdb/34FLQN3VUYdRqi5Nl06xPEZK+r667vLIJj/NALBGqpqFwC
 gMpYCctOvHKsCCJqxdhpxMOA2H6//QkiJwPLHgZk=
Received: by mail-qk1-f177.google.com with SMTP id x134so16929721qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 07:17:28 -0700 (PDT)
X-Gm-Message-State: APjAAAWgmiaMpzVpwsGaCc9QSWeyLSXvcdYh6JrC8a1txuhB0zTNc6Is
 g6EwyeKjxxfQ8fI+WSUu8hw3l0zoJwWTGsFsGA==
X-Google-Smtp-Source: APXvYqyTPIbp6uB/NbQrlXR7mbW5oj8qd3GbQh+SZbdKWrINRREVDB6tFYwAesJBD5TWAI4QGnzN+RkckREb5FLBngg=
X-Received: by 2002:a05:620a:7da:: with SMTP id
 26mr27191277qkb.119.1570544248015; 
 Tue, 08 Oct 2019 07:17:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191004151414.8458-1-krzk@kernel.org>
 <CAL_JsqJDTcHu5oXG6zszGHCBhTE6EW94AANUjyMV78SkKcn5yA@mail.gmail.com>
 <20191008125038.GA2550@pi3>
 <CAL_Jsq+GcsUWN6kjBLkyr1rHGh6_4=w6JL6+k7DBXkBcvHcSBw@mail.gmail.com>
In-Reply-To: <CAL_Jsq+GcsUWN6kjBLkyr1rHGh6_4=w6JL6+k7DBXkBcvHcSBw@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 8 Oct 2019 09:17:16 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKBzZCShxx99aB4z15XYNbUionVicmfNNXEfq=iohWLCA@mail.gmail.com>
Message-ID: <CAL_JsqKBzZCShxx99aB4z15XYNbUionVicmfNNXEfq=iohWLCA@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: samsung: Force clkoutN names to be
 unique in PMU
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_071729_533867_5F19425D 
X-CRM114-Status: GOOD (  20.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Maciej Falkowski <m.falkowski@samsung.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee.jones@linaro.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 8, 2019 at 9:05 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Tue, Oct 8, 2019 at 7:50 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Tue, Oct 08, 2019 at 07:38:14AM -0500, Rob Herring wrote:
> > > On Fri, Oct 4, 2019 at 10:14 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > >
> > > > The clkoutN names of clocks must be unique because they represent
> > > > unique inputs of clock multiplexer.
> > > >
> > > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > > ---
> > > >  Documentation/devicetree/bindings/arm/samsung/pmu.yaml | 6 ++++--
> > > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/arm/samsung/pmu.yaml b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> > > > index 73b56fc5bf58..d8e03716f5d2 100644
> > > > --- a/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> > > > +++ b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> > > > @@ -53,8 +53,10 @@ properties:
> > > >        List of clock names for particular CLKOUT mux inputs
> > > >      minItems: 1
> > > >      maxItems: 32
> > > > -    items:
> > > > -      pattern: '^clkout([0-9]|[12][0-9]|3[0-1])$'
> > > > +    allOf:
> > > > +      - items:
> > > > +          pattern: '^clkout([0-9]|[12][0-9]|3[0-1])$'
> > > > +      - uniqueItems: true
> > >
> > > You shouldn't need the 'allOf', just add uniqueItems at the same level as items.
> >
> > If you mean something like:
> >   56     uniqueItems: true
> >   57     items:
> >   58       pattern: '^clkout([0-9]|[12][0-9]|3[0-1])$'
> >
> > Then the dt_binding_check fails:
> >
> > dev/linux/Documentation/devicetree/bindings/arm/samsung/pmu.yaml: properties:clock-names:
> > 'uniqueItems' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'deprecated', 'description', 'else', 'enum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'type', 'typeSize', 'unevaluatedProperties']
>
> I can add it.
>
> The other option is to fix this in the clock schema. I'm not sure if
> there's a need for duplicate clock-names. Seems unlikely. I'll test
> that.

Actually, clock-names is already set to be unique. Did you see otherwise?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
