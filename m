Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3E4141E21
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 14:16:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpgLn+FK1OjDki52VQ4BqmOyJbctvZfxTLiSgFRSrt8=; b=DiDtwaSo4sM+hI
	8y6y2cEy26FiKARPMgLUDEdvvLRnNCzCrDCRy8Vopy1m9utui9vRaIwjUYD/7AQoIh8xZGaNWTLCA
	D/SwgimpTo6V4OPRgNUU6aa13ww9PbTP51Y4VV3HwXsvbpTd6nircjhPBSllv3aI4kJKlc9fEXwjC
	iRpNM47x5+wW3q8Xm3qZBr7TLBQQ8x5msq9mMSO+mDF95PnD9r+wKzjSACZy8FVZkSC5IPpLLRn0w
	hkKpzn5WO2kh48WicLIzFz1jOMVpAydFWAK7rRJWSm8uROVyHKkfKXkchQOyNKox271WzA5II7V1+
	m18ft9SiVzaSZKjNyVaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itAR3-0003oR-95; Sun, 19 Jan 2020 13:16:13 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itAQp-0000wq-KZ
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 13:16:02 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579439760; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=tLtMCXFHqRnKQLdUTW9wSpw3TsBZMWUWzXvDuYzcyH0=;
 b=I4nRUF/SszrxAvHDqgSf+pn1jm3HOAShy6umxPAAyhPa5qgRt/CWXvAUhdIt5KP1xT0JKG2j
 MP/yVHxUnjDXfSBy/BgRxW9vFEq54a+OZamX1srS48ZuLb5Dqb1YKF/EMcPPCWcr2rIXuxch
 LA1lEoc2bHK5fiRhkhDrC4yBYu0=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e24568e.7f1a90bea960-smtp-out-n01;
 Sun, 19 Jan 2020 13:15:58 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4016BC433A2; Sun, 19 Jan 2020 13:15:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from [192.168.1.8] (unknown [171.78.179.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sricharan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4D2FBC43383;
 Sun, 19 Jan 2020 13:15:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4D2FBC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH V5 1/5] dt-bindings: pinctrl: qcom: Add ipq6018 pinctrl
 bindings
To: Rob Herring <robh@kernel.org>
References: <1579160701-32408-1-git-send-email-sricharan@codeaurora.org>
 <1579160701-32408-2-git-send-email-sricharan@codeaurora.org>
 <20200117160102.GA16177@bogus>
From: Sricharan R <sricharan@codeaurora.org>
Message-ID: <728e4966-8aa8-014c-76b4-2453aa305fe3@codeaurora.org>
Date: Sun, 19 Jan 2020 18:45:50 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200117160102.GA16177@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_051600_467702_93249B87 
X-CRM114-Status: GOOD (  21.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
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

Hi Rob,
  Thanks for the review.

On 1/17/2020 9:31 PM, Rob Herring wrote:
> On Thu, Jan 16, 2020 at 01:14:57PM +0530, Sricharan R wrote:
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
>> [V5]
>> * Addressed review comments from Rob
>> * Ran dt bindings check and no errors were reported
>>  .../bindings/pinctrl/qcom,ipq6018-pinctrl.yaml     | 162 +++++++++++++++++++++
>>  1 file changed, 162 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
>> new file mode 100644
>> index 0000000..0622258
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
>> @@ -0,0 +1,162 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
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
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    description: Specifies the TLMM summary IRQ
>> +    maxItems: 1
>> +
>> +  interrupt-controller: true
>> +
>> +  '#interrupt-cells':
>> +    description:
>> +      Specifies the PIN numbers and Flags, as defined in defined in
>> +      include/dt-bindings/interrupt-controller/irq.h
>> +    const: 2
>> +
>> +  gpio-controller: true
>> +
>> +  '#gpio-cells':
>> +    description: Specifying the pin number and flags, as defined in
>> +      include/dt-bindings/gpio/gpio.h
>> +    const: 2
>> +
>> +  gpio-ranges:
>> +    description: Documentation/devicetree/bindings/gpio/gpio.txt
> 
> You can drop the description. Nothing here specific to this binding.
>

 ok.

 
>> +    maxItems: 1
>> +
>> +#PIN CONFIGURATION NODES
>> +patternProperties:
>> +  '.*-pin.*':
> 
> Ideally, this would be a bit more constrained. Such as '-pin$' or 
> '-pinmux$'.
> 
> Note that '-pin' is equivalent to what you have.
>

 ok.
 
>> +    type: object
>> +    description:
>> +      Pinctrl node's client devices use subnodes for desired pin configuration.
>> +      Client device subnodes use below standard properties.
>> +    allOf:
>> +      - $ref: "/schemas/pinctrl/pincfg-node.yaml"
>> +
>> +    properties:
>> +      pins:
>> +        description:
>> +          List of gpio pins affected by the properties specified in this
>> +          subnode. The valid values are gpio1-80, sdc1_clk, sdc1_cmd,
>> +          sdc1_data, sdc2_clk, sdc2_cmd, sdc2_data, qdsd_cmd, qdsd_data0,
>> +          qdsd_data1, qdsd_data2, qdsd_data3
> 
> Looks like constraints:
> 
> items:
>   oneOf:
>     - pattern: "^gpio([1-9]|[1-7][0-9]|80)$"
>     - enum: [ sdc1_clk, sdc1_cmd, ... ]
>

 ok.
 
>> +        minItems: 1
>> +        maxItems: 4
>> +
>> +      function:
>> +        description:
>> +          Specify the alternative function to be configured for the specified
>> +          pins.
>> +        enum: [ adsp_ext, alsp_int, atest_bbrx0, atest_bbrx1, atest_char,
>> +          atest_char0, atest_char1, atest_char2, atest_char3, atest_combodac,
>> +          atest_gpsadc0, atest_gpsadc1, atest_tsens, atest_wlan0,
>> +          atest_wlan1, backlight_en, bimc_dte0, bimc_dte1, blsp1_i2c,
>> +          blsp2_i2c, blsp3_i2c, blsp4_i2c, blsp5_i2c, blsp6_i2c,  blsp1_spi,
>> +          blsp1_spi_cs1, blsp1_spi_cs2, blsp1_spi_cs3, blsp2_spi,
>> +          blsp2_spi_cs1, blsp2_spi_cs2, blsp2_spi_cs3, blsp3_spi,
>> +          blsp3_spi_cs1, blsp3_spi_cs2, blsp3_spi_cs3, blsp4_spi, blsp5_spi,
>> +          blsp6_spi, blsp1_uart, blsp2_uart, blsp1_uim, blsp2_uim, cam1_rst,
>> +          cam1_standby, cam_mclk0, cam_mclk1, cci_async, cci_i2c, cci_timer0,
>> +          cci_timer1, cci_timer2, cdc_pdm0, codec_mad, dbg_out, display_5v,
>> +          dmic0_clk, dmic0_data, dsi_rst, ebi0_wrcdc, euro_us, ext_lpass,
>> +          flash_strobe, gcc_gp1_clk_a, gcc_gp1_clk_b, gcc_gp2_clk_a,
>> +          gcc_gp2_clk_b, gcc_gp3_clk_a, gcc_gp3_clk_b, gpio, gsm0_tx0,
>> +          gsm0_tx1, gsm1_tx0, gsm1_tx1, gyro_accl, kpsns0, kpsns1, kpsns2,
>> +          ldo_en, ldo_update, mag_int, mdp_vsync, modem_tsync, m_voc,
>> +          nav_pps, nav_tsync, pa_indicator, pbs0, pbs1, pbs2, pri_mi2s,
>> +          pri_mi2s_ws, prng_rosc, pwr_crypto_enabled_a, pwr_crypto_enabled_b,
>> +          pwr_modem_enabled_a,  pwr_modem_enabled_b, pwr_nav_enabled_a,
>> +          pwr_nav_enabled_b, qdss_ctitrig_in_a0, qdss_ctitrig_in_a1,
>> +          qdss_ctitrig_in_b0, qdss_ctitrig_in_b1, qdss_ctitrig_out_a0,
>> +          qdss_ctitrig_out_a1, qdss_ctitrig_out_b0, qdss_ctitrig_out_b1,
>> +          qdss_traceclk_a, qdss_traceclk_b, qdss_tracectl_a, qdss_tracectl_b,
>> +          qdss_tracedata_a, qdss_tracedata_b, reset_n, sd_card, sd_write,
>> +          sec_mi2s, smb_int, ssbi_wtr0, ssbi_wtr1, uim1, uim2, uim3,
>> +          uim_batt, wcss_bt, wcss_fm, wcss_wlan, webcam1_rst ]
>> +
>> +      drive-strength:
>> +        enum: [2, 4, 6, 8, 10, 12, 14, 16]
>> +        default: 2
>> +        description:
>> +          Selects the drive strength for the specified pins, in mA.
> 
>> +
>> +      bias-pull-down:
>> +        type: boolean
>> +        description: The specified pin should be configured as pull down.
>> +
>> +      bias-pull-up:
>> +        type: boolean
>> +        description: The specified pin should be configured as pull up.
>> +
>> +      bias-disable:
>> +        type: boolean
>> +        description: The specified pin should be configured as no pull.
>> +
>> +      output-high:
>> +        type: boolean
>> +        description: The specified pin is configured in output mode, driven
>> +          high.
>> +
>> +      output-low:
>> +        type: boolean
>> +        description: The specified pin is configured in output mode, driven
>> +          low.
> 
> No need to redefine the type and description on these 5 properties. Just 
> a value of 'true' is enough.
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
