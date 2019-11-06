Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E061CF0DA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 05:15:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNi53BTxzJ4VgWKSAisQLN++SyM2u67t4VvLaq9pZ/4=; b=FDjKEFSrHIjClL
	Qrf74No6IJ6Ft41ke3nBUR/TFTIMr6XqYcZ0FR84LHsDHhlDUMLrTdXF6r8FdXpVLAvqIoMxdtTNn
	4SL7QF7TTaDpkLCAbKRFrNOtjrjaCyY2KddeI+N5iksFLxnfZ/rVKK3lqz16H02IdWKzmXpyAhhhS
	VGQO+AqZbXAOSDKlSnxoBHrV1XKyD+v1W3Hc5LGS1wSj0ch0HcKQFyuf7PIdP2oJ7DzuLYkcvTdNi
	v8mACyWKOcRT8nr9O9+TKkwUX+KGE3cREiJUvB02E4f4XEwWC7t/ZrXhTRDD5AoRahkHXxF8iOZ0B
	btFljuayFCiBY9BWyYsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSCj9-0007SM-CN; Wed, 06 Nov 2019 04:15:27 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSCj2-0007Rv-C7
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 04:15:22 +0000
Received: by mail-ot1-f66.google.com with SMTP id n23so9445321otr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 20:15:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eU07epBZUVYLaHBjz3RtRcFaFle5kQt9relwi3C3BoI=;
 b=s52txFa4FCnOgSxe5hcxMcWiXrAKHsywkFjKObt/U1+7rzBzX3ZAc0EJzmNnWW6LS1
 oTvaHIbNCW7QC75fqsWrYS+1Tk/SN8cfOPG37aU8qPksQsFcM4mg8XncYCN070GO3jLF
 hIUguAnLoPzRjFTlG546843tIspTkjNy7j27mXTqSWnaSLnESAscbl4lNQxD3Q/EjpTa
 DrAb6iTlY2OnbC9tmNdPATkxZ1nytHM1e7nJ/+abjWXGZqcPhcYxThmfEOEsKPPKdJSd
 CavGp5x7uve7yh95mXcDlNOVpVxSVndwoXhaew4aMkfy/tMDvdC9bLax9aQJTbWllv96
 ywSA==
X-Gm-Message-State: APjAAAX/N+jVVzFDRt/43SBjxwSb5lj/iCb0wTsYWAuGXWWTvfKiS6bF
 VD1bA4Ev87WMkWAAhEO6wVVOq3E=
X-Google-Smtp-Source: APXvYqyL7N4ZSd4YdH6F4tHPJTvw4bxJUurlUdTYajOsiR6wMLQz0zP3nOgOpX9idyBcv2QLfignhw==
X-Received: by 2002:a9d:6950:: with SMTP id p16mr289110oto.16.1573013719528;
 Tue, 05 Nov 2019 20:15:19 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d17sm1946185otl.13.2019.11.05.20.15.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 20:15:18 -0800 (PST)
Date: Tue, 5 Nov 2019 22:15:18 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH 4/4] dt-bindings: mfd: Convert stm32 timers bindings to
 json-schema
Message-ID: <20191106041518.GC5294@bogus>
References: <20191031123040.26316-1-benjamin.gaignard@st.com>
 <20191031123040.26316-5-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031123040.26316-5-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_201520_414595_E4036AEC 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 alexandre.torgue@st.com, linux-pwm@vger.kernel.org, linux-iio@vger.kernel.org,
 u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, fabrice.gasnier@st.com,
 lee.jones@linaro.org, linux-stm32@st-md-mailman.stormreply.com,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 01:30:40PM +0100, Benjamin Gaignard wrote:
> Convert the STM32 timers binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/mfd/st,stm32-timers.yaml   | 91 ++++++++++++++++++++++
>  .../devicetree/bindings/mfd/stm32-timers.txt       | 73 -----------------
>  2 files changed, 91 insertions(+), 73 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mfd/stm32-timers.txt
> 
> diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> new file mode 100644
> index 000000000000..3f0a65fb2bc0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> @@ -0,0 +1,91 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/st,stm32-timers.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 Timers bindings
> +
> +description: |
> +  This hardware block provides 3 types of timer along with PWM functionality: \

Don't need the \

> +    - advanced-control timers consist of a 16-bit auto-reload counter driven by a programmable \
> +      prescaler, break input feature, PWM outputs and complementary PWM ouputs channels. \
> +    - general-purpose timers consist of a 16-bit or 32-bit auto-reload counter driven by a \
> +      programmable prescaler and PWM outputs.\
> +    - basic timers consist of a 16-bit auto-reload counter driven by a programmable prescaler.
> +
> +maintainers:
> +  - Benjamin Gaignard <benjamin.gaignard@st.com>
> +  - Fabrice Gasnier <fabrice.gasnier@st.com>
> +
> +allOf:
> +  - $ref: "../pwm/st,stm32-pwm.yaml#"
> +  - $ref: "../iio/timer/st,stm32-timer-trigger.yaml#"
> +  - $ref: "../counter/st,stm32-timer-cnt.yaml#"

This works, but I prefer the child node names be listed under properties 
here with a ref:

counter:
  $ref: "../counter/st,stm32-timer-cnt.yaml#"

> +
> +properties:
> +  compatible:
> +    const: st,stm32-timers
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: int
> +
> +  reset:
> +    maxItems: 1
> +
> +  dmas: true

How many?

> +
> +  dma-names: true

What are the names?

> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +required:
> +  - "#address-cells"
> +  - "#size-cells"
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    timers2: timer@40000000 {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      compatible = "st,stm32-timers";
> +      reg = <0x40000000 0x400>;
> +      clocks = <&rcc TIM2_K>;
> +      clock-names = "int";
> +      dmas = <&dmamux1 18 0x400 0x1>,
> +             <&dmamux1 19 0x400 0x1>,
> +             <&dmamux1 20 0x400 0x1>,
> +             <&dmamux1 21 0x400 0x1>,
> +             <&dmamux1 22 0x400 0x1>;
> +      dma-names = "ch1", "ch2", "ch3", "ch4", "up";
> +      pwm {
> +        compatible = "st,stm32-pwm";
> +        #pwm-cells = <3>;
> +        st,breakinput = <0 1 5>;
> +      };
> +      timer@0 {
> +        compatible = "st,stm32-timer-trigger";
> +        reg = <0>;
> +      };
> +      counter {
> +        compatible = "st,stm32-timer-counter";
> +      };
> +    };
> +
> +...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
