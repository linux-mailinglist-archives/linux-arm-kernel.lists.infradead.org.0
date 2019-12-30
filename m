Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A9912CE13
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 10:13:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KkLvwGekh3KXRsA29gBbJlgI8Y+vFBkXbxiD8vMExck=; b=Qqb7+zFIuFWXf9
	wqdVZTMyjBNepkC62q5CIpJa82DJSpqmU49QUlAwQXeLwZDQxMwoFWqzklR4FbO60FbhBooEgUJ8C
	mXcaGl7GFo1xWddHKGfP5TzpG//6oINIc3/sDBVXaSReteQw2R+4AoWrxzMo134WGc5c9bDHMz+/r
	i53KRtcLrfJS2mlSXb43vWSONV1HtBPOzrsXGSeYPTRXWo3C6xb1nKtTzcH8IPYQ7ioWXZeb7Q6Nj
	mZYgan3AhAMOBXqtBea9sEDwO+qrOZi+CXBXRcDhhk+RIQBjntd5RYKftr6gWQLBP9xAyM/UGfyes
	8/KLVMy3m376CCEe51xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilr6l-0006Ec-Et; Mon, 30 Dec 2019 09:13:03 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilr6Z-0006Ds-Nn
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 09:12:54 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577697172; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=L9Vu5nllDxeLPVYsgWa1F5+XK4kB9hG/w0HCoJugAaA=;
 b=OA07vkefLhbpaaHUnjTRzKpsqOvC9uK2UCyqMGP7KUb8QfxDnW72hsYJqqaMfMXKdmtvvtaK
 y8WcGNSZMqHhXch3VJtoH/sqyg+az3a8wL9vzVwTC1tMjOpB7vELi3MFJv6NpPj6FsjiYxrz
 Rj+i3FP0q/Py06Ci4uCetAQSz+c=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e09bf8f.7fb720f8a3b0-smtp-out-n02;
 Mon, 30 Dec 2019 09:12:47 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 2B262C4479F; Mon, 30 Dec 2019 09:12:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.201.2.161]
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sricharan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6A3ACC433CB;
 Mon, 30 Dec 2019 09:12:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6A3ACC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH V2 1/7] dt-bindings: pinctrl: qcom: Add ipq6018 pinctrl
 bindings
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <1576752109-24497-1-git-send-email-sricharan@codeaurora.org>
 <1576752109-24497-2-git-send-email-sricharan@codeaurora.org>
 <20191229034126.GO3755841@builder>
From: Sricharan R <sricharan@codeaurora.org>
Message-ID: <8dd32c3f-aee4-cedf-bad4-ea3b2864980e@codeaurora.org>
Date: Mon, 30 Dec 2019 14:42:38 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191229034126.GO3755841@builder>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_011253_005901_94FA393A 
X-CRM114-Status: GOOD (  20.64  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org, agross@kernel.org,
 sivaprak@codeaurora.org, linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

On 12/29/2019 9:11 AM, Bjorn Andersson wrote:
> On Thu 19 Dec 02:41 PST 2019, Sricharan R wrote:
> 
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
>>
>> [V2] Splitted dt bindings and driver into different patches. Added missing bindings,
>>      and some style changes.
>>
>>  .../bindings/pinctrl/qcom,ipq6018-pinctrl.yaml     | 172 +++++++++++++++++++++
>>  1 file changed, 172 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
>> new file mode 100644
>> index 0000000..745a11e
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
>> @@ -0,0 +1,172 @@
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
>> +      pins:
>> +        allOf:
>> +          $ref: /schemas/types.yaml#/definitions/string
>> +          enum:
>> +            gpio0-gpio80
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
> 
> Is there any way to inherit these from some common definition?
> 

 ok, will check and if possible will inherit those.

>> +        type: boolean
>> +        Description:
>> +          The specified pins should be configured as no pull.
>> +      bias-pull-down:
>> +        type: boolean
>> +        Description:
>> +          The specified pins should be configured as pull down.
>> +      bias-pull-up:
>> +        type: boolean
>> +        Description:
>> +          The specified pins should be configured as pull up.
>> +      output-high:
>> +        type: boolean
>> +        Description:
>> +          The specified pins are configured in output mode, driven high.
>> +          This option is not available for sdc pins.
>> +      output-low:
>> +        type: boolean
>> +        Description:
>> +          The specified pins are configured in output mode, driven low.
>> +          This option is not available for sdc pins.
>> +      drive-strength:
>> +        allOf:
>> +          $ref: /schemas/types.yaml#/definitions/uint32
>> +          enum: [2, 4, 6, 8, 10, 12, 14, 16]
>> +        Description:
>> +          elects the drive strength for the specified pins, in mA.
> 
> Selects?
> 

 ok will fix.

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
>> +                reg = <0x1000000 0x300000>;
>> +                interrupts = <0 208 0>;
> 
> <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>
> 

 ok.

>> +                gpio-controller;
>> +                #gpio-cells = <2>;
>> +                interrupt-controller;
>> +                #interrupt-cells = <2>;
>> +
>> +                uart_pins: uart_pins {
> 
> s/_/- in the node name.
> 

 ok.

>> +                        mux {
>> +                                pins = "gpio4", "gpio5";
>> +                                function = "blsp_uart2";
> 
> Duplicate the function definition in tx and rx and drop the "mux" node.
> 

 ok.

Regards,
 Sricharan

-- 
"QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
