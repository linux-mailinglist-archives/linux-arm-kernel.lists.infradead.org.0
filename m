Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E592C10CCC8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:24:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+4qzlF51VcsFRpg5jcPE6JEOTVwS7F8eC333Qwg0uY=; b=tA9rlqFMZ4aCKO
	/6g0RHUfOsuCbv6T5MTeNqTw2mMvVNup55+PS9lIAKp/pCMEMSw3bISrl0fBUtQc82IE9Xk7qOqf4
	Z4xoe2WM4JmprlQIcQKHoHe5UzgRh0ayP5kw62Er4rlmR2fmaGKMHm0PWZuHaEI2X+zif9VUdj4tj
	Y6j8Ib8fb236oaUo9PrKhGKbqxZIaXZ/+he0EhKl6BBXx+BLv6/78EZgz3QepWeIH9uhNhvZbX2gj
	tFnWuThHkSWfwDrQu8LO+/9u2FPE80BHtxM7ZIlIQZ57YaIVkhSV8Ag55xSS1IVk9qJPe1Q38QIaP
	KyXH9W1LiDSZ8QpX202Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaMb5-0002J7-Ov; Thu, 28 Nov 2019 16:24:51 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMav-0002Ih-I1
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:24:43 +0000
Received: by mail-oi1-x243.google.com with SMTP id e9so23752222oif.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:24:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z3VqpjrZB5dVKBqJG+mBiDtnZ2Bu7fCXo2j8f/VRZBE=;
 b=pCfa8I1bGBJviToPnlI7I96+AvxXirWhqa1wUa20TPpvOfSet/Jbt0Lpoo+Nzqt4fE
 LSz+mJ7sp9C3DNk2hs5CjRxI4FKiTSXqK3sBqj7cIALppBwCdLCmePe6GKkIy3QTYzEW
 j8/WF9jIePBnNm9A5VK2yPfms5BHVw8K6ktYULdc3yBai4cXaxERnoUIQW/67pRftz+6
 Ks9X6RGtaA/GLOUc8FFploAP1oPdB5RucTmtRXbp074EwSC2k5fpNywfVlN79xQDPutd
 M0OjD4rctuwzHm+XTBODgvxhP7SoqKSRaXIY+5ShWrs96D+zE/kQ3fA+xPEeP76rZRV2
 FQbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z3VqpjrZB5dVKBqJG+mBiDtnZ2Bu7fCXo2j8f/VRZBE=;
 b=YYldAvgaKuvvE8hv6jLF8LXAYcauzq44Y4wFlSk8JIUASkwbMKkLgjw0Bw+kZZp1dn
 Y8ioI3maEotLgcs+Jjoz7WEJ9V8VoezVE3P7+v+NzRMk1lUK0waFEZeLPjTpSw4ro44e
 pEtPzL7pbe++HwnazTZz9SWhtDbrjqCPR4yoN6Scv6y3IjKRH2cq3P8Sw3MCnLiaRA4P
 NtVmFXPTpy+z2WnGi5qXyCILsb/1IEhzqioo9aFeALaZ4L1+i+oLAHOKhnrTNLemYnBH
 3uDg22VaYgWMd998wT3eVw4nP4nl6JaBTUXXqCQIeOYhKVo/23+symsxNz8frC/teY2N
 KgGQ==
X-Gm-Message-State: APjAAAXmBAH8mk5eFfZw41Dr+Fd+bjYsCdjo3SQqG7I6ddcBVE7ak6K7
 8pJQ/itSvFJFC2V82KZIk6kaVuBlcAlEICWrM7o=
X-Google-Smtp-Source: APXvYqzz7ps6eXoUhwDQKMUk7cAIqzYXyKKS19x5F5J/c1WL4oGQ5D0Zg836VRhZZOC0G9Xb+Fho4S0eFMAeGSAZ8J4=
X-Received: by 2002:aca:edd5:: with SMTP id l204mr6637720oih.98.1574958280574; 
 Thu, 28 Nov 2019 08:24:40 -0800 (PST)
MIME-Version: 1.0
References: <20191127052935.1719897-1-anarsoul@gmail.com>
 <20191127052935.1719897-3-anarsoul@gmail.com>
 <20191127174434.wousbqosmm5vxcsu@gilmour.lan>
 <CA+E=qVe22T1uhUo6iq9a82Y9bC014CZSkAtSJJNX4qsn6dJL9w@mail.gmail.com>
 <20191128074325.q47rpzhufwog6mbb@gilmour.lan>
 <CAEExFWs7A4TcB-QcatfR3w1hUX88dC-Sxd=epQppwB7p2CC6SA@mail.gmail.com>
 <CAEExFWu4MPxA+Vs1BNzCqeR5EkbVT2SjMf6hRBK6nZ2doJmduA@mail.gmail.com>
In-Reply-To: <CAEExFWu4MPxA+Vs1BNzCqeR5EkbVT2SjMf6hRBK6nZ2doJmduA@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Thu, 28 Nov 2019 08:24:14 -0800
Message-ID: <CA+E=qVcp9MqFPoU9DCypAw7kK+obeDnES4QSeq7mSUc+rRLutw@mail.gmail.com>
Subject: Re: [PATCH v6 2/7] dt-bindings: thermal: add YAML schema for
 sun8i-thermal driver bindings
To: Frank Lee <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_082441_625767_EEEB4EFA 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Linux PM <linux-pm@vger.kernel.org>,
 =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 6:45 AM Frank Lee <tiny.windzz@gmail.com> wrote:

Hey Yangtao,

I've already addressed all the comments and fixed patchset is sitting
in https://github.com/anarsoul/linux-2.6/tree/ths-5.4

I'll rebase and submit new version after merge window is closed (in ~1.5 weeks?)

Regards,
Vasily

> diff --git a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
> b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
> new file mode 100644
> index 000000000000..1be32f09fcc8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
> @@ -0,0 +1,160 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/sun8i-thermal.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner SUN8I Thermal Controller Device Tree Bindings
> +
> +maintainers:
> +  - Yangtao Li <tiny.windzz@gmail.com>
> +
> +description: |-
> +  This describes the device tree binding for the Allwinner thermal
> +  controller which measures the on-SoC temperatures.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - allwinner,sun8i-a83t-ths
> +      - allwinner,sun8i-h3-ths
> +      - allwinner,sun8i-r40-ths
> +      - allwinner,sun50i-a64-ths
> +      - allwinner,sun50i-h5-ths
> +      - allwinner,sun50i-h6-ths
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      - description: ths bus clock
> +      - description: ths mod clock
> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      - const: bus
> +      - const: mod
> +
> +  "#thermal-sensor-cells":
> +    enum: [ 0, 1 ]
> +
> +  nvmem-cells:
> +    description: ths calibrate data
> +
> +  nvmem-cell-names:
> +    const: calibration
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - "#thermal-sensor-cells"
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - allwinner,sun8i-h3-ths
> +              - allwinner,sun8i-r40-ths
> +              - allwinner,sun50i-a64-ths
> +              - allwinner,sun50i-h5-ths
> +              - allwinner,sun50i-h6-ths
> +
> +    then:
> +      properties:
> +        resets:
> +          minItems: 1
> +          maxItems: 1
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: allwinner,sun50i-h6-ths
> +
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 1
> +          maxItems: 1
> +
> +        clock-names:
> +          minItems: 1
> +          maxItems: 1
> +
> +    else:
> +      if:
> +        properties:
> +          compatible:
> +            contains:
> +              enum:
> +                - allwinner,sun8i-h3-ths
> +                - allwinner,sun8i-r40-ths
> +                - allwinner,sun50i-a64-ths
> +                - allwinner,sun50i-h5-ths
> +
> +      then:
> +        properties:
> +          clocks:
> +            minItems: 2
> +            maxItems: 2
> +
> +          clock-names:
> +            minItems: 2
> +            maxItems: 2
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: allwinner,sun8i-h3-ths
> +
> +    then:
> +      properties:
> +        "#thermal-sensor-cells":
> +          const: 0
> +
> +    else:
> +      properties:
> +        "#thermal-sensor-cells":
> +          const: 1
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    ths: ths@5070400 {
> +        compatible = "allwinner,sun50i-h6-ths";
> +        reg = <0x05070400 0x100>;
> +        clocks = <&ccu 89>;
> +        clock-names = "bus";
> +        resets = <&ccu 36>;
> +        interrupts = <0 15 4>;
> +        nvmem-cells = <&tsen_calib>;
> +        nvmem-cell-names = "calibration";
> +        #thermal-sensor-cells = <1>;
> +    };
> +
> +    sid: sid@3006000 {
> +        compatible = "allwinner,sun50i-h6-sid";
> +        reg = <0x03006000 0x400>;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        tsen_calib: calib@14 {
> +                reg = <0x14 6>;
> +        };
> +    };
> +...
>
> On Thu, Nov 28, 2019 at 10:35 PM Frank Lee <tiny.windzz@gmail.com> wrote:
> >
> > Hi,
> >
> > How about this?
> >
> > Best regards,
> > Yangtao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
