Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F22130D25
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 06:25:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffJAg98RmN0ReC4XmKDzFWtNfNoucBEpwpbjLsSp9oU=; b=IadoEQ0zxlPPXo
	S3FPtWfO0xHFevPfByh4RcWnvepYs1MK+++zJcv4/1VjT6mSn7ZkDGtU/27J+qR0pzhTr1Lpjdno4
	jjH2I9fB2kafWpyPXcWoxNKTwToTS14FmWx3rzo0sLJnu2p4KD8rsV4hxcddck6BWoAT2dqDrbDnF
	wk/P82wdkdt59LZsMFiL5JjMuMyJmEOaKGxlXgDBNusF1Zz6yo3DPDzPKjbeoarljP7rZTslrT7ek
	s12r8/0dZjPUFT3iSBfq+HOGT7FE9aT83H05aLSjGxjzw9BRMOrz9NBYyGUaoi/n3oml40CHFc8nm
	r3nIobwAnp/Xbu7SO81g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioKtM-0002GJ-JG; Mon, 06 Jan 2020 05:25:28 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioKtE-0002FJ-Nb
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 05:25:23 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578288321; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=mze9oFHUpNa6Z+8qwqijLBz6OSr9etD6jEGkkwSvmwE=;
 b=xiY5HBXhVUUXbZxRB58+7wcVSGRZHoKjTCIY9q+x59qSXDR0lkrAHz8ktiSBBDzNuAIwJBxf
 A911b7a/nVPLT0Xpc147U9LnjVbUplKXiabNlbxSQyRq7fWZZPdcnlfYxgBSqFYTtzM8f0+f
 XP9WZVtBJfOLiG3V77EzTTdBNAM=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e12c4ba.7f623b4387a0-smtp-out-n03;
 Mon, 06 Jan 2020 05:25:14 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id BB440C43383; Mon,  6 Jan 2020 05:25:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.201.2.161]
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sricharan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9B91DC433CB;
 Mon,  6 Jan 2020 05:25:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 9B91DC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH V3 1/5] dt-bindings: pinctrl: qcom: Add ipq6018 pinctrl
 bindings
To: Rob Herring <robh@kernel.org>
References: <1578052177-6778-1-git-send-email-sricharan@codeaurora.org>
 <1578052177-6778-2-git-send-email-sricharan@codeaurora.org>
 <20200104005834.GA22707@bogus>
From: Sricharan R <sricharan@codeaurora.org>
Message-ID: <3a98d701-3400-dc46-167c-214a68ff9c04@codeaurora.org>
Date: Mon, 6 Jan 2020 10:55:01 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200104005834.GA22707@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_212521_353229_B4A8E196 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, agross@kernel.org, sivaprak@codeaurora.org,
 linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,
  Thanks for the review.

On 1/4/2020 6:28 AM, Rob Herring wrote:
> On Fri, Jan 03, 2020 at 05:19:33PM +0530, Sricharan R wrote:
>> Add device tree binding Documentation details for ipq6018
>> pinctrl driver.
>>
>> Co-developed-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
>> Signed-off-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
>> Co-developed-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
>> Signed-off-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
>> Co-developed-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
>> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
>> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
>> ---
>>  [v3] Fixed the example dt node, inherited properties
>>
>>  .../bindings/pinctrl/qcom,ipq6018-pinctrl.yaml     | 166 +++++++++++++++++++++
>>  1 file changed, 166 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
>> new file mode 100644
>> index 0000000..e959c5f
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
>> @@ -0,0 +1,166 @@
>> +# SPDX-License-Identifier: GPL-2.0-or-later
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/pinctrl/qcom,ipq6018-pinctrl.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm Technologies, Inc. IPQ6018 TLMM block
>> +
>> +maintainers:
>> +  - Sricharan R <sricharan@codeaurora.org>
>> +
>> +description: |
>> +  This binding describes the Top Level Mode Multiplexer block found in the
>> +  IPQ6018 platform.
>> +
>> +properties:
>> +  compatible:
>> +    const: qcom,ipq6018-pinctrl
> 
> A blank line after each property schema is preferred.

 ok.

> 
>> +  reg:
>> +    maxItems: 1
>> +  interrupts:
>> +    Description: Specifies the TLMM summary IRQ
>> +    maxItems: 1
>> +  interrupt-controller: true
>> +  '#interrupt-cells':
>> +    Description:
>> +      Specifies the PIN numbers and Flags, as defined in defined in
>> +      include/dt-bindings/interrupt-controller/irq.h
>> +    const: 2
>> +  gpio-controller: true
>> +  '#gpio-cells':
>> +    Description: Specifying the pin number and flags, as defined in
>> +      include/dt-bindings/gpio/gpio.h
>> +    const: 2
>> +  gpio-ranges:
>> +    Description: Documentation/devicetree/bindings/gpio/gpio.txt
>> +    maxItems: 1
>> +
>> +#PIN CONFIGURATION NODES
>> +patternProperties:
>> +  '-pins$':
>> +    type: object
>> +    Description:
>> +      Pinctrl node's client devices use subnodes for desired pin configuration.
>> +      Client device subnodes use below standard properties.
>> +
>> +    Properties:
> 
> Did you run 'make dt_binding_check' and is dt-schema up to date? This 
> isn't valid json-schema which is case sensitive.

 ok, will run the checks and will fix it.

> 
>> +      pins:
>> +        allOf:
>> +          $ref: /schemas/types.yaml#/definitions/string
> 
> Also not valid as allOf is a list.
> 

 ok, will fix
>> +          enum:
>> +            gpio0-gpio80
> 
> As is 'enum'...

 ok.

> 
>> +            sdc1_clk
>> +            sdc1_cmd
>> +            sdc1_data
>> +            sdc2_clk
>> +            sdc2_cmd
>> +            sdc2_data
>> +            qdsd_cmd
>> +            qdsd_data0
>> +            qdsd_data1
>> +            qdsd_data2
>> +            qdsd_data3
>> +        Description:
>> +          List of gpio pins affected by the properties specified in this
>> +          subnode.
>> +
>> +      function:
>> +        allOf:
>> +          $ref: /schemas/types.yaml#/definitions/string
>> +          enum:
>> +            adsp_ext, alsp_int, atest_bbrx0, atest_bbrx1, atest_char,
>> +            atest_char0, atest_char1, atest_char2, atest_char3, atest_combodac,
>> +            atest_gpsadc0, atest_gpsadc1, atest_tsens, atest_wlan0,
>> +            atest_wlan1, backlight_en, bimc_dte0, bimc_dte1, blsp_i2c1,
>> +            blsp_i2c2, blsp_i2c3, blsp_i2c4, blsp_i2c5, blsp_i2c6,  blsp_spi1,
>> +            blsp_spi1_cs1, blsp_spi1_cs2, blsp_spi1_cs3, blsp_spi2,
>> +            blsp_spi2_cs1, blsp_spi2_cs2, blsp_spi2_cs3, blsp_spi3,
>> +            blsp_spi3_cs1, blsp_spi3_cs2, blsp_spi3_cs3, blsp_spi4, blsp_spi5,
>> +            blsp_spi6, blsp_uart1, blsp_uart2, blsp_uim1, blsp_uim2, cam1_rst,
>> +            cam1_standby, cam_mclk0, cam_mclk1, cci_async, cci_i2c, cci_timer0,
>> +            cci_timer1, cci_timer2, cdc_pdm0, codec_mad, dbg_out, display_5v,
>> +            dmic0_clk, dmic0_data, dsi_rst, ebi0_wrcdc, euro_us, ext_lpass,
>> +            flash_strobe, gcc_gp1_clk_a, gcc_gp1_clk_b, gcc_gp2_clk_a,
>> +            gcc_gp2_clk_b, gcc_gp3_clk_a, gcc_gp3_clk_b, gpio, gsm0_tx0,
>> +            gsm0_tx1, gsm1_tx0, gsm1_tx1, gyro_accl, kpsns0, kpsns1, kpsns2,
>> +            ldo_en, ldo_update, mag_int, mdp_vsync, modem_tsync, m_voc,
>> +            nav_pps, nav_tsync, pa_indicator, pbs0, pbs1, pbs2, pri_mi2s,
>> +            pri_mi2s_ws, prng_rosc, pwr_crypto_enabled_a, pwr_crypto_enabled_b,
>> +            pwr_modem_enabled_a,  pwr_modem_enabled_b, pwr_nav_enabled_a,
>> +            pwr_nav_enabled_b, qdss_ctitrig_in_a0, qdss_ctitrig_in_a1,
>> +            qdss_ctitrig_in_b0, qdss_ctitrig_in_b1, qdss_ctitrig_out_a0,
>> +            qdss_ctitrig_out_a1, qdss_ctitrig_out_b0, qdss_ctitrig_out_b1,
>> +            qdss_traceclk_a, qdss_traceclk_b, qdss_tracectl_a, qdss_tracectl_b,
>> +            qdss_tracedata_a, qdss_tracedata_b, reset_n, sd_card, sd_write,
>> +            sec_mi2s, smb_int, ssbi_wtr0, ssbi_wtr1, uim1, uim2, uim3,
>> +            uim_batt, wcss_bt, wcss_fm, wcss_wlan, webcam1_rst
>> +        Description:
>> +          Specify the alternative function to be configured for the specified
>> +          pins.
>> +      bias-disable:
>> +        allOf:
>> +          $ref: /schemas/pinctrl/pincfg-node.yaml
> 
> While you should have this reference, it is at the wrong level. The node 
> needs to reference this schema, not the properties.
> 

  ok, will fix here and below properties as well.

Regards,
 Sricharan



>> +        Description:
>> +          The specified pins should be configured as no pull.
>> +      bias-pull-down:
>> +        allOf:
>> +          $ref: /schemas/pinctrl/pincfg-node.yaml
>> +        Description:
>> +          The specified pins should be configured as pull down.
>> +      bias-pull-up:
>> +        allOf:
>> +          $ref: /schemas/pinctrl/pincfg-node.yaml
>> +        Description:
>> +          The specified pins should be configured as pull up.
>> +      output-high:
>> +        allOf:
>> +          $ref: /schemas/pinctrl/pincfg-node.yaml
>> +        Description:
>> +          The specified pins are configured in output mode, driven high.
>> +          This option is not available for sdc pins.
>> +      output-low:
>> +        allOf:
>> +          $ref: /schemas/pinctrl/pincfg-node.yaml
>> +        Description:
>> +          The specified pins are configured in output mode, driven low.
>> +          This option is not available for sdc pins.
>> +      drive-strength:
>> +        allOf:
>> +          $ref: /schemas/types.yaml#/definitions/uint32
>> +          enum: [2, 4, 6, 8, 10, 12, 14, 16]
>> +        Description:
>> +          Selects the drive strength for the specified pins, in mA.
>> +
>> +    required:
>> +      - pins
>> +      - function
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - interrupt-controller
>> +  - '#interrupt-cells'
>> +  - gpio-controller
>> +  - '#gpio-cells'
>> +  - gpio-ranges
>> +
>> +example:
>> +        tlmm: pinctrl@1000000 {
>> +                compatible = "qcom,ipq6018-pinctrl";
>> +                reg = <0x01000000 0x300000>;
>> +                interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
>> +                gpio-controller;
>> +                #gpio-cells = <2>;
>> +                gpio-ranges = <&tlmm 0 80>;
>> +                interrupt-controller;
>> +                #interrupt-cells = <2>;
>> +
>> +                serial_3_pins: serial3-pinmux {
>> +                        pins = "gpio44", "gpio45";
>> +                        function = "blsp2_uart";
>> +                        drive-strength = <8>;
>> +                        bias-pull-down;
>> +                };
>> +       };
>> -- 
>> 1.9.1
>>

-- 
"QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
