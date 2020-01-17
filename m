Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C742140E83
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 17:01:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6a5zLHBHDlUgyIZ4gpGTWITLHzgEXEZisbk9WjXGjcY=; b=EgkG0WotV27qZ0
	ejFme3TPJXN3lWHKwINdXjNlji9Ijq9FfjJZ1dNk6XlZe7hW9K8YTVfUsymOr5LbBptYGp9BXn9WZ
	oro52APkFVCDqWTe0GSj5ZCE4jJK7KyXLCNSUqx0+Lff7dssOepB2wuZN9iWaRXNiLdVsEFjuzTdL
	fJtSE1p7E1KTc2PbCXJ/25u+B/4lYmg5wEwkAaEcvMpa+8phkp4Gp8y/UIWOLc2ObepJhBODXdrNn
	GsleVc4WiZ6EYKpRdP1HA4XLpkpB0SZ4WiCYoB9h5qUy/eW6m0GrnBTkSvp8xNaj8MCfAXczXfYEa
	E/fsQoWZ4bj7sSi6bROA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isU3n-0003x7-1N; Fri, 17 Jan 2020 16:01:23 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isU3V-0003v4-GZ
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 16:01:09 +0000
Received: by mail-ot1-f65.google.com with SMTP id 59so22911579otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 08:01:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9YjOWHcSUNysBzRxkkQAKtwPDeVJSKmx0cjH2wrLKxw=;
 b=tY9fcb6rJs0Br6eNw4JgN4BedjYerkCPGT1G7wbqFhOL68/YkODn6D/KbXS7mQSHzZ
 5FwyYQnv6Y9N/dKp+z2Fd/ZxRiP8H8O8MHSbhMkG9D+RCPbnywy/hhuyNvpQvcxJZNYg
 c9QqPTvtq6NN4oCr8Mi9MMoPl7f3hIHSJFYkEYAgWgxRvCBYyk6hD2ztnCKinW7mFS9s
 Vl+WhNtHS8mvpsYtpVSdVEzST8PkBLODzsBSkKC1qjpswDg8+3wSS6s9psHmqrRpDdFS
 3fom4V85A/OOgS9gA3tkAov/qkWcKGyoPvcWpaFhX/tH5g45QzV8VLHW76J14N1V2kGu
 KIKA==
X-Gm-Message-State: APjAAAWter4c0ITIcF9HMJarVTvEEl7aE42UJz/vMRZT3qzfTDmDNls0
 N5BxLxlqjI/Hite/0bs+Sg==
X-Google-Smtp-Source: APXvYqwFfZx3DKzassUf5VACYaSuvaH8sPqyiBeyUSATwdh/vzrCN4qR+pmE/W35eZc8PVwt2YBmTw==
X-Received: by 2002:a05:6830:1047:: with SMTP id
 b7mr6888607otp.77.1579276864331; 
 Fri, 17 Jan 2020 08:01:04 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g61sm9020936otb.53.2020.01.17.08.01.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 08:01:03 -0800 (PST)
Received: (nullmailer pid 11611 invoked by uid 1000);
 Fri, 17 Jan 2020 16:01:02 -0000
Date: Fri, 17 Jan 2020 10:01:02 -0600
From: Rob Herring <robh@kernel.org>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH V5 1/5] dt-bindings: pinctrl: qcom: Add ipq6018 pinctrl
 bindings
Message-ID: <20200117160102.GA16177@bogus>
References: <1579160701-32408-1-git-send-email-sricharan@codeaurora.org>
 <1579160701-32408-2-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579160701-32408-2-git-send-email-sricharan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_080105_553742_87384386 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Thu, Jan 16, 2020 at 01:14:57PM +0530, Sricharan R wrote:
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
> [V5]
> * Addressed review comments from Rob
> * Ran dt bindings check and no errors were reported
>  .../bindings/pinctrl/qcom,ipq6018-pinctrl.yaml     | 162 +++++++++++++++++++++
>  1 file changed, 162 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
> new file mode 100644
> index 0000000..0622258
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
> @@ -0,0 +1,162 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
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

You can drop the description. Nothing here specific to this binding.

> +    maxItems: 1
> +
> +#PIN CONFIGURATION NODES
> +patternProperties:
> +  '.*-pin.*':

Ideally, this would be a bit more constrained. Such as '-pin$' or 
'-pinmux$'.

Note that '-pin' is equivalent to what you have.

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
> +          subnode. The valid values are gpio1-80, sdc1_clk, sdc1_cmd,
> +          sdc1_data, sdc2_clk, sdc2_cmd, sdc2_data, qdsd_cmd, qdsd_data0,
> +          qdsd_data1, qdsd_data2, qdsd_data3

Looks like constraints:

items:
  oneOf:
    - pattern: "^gpio([1-9]|[1-7][0-9]|80)$"
    - enum: [ sdc1_clk, sdc1_cmd, ... ]

> +        minItems: 1
> +        maxItems: 4
> +
> +      function:
> +        description:
> +          Specify the alternative function to be configured for the specified
> +          pins.
> +        enum: [ adsp_ext, alsp_int, atest_bbrx0, atest_bbrx1, atest_char,
> +          atest_char0, atest_char1, atest_char2, atest_char3, atest_combodac,
> +          atest_gpsadc0, atest_gpsadc1, atest_tsens, atest_wlan0,
> +          atest_wlan1, backlight_en, bimc_dte0, bimc_dte1, blsp1_i2c,
> +          blsp2_i2c, blsp3_i2c, blsp4_i2c, blsp5_i2c, blsp6_i2c,  blsp1_spi,
> +          blsp1_spi_cs1, blsp1_spi_cs2, blsp1_spi_cs3, blsp2_spi,
> +          blsp2_spi_cs1, blsp2_spi_cs2, blsp2_spi_cs3, blsp3_spi,
> +          blsp3_spi_cs1, blsp3_spi_cs2, blsp3_spi_cs3, blsp4_spi, blsp5_spi,
> +          blsp6_spi, blsp1_uart, blsp2_uart, blsp1_uim, blsp2_uim, cam1_rst,
> +          cam1_standby, cam_mclk0, cam_mclk1, cci_async, cci_i2c, cci_timer0,
> +          cci_timer1, cci_timer2, cdc_pdm0, codec_mad, dbg_out, display_5v,
> +          dmic0_clk, dmic0_data, dsi_rst, ebi0_wrcdc, euro_us, ext_lpass,
> +          flash_strobe, gcc_gp1_clk_a, gcc_gp1_clk_b, gcc_gp2_clk_a,
> +          gcc_gp2_clk_b, gcc_gp3_clk_a, gcc_gp3_clk_b, gpio, gsm0_tx0,
> +          gsm0_tx1, gsm1_tx0, gsm1_tx1, gyro_accl, kpsns0, kpsns1, kpsns2,
> +          ldo_en, ldo_update, mag_int, mdp_vsync, modem_tsync, m_voc,
> +          nav_pps, nav_tsync, pa_indicator, pbs0, pbs1, pbs2, pri_mi2s,
> +          pri_mi2s_ws, prng_rosc, pwr_crypto_enabled_a, pwr_crypto_enabled_b,
> +          pwr_modem_enabled_a,  pwr_modem_enabled_b, pwr_nav_enabled_a,
> +          pwr_nav_enabled_b, qdss_ctitrig_in_a0, qdss_ctitrig_in_a1,
> +          qdss_ctitrig_in_b0, qdss_ctitrig_in_b1, qdss_ctitrig_out_a0,
> +          qdss_ctitrig_out_a1, qdss_ctitrig_out_b0, qdss_ctitrig_out_b1,
> +          qdss_traceclk_a, qdss_traceclk_b, qdss_tracectl_a, qdss_tracectl_b,
> +          qdss_tracedata_a, qdss_tracedata_b, reset_n, sd_card, sd_write,
> +          sec_mi2s, smb_int, ssbi_wtr0, ssbi_wtr1, uim1, uim2, uim3,
> +          uim_batt, wcss_bt, wcss_fm, wcss_wlan, webcam1_rst ]
> +
> +      drive-strength:
> +        enum: [2, 4, 6, 8, 10, 12, 14, 16]
> +        default: 2
> +        description:
> +          Selects the drive strength for the specified pins, in mA.

> +
> +      bias-pull-down:
> +        type: boolean
> +        description: The specified pin should be configured as pull down.
> +
> +      bias-pull-up:
> +        type: boolean
> +        description: The specified pin should be configured as pull up.
> +
> +      bias-disable:
> +        type: boolean
> +        description: The specified pin should be configured as no pull.
> +
> +      output-high:
> +        type: boolean
> +        description: The specified pin is configured in output mode, driven
> +          high.
> +
> +      output-low:
> +        type: boolean
> +        description: The specified pin is configured in output mode, driven
> +          low.

No need to redefine the type and description on these 5 properties. Just 
a value of 'true' is enough.

> +
> +    required:
> +      - pins
> +      - function
> +
> +    additionalProperties: false
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
> +additionalProperties: false
> +
> +examples:
> +  - |
> +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> +        tlmm: pinctrl@1000000 {
> +              compatible = "qcom,ipq6018-pinctrl";
> +              reg = <0x01000000 0x300000>;
> +              interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
> +              interrupt-controller;
> +              #interrupt-cells = <2>;
> +              gpio-controller;
> +              #gpio-cells = <2>;
> +              gpio-ranges = <&tlmm 0 80>;
> +
> +              serial3-pinmux {
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
