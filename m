Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BB912FFD7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 01:58:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCLvSzHpNuS74K6Ky8S568OZ9DNeYNRtvbyLtZlUYx8=; b=Fg7jkZ5ro1Fm6/
	IT61p8pom9etjyP+nyhBoiCL5B7WrFfGFu9VdXPerP7oE20oiHkw/SnX8BnEi/TlpozTVRRFBZEsU
	0x+aBGNN3psOHGdBPIsW/1rqLmtndNLFC3Tl1f8zXZUryMhfM5Rn7N5MJN4f3rxMdD9M1lqlgrKfv
	FzpNsOIZMqgZM+Vri3/XA11OZepVorD8OucBayO/X4T+GH8cWHapkWT7FS1h5hduWxOQRb962hzdK
	4WXCorvmWOtpIEBVk7MKiD4wCiH+XxH1wchNAhBW+Zwp7Angez65DcPfdDlaQCzpK+tJ3j5t6/6OZ
	at1TWUgTG6eVy66gUWNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inXm6-0003nT-LN; Sat, 04 Jan 2020 00:58:42 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inXm0-0003n6-SO
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 00:58:38 +0000
Received: by mail-il1-f195.google.com with SMTP id s15so38090277iln.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 16:58:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6s7suD5k8r1P5lVpjFiz2sSeu2tVOfFmrag2vYJ1rvY=;
 b=SGGyF2Wv1nmEV6+c72HnSHu7RIpbdsjCz8Z1G+8ZUqCtDcosEHMeb6tj6J/d0DQIq+
 6iqY0X57NMafCdlOl2PcRfhDjzLqKfJSWnF26YypoLpEEoCq6QIKepycDBOgFZ35fu4J
 ILlq3UnHD8NBsALl2SfcW3uS+NFvWbblq6qyCFLdyvN11bKdBNPL6rrvr8Ickff5gg9C
 pbpNPoQSPTJN7meQYp9UF6aiKzo6RVtw0kbUBG6zLkonSqs9vOzgvD3mkCC9VBrYVj8O
 JZxdR1FBvMWKRtdeelejMhsVNeOTYS6Tq8r659fGtiEE0Z6+6YUcBUVckq7Jkz1/PG78
 P7qg==
X-Gm-Message-State: APjAAAWbOg3lvy7CzpOJb5k/LhFssHCEMUg5oFvir7SQF+cyArNmnCdb
 XhECoP+AcMc+q8Pr4Q26V0z2iC0=
X-Google-Smtp-Source: APXvYqw3dBMWOWTo+HYtHjxKwRjQTXl3RRGR2DQOQXqjOUIsfhIAaRNGi0Ld7vhafb5+y842qBgEJA==
X-Received: by 2002:a92:884e:: with SMTP id h75mr78067591ild.199.1578099515748; 
 Fri, 03 Jan 2020 16:58:35 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id n22sm15249301iog.14.2020.01.03.16.58.34
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 16:58:35 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219a5
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Fri, 03 Jan 2020 17:58:34 -0700
Date: Fri, 3 Jan 2020 17:58:34 -0700
From: Rob Herring <robh@kernel.org>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH V3 1/5] dt-bindings: pinctrl: qcom: Add ipq6018 pinctrl
 bindings
Message-ID: <20200104005834.GA22707@bogus>
References: <1578052177-6778-1-git-send-email-sricharan@codeaurora.org>
 <1578052177-6778-2-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578052177-6778-2-git-send-email-sricharan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_165836_952690_510C3B95 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, agross@kernel.org, sivaprak@codeaurora.org,
 linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 03, 2020 at 05:19:33PM +0530, Sricharan R wrote:
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
>  [v3] Fixed the example dt node, inherited properties
> 
>  .../bindings/pinctrl/qcom,ipq6018-pinctrl.yaml     | 166 +++++++++++++++++++++
>  1 file changed, 166 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
> new file mode 100644
> index 0000000..e959c5f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
> @@ -0,0 +1,166 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later
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

A blank line after each property schema is preferred.

> +  reg:
> +    maxItems: 1
> +  interrupts:
> +    Description: Specifies the TLMM summary IRQ
> +    maxItems: 1
> +  interrupt-controller: true
> +  '#interrupt-cells':
> +    Description:
> +      Specifies the PIN numbers and Flags, as defined in defined in
> +      include/dt-bindings/interrupt-controller/irq.h
> +    const: 2
> +  gpio-controller: true
> +  '#gpio-cells':
> +    Description: Specifying the pin number and flags, as defined in
> +      include/dt-bindings/gpio/gpio.h
> +    const: 2
> +  gpio-ranges:
> +    Description: Documentation/devicetree/bindings/gpio/gpio.txt
> +    maxItems: 1
> +
> +#PIN CONFIGURATION NODES
> +patternProperties:
> +  '-pins$':
> +    type: object
> +    Description:
> +      Pinctrl node's client devices use subnodes for desired pin configuration.
> +      Client device subnodes use below standard properties.
> +
> +    Properties:

Did you run 'make dt_binding_check' and is dt-schema up to date? This 
isn't valid json-schema which is case sensitive.

> +      pins:
> +        allOf:
> +          $ref: /schemas/types.yaml#/definitions/string

Also not valid as allOf is a list.

> +          enum:
> +            gpio0-gpio80

As is 'enum'...

> +            sdc1_clk
> +            sdc1_cmd
> +            sdc1_data
> +            sdc2_clk
> +            sdc2_cmd
> +            sdc2_data
> +            qdsd_cmd
> +            qdsd_data0
> +            qdsd_data1
> +            qdsd_data2
> +            qdsd_data3
> +        Description:
> +          List of gpio pins affected by the properties specified in this
> +          subnode.
> +
> +      function:
> +        allOf:
> +          $ref: /schemas/types.yaml#/definitions/string
> +          enum:
> +            adsp_ext, alsp_int, atest_bbrx0, atest_bbrx1, atest_char,
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
> +            uim_batt, wcss_bt, wcss_fm, wcss_wlan, webcam1_rst
> +        Description:
> +          Specify the alternative function to be configured for the specified
> +          pins.
> +      bias-disable:
> +        allOf:
> +          $ref: /schemas/pinctrl/pincfg-node.yaml

While you should have this reference, it is at the wrong level. The node 
needs to reference this schema, not the properties.

> +        Description:
> +          The specified pins should be configured as no pull.
> +      bias-pull-down:
> +        allOf:
> +          $ref: /schemas/pinctrl/pincfg-node.yaml
> +        Description:
> +          The specified pins should be configured as pull down.
> +      bias-pull-up:
> +        allOf:
> +          $ref: /schemas/pinctrl/pincfg-node.yaml
> +        Description:
> +          The specified pins should be configured as pull up.
> +      output-high:
> +        allOf:
> +          $ref: /schemas/pinctrl/pincfg-node.yaml
> +        Description:
> +          The specified pins are configured in output mode, driven high.
> +          This option is not available for sdc pins.
> +      output-low:
> +        allOf:
> +          $ref: /schemas/pinctrl/pincfg-node.yaml
> +        Description:
> +          The specified pins are configured in output mode, driven low.
> +          This option is not available for sdc pins.
> +      drive-strength:
> +        allOf:
> +          $ref: /schemas/types.yaml#/definitions/uint32
> +          enum: [2, 4, 6, 8, 10, 12, 14, 16]
> +        Description:
> +          Selects the drive strength for the specified pins, in mA.
> +
> +    required:
> +      - pins
> +      - function
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
> +
> +example:
> +        tlmm: pinctrl@1000000 {
> +                compatible = "qcom,ipq6018-pinctrl";
> +                reg = <0x01000000 0x300000>;
> +                interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
> +                gpio-controller;
> +                #gpio-cells = <2>;
> +                gpio-ranges = <&tlmm 0 80>;
> +                interrupt-controller;
> +                #interrupt-cells = <2>;
> +
> +                serial_3_pins: serial3-pinmux {
> +                        pins = "gpio44", "gpio45";
> +                        function = "blsp2_uart";
> +                        drive-strength = <8>;
> +                        bias-pull-down;
> +                };
> +       };
> -- 
> 1.9.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
