Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4369110B760
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 21:24:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNIok3tI+0jbT5nkemWbHv1NgWyPtFZnwGZvqRITuNw=; b=ZasQgcYN9GHlU8
	6i5NtyKi7SDwDabClfaoAc6fWVu5Rgkx564G0oZf9c+OyKCI0wZxqwpJi9djyO0fJRixE1gfdZLJc
	fcJNpFNhTbThUbhkQ8P8VGG6208hLevEbnhSguKyuWddTFE38DFZ/OiuvFKW8l76fBIwOjOCJyasR
	f1BLDICUzrQeRO58012sutBT0/HPkJY3Q1kqnvYRutiDb0+SPHMX0SJvsGm+Na/yc1EWAsG1r1kCh
	JNFnO/Cwl2gUc7NKUQLK016KjJjH8Lp3Wvw3PcyrQH1WFTof9dExwzkMy3QxhD1DR8Sv2pyp27VhA
	EYVwMmo4njzvxtVeyZ7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia3rQ-0007Hx-Vk; Wed, 27 Nov 2019 20:24:28 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia3rH-0007HV-OP
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 20:24:21 +0000
Received: by mail-ot1-x343.google.com with SMTP id z25so20264769oti.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 12:24:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MixxgPNvg3pUnry2JzNoXYx2kY3tKkdeMgXAkzkyNYs=;
 b=Q8xCo+ZbqsfjOgoXWTnHWNvKIjvPEEcwP+yXEBzmj2ekJJlDCBa94VFtCAGp2f+bzq
 elQN5VZ0Q6MrI3M85kFAM7EcRpIT6dOyhTlaodtLBSugf0KJru8davD/6imekZuJmkNx
 PKcyk5pw+9Yw45suj7kCI5epoouGLLTi0kYP0fey25mulV3BNtcIR6WKxFwJiFpSvh39
 r+fZZtaHTh8Vqg56FBTN6g91jdzGaHCpToEq7ANGcvTUaONmosJTjEnzZ0amMb7T/Dfh
 2sMqDroQQ4rqoAnUrp4pRzTkVcUnPo3MZ6ZYkFQ/jv9nMvj+GO/NOi53qfubSe832egJ
 s8hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MixxgPNvg3pUnry2JzNoXYx2kY3tKkdeMgXAkzkyNYs=;
 b=d38Fw47aMu4/nP5OvEn0C0pv28N35vEnp8djkRRbimdZNaZ8jYdITEn2EG34GbUt/4
 ObporFw1HMiUUxYIqzFtNs21buoUHiqTIuvvBlyyVCXBGXrmzx15mipvOKz0EdwPj+DA
 UG+0y5Btrr6mEtZxXLw0wM65/iGQou3tgYB5kj7UBOqLGExjClr9tj4g8+EgKFxdON9c
 kH3FvSiZe0eJT1gdh7eX3wHh1+jyJBU5FMv+PLmYotB8k05RMKvCKMd16cBc31YlbKth
 wUuK7MYtZMt+BI69XMFowHHkP5ouK4S8ADwxrInbcBKtAu42uo90krXC0v64Xc411FXw
 KQeg==
X-Gm-Message-State: APjAAAUUqzldPa98PziyB6Aa5ObKLiUOmLJDvR8XMsbufTF8tfyyFfjz
 AX6O4G88kWZyKMEE5m1ccmuyrpGe+wNLAhJjSpg=
X-Google-Smtp-Source: APXvYqzQ//Ez72MjlZ6tnpozQgzvE/hhO0Vn1XVq9GxyZPcPEL2qouYxRSGFV+mE8Gods9QDh7e/ODo46N4kJh7VLCE=
X-Received: by 2002:a9d:6acf:: with SMTP id m15mr5155723otq.312.1574886258682; 
 Wed, 27 Nov 2019 12:24:18 -0800 (PST)
MIME-Version: 1.0
References: <20191127052935.1719897-1-anarsoul@gmail.com>
 <20191127052935.1719897-3-anarsoul@gmail.com>
 <20191127174434.wousbqosmm5vxcsu@gilmour.lan>
In-Reply-To: <20191127174434.wousbqosmm5vxcsu@gilmour.lan>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 27 Nov 2019 12:23:53 -0800
Message-ID: <CA+E=qVe22T1uhUo6iq9a82Y9bC014CZSkAtSJJNX4qsn6dJL9w@mail.gmail.com>
Subject: Re: [PATCH v6 2/7] dt-bindings: thermal: add YAML schema for
 sun8i-thermal driver bindings
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_122419_823310_484F28F7 
X-CRM114-Status: GOOD (  22.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>, Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
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

On Wed, Nov 27, 2019 at 9:44 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi,
>
> On Tue, Nov 26, 2019 at 09:29:30PM -0800, Vasily Khoruzhick wrote:
> > From: Yangtao Li <tiny.windzz@gmail.com>
> >
> > sun8i-thermal driver supports thermal sensor in wide range of Allwinner
> > SoCs. Add YAML schema for its bindings.
> >
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > ---
> >  .../thermal/allwinner,sun8i-a83t-ths.yaml     | 103 ++++++++++++++++++
> >  1 file changed, 103 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
> > new file mode 100644
> > index 000000000000..e622f0a4be90
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
> > @@ -0,0 +1,103 @@
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
> > +    oneOf:
> > +      - const: allwinner,sun8i-a83t-ths
> > +      - const: allwinner,sun8i-h3-ths
> > +      - const: allwinner,sun8i-r40-ths
> > +      - const: allwinner,sun50i-a64-ths
> > +      - const: allwinner,sun50i-h5-ths
> > +      - const: allwinner,sun50i-h6-ths
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
> > +  clocks:
> > +    minItems: 1
> > +    maxItems: 2
> > +
> > +  clock-names:
> > +    anyOf:
> > +      - items:
> > +        - const: bus
> > +        - const: mod
> > +      - items:
> > +        - const: bus
>
> This can be:
>
> clock-names:
>   minItems: 1
>   maxItems: 2
>   items:
>     - const: bus
>     - const: mod
>
> And the length should be checked based on the compatible value, with
> something like
>
> if:
>   properties:
>     compatible:
>       contains:
>         const: allwinner,sun50i-h6-ths
>
> then:
>   properties:
>     clocks:
>       maxItems: 1
>
>     clock-names:
>       maxItems: 1
>
> else:
>   properties:
>     clocks:
>       maxItems: 2
>
>     clock-names:
>       maxItems: 2

OK, will do

> > +
> > +  '#thermal-sensor-cells':
> > +    enum: [ 0, 1 ]
> > +    description: |
> > +      Definition depends on soc version:
> > +
> > +      For "allwinner,sun8i-h3-ths",
> > +      value must be 0.
> > +      For all other compatibles
> > +      value must be 1.
>
> This should be checked using an if as well.

Will do.

> > +
> > +  nvmem-cells:
> > +    maxItems: 1
> > +    items:
> > +      - description: Calibration data for thermal sensors
>
> You can drop the items and just move the description up one level,
> under nvmem-cells

Will do.

> > +
> > +  nvmem-cell-names:
> > +    items:
> > +      - const: calibration
>
> Ditto for the const

Sorry, I don't quite get it. What exactly do you want me to do with
this one? nvmem-cell-names must be "calibration"

> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - '#thermal-sensor-cells'
>
> Whether clocks, clock-names and resets are thereshould be check using
> an if statement as well.

Will do

> > +
> > +examples:
> > +  - |
> > +    ths_a83t: ths@1f04000 {
>
> You don't need the label at all, and the node name should be
> temperature-sensor according to the DT spec, not ths. This applies to
> all you examples.

OK

> > +         compatible = "allwinner,sun8i-a83t-ths";
> > +         reg = <0x01f04000 0x100>;
> > +         interrupts = <0 31 0>;
> > +         nvmem-cells = <&ths_calibration>;
> > +         nvmem-cell-names = "calibration";
> > +         #thermal-sensor-cells = <1>;
> > +    };
>
> New line.

OK

>
> Thanks!
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
