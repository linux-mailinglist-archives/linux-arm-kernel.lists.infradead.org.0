Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9DF9CEFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 14:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sgCGooBF+nBa+2bT+Yrt4B83CSzOkCOBxOy7M7K2H/4=; b=ej6ssxhs0gp57b
	sDm72m2i6g1szOLpS9mjbLM4+i//ucVDo2WSS1rnwdM4G9/p7Cr7ixAW1Pa+9PGOdsi9cKr16ChCk
	1eLrLFH1Jo2doOsrBCot/aw8W6IEj/tWTtbi+4iZobwq0kkzJXO4KkoJmATPPNgVzkkc0XooEoc/U
	yNr82qJidzZwoRqgqVgAOtlTL7QryFiz2wQw0vQFwVQq2baGx7KbW/gEWkwab+PuRrp2hVvfXx0o8
	owoy//KQ1YWUp1qfDO1s36X45R0hTqShvo3wlv2E2M08ZCz5UW2JLtZTRDQME9neVNxGq5CdpgXqw
	WRpGrgnxOuae1COVKypw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2DlT-0001ab-Gw; Mon, 26 Aug 2019 12:06:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DlI-0001Za-VI
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 12:06:18 +0000
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6DA4521881
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 12:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566821176;
 bh=pSm3PvDMTIhWrias2jUj42UGA5TFBFdrlS5QO6QgtCQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=io3aMAGY1vLQLpnXBTGGQRmRoMF0Z3ucgOly06j72Whv8rl7xT1KFCYyKmlLidWs3
 Qit/fL3LL7kfMz6VSYutfHMnEYhIKe+/vtK0zd5YWrozSPVEGU8qnMYwsvvDG/CMl8
 nKvLGU3h6Se1hrH6oINn9wwihCiN7pzs42pZsyN4=
Received: by mail-qt1-f174.google.com with SMTP id l9so17539257qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 05:06:16 -0700 (PDT)
X-Gm-Message-State: APjAAAXdmTu9mwN9sSkQNxiFjm/MMDdWd55jslJU3n8tN+R0NySwjug4
 yjDakuB4QMr6WIKIxafC9TcozDFU0PGYLsJmNA==
X-Google-Smtp-Source: APXvYqywXvicr53vDpn7Lf7WyzQ+wjP/YIGuHrEhvTUukwIr28KdgsvczQlUyUAExmZ1tGD9jxYqR9nGPsTCyWlJexY=
X-Received: by 2002:ad4:4050:: with SMTP id r16mr15115021qvp.200.1566821175529; 
 Mon, 26 Aug 2019 05:06:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190823145356.6341-1-krzk@kernel.org>
 <20190823145356.6341-7-krzk@kernel.org>
In-Reply-To: <20190823145356.6341-7-krzk@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 26 Aug 2019 07:06:02 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKCpKuc=-4UyWFFv_RenKuSJcr9cdSKjbkL8F1ni+VODw@mail.gmail.com>
Message-ID: <CAL_JsqKCpKuc=-4UyWFFv_RenKuSJcr9cdSKjbkL8F1ni+VODw@mail.gmail.com>
Subject: Re: [RFC 7/9] dt-bindings: rtc: s3c: Convert S3C/Exynos RTC bindings
 to json-schema
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_050617_045271_F405C078 
X-CRM114-Status: GOOD (  22.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, Aug 23, 2019 at 9:54 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Convert Samsung S3C/Exynos Real Time Clock bindings to DT schema format
> using json-schema.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  .../devicetree/bindings/rtc/s3c-rtc.txt       | 31 ------
>  .../devicetree/bindings/rtc/s3c-rtc.yaml      | 95 +++++++++++++++++++
>  2 files changed, 95 insertions(+), 31 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/rtc/s3c-rtc.txt
>  create mode 100644 Documentation/devicetree/bindings/rtc/s3c-rtc.yaml


> diff --git a/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml b/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
> new file mode 100644
> index 000000000000..44b021812a83
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
> @@ -0,0 +1,95 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/rtc/s3c-rtc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung S3C, S5P and Exynos Real Time Clock controller
> +
> +maintainers:
> +  - Krzysztof Kozlowski <krzk@kernel.org>
> +
> +# Select also deprecated compatibles (for finding deprecate usage)
> +select:
> +  properties:
> +    compatible:
> +      items:
> +        - enum:
> +            - samsung,s3c2410-rtc
> +            - samsung,s3c2416-rtc
> +            - samsung,s3c2443-rtc
> +            - samsung,s3c6410-rtc
> +            # Deprecated, use samsung,s3c6410-rtc
> +            - samsung,exynos3250-rtc

We've come up with a better way of doing this that doesn't need a
custom 'select'. Add a 'oneOf' to compatible and add another entry:

- const: samsung,exynos3250-rtc
  deprecated: true

It's not implemented yet in the tool, but we'll keep the compatible
for 'select' and otherwise drop schema marked deprecated.

> +  required:
> +    - compatible
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:

You can drop 'items' when there's only 1 entry.

> +          - samsung,s3c2410-rtc
> +          - samsung,s3c2416-rtc
> +          - samsung,s3c2443-rtc
> +          - samsung,s3c6410-rtc
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    description:
> +      Must contain a list of phandle and clock specifier for the rtc
> +      clock and in the case of a s3c6410 compatible controller, also
> +      a source clock.
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-names:
> +    description:
> +      Must contain "rtc" and for a s3c6410 compatible controller,
> +      a "rtc_src" sorted in the same order as the clocks property.
> +    oneOf:
> +      - items:
> +          - const: rtc
> +      - items:
> +          # TODO: This can be in any order matching clocks, how to express it?

It shouldn't be in any order. Fix the dts files.

> +          - const: rtc
> +          - const: rtc_src

You should drop all this and add an else clause below.

> +
> +  interrupts:
> +    description:
> +      Two interrupt numbers to the cpu should be specified. First
> +      interrupt number is the rtc alarm interrupt and second interrupt number
> +      is the rtc tick interrupt. The number of cells representing a interrupt
> +      depends on the parent interrupt controller.
> +    minItems: 2
> +    maxItems: 2
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - samsung,s3c6410-rtc
> +              - samsung,exynos3250-rtc
> +
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +          maxItems: 2
> +        clock-names:
> +          items:
> +          - const: rtc
> +          - const: rtc_src

Should be indented 2 more spaces.

> +
> +examples:
> +  - |
> +    rtc@10070000 {
> +      compatible = "samsung,s3c6410-rtc";
> +      reg = <0x10070000 0x100>;
> +      interrupts = <0 44 4>, <0 45 4>;
> +      clocks = <&clock 0>, // CLK_RTC
> +               <&s2mps11_osc 0>; // S2MPS11_CLK_AP
> +      clock-names = "rtc", "rtc_src";
> +    };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
