Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6970BB628E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 13:54:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LN0po/pLgl9jHjjQNhl31OwOwxm9jti77UwwR0skxnU=; b=BWsFBx3gONI9G1
	0fNj3AmYSFuIDMxmwVSZ/sWhU/dCdAmzfCU48Duyp2+YVlKBwOItipp9rN3rK2eeyblpSwaKsn/rT
	CStkXufIsGrZxO3Moxm9Tg20VyZTGDrBgLCuN0ledg1WwvXAYMimYgzm1bkPeezWqaxjdL8IPTr0E
	83E7tUo3u61+UWx98A9B10QCAUqdO/181ttByvqJaetMv7wCME09nGEjLYQjx2QHGw2v5R3i2Xd8N
	+YLXzlDEta5hde++flz3h5aYCKbNsM8ZbFtmNzRGFLW6rk6wWbrhJhdGFUyng2h68yC1aGgFu3E8Q
	FSG5R9qAllIFBZxPLY4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAYXb-0001QV-2b; Wed, 18 Sep 2019 11:54:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAYXB-0001Q4-Np
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 11:54:11 +0000
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
 [209.85.210.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7D4321928
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 11:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568807648;
 bh=kzrm6fZngJglejuB9xzhoA67Tcw2osTIaU7fAwqMKGc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=uQx0FUr8IoDdZVaq+Jj+7J6ZqUGHxuLlNwiVaVIlUi/OKI8xJVzEkICj7lvD6EP1D
 cg3k8nHV8MGRGVhp0WG233Hvc9+LTsHjUbK+a2hgo+NtQSkpkdL23dcoRfVHHIcfnX
 bwxS0rtdm1HKiG/JYxu29Q/pODBmUpenBF7llt/w=
Received: by mail-ot1-f46.google.com with SMTP id g13so6028957otp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 04:54:08 -0700 (PDT)
X-Gm-Message-State: APjAAAVuHho6Ue4lxfOlAoGL5JaDt4C0HhWRbwc+1XjC+hxAE/iPIo4h
 2ch2Fn61KD1RR1ed/pNzc5vi6cycXSynPYOmhuk=
X-Google-Smtp-Source: APXvYqxMySumqjsahTYagNepSWzduEcZjCnTcXjLZCN9ySJfnCXOJqZVYcNkW0eHFhR5aSfIMwQqCAuFtB0Zu2153L4=
X-Received: by 2002:a9d:6c9a:: with SMTP id c26mr2573300otr.241.1568807648102; 
 Wed, 18 Sep 2019 04:54:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190909183436.9045-1-krzk@kernel.org>
 <20190909183436.9045-2-krzk@kernel.org>
 <20190912175001.GA29884@bogus>
In-Reply-To: <20190912175001.GA29884@bogus>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 18 Sep 2019 13:53:56 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeGMZhCNkKa73gE42baJUim3QtQiV_fRm=j7xL9bb1nFw@mail.gmail.com>
Message-ID: <CAJKOXPeGMZhCNkKa73gE42baJUim3QtQiV_fRm=j7xL9bb1nFw@mail.gmail.com>
Subject: Re: [RFC PATCH 2/2] dt-bindings: pwm: Convert Samsung PWM bindings to
 json-schema
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_045409_816315_D68F911C 
X-CRM114-Status: GOOD (  23.72  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Maciej Falkowski <m.falkowski@samsung.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-leds@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Sep 2019 at 16:36, Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Sep 09, 2019 at 08:34:36PM +0200, Krzysztof Kozlowski wrote:
> > Convert Samsung PWM (S3C, S5P and Exynos SoCs) bindings to DT schema
> > format using json-schema.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> >  .../devicetree/bindings/pwm/pwm-samsung.txt   |  51 --------
> >  .../devicetree/bindings/pwm/pwm-samsung.yaml  | 111 ++++++++++++++++++
> >  2 files changed, 111 insertions(+), 51 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-samsung.txt
> >  create mode 100644 Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
>
>
> > diff --git a/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
> > new file mode 100644
> > index 000000000000..90fb467bcdd5
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
> > @@ -0,0 +1,111 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pwm/pwm-samsung.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Samsung SoC PWM timers
> > +
> > +maintainers:
> > +  - Thierry Reding <thierry.reding@gmail.com>
> > +  - Krzysztof Kozlowski <krzk@kernel.org>
> > +
> > +description: |+
> > +  Samsung SoCs contain PWM timer blocks which can be used for system clock source
> > +  and clock event timers, as well as to drive SoC outputs with PWM signal. Each
> > +  PWM timer block provides 5 PWM channels (not all of them can drive physical
> > +  outputs - see SoC and board manual).
> > +
> > +  Be aware that the clocksource driver supports only uniprocessor systems.
> > +
> > +allOf:
> > +  - $ref: pwm.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - samsung,s3c2410-pwm             # 16-bit, S3C24xx
> > +      - samsung,s3c6400-pwm             # 32-bit, S3C64xx
> > +      - samsung,s5p6440-pwm             # 32-bit, S5P64x0
> > +      - samsung,s5pc100-pwm             # 32-bit, S5PC100, S5PV210, Exynos4210 rev0 SoCs
> > +      - samsung,exynos4210-pwm          # 32-bit, Exynos
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    minItems: 1
> > +    maxItems: 3
> > +
> > +  clock-names:
> > +    description: |
> > +      Should contain all following required clock names:
> > +      - "timers" - PWM base clock used to generate PWM signals,
> > +      and any subset of following optional clock names:
> > +      - "pwm-tclk0" - first external PWM clock source,
> > +      - "pwm-tclk1" - second external PWM clock source.
> > +      Note that not all IP variants allow using all external clock sources.
> > +      Refer to SoC documentation to learn which clock source configurations
> > +      are available.
> > +    oneOf:
> > +      - items:
> > +        - const: "timers"
> > +      - items:
> > +        - const: "timers"
> > +        - const: "pwm-tclk0"
> > +      - items:
> > +        - const: "timers"
> > +        - const: "pwm-tclk1"
> > +      - items:
> > +        - const: "timers"
> > +        - const: "pwm-tclk0"
> > +        - const: "pwm-tclk1"
> > +
> > +  interrupts:
> > +    description:
> > +      One interrupt per timer, starting at timer 0.
> > +    minItems: 1
> > +    maxItems: 5
> > +
> > +  "#pwm-cells":
> > +    description:
> > +      The only third cell flag supported by this binding
> > +      is PWM_POLARITY_INVERTED.
> > +    const: 3
> > +
> > +  samsung,pwm-outputs:
> > +    description:
> > +      A list of PWM channels used as PWM outputs on particular platform.
> > +      It is an array of up to 5 elements being indices of PWM channels
> > +      (from 0 to 4), the order does not matter.
> > +    # TODO: Values should not repeat
>
> uniqueItems: true
>
> Though it looks like we have to enable that keyword. (As silently
> ignoring unknown keywords (such as typos) is 'feature' of json-schema,
> we explicitly list keywords we use.)

This works fine.

>
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> > +      # FIXME: min/max limit of items does not work
> > +      - items:
> > +          minItems: 1
> > +          maxItems: 5
> > +      - items:
> > +          minimum: 0
> > +          maximum: 4
>
> I think you want:
>
> minItems: 1
> maxItems: 2
> items:
>   minimum: 0
>   maximum: 4

This not. However I figured out it is not needed. Since these are
unique values from 0 to 4, then the size of array cannot be longer
than 5 or shorter than 1.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
