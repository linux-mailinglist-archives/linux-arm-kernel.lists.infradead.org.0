Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79754D3FD7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 14:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3XPVsrp2xbJGkFA0TWe74qK5y+261aKjFXE8ME7d+c=; b=rhJ77DjUfT4N5F
	P45owYVIm20D/w8xxsKhCOPLHW08t2FtmRLov6kDK6OljAAa3+wXMki8YP2qMO2nszskvAnjJuPpi
	pHp5D/Y5mL0BWmqibW/Fwy7gHNJoGRDnXXLFGClYw3+j2OeSKuWxVZOVK2xQXv+Yplis+UK/hqDSu
	Z6sanSV+3OT3qDQkyIc3yxJw+WPhKopsdYlzd98oZkoUefmfXMdjqetec92klXvYpOTZJ1J7maT7v
	DDD8J8rO5IuP+2y6OWFPgMinPqbyU6JZGSi+sBTOZVyYTF1KkKAXhP1G7Ioba4ti3wHrXA3zSm42x
	1nRrKjBKjZa+S0SnhTbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuHN-0000rm-Gk; Fri, 11 Oct 2019 12:44:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuHE-0000rO-Ak
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 12:44:13 +0000
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC50521D7E
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 12:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570797852;
 bh=MEKOQdvYjwnV7XxSeqjDPTn7gFVU7mMSkuBj2ymboMo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZswXe9+0nzY9X3l/t3kfrKcFduNQAtzvf6wLYtAd4LyML+5zr0+WLbeYI5A/SBhRL
 g22T2gP80BXIk1gRH5n8sVSZamE6EyqH+DWoYmrK+ympuyzeXFLGusCA23jlsQd1WR
 312EcVaYJoaK3EZXUvcfBjJZqGu8hrCG+epWsNz8=
Received: by mail-qt1-f175.google.com with SMTP id u40so13585424qth.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 05:44:11 -0700 (PDT)
X-Gm-Message-State: APjAAAUyo9VUllMKpD/M8pE7VwOqHOtW7CQolRJA+IEBxJmC68Dk3/TH
 1R4g8u4z82MSHpOlKzgFYFckTNMUzWKlTOrPHQ==
X-Google-Smtp-Source: APXvYqwVc+cipqk2hiwueeEGXDM/JKUDZPO53c7H1w6zenvtLkPW0FEI+rIctoU/ClWSPxDeQqBjwzaQSHKcUKdJyZ8=
X-Received: by 2002:a0c:e606:: with SMTP id z6mr15185686qvm.135.1570797850997; 
 Fri, 11 Oct 2019 05:44:10 -0700 (PDT)
MIME-Version: 1.0
References: <20191002151410.15306-1-benjamin.gaignard@st.com>
In-Reply-To: <20191002151410.15306-1-benjamin.gaignard@st.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 11 Oct 2019 07:43:59 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK0hBSzn4YfhGmFyv8a5bCDtBvW0_bdhJwk0g_N7iVFtQ@mail.gmail.com>
Message-ID: <CAL_JsqK0hBSzn4YfhGmFyv8a5bCDtBvW0_bdhJwk0g_N7iVFtQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: media: Convert stm32 cec bindings to
 json-schema
To: Benjamin Gaignard <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_054412_409893_897D4F11 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Yannick Fertre <yannick.fertre@st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 2, 2019 at 10:14 AM Benjamin Gaignard
<benjamin.gaignard@st.com> wrote:
>
> Convert the STM32 cec binding to DT schema format using json-schema

Similar comments here too.

>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/media/st,stm32-cec.txt     | 19 --------
>  .../devicetree/bindings/media/st,stm32-cec.yaml    | 57 ++++++++++++++++++++++
>  2 files changed, 57 insertions(+), 19 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/st,stm32-cec.txt
>  create mode 100644 Documentation/devicetree/bindings/media/st,stm32-cec.yaml
>
> diff --git a/Documentation/devicetree/bindings/media/st,stm32-cec.txt b/Documentation/devicetree/bindings/media/st,stm32-cec.txt
> deleted file mode 100644
> index 6be2381c180d..000000000000
> --- a/Documentation/devicetree/bindings/media/st,stm32-cec.txt
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -STMicroelectronics STM32 CEC driver
> -
> -Required properties:
> - - compatible : value should be "st,stm32-cec"
> - - reg : Physical base address of the IP registers and length of memory
> -        mapped region.
> - - clocks : from common clock binding: handle to CEC clocks
> - - clock-names : from common clock binding: must be "cec" and "hdmi-cec".
> - - interrupts : CEC interrupt number to the CPU.
> -
> -Example for stm32f746:
> -
> -cec: cec@40006c00 {
> -       compatible = "st,stm32-cec";
> -       reg = <0x40006C00 0x400>;
> -       interrupts = <94>;
> -       clocks = <&rcc 0 STM32F7_APB1_CLOCK(CEC)>, <&rcc 1 CLK_HDMI_CEC>;
> -       clock-names = "cec", "hdmi-cec";
> -};
> diff --git a/Documentation/devicetree/bindings/media/st,stm32-cec.yaml b/Documentation/devicetree/bindings/media/st,stm32-cec.yaml
> new file mode 100644
> index 000000000000..c99144107185
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/st,stm32-cec.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/st,stm32-cec.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 CEC bindings
> +
> +maintainers:
> +  - Benjamin Gaignard <benjamin.gaignard@st.com>
> +  - Yannick Fertre <yannick.fertre@st.com>
> +
> +properties:
> +  compatible:
> +    const: st,stm32-cec
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Module Clock
> +      - description: Bus Clock
> +
> +  clock-names:
> +    items:
> +      - const: cec
> +      - const: hdmi-cec
> +
> +  pinctrl-names: true
> +
> +patternProperties:
> +  "^pinctrl-[0-9]+$": true

You don't need to list the pinctrl properties.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names

additionalProperties: false

> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    cec: cec@40006c00 {
> +        compatible = "st,stm32-cec";
> +        reg = <0x40006c00 0x400>;
> +        interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&rcc CEC_K>, <&clk_lse>;
> +        clock-names = "cec", "hdmi-cec";
> +    };
> +
> +...
> --
> 2.15.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
