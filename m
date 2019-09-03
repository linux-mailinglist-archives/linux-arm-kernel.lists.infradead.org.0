Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C609A63D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 10:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uv3bQDOCl0tk5/msIV+N7v+vDwMiQgl48Fujo734Kk=; b=EBTGg5XKJXp00v
	PrbDLASqRSadDLnwfZD54OquhLDzckN+jjYJNUheDp89aEYGKnWisP7WfwLLDHIoUP5nXT85m+0PW
	09TyU2plD91dP1lvZFFRB9JJhbKsfwv4bMBfDbaoIhPnWbVzTf5lyh0TBIbdv5Ki039HrVL82W05E
	cm5nUVTJdtOnXCLTKRl9uSm9N58JpZzsPQAU9MdrfgacVLpGPGV1uc8m7NCHh4TBanC4oLaRWwz8w
	UtUafSsbEwF8tiYY1q408Ya6xzgrLOd6t1AZuksDzzHFL8bm497JS+V4/eMlwuELC2Sl7d0fQu+CS
	ln7wOMfyvrDL/aL0rTGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5480-0005vS-Sm; Tue, 03 Sep 2019 08:25:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i547o-0005v8-Kt
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 08:25:18 +0000
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A4BD52339D
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Sep 2019 08:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567499115;
 bh=f3ZXaegcsrrqhqRDRKGqx4s4cVnRArE7RmypILYd+g8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=wabHV1k5dEyrX/7adpcLxEwW1MB7sdRxtSAl/Q+ixCo+poiVeI7wlb7c8pmEkomba
 VUBXX9c9bK4EcJ2Rh1xAjjOW6eeil29NeZmenL+Lv7/KjHckb3WHRxEYYillGkJ9G9
 qLA7PMTnlMqUtaKofcpPZkOnAPIPUWPD0G9OlK5o=
Received: by mail-qt1-f173.google.com with SMTP id k10so8458252qth.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 01:25:15 -0700 (PDT)
X-Gm-Message-State: APjAAAVGSvMH8vKHOo0vYuz9BcVuP/Ayyatg8Az5tZCivJibzyh4IgqM
 VG0C5Killtl4+zDryOB1m+Be9d+X9XD4j/5H9g==
X-Google-Smtp-Source: APXvYqwIM9DiXxim6rM127j/POM2TKvL5qYklc3Bu+DdP6aV4fnCf6MCR6CZRi7sMcNn4eza859i00dqzSkL7gf1mNo=
X-Received: by 2002:ac8:28b6:: with SMTP id i51mr8990758qti.143.1567499114797; 
 Tue, 03 Sep 2019 01:25:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190823145356.6341-1-krzk@kernel.org>
 <20190823145356.6341-5-krzk@kernel.org>
 <CAL_JsqJybT41cEqiTriLMywUQj1BtAG_9muJ4=84OkF23y53CA@mail.gmail.com>
 <CAJKOXPc0SY_8BHMsWLN=1M3VQh41+bdBiH21L4KQPA+iLPYy+A@mail.gmail.com>
In-Reply-To: <CAJKOXPc0SY_8BHMsWLN=1M3VQh41+bdBiH21L4KQPA+iLPYy+A@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 3 Sep 2019 09:25:03 +0100
X-Gmail-Original-Message-ID: <CAL_JsqKdsABWK9Og_f38T9zf3SCFFdhU8WOJ4uJjREantoYvYQ@mail.gmail.com>
Message-ID: <CAL_JsqKdsABWK9Og_f38T9zf3SCFFdhU8WOJ4uJjREantoYvYQ@mail.gmail.com>
Subject: Re: [RFC 5/9] dt-bindings: arm: samsung: Convert Exynos PMU bindings
 to json-schema
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_012516_728179_66F778CA 
X-CRM114-Status: GOOD (  25.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org,
 "open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tomasz.figa@gmail.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Olof Johansson <olof@lixom.net>,
 "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>,
 notify@kernel.org, Jonathan Cameron <jic23@kernel.org>,
 =?UTF-8?Q?Pawe=C5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 3, 2019 at 8:58 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Mon, 26 Aug 2019 at 13:54, Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Fri, Aug 23, 2019 at 9:54 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > >
> > > Convert Samsung Exynos Power Management Unit (PMU) bindings to DT schema
> > > format using json-schema.
> > >
> > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > ---
> > >  .../devicetree/bindings/arm/samsung/pmu.txt   | 72 --------------
> > >  .../devicetree/bindings/arm/samsung/pmu.yaml  | 93 +++++++++++++++++++
> > >  2 files changed, 93 insertions(+), 72 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/arm/samsung/pmu.txt
> > >  create mode 100644 Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> >
> >
> > > diff --git a/Documentation/devicetree/bindings/arm/samsung/pmu.yaml b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> > > new file mode 100644
> > > index 000000000000..818c6f3488ef
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> > > @@ -0,0 +1,93 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/arm/samsung/pmu.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Samsung Exynos SoC series Power Management Unit (PMU)
> > > +
> > > +maintainers:
> > > +  - Krzysztof Kozlowski <krzk@kernel.org>
> > > +
> > > +properties:
> > > +  compatible:
> > > +    items:
> > > +      - enum:
> > > +          - samsung,exynos3250-pmu
> > > +          - samsung,exynos4210-pmu
> > > +          - samsung,exynos4412-pmu
> > > +          - samsung,exynos5250-pmu
> > > +          - samsung,exynos5260-pmu
> > > +          - samsung,exynos5410-pmu
> > > +          - samsung,exynos5420-pmu
> > > +          - samsung,exynos5433-pmu
> > > +          - samsung,exynos7-pmu
> > > +      - const: syscon
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  '#clock-cells':
> > > +    const: 1
> > > +
> > > +  clock-names:
> > > +    description:
> > > +      list of clock names for particular CLKOUT mux inputs
> > > +    # TODO: what is the maximum number of elements (mux inputs)?
> > > +    minItems: 1
> > > +    maxItems: 32
> > > +    items:
> > > +      - enum:
> >
> > This isn't correct as you are only defining possible names for the
> > first item. Drop the '-' (making items a schema instead of a list) and
> > then it applies to all. However, doing that will cause a meta-schema
> > error which I need to fix to allow. Or if there's a small set of
> > possibilities of number of inputs, you can list them under a 'oneOf'
> > list.
>
> Mhmm, I cannot test it or I have an error in the schema. if I
> understand correctly, this would be:
>
>   clock-names:
>     description:
>       List of clock names for particular CLKOUT mux inputs
>     minItems: 1
>     maxItems: 16
>     items:
>       clkout0
>       clkout1
>       clkout2
>       clkout3
>       clkout4
>       clkout5
>       clkout6
>       clkout7
>       clkout8
>       clkout9
>       clkout10
>       clkout11
>       clkout12
>       clkout13
>       clkout14
>       clkout15
>       clkout16
>
> Now it produces the error "ignoring, error in schema 'items'" but
> maybe it is expected with current meta-schema?

'make dt_binding_check' will give more detailed errors.

Are the inputs always contiguous 0-N? If so, you want:

items:
  - const: clkout0
  - const: clkout1
  - const: clkout2
  ...

If you want to express any number and order of strings is valid, then you need:

items:
  enum:
    - clkout0
    - clkout1
    - clkout2

Doing that is discouraged for bindings though. Currently, it will
generate an error from the meta-schema, but we could change that.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
