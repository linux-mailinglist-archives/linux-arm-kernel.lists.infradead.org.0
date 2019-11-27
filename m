Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 522E210B538
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 19:08:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fa3r73sfaa594DXH4x0xIXdXmMJGKP9ARWUhZT/uU0Y=; b=EM2f16C9uBd9Td
	E40ICl3CmsN6iv1T4Q2I5tQAq4d/eQz5gZPLRsskFIXJ0KNZfFJRrgdrpoT69lXStrzrs0MYxpa3l
	lFgQLcZn+Z/JqqVtCcXuuHUqWf1OavRNGdhYblqy54KeYyRBBkyufg63Rxmjhs+GehPkqzpoSloxs
	4453zqlEtQ+1v4GT12mw638jeRvyLcWqW/5IGTRPmj6TPvNCGnuRNX3IpJGHa7B0G+Pgy+NbajAcV
	FybF3Y66h9WRIkIT/NFNkYO+anluTiJYmxwh84jBBspL4k8sQYmIKLk6wDwxbKykoxg6aWyhVeiZy
	pQ//5b7+BtibuUozTdBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia1jL-00035O-SU; Wed, 27 Nov 2019 18:07:59 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia1j8-00034C-OF
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 18:07:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1574878064; bh=4VzrydAkThomO1NgCSzfkzhhez9X+ie12XCY93OYl4Y=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=EhbwSR5v8v8tPutBJipalzt60OO/s3cONAVvDxDWU8qLetxCn9MUhXeR6DPphGW66
 1y1UxCnqcfb68suXdYaoqRW9qrZC4/BzcBjFxECihzsadeFcyqjySAtvJJlBnCP5Zb
 YIB99+uHHsPQMy+P/A19mNaJ5ky6dNVfJFd5VwD4=
Date: Wed, 27 Nov 2019 19:07:43 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v6 2/7] dt-bindings: thermal: add YAML schema for
 sun8i-thermal driver bindings
Message-ID: <20191127180743.ww5npenlg2urxtjn@core.my.home>
Mail-Followup-To: Maxime Ripard <mripard@kernel.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 Yangtao Li <tiny.windzz@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191127052935.1719897-1-anarsoul@gmail.com>
 <20191127052935.1719897-3-anarsoul@gmail.com>
 <20191127174434.wousbqosmm5vxcsu@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127174434.wousbqosmm5vxcsu@gilmour.lan>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_100747_118309_8529B0E3 
X-CRM114-Status: GOOD (  21.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Eduardo Valentin <edubezval@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-pm@vger.kernel.org,
 Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Nov 27, 2019 at 06:44:34PM +0100, Maxime Ripard wrote:
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

Additionally, minItems should be 0, since A83T doesn't have bus clock/reset. And
then there should be a special case for A83T too with min/maxItems = 0 for both
resets and clocks.

regards,
	o.

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
> 
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
> 
> > +
> > +  nvmem-cells:
> > +    maxItems: 1
> > +    items:
> > +      - description: Calibration data for thermal sensors
> 
> You can drop the items and just move the description up one level,
> under nvmem-cells
> 
> > +
> > +  nvmem-cell-names:
> > +    items:
> > +      - const: calibration
> 
> Ditto for the const
> 
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - '#thermal-sensor-cells'
> 
> Whether clocks, clock-names and resets are thereshould be check using
> an if statement as well.
> 
> > +
> > +examples:
> > +  - |
> > +    ths_a83t: ths@1f04000 {
> 
> You don't need the label at all, and the node name should be
> temperature-sensor according to the DT spec, not ths. This applies to
> all you examples.
> 
> > +         compatible = "allwinner,sun8i-a83t-ths";
> > +         reg = <0x01f04000 0x100>;
> > +         interrupts = <0 31 0>;
> > +         nvmem-cells = <&ths_calibration>;
> > +         nvmem-cell-names = "calibration";
> > +         #thermal-sensor-cells = <1>;
> > +    };
> 
> New line.
> 
> Thanks!
> Maxime



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
