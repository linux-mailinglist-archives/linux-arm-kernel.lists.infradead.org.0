Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEC411EE70
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 00:25:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OS55BW0irJ36hUbwosObr4pqqcnkFrBanS154x1QHG4=; b=BHJgU00oWKVCva
	S7zjOAZSL01nP+lhj10E53CO1wlyll0LHIMweiA3rAhD9zWOIqoenv76EAoDT3CEamsNZMK1ol0aH
	v9ORe8Xqx5uJ2HRZWCFMN9jBD+SpqEA2j2msRzTpEmKczyPwIHmVSMmP97EQ4HaeEM8OwNW7axCIP
	U3UalrJNBxEqtjZzcv8Qo//nJ5ySbE90Psze+5Tyn7bzLs9W5ANTtnL6kWuILHgGnnRzxFVgZMPVv
	mLGDPbEIFpbg51whZ6PMW8MvPEWHynNdZoSW/ind4v4DKoSGCCLwxVIZVsbRoJhFDXaC1WyW3L1mN
	SPGL3E9APgnjlDesMflw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifuJR-0001t4-Bh; Fri, 13 Dec 2019 23:25:33 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifuJH-0001sh-Vt
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 23:25:25 +0000
Received: by mail-oi1-f195.google.com with SMTP id v140so2099752oie.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 15:25:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dLfBlRiHKWoew0reabXfa/MbAeC9Mc4ikeTkPhntb9g=;
 b=nUWMvWv+AhWW/e2L8geM6Iw/kSKjdbdvtbxUfxdHCmoF4q4B4WODZUUm5TadBZ66xY
 aEA0esHhD4H+ZjtPA1s3eE/pEtmVChim628Xe8ElYc1JS/786T4HkasBca9Jn3c5N8DQ
 1esysEwTyonaG9qeCWRgVuaXUQrqZJnlm3tU14LaKrRl8Tdv0p/ZVJUCRWmUL5MvzE+4
 WSq3yhmUE9/3TtwcW87xXFEn9kcaBDY9omZ8P8S3WDQ+u+HLYIg9SZ/okVQIYP2Tpt+j
 BMsAN8BLHgT0SLRm9OMG0q73U/IJ+hiTRCoW0tjuLRmcRQu/SdyMSFo9vXxLF6XYUN1I
 pKQw==
X-Gm-Message-State: APjAAAU82mLXRoNnn+4xRQC2tRFoHo23SunoCIi2MLeEyDsLGBUcZpPb
 uPWi0v7PhbHELxnlLyT1Dw==
X-Google-Smtp-Source: APXvYqwoHMOiga8bgQ2raABQGFJaX4uqduovQEJFvsdi+ExC6o+PYKI9rlCu3Kwb/ygG5liYl0HTJQ==
X-Received: by 2002:aca:4eca:: with SMTP id c193mr7743827oib.37.1576279522531; 
 Fri, 13 Dec 2019 15:25:22 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n15sm3855369otr.67.2019.12.13.15.25.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 15:25:21 -0800 (PST)
Date: Fri, 13 Dec 2019 17:25:21 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH] dt-bindings: rtc: Convert stm32 rtc bindings to
 json-schema
Message-ID: <20191213232521.GA20953@bogus>
References: <20191202145740.29123-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202145740.29123-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_152524_027286_62EA7944 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 alexandre.torgue@st.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 03:57:40PM +0100, Benjamin Gaignard wrote:
> Convert the STM32 RTC binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/rtc/st,stm32-rtc.txt       |  61 ---------
>  .../devicetree/bindings/rtc/st,stm32-rtc.yaml      | 152 +++++++++++++++++++++
>  2 files changed, 152 insertions(+), 61 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/rtc/st,stm32-rtc.txt
>  create mode 100644 Documentation/devicetree/bindings/rtc/st,stm32-rtc.yaml


> diff --git a/Documentation/devicetree/bindings/rtc/st,stm32-rtc.yaml b/Documentation/devicetree/bindings/rtc/st,stm32-rtc.yaml
> new file mode 100644
> index 000000000000..80c445005bfb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rtc/st,stm32-rtc.yaml
> @@ -0,0 +1,152 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/rtc/st,stm32-rtc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 Real Time Clock Bindings
> +
> +maintainers:
> +  - Gabriel Fernandez <gabriel.fernandez@st.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - st,stm32-rtc
> +      - st,stm32h7-rtc
> +      - st,stm32mp1-rtc
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: rtc_ck
> +
> +  interrupts:
> +    maxItems: 1
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - st,stm32-rtc
> +              - st,stm32h7-rtc
> +    then:
> +      properties:
> +        st,syscfg:
> +          allOf:
> +            - $ref: "/schemas/types.yaml#/definitions/phandle-array"
> +            - items:
> +                minItems: 3
> +                maxItems: 3
> +          description: |
> +            Phandle/offset/mask triplet. The phandle to pwrcfg used to
> +            access control register at offset, and change the dbp (Disable Backup
> +            Protection) bit represented by the mask, mandatory to disable/enable backup
> +            domain (RTC registers) write protection.
> +
> +        assigned-clocks:
> +          allOf:
> +            - $ref: "/schemas/types.yaml#/definitions/phandle-array"

Already has a type, so drop this.

> +          description: |
> +            override default rtc_ck parent clock reference to the rtc_ck clock entry
> +          maxItems: 1
> +
> +        assigned-clock-parents:
> +          allOf:
> +           - $ref: "/schemas/types.yaml#/definitions/phandle-array"

Same here.

Since you have the false schema below, I think these can go in base 
schema rather than under the if.

> +          description: |
> +            override default rtc_ck parent clock phandle of the new parent clock of rtc_ck
> +          maxItems: 1
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: st,stm32-rtc
> +
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 1
> +          maxItems: 1
> +
> +        clock-names: false
> +
> +      required:
> +        - st,syscfg
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: st,stm32h7-rtc
> +
> +    then:
> +       properties:
> +         clocks:
> +           minItems: 2
> +           maxItems: 2
> +
> +       required:
> +         - clock-names
> +         - st,syscfg
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: st,stm32mp1-rtc
> +
> +    then:
> +       properties:
> +         clocks:
> +           minItems: 2
> +           maxItems: 2
> +
> +         assigned-clocks: false
> +         assigned-clock-parents: false
> +
> +       required:
> +         - clock-names
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +
> +examples:
> +  - |
> +    #include <dt-bindings/mfd/stm32f4-rcc.h>
> +    #include <dt-bindings/clock/stm32fx-clock.h>
> +    rtc@40002800 {
> +      compatible = "st,stm32-rtc";
> +      reg = <0x40002800 0x400>;
> +      clocks = <&rcc 1 CLK_RTC>;
> +      assigned-clocks = <&rcc 1 CLK_RTC>;
> +      assigned-clock-parents = <&rcc 1 CLK_LSE>;
> +      interrupt-parent = <&exti>;
> +      interrupts = <17 1>;
> +      st,syscfg = <&pwrcfg 0x00 0x100>;
> +    };
> +
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    rtc@5c004000 {
> +      compatible = "st,stm32mp1-rtc";
> +      reg = <0x5c004000 0x400>;
> +      clocks = <&rcc RTCAPB>, <&rcc RTC>;
> +      clock-names = "pclk", "rtc_ck";
> +      interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
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
