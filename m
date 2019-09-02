Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5F5A569B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 14:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=alxwqjHjwQ2HrfqWrIMRc6vtmWSt059SOaccFeKCWpM=; b=WYvTmyZmYtl8U+
	qwzToX5fLKIg/sx6pieC5YP9RPgUbkNJ5pK/BQfP2rRCqyQOp2ys2jfs/fm4Dp1afaY2EF9s5kBn0
	Nxc79+MPmax51J3ZyEu0LvqNug2GZ9RRwcz8wWrv0XecJ59dDnU4AZ25cTThKeJkHiIN0spNUiM1p
	dfZJSCLcD8g6g3k7r50qqsamSdQbnWYj6ilGtpd7bVzxe5VQzbvlN3FFWfMBA1DQpHDMJRvbi18Bj
	CA2PKArGBnz/TT4SCZ7UpfwY3L6w06+MPfcFbU/vVNfVHIrxIYUW7tsHrFP4iSVIhT4/S4nE0NSKr
	OXGah7NbhcYVXclN1uLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4lkt-0002aD-Ft; Mon, 02 Sep 2019 12:48:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4lkg-0002Zn-3N
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 12:48:11 +0000
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2719A216C8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  2 Sep 2019 12:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567428489;
 bh=HRPdP6IoZxIKzVyOlsz8h5aGfiCrnDwoIA8rqSjMhRM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mojGZV5oAnM90ECPfyUnZxLnQg5FAEU7IHZztlBj52IrmhvAD32oB7WbU888c04pr
 IfiJXxL9wsE3n37P3IKeLmF3FFfFlEXgVQIyZ//aYhp+A45/EO3Ge14QBTptFUrmtD
 A4l0D+dHtwqJ7+EC+Ao9ho0yiRBDMhlNHMID1BCM=
Received: by mail-lj1-f179.google.com with SMTP id z17so12793797ljz.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 05:48:09 -0700 (PDT)
X-Gm-Message-State: APjAAAXBeG3Tu5Dr2IleKpN2KcZZu9+9yJUevxudtrX8E3UKUzexx+tc
 3w82S6jkcwkVdn8Te/1Hwkb/H0O4VOsNlM0GQgM=
X-Google-Smtp-Source: APXvYqwsQ0jKyySStl5IspgIxl6esl8OcqilEKBAJg/dod6mua7Muq88O0wbce7GxRjmTRa8z4MXHmevjQBq3jJ5+j0=
X-Received: by 2002:a2e:7818:: with SMTP id t24mr15549999ljc.210.1567428487319; 
 Mon, 02 Sep 2019 05:48:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190823145356.6341-1-krzk@kernel.org>
 <20190823145356.6341-7-krzk@kernel.org>
 <CAL_JsqKCpKuc=-4UyWFFv_RenKuSJcr9cdSKjbkL8F1ni+VODw@mail.gmail.com>
In-Reply-To: <CAL_JsqKCpKuc=-4UyWFFv_RenKuSJcr9cdSKjbkL8F1ni+VODw@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 2 Sep 2019 14:47:55 +0200
X-Gmail-Original-Message-ID: <CAJKOXPddVJvpGgd1K_W63eho8tu+X_nr+0PYpjBafp+bw=-70w@mail.gmail.com>
Message-ID: <CAJKOXPddVJvpGgd1K_W63eho8tu+X_nr+0PYpjBafp+bw=-70w@mail.gmail.com>
Subject: Re: [RFC 7/9] dt-bindings: rtc: s3c: Convert S3C/Exynos RTC bindings
 to json-schema
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_054810_180153_A74901A2 
X-CRM114-Status: GOOD (  24.81  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, 26 Aug 2019 at 14:06, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Fri, Aug 23, 2019 at 9:54 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > Convert Samsung S3C/Exynos Real Time Clock bindings to DT schema format
> > using json-schema.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> >  .../devicetree/bindings/rtc/s3c-rtc.txt       | 31 ------
> >  .../devicetree/bindings/rtc/s3c-rtc.yaml      | 95 +++++++++++++++++++
> >  2 files changed, 95 insertions(+), 31 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/rtc/s3c-rtc.txt
> >  create mode 100644 Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
>
>
> > diff --git a/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml b/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
> > new file mode 100644
> > index 000000000000..44b021812a83
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
> > @@ -0,0 +1,95 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/rtc/s3c-rtc.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Samsung S3C, S5P and Exynos Real Time Clock controller
> > +
> > +maintainers:
> > +  - Krzysztof Kozlowski <krzk@kernel.org>
> > +
> > +# Select also deprecated compatibles (for finding deprecate usage)
> > +select:
> > +  properties:
> > +    compatible:
> > +      items:
> > +        - enum:
> > +            - samsung,s3c2410-rtc
> > +            - samsung,s3c2416-rtc
> > +            - samsung,s3c2443-rtc
> > +            - samsung,s3c6410-rtc
> > +            # Deprecated, use samsung,s3c6410-rtc
> > +            - samsung,exynos3250-rtc
>
> We've come up with a better way of doing this that doesn't need a
> custom 'select'. Add a 'oneOf' to compatible and add another entry:
>
> - const: samsung,exynos3250-rtc
>   deprecated: true
>
> It's not implemented yet in the tool, but we'll keep the compatible
> for 'select' and otherwise drop schema marked deprecated.

OK

>
> > +  required:
> > +    - compatible
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
>
> You can drop 'items' when there's only 1 entry.

Indeed.

>
> > +          - samsung,s3c2410-rtc
> > +          - samsung,s3c2416-rtc
> > +          - samsung,s3c2443-rtc
> > +          - samsung,s3c6410-rtc
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    description:
> > +      Must contain a list of phandle and clock specifier for the rtc
> > +      clock and in the case of a s3c6410 compatible controller, also
> > +      a source clock.
> > +    minItems: 1
> > +    maxItems: 2
> > +
> > +  clock-names:
> > +    description:
> > +      Must contain "rtc" and for a s3c6410 compatible controller,
> > +      a "rtc_src" sorted in the same order as the clocks property.
> > +    oneOf:
> > +      - items:
> > +          - const: rtc
> > +      - items:
> > +          # TODO: This can be in any order matching clocks, how to express it?
>
> It shouldn't be in any order. Fix the dts files.

I see, other schemas also require specific ordering.

>
> > +          - const: rtc
> > +          - const: rtc_src
>
> You should drop all this and add an else clause below.

Yes

>
> > +
> > +  interrupts:
> > +    description:
> > +      Two interrupt numbers to the cpu should be specified. First
> > +      interrupt number is the rtc alarm interrupt and second interrupt number
> > +      is the rtc tick interrupt. The number of cells representing a interrupt
> > +      depends on the parent interrupt controller.
> > +    minItems: 2
> > +    maxItems: 2
> > +
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - samsung,s3c6410-rtc
> > +              - samsung,exynos3250-rtc
> > +
> > +    then:
> > +      properties:
> > +        clocks:
> > +          minItems: 2
> > +          maxItems: 2
> > +        clock-names:
> > +          items:
> > +          - const: rtc
> > +          - const: rtc_src
>
> Should be indented 2 more spaces.

Thanks for feedback.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
