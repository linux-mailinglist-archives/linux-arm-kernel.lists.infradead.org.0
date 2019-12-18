Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D951256AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:27:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5+48O5UP3xZWN9SqHclHoHN7229YFpdq26T9/2eu578=; b=GYS7snEptfMbuF
	BEDNKaKqcu83C1gZViBT3zk54FLep/9XvYTHQvBumDzZLGSWg0hhHRggjbEI8GjVfmFsxma0vGcZO
	00n/txklFfy5z1ub2wsXv8TkSWqww0FRGo7prMN6s1s1zceMBWQupSlGLPEoc2OcsbwdKwDePd5ak
	9yePVv+zfwU84NlgJTlh9fiOvAW2pzyFmLhCJCNiNtzTTdCL4ewkHgcmT39+MPoi97Dcz7ZrwDxbs
	39xOwX5WcKrph5C1KT5gGwkprma77SBqD25hHtqxwAuFVDz3tyIN20MNRI/8nxrpU7ElH8U8i6f3A
	UnNkidfYPbV2ppfnL8yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhmi-0002qu-VJ; Wed, 18 Dec 2019 22:27:13 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhmV-0002oy-3z
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 22:27:02 +0000
Received: by mail-qv1-xf41.google.com with SMTP id p2so1412874qvo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 14:26:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qbWs72DR5XCjtRMaVF/M12LG91Dcbzm+NrYCmOJf9Lc=;
 b=OZHoOkf1lqlbsaOVytx/DPVbIJ4Y4RNrRnNOBsWJ6dcfMbMlcZ7n+0XfDcT+K3t08T
 zC615ySso5IGKCAfkh6MdB/2310SS8ETuKJd7E7NT13g8NCxJEyii7IFaoRBAZQzfxqD
 8MZxvCzVsglZniBhYzQR319BsQog2IXIP5RTmVzimyKm7jErJtVG1XkB83IBAnaTtNFQ
 dknJSx7p9lLTNk+V4NDLNsGr0naOcOKgXH169MW8aqr6xJ9a0Fenvzx72MQ2mWsrAiTU
 uT6gbG0gQruuORDjZjY+HgwvgD5mZh4HoQIx3IMG1Qk5r2QqA8dZnCcLC5IvWzGAlHWd
 k/AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qbWs72DR5XCjtRMaVF/M12LG91Dcbzm+NrYCmOJf9Lc=;
 b=UPGOewJEJExfusJo7z2Zrf3wMeDRm2qYnSQRKqdIFc1DAONFenquz70gCBUs3ZRrbR
 taFjuzFoPry1TNqfSWbEdb9m11GZWCm4/kATq8TSeUzoXgIrmjg9HsAN1VQWljzuneCY
 IyvxdjN2A/nXeMgSwMxfuNtSU9RAtz7K3m7B5rBbe1YX9KbNd7EXyH/EcdG/gYhyzc9v
 xQvI62k3WgSGe7s7rLg0OIYUQ0SFYjbTfNS/ViVBH8jGXyBGW1zEyHHYPwNUPeoakDSa
 IAdJnce2sJmog31oH30AOVPOgIi24R+LrcQ2t7UqbBh/3Q5hBDMpvOg8jpBXvkcn6QR6
 AwSQ==
X-Gm-Message-State: APjAAAW+W3Rp056TxbsfS7k8UfRt8cceBkSb+vXNONF+/sfHGJtXr/7K
 YJgtwRSF/ulYXo4xzdciTxQJKua4rqKJneBJKt0=
X-Google-Smtp-Source: APXvYqxMv0f/TTmCyeAV6J2z1Xn737Nyu97jSxwUX5CQGXnesqQ/ZGUrsJGHlsgM+an3FHECx+EY/snEBfIMKOPK8i4=
X-Received: by 2002:ad4:450a:: with SMTP id k10mr4512847qvu.136.1576708017893; 
 Wed, 18 Dec 2019 14:26:57 -0800 (PST)
MIME-Version: 1.0
References: <20191218042121.1471954-1-anarsoul@gmail.com>
 <20191218042121.1471954-3-anarsoul@gmail.com>
 <20191218220037.4g6pzdvrhroaj4qu@gilmour.lan>
In-Reply-To: <20191218220037.4g6pzdvrhroaj4qu@gilmour.lan>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 18 Dec 2019 14:27:00 -0800
Message-ID: <CA+E=qVdfV5LKBEar8eT286+ADrpygEkbe5OX1GVRw+khatrJhA@mail.gmail.com>
Subject: Re: [PATCH v7 2/7] dt-bindings: thermal: add YAML schema for
 sun8i-thermal driver bindings
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_142659_289904_28F07B74 
X-CRM114-Status: GOOD (  26.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>, Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 2:00 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi,
>
> On Tue, Dec 17, 2019 at 08:21:16PM -0800, Vasily Khoruzhick wrote:
> > From: Yangtao Li <tiny.windzz@gmail.com>
> >
> > sun8i-thermal driver supports thermal sensor in wide range of Allwinner
> > SoCs. Add YAML schema for its bindings.
> >
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > ---
> >  .../thermal/allwinner,sun8i-a83t-ths.yaml     | 146 ++++++++++++++++++
> >  1 file changed, 146 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
> > new file mode 100644
> > index 000000000000..8768c2450633
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
> > @@ -0,0 +1,146 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/thermal/allwinner,sun8i-a83t-ths.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner SUN8I Thermal Controller Device Tree Bindings
> > +
> > +maintainers:
> > +  - Yangtao Li <tiny.windzz@gmail.com>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - allwinner,sun8i-a83t-ths
> > +      - allwinner,sun8i-h3-ths
> > +      - allwinner,sun8i-r40-ths
> > +      - allwinner,sun50i-a64-ths
> > +      - allwinner,sun50i-h5-ths
> > +      - allwinner,sun50i-h6-ths
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  nvmem-cells:
> > +    maxItems: 1
> > +    description: Calibration data for thermal sensors
> > +
> > +  nvmem-cell-names:
> > +    const: calibration
> > +
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: allwinner,sun50i-h6-ths
> > +
> > +    then:
> > +      properties:
> > +        clocks:
> > +          minItems: 1
> > +          maxItems: 1
>
> When minItems and maxItems are equal, you can only set one, the other
> will be filled automatically.

Is it documented anywhere? I have a feeling like I'm shooting in the
dark. So far I've read Documentation/devicetree/writing-schema.rst,
Documentation/devicetree/bindings/example-schema.yaml and few other
schemas for inspiration but yet I don't have solid understanding how
it's supposed to be written. Examples are pretty scarce and figuring
out why certain construction doesn't work is pretty tricky.

> > +
> > +        clock-names:
> > +          minItems: 1
> > +          maxItems: 1
> > +          items:
> > +            - const: bus
>
> And this can even be just
>
> clock-names:
>   const: bus

OK

> > +
> > +    else:
> > +      properties:
> > +        clocks:
> > +          minItems: 1
> > +          maxItems: 2
> > +
> > +        clock-names:
> > +          minItems: 1
> > +          maxItems: 2
> > +          items:
> > +            - const: bus
> > +            - const: mod
>
> I'm not sure why you need the minItems set to 1 here though?
>
> it's always 2 for the !H6 case, right?
>
> if so, then we should even do something like:
>
> properties:
>   ...
>
>   # This is needed because we will need to check both the H6 and !H6
>   # case, and it must validate. So we make sure we match against the
>   # union of both cases.
>   clocks:
>     minItems: 1
>     maxItems: 2
>     items:
>       - description: Bus Clock
>       - description: Module Clock
>
>   # Same story here
>   clock-names:
>     minItems: 1
>     maxItems: 2
>     items:
>       - const: bus
>       - const: mod
>
> allOf:
>   - if:
>     properties:
>       compatible:
>         contains:
>           const: allwinner,sun50i-h6-ths
>
>     # Here we validate in the H6 case we only have one clock
>     then:
>       properties:
>         clocks:
>           maxItems: 1
>
>         clock-names:
>           maxItems: 1
>
>     # and here that in the other case we have two clocks, the names
>     # being validated by the schema above
>     else:
>       properties:
>         clocks:
>           maxItems: 2
>
>         clock-names:
>           maxItems: 2
>
> # And now we can set this since all our properties will have been
> # expressed in the upper level schema
> additionalProperties: false

OK

> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: allwinner,sun8i-h3-ths
> > +
> > +    then:
> > +      properties:
> > +        "#thermal-sensor-cells":
> > +          const: 0
> > +
> > +    else:
> > +      properties:
> > +        "#thermal-sensor-cells":
> > +          const: 1
>
> Same thing here, you should have an enum accepting both values in the
> upper schema, the condition here only making further checks. Also, in
> the case where #thermal-sensor-cells is one, then you need to document
> what that argument is.

OK

>
> Thanks!
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
