Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1339DE9F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1NNDM27ifrfon1gZfTVgZONoklwT2M8Jb0/N6zKg78k=; b=AwFVDyCkXp2ITy/b7VpqZRR0Sj
	PW9N94Sk8ccsZ1qENTwSaO4ZNPq06ahFmukLjNdboJoF5VqsDGqHPQuco9n7Lh6HJlw80C+qTcEGf
	Reamd4nAiG8Bq49Dc4K/ZlZSAuuYmBRIdEsc4zS6BlfvZglhxH89Ja3crMxtLPPqzJ3ZBddAYT9cd
	Rw9mRUiW23IKZDpxBwnExcXAPEVVdWYWnf05fXF8sjcmiSun4tRcmaQeuKQxZgYZSo5OPziUCKlLc
	CyRnxFkKQujoKePjzPGfOwGAqH8mMZ7tpoMvYhMhDJ5qgcme9gBhPIJ0TIlxtHBZbnLSwAVfZJE2s
	YC2IgN1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVAe-0001zp-HA; Mon, 21 Oct 2019 10:44:16 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVAN-0001x5-Jk
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:44:03 +0000
Received: by mail-wm1-x344.google.com with SMTP id f22so12248842wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 03:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=scLxrXB2JkKl6vta+3mTkAzs1I5wCAnHIXFyhshFKsc=;
 b=dysGK81OTtl6t75l0UEaZDJAkBvHfbMOONSr32fRuIoZnukYBsO03bIEDhFRqiRLuF
 1ETEdcHV+Uxpa9tn5lLintCYd1hQu3+wyFUWH+7+7Hhmh0yEBQOa5G22W5d1qIqA29lV
 416Z9dw+VYQcV/4MPjeU6oSSKLXxy/gb6+Yh7iKyPL1cCBdS7JR3gtCXDJjULMwSh9dT
 3zgirFv2ndbYtCiDgvDrMKG7ZF6iQJcRvTqo5hPvbCRUubbMCs4aI3wz1CsqSN6YEFnA
 E3/41go93Dw5cVjmfhOpEMVeGQJPGi2Oj8tRzI+EXfijisFpWvSyOByOzEi+lvvPSWJH
 23WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=scLxrXB2JkKl6vta+3mTkAzs1I5wCAnHIXFyhshFKsc=;
 b=ifWpJ1k8+g5QYrNluB7cCylABUk7LdnNqDfZ9nluRQTlO/R4YaDon6EWudYRlgyjka
 gc0VQNvHm9iI1sdTRQagjxhPig3ObQzCfb6PmjmRsVBNZWVc8nST4QnoeF2kBYN9dz6X
 Niov6hOt+lOE5MK1u0F3ZfqzebpUOnUzdUcruKSWE60BcTk/cau7yO775rrvf6NPLBpn
 GAKDwI08LXBJsyizS5i3zfC7MMtOB61QflhVgPigIxFF/kbLVQGa/tBcL4p/uWUgugp2
 lTF2HvF4QSQeCwjrMNdjCURxwYSpgskbVtT3ve2/KHa45EOF20u3Gn+tJJURC8cj2WST
 C2sw==
X-Gm-Message-State: APjAAAUhR+bTHqm11l3/UgZR4sEoZZZaRYsH/q+53N1XFvUoVvG/+y69
 32aE48tBa3QbSau/svEQs/ixZA==
X-Google-Smtp-Source: APXvYqyTGarYEKrL+o0UJk/nvWo3S5am2f5UZDs/T+KV0lTBla79+NMRHygXnrDNivC0+YnaU0B/kg==
X-Received: by 2002:a05:600c:387:: with SMTP id
 w7mr19099737wmd.138.1571654637571; 
 Mon, 21 Oct 2019 03:43:57 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q66sm15277735wme.39.2019.10.21.03.43.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 03:43:56 -0700 (PDT)
References: <1571382865-41978-1-git-send-email-jian.hu@amlogic.com>
 <1571382865-41978-2-git-send-email-jian.hu@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: clock: meson: add A1 clock controller
 bindings
In-reply-to: <1571382865-41978-2-git-send-email-jian.hu@amlogic.com>
Date: Mon, 21 Oct 2019 12:43:55 +0200
Message-ID: <1jv9sibcpg.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_034359_674411_9DCA3D60 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Fri 18 Oct 2019 at 09:14, Jian Hu <jian.hu@amlogic.com> wrote:

> Add the documentation to support Amlogic A1 clock driver,
> and add A1 clock controller bindings.
>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  .../devicetree/bindings/clock/amlogic,a1-clkc.yaml | 143
> +++++++++++++++++++++

Those are 2 different controllers, not variants.
One description (one file) per controller please

>  include/dt-bindings/clock/a1-clkc.h                |  98 ++++++++++++++
>  include/dt-bindings/clock/a1-pll-clkc.h            |  16 +++
>  3 files changed, 257 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
>  create mode 100644 include/dt-bindings/clock/a1-clkc.h
>  create mode 100644 include/dt-bindings/clock/a1-pll-clkc.h
>
> diff --git a/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
> new file mode 100644
> index 0000000..b382eebe
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
> @@ -0,0 +1,143 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
> +/*
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + */
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/clock/amlogic,a1-clkc.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic Meson A/C serials Clock Control Unit Device Tree Bindings
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +  - Jerome Brunet <jbrunet@baylibre.com>
> +  - Jian Hu <jian.hu@jian.hu.com>
> +
> +description: |+
> +  The clock controller node should be the child of a syscon node with the
> +  required property:
> +
> +  - compatible:         Should be one of the following:
> +                        "amlogic,meson-a-analog-sysctrl", "syscon", "simple-mfd"
> +                        "amlogic,meson-a-periphs-sysctrl", "syscon", "simple-mfd"
> +
> +  Refer to the the bindings described in
> +  Documentation/devicetree/bindings/mfd/syscon.txt
> +
> +properties:
> +  "#clock-cells":
> +    const: 1
> +  compatible:
> +    - enum:
> +        - amlogic,a1-periphs-clkc
> +        - amlogic,a1-pll-clkc
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 6
> +
> +  clock-names:
> +    minItems: 2
> +    maxItems: 6
> +
> +required:
> +  - "#clock-cells"
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +
> +if:
> +  properties:
> +    compatible:
> +      enum:
> +        - amlogic,a1-periphs-clkc
> +
> +then:
> +  properties:
> +    clocks:
> +      minItems: 2
> +      maxItems: 2
> +    items:
> +     - description: fixed pll gate clock
> +     - description: hifi pll gate clock
> +
> +    clock-names:
> +      minItems: 2
> +      maxItems: 2
> +      items:
> +        - const: xtal_fixpll
> +        - const: xtal_hifipll
> +
> +else:
> +  if:
> +    properties:
> +      compatible:
> +        const: amlogic,a1-pll-clkc
> +
> +  then:
> +    properties:
> +      clocks:
> +        minItems: 6
> +        maxItems: 6
> +        items:
> +         - description: Input fixed pll div2
> +         - description: Input fixed pll div3
> +         - description: Input fixed pll div5
> +         - description: Input fixed pll div7
> +         - description: Periph Hifi pll
> +         - description: Input Oscillator (usually at 24MHz)
> +
> +      clock-names:
> +        minItems: 6
> +        maxItems: 6
> +        items:
> +         - const: fclk_div2
> +         - const: fclk_div3
> +         - const: fclk_div5
> +         - const: fclk_div7
> +         - const: hifi_pll
> +         - const: xtal
> +
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    analog: system-controller@0 {
> +        compatible = "amlogic,meson-a-analog-sysctrl",
> +                     "simple-mfd", "syscon";
> +        reg = <0 0x7c00 0 0x21c>;
> +
> +        clkc_pll: pll-clock-controller {
> +                compatible = "amlogic,a1-pll-clkc";
> +                #clock-cells = <1>;
> +                clocks = <&clkc_periphs CLKID_XTAL_FIXPLL>,
> +                         <&clkc_periphs CLKID_XTAL_HIFIPLL>;
> +                clock-names = "xtal_fixpll", "xtal_hifipll";
> +        };
> +    };
> +
> +  - |
> +    periphs: system-controller@1 {
> +        compatible = "amlogic,meson-a-periphs-sysctrl",
> +                     "simple-mfd", "syscon";
> +        reg = <0 0x800 0 0x104>;
> +
> +        clkc_periphs: periphs-clock-controller {
> +                compatible = "amlogic,a1-periphs-clkc";
> +                #clock-cells = <1>;
> +                clocks = <&clkc_pll CLKID_FCLK_DIV2>,
> +                        <&clkc_pll CLKID_FCLK_DIV3>,
> +                        <&clkc_pll CLKID_FCLK_DIV5>,
> +                        <&clkc_pll CLKID_FCLK_DIV7>,
> +                        <&clkc_pll CLKID_HIFI_PLL>,
> +                        <&xtal>;
> +                clock-names = "fclk_div2", "fclk_div3", "fclk_div5",
> +                              "fclk_div7", "hifi_pll", "xtal";
> +        };
> +    };
> diff --git a/include/dt-bindings/clock/a1-clkc.h b/include/dt-bindings/clock/a1-clkc.h
> new file mode 100644
> index 0000000..1ba0112
> --- /dev/null
> +++ b/include/dt-bindings/clock/a1-clkc.h
> @@ -0,0 +1,98 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
> +/*
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + */
> +
> +#ifndef __A1_CLKC_H
> +#define __A1_CLKC_H
> +
> +#define CLKID_XTAL_FIXPLL			1
> +#define CLKID_XTAL_USB_PHY			2
> +#define CLKID_XTAL_USB_CTRL			3
> +#define CLKID_XTAL_HIFIPLL			4
> +#define CLKID_XTAL_SYSPLL			5
> +#define CLKID_XTAL_DDS				6
> +#define CLKID_SYS_CLK				7
> +#define CLKID_CLKTREE				8
> +#define CLKID_RESET_CTRL			9
> +#define CLKID_ANALOG_CTRL			10
> +#define CLKID_PWR_CTRL				11
> +#define CLKID_PAD_CTRL				12
> +#define CLKID_SYS_CTRL				13
> +#define CLKID_TEMP_SENSOR			14
> +#define CLKID_AM2AXI_DIV			15
> +#define CLKID_SPICC_B				16
> +#define CLKID_SPICC_A				17
> +#define CLKID_CLK_MSR				18
> +#define CLKID_AUDIO				19
> +#define CLKID_JTAG_CTRL				20
> +#define CLKID_SARADC				21
> +#define CLKID_PWM_EF				22
> +#define CLKID_PWM_CD				23
> +#define CLKID_PWM_AB				24
> +#define CLKID_CEC				25
> +#define CLKID_I2C_S				26
> +#define CLKID_IR_CTRL				27
> +#define CLKID_I2C_M_D				28
> +#define CLKID_I2C_M_C				29
> +#define CLKID_I2C_M_B				30
> +#define CLKID_I2C_M_A				31
> +#define CLKID_ACODEC				32
> +#define CLKID_OTP				33
> +#define CLKID_SD_EMMC_A				34
> +#define CLKID_USB_PHY				35
> +#define CLKID_USB_CTRL				36
> +#define CLKID_SYS_DSPB				37
> +#define CLKID_SYS_DSPA				38
> +#define CLKID_DMA				39
> +#define CLKID_IRQ_CTRL				40
> +#define CLKID_NIC				41
> +#define CLKID_GIC				42
> +#define CLKID_UART_C				43
> +#define CLKID_UART_B				44
> +#define CLKID_UART_A				45
> +#define CLKID_SYS_PSRAM				46
> +#define CLKID_RSA				47
> +#define CLKID_CORESIGHT				48
> +#define CLKID_AM2AXI_VAD			49
> +#define CLKID_AUDIO_VAD				50
> +#define CLKID_AXI_DMC				51
> +#define CLKID_AXI_PSRAM				52
> +#define CLKID_RAMB				53
> +#define CLKID_RAMA				54
> +#define CLKID_AXI_SPIFC				55
> +#define CLKID_AXI_NIC				56
> +#define CLKID_AXI_DMA				57
> +#define CLKID_CPU_CTRL				58
> +#define CLKID_ROM				59
> +#define CLKID_PROC_I2C				60
> +#define CLKID_DSPA_SEL				61
> +#define CLKID_DSPB_SEL				62
> +#define CLKID_DSPA_EN_DSPA			63
> +#define CLKID_DSPA_EN_NIC			64
> +#define CLKID_DSPB_EN_DSPB			65
> +#define CLKID_DSPB_EN_NIC			66
> +#define CLKID_RTC_CLK				67
> +#define CLKID_CECA_32K				68
> +#define CLKID_CECB_32K				69
> +#define CLKID_24M				70
> +#define CLKID_12M				71
> +#define CLKID_FCLK_DIV2_DIVN			72
> +#define CLKID_GEN				73
> +#define CLKID_SARADC_SEL			74
> +#define CLKID_SARADC_CLK			75
> +#define CLKID_PWM_A				76
> +#define CLKID_PWM_B				77
> +#define CLKID_PWM_C				78
> +#define CLKID_PWM_D				79
> +#define CLKID_PWM_E				80
> +#define CLKID_PWM_F				81
> +#define CLKID_SPICC				82
> +#define CLKID_TS				83
> +#define CLKID_SPIFC				84
> +#define CLKID_USB_BUS				85
> +#define CLKID_SD_EMMC				86
> +#define CLKID_PSRAM				87
> +#define CLKID_DMC				88
> +
> +#endif /* __A1_CLKC_H */
> diff --git a/include/dt-bindings/clock/a1-pll-clkc.h b/include/dt-bindings/clock/a1-pll-clkc.h
> new file mode 100644
> index 0000000..58eae23
> --- /dev/null
> +++ b/include/dt-bindings/clock/a1-pll-clkc.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
> +/*
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + */
> +
> +#ifndef __A1_PLL_CLKC_H
> +#define __A1_PLL_CLKC_H
> +
> +#define CLKID_FIXED_PLL				1
> +#define CLKID_FCLK_DIV2				6
> +#define CLKID_FCLK_DIV3				7
> +#define CLKID_FCLK_DIV5				8
> +#define CLKID_FCLK_DIV7				9
> +#define CLKID_HIFI_PLL				10
> +
> +#endif /* __A1_PLL_CLKC_H */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
