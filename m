Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5023D139CE5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 23:49:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D97mXBpfm61Av1g5O80/h2ewXKVzYLdceeaj+ZBtnzI=; b=lUMVdKQSTx+mwO
	Bjb+bHwz5/q52kt2l5VDC7bHRbp65otj7FZoNqAsdd90xf2Irk0bLCQI79Iv5Gpv0Acj43j3e6SzP
	KG0nqnTpEF4KqUbM55pAHJjyHdDbBzWM8fZD7ylw4ia4HNwTgspHof+Z5sYJvrqIgVHZ094+RfxBB
	19ZKJcZpxWh2ygQMEHDXtX2cmMycusKsF3jpjVGC+OpICtRJqAS0axdRzr3Y3/fIa09CpLFUnFh4x
	zIPi5AkdvCR6QoukG1qvYu7Xosv1kAVMAPC2MdW6PNEh1TSLxFkuzyDXJcNd0ArxSWIon/Fn/3GcF
	3S3NlRpScEyvglfbI86w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir8Wp-00075I-59; Mon, 13 Jan 2020 22:49:47 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir8We-00074R-ND
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 22:49:38 +0000
Received: by mail-ot1-f66.google.com with SMTP id k14so10664832otn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 14:49:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=d92edK8gFTbOFbSb35yOpvJiXQiIjLwjdCA40NY3Mdo=;
 b=PR0v7UgZ/Uwto5qu4zBlMJ93UzT6rpetXa6oHooRMbKm8R5cqfBRqHYve//ZBCQ8l3
 TwQKwzsHE+3iT02HDzA+OzJTvH2LJoSN4+H8hVCt2godrHBM6OuLkufyT3LINEujvg5u
 plbG5tRnjFhDHaDGu61rR/hdSe8QWTK0f64FtITLyjotFPLYtRn6Y+Ra8RLvbWdW3LhO
 CJZzL2spnos7s/tX2i8T2fppg2dAX3qhuy271GLDwZ/TynWvB29Mbxcbauawlhx2bj4Y
 4Eb807t4qB6Nx1NXM1RRnloJRRxq8fkpeF6LifshOk4Bn3pF12WccEzyfkhVM5IeIwRM
 iV2A==
X-Gm-Message-State: APjAAAUwtTzuVv7Oge9rDL/iQ2jJ6pEmXF9WgHN8QqzgLc85x+oJxNyE
 FcqoMyLDdxFeYuDwHO1/qqjEi1k=
X-Google-Smtp-Source: APXvYqy9scq85nH1D4RBlsM7to0JYCN30vOmpiXpUBDdB2RO7DTbFRsfVaThgvQbHilHZff5tzSBzA==
X-Received: by 2002:a9d:ed5:: with SMTP id 79mr14828192otj.72.1578955773584;
 Mon, 13 Jan 2020 14:49:33 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e17sm4645143otq.58.2020.01.13.14.49.31
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 14:49:32 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 22198d
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 13 Jan 2020 16:49:31 -0600
Date: Mon, 13 Jan 2020 16:49:31 -0600
From: Rob Herring <robh@kernel.org>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH V4 1/5] dt-bindings: pinctrl: qcom: Add ipq6018 pinctrl
 bindings
Message-ID: <20200113224931.GA1297@bogus>
References: <1578561543-23132-1-git-send-email-sricharan@codeaurora.org>
 <1578561543-23132-2-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578561543-23132-2-git-send-email-sricharan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_144936_759258_71352E6E 
X-CRM114-Status: GOOD (  18.39  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Rajkumar Ayyasamy <arajkuma@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org,
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 linux-gpio@vger.kernel.org, agross@kernel.org, sivaprak@codeaurora.org,
 linux-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 02:48:59PM +0530, Sricharan R wrote:
> Add device tree binding Documentation details for ipq6018
> pinctrl driver.
> 
> Co-developed-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
> Signed-off-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
> Co-developed-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
> Signed-off-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
> Co-developed-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> ---
> [V4]
>   * cleaned-up schema as per Rob's comments.
>   * Ran make dt_binding_check and no issues.
> 
>  .../bindings/pinctrl/qcom,ipq6018-pinctrl.yaml     | 140 +++++++++++++++++++++
>  1 file changed, 140 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
> new file mode 100644
> index 0000000..68c3c8c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
> @@ -0,0 +1,140 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later

Dual license please.

(GPL-2.0-only or BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/qcom,ipq6018-pinctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Technologies, Inc. IPQ6018 TLMM block
> +
> +maintainers:
> +  - Sricharan R <sricharan@codeaurora.org>
> +
> +description: |
> +  This binding describes the Top Level Mode Multiplexer block found in the
> +  IPQ6018 platform.
> +
> +properties:
> +  compatible:
> +    const: qcom,ipq6018-pinctrl
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    description: Specifies the TLMM summary IRQ
> +    maxItems: 1
> +
> +  interrupt-controller: true
> +
> +  '#interrupt-cells':
> +    description:
> +      Specifies the PIN numbers and Flags, as defined in defined in
> +      include/dt-bindings/interrupt-controller/irq.h
> +    const: 2
> +
> +  gpio-controller: true
> +
> +  '#gpio-cells':
> +    description: Specifying the pin number and flags, as defined in
> +      include/dt-bindings/gpio/gpio.h
> +    const: 2
> +
> +  gpio-ranges:
> +    description: Documentation/devicetree/bindings/gpio/gpio.txt
> +    maxItems: 1
> +
> +#PIN CONFIGURATION NODES
> +patternProperties:
> +  '-pins$':
> +    type: object
> +    description:
> +      Pinctrl node's client devices use subnodes for desired pin configuration.
> +      Client device subnodes use below standard properties.
> +    allOf:
> +      - $ref: "/schemas/pinctrl/pincfg-node.yaml"
> +
> +    properties:
> +      pins:
> +        description:
> +          List of gpio pins affected by the properties specified in this
> +          subnode.
> +        allOf:
> +          - $ref: "/schemas/types.yaml#/definitions/string"

No need for type ref as the common binding does this.

> +          - enum: ['gpio$', sdc1_clk, sdc1_cmd, sdc1_data, sdc2_clk, sdc2_cmd,
> +            sdc2_data, qdsd_cmd, qdsd_data0, qdsd_data1, qdsd_data2,
> +            qdsd_data3]
> +
> +      function:
> +        description:
> +          Specify the alternative function to be configured for the specified
> +          pins.
> +        allOf:
> +          - $ref: "/schemas/types.yaml#/definitions/string"

Same here.

> +          - enum: [ adsp_ext, alsp_int, atest_bbrx0, atest_bbrx1, atest_char,
> +            atest_char0, atest_char1, atest_char2, atest_char3, atest_combodac,
> +            atest_gpsadc0, atest_gpsadc1, atest_tsens, atest_wlan0,
> +            atest_wlan1, backlight_en, bimc_dte0, bimc_dte1, blsp_i2c1,
> +            blsp_i2c2, blsp_i2c3, blsp_i2c4, blsp_i2c5, blsp_i2c6,  blsp_spi1,
> +            blsp_spi1_cs1, blsp_spi1_cs2, blsp_spi1_cs3, blsp_spi2,
> +            blsp_spi2_cs1, blsp_spi2_cs2, blsp_spi2_cs3, blsp_spi3,
> +            blsp_spi3_cs1, blsp_spi3_cs2, blsp_spi3_cs3, blsp_spi4, blsp_spi5,
> +            blsp_spi6, blsp_uart1, blsp_uart2, blsp_uim1, blsp_uim2, cam1_rst,
> +            cam1_standby, cam_mclk0, cam_mclk1, cci_async, cci_i2c, cci_timer0,
> +            cci_timer1, cci_timer2, cdc_pdm0, codec_mad, dbg_out, display_5v,
> +            dmic0_clk, dmic0_data, dsi_rst, ebi0_wrcdc, euro_us, ext_lpass,
> +            flash_strobe, gcc_gp1_clk_a, gcc_gp1_clk_b, gcc_gp2_clk_a,
> +            gcc_gp2_clk_b, gcc_gp3_clk_a, gcc_gp3_clk_b, gpio, gsm0_tx0,
> +            gsm0_tx1, gsm1_tx0, gsm1_tx1, gyro_accl, kpsns0, kpsns1, kpsns2,
> +            ldo_en, ldo_update, mag_int, mdp_vsync, modem_tsync, m_voc,
> +            nav_pps, nav_tsync, pa_indicator, pbs0, pbs1, pbs2, pri_mi2s,
> +            pri_mi2s_ws, prng_rosc, pwr_crypto_enabled_a, pwr_crypto_enabled_b,
> +            pwr_modem_enabled_a,  pwr_modem_enabled_b, pwr_nav_enabled_a,
> +            pwr_nav_enabled_b, qdss_ctitrig_in_a0, qdss_ctitrig_in_a1,
> +            qdss_ctitrig_in_b0, qdss_ctitrig_in_b1, qdss_ctitrig_out_a0,
> +            qdss_ctitrig_out_a1, qdss_ctitrig_out_b0, qdss_ctitrig_out_b1,
> +            qdss_traceclk_a, qdss_traceclk_b, qdss_tracectl_a, qdss_tracectl_b,
> +            qdss_tracedata_a, qdss_tracedata_b, reset_n, sd_card, sd_write,
> +            sec_mi2s, smb_int, ssbi_wtr0, ssbi_wtr1, uim1, uim2, uim3,
> +            uim_batt, wcss_bt, wcss_fm, wcss_wlan, webcam1_rst ]
> +
> +      drive-strength:
> +        allOf:
> +          - $ref: "/schemas/types.yaml#/definitions/uint32"

Same here.

> +          - enum: [2, 4, 6, 8, 10, 12, 14, 16]

default?

> +        description:
> +          Selects the drive strength for the specified pins, in mA.

> +
> +    required:
> +      - pins
> +      - function

       additionalProperties: false

You'll need to list any other properties you use. Based 
on the example, you'll need 'bias-pull-down: true'.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-controller
> +  - '#interrupt-cells'
> +  - gpio-controller
> +  - '#gpio-cells'
> +  - gpio-ranges

additionalProperties: false

> +
> +examples:
> +  - |
> +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> +        tlmm: pinctrl@1000000 {
> +              compatible = "qcom,ipq6018-pinctrl";
> +              reg = <0x01000000 0x300000>;
> +              interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
> +              gpio-controller;
> +              #gpio-cells = <2>;
> +              gpio-ranges = <&tlmm 0 80>;
> +              interrupt-controller;
> +              #interrupt-cells = <2>;
> +
> +              serial3-pinmux {

Doesn't match the schema.

> +                      pins = "gpio44", "gpio45";
> +                      function = "blsp2_uart";
> +                      drive-strength = <8>;
> +                      bias-pull-down;
> +              };
> +        };
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
