Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61ECEA6703
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 13:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8MUEtnKdGs2k6g77JdedVARvU22YMAzv7Fe1e4dNLw=; b=Qypw+ZkEskzoRg
	7YwovhfpruHsOnm9H9GIX+n6ao9Ti6PU1ufciz/WYgu1/ywFYcKBZbnbRJkF0MgDN/wDnKlTdn1yq
	hXukN4c4Sd/NrMvHJPPJxp4l0TxTGAVjrMlcAAP2gH5r4JVkJKid1l9Bjn6uH7hgfSf6xUT1/lJTv
	pyeuXFbPtOZxTvd4PzebNjKLhuAPlH02brg5OsUe4uYkqKBCN/TEDs59y23j5oARlkjpUp55Gii62
	CRjL7Ar3tkUAkBOjrlk+bx/Gy1nnc8wTJHfjTJMPbTU3kT+ZxK4k9/1/ADP9+Lttn2Gd7JkSE3Ulz
	XnPkeXa00I4b3u6N3yBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i56bC-0000Dm-26; Tue, 03 Sep 2019 11:03:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i56ay-0000Cu-7H
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 11:03:33 +0000
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 340C323401
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Sep 2019 11:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567508609;
 bh=dSw60VTrT8ZizL2EKH0X+I5o/zpqz+2te5KeeEekHbI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=uzTd6T4U+Tkd4n8KJZfUZ9olVCK+fqZXolNXxUwUJrBUsir3ogtElmBagVAL/4uYZ
 F+78m8TgdsRpaQrVlJ1p8t97yLZ/YqboZ6I8dOjTUL309wm6v7TlnTdmrWHoSTMQx5
 wHd/On3QCQvzFpIIPLu+hqpW/AQ6m0/EiPPoBwr8=
Received: by mail-lj1-f169.google.com with SMTP id t14so15609240lji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 04:03:29 -0700 (PDT)
X-Gm-Message-State: APjAAAVoPYtoztD9tGttr3o83s36FoNvZOXN33+66yiEy/WJ9zi83ATz
 wPAdiyQuX6xFiKYWhSaVARhbtncDpw2JB/5jN7E=
X-Google-Smtp-Source: APXvYqyxHRs9YFFhl8+XZLTud4OWgRTCDnadBxI1NInauI7nndzlvmqFXuAOtRIDnpazy3S3n5w09bq4y/zI/IQu5B8=
X-Received: by 2002:a2e:9b13:: with SMTP id u19mr19855964lji.40.1567508607223; 
 Tue, 03 Sep 2019 04:03:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190823145356.6341-1-krzk@kernel.org>
 <20190823145356.6341-5-krzk@kernel.org>
 <CAL_JsqJybT41cEqiTriLMywUQj1BtAG_9muJ4=84OkF23y53CA@mail.gmail.com>
 <CAJKOXPc0SY_8BHMsWLN=1M3VQh41+bdBiH21L4KQPA+iLPYy+A@mail.gmail.com>
 <CAL_JsqKdsABWK9Og_f38T9zf3SCFFdhU8WOJ4uJjREantoYvYQ@mail.gmail.com>
In-Reply-To: <CAL_JsqKdsABWK9Og_f38T9zf3SCFFdhU8WOJ4uJjREantoYvYQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 3 Sep 2019 13:03:15 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfnvu=c5f6AcOSiQ_9E-C2fMf9qbEpy1Tr3QvH8LgAtpQ@mail.gmail.com>
Message-ID: <CAJKOXPfnvu=c5f6AcOSiQ_9E-C2fMf9qbEpy1Tr3QvH8LgAtpQ@mail.gmail.com>
Subject: Re: [RFC 5/9] dt-bindings: arm: samsung: Convert Exynos PMU bindings
 to json-schema
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_040332_324217_F531FEA6 
X-CRM114-Status: GOOD (  28.70  )
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

On Tue, 3 Sep 2019 at 10:25, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Tue, Sep 3, 2019 at 8:58 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Mon, 26 Aug 2019 at 13:54, Rob Herring <robh+dt@kernel.org> wrote:
> > >
> > > On Fri, Aug 23, 2019 at 9:54 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > >
> > > > Convert Samsung Exynos Power Management Unit (PMU) bindings to DT schema
> > > > format using json-schema.
> > > >
> > > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > > ---
> > > >  .../devicetree/bindings/arm/samsung/pmu.txt   | 72 --------------
> > > >  .../devicetree/bindings/arm/samsung/pmu.yaml  | 93 +++++++++++++++++++
> > > >  2 files changed, 93 insertions(+), 72 deletions(-)
> > > >  delete mode 100644 Documentation/devicetree/bindings/arm/samsung/pmu.txt
> > > >  create mode 100644 Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> > >
> > >
> > > > diff --git a/Documentation/devicetree/bindings/arm/samsung/pmu.yaml b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> > > > new file mode 100644
> > > > index 000000000000..818c6f3488ef
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> > > > @@ -0,0 +1,93 @@
> > > > +# SPDX-License-Identifier: GPL-2.0
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/arm/samsung/pmu.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Samsung Exynos SoC series Power Management Unit (PMU)
> > > > +
> > > > +maintainers:
> > > > +  - Krzysztof Kozlowski <krzk@kernel.org>
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    items:
> > > > +      - enum:
> > > > +          - samsung,exynos3250-pmu
> > > > +          - samsung,exynos4210-pmu
> > > > +          - samsung,exynos4412-pmu
> > > > +          - samsung,exynos5250-pmu
> > > > +          - samsung,exynos5260-pmu
> > > > +          - samsung,exynos5410-pmu
> > > > +          - samsung,exynos5420-pmu
> > > > +          - samsung,exynos5433-pmu
> > > > +          - samsung,exynos7-pmu
> > > > +      - const: syscon
> > > > +
> > > > +  reg:
> > > > +    maxItems: 1
> > > > +
> > > > +  '#clock-cells':
> > > > +    const: 1
> > > > +
> > > > +  clock-names:
> > > > +    description:
> > > > +      list of clock names for particular CLKOUT mux inputs
> > > > +    # TODO: what is the maximum number of elements (mux inputs)?
> > > > +    minItems: 1
> > > > +    maxItems: 32
> > > > +    items:
> > > > +      - enum:
> > >
> > > This isn't correct as you are only defining possible names for the
> > > first item. Drop the '-' (making items a schema instead of a list) and
> > > then it applies to all. However, doing that will cause a meta-schema
> > > error which I need to fix to allow. Or if there's a small set of
> > > possibilities of number of inputs, you can list them under a 'oneOf'
> > > list.
> >
> > Mhmm, I cannot test it or I have an error in the schema. if I
> > understand correctly, this would be:
> >
> >   clock-names:
> >     description:
> >       List of clock names for particular CLKOUT mux inputs
> >     minItems: 1
> >     maxItems: 16
> >     items:
> >       clkout0
> >       clkout1
> >       clkout2
> >       clkout3
> >       clkout4
> >       clkout5
> >       clkout6
> >       clkout7
> >       clkout8
> >       clkout9
> >       clkout10
> >       clkout11
> >       clkout12
> >       clkout13
> >       clkout14
> >       clkout15
> >       clkout16
> >
> > Now it produces the error "ignoring, error in schema 'items'" but
> > maybe it is expected with current meta-schema?
>
> 'make dt_binding_check' will give more detailed errors.
>
> Are the inputs always contiguous 0-N? If so, you want:
>
> items:
>   - const: clkout0
>   - const: clkout1
>   - const: clkout2
>   ...
>
> If you want to express any number and order of strings is valid, then you need:
>
> items:
>   enum:
>     - clkout0
>     - clkout1
>     - clkout2
>
> Doing that is discouraged for bindings though. Currently, it will
> generate an error from the meta-schema, but we could change that.

It's the second case. The inputs are not contiguous. Examples:

system-controller {
    compatible = "samsung,exynos3250-pmu", "syscon";
    clock-names = "clkout8";
    clocks = <&cmu CLK_FIN_PLL>;
}

system-controller {
    compatible = "samsung,exynos4412-pmu", "syscon";
    clock-names = "clkout0", "clkout1", "clkout2", "clkout3",
                  "clkout4", "clkout8", "clkout9";
    clocks = <&clock CLK_OUT_DMC>, <&clock CLK_OUT_TOP>,
             <&clock CLK_OUT_LEFTBUS>, <&clock CLK_OUT_RIGHTBUS>,
             <&clock CLK_OUT_CPU>, <&clock CLK_XXTI>, <&clock CLK_XUSBXTI>;
}

The bindings never required any specific ordering. Also the driver
just go through all indices and parses them.

Your second syntax fails:
Documentation/devicetree/bindings/arm/samsung/pmu.yaml:
properties:clock-names:items: {'enum': ['clkout0', 'clkout1',
'clkout2', 'clkout3', 'clkout4', 'clkout5', 'clkout6', 'clkout7',
'clkout8', 'clkout9', 'clkout10', 'clkout11', 'clkout12', 'clkout13',
'clkout14', 'clkout15', 'clkout16']} is not of type 'array'

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
