Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5D1125F82
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 11:43:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lO/VWsHjkOXAJZycmblPAV+kJhMgrH26ZF9qVku6lqk=; b=UstC5zLw+wn15c
	BMq8wpsTXkznyzm97dZtQd6FtQCUhForbMBeRCQ7pWDL5ucVgut4AXTIrY3FufvQ3e1XE/GBzmk+H
	g5owzLgbwacQsl8Wt49o2ZxxbQ/Tguzt0aUcC1cEiV5v1BjzvfRwC8uQo7jhcUPnx8G5HkSO7lGZz
	tMFUcef5RTCH4+BlOGN7wxryODpJkYT++jY6rRT3saHujNISQrmrad85NHtRBQ9rxo75J0hOwZM+h
	ibe8VSFcdCoOj6RAYg0ooX1SSb+vtiCUJXPvAdKN4ELyXupDkS0QMQM89/sa5OHTf9vyBcYSVE0yl
	yMQHe+PRb31gWXh+4nXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihtHK-00007N-5x; Thu, 19 Dec 2019 10:43:34 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihtGg-0008HX-OB
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 10:42:57 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576752174; h=References: In-Reply-To: Message-Id: Date:
 Subject: To: From: Sender;
 bh=6DacnwmMWPUD4nOv69Iq6uGJwHw/xzXzAqbMl6vb/Tk=;
 b=eHVoSHVQvjRasscKtXCD2W4waEvBWa8uNZWxTPn3FUc/Hb+ev6No2sYQr7ccMuJ1NeJnjMae
 52n1czZEgzUdnyLcRmqAbt8hb4PYPZ5lwKcUXDWAdA8LMchy6OEFoK9spuy/fih0z13fR/NG
 wENgMXvI0muUmXPTw2ohS9u5zO0=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5dfb542c.7f9512f4b298-smtp-out-n01;
 Thu, 19 Dec 2019 10:42:52 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E3D2FC53807; Thu, 19 Dec 2019 10:42:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from srichara-linux.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sricharan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BC234C53803;
 Thu, 19 Dec 2019 10:42:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BC234C53803
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
From: Sricharan R <sricharan@codeaurora.org>
To: sricharan@codeaurora.org, agross@kernel.org, devicetree@vger.kernel.org,
 linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-soc@vger.kernel.org, robh+dt@kernel.org, sboyd@kernel.org,
 sivaprak@codeaurora.org
Subject: [PATCH V2 1/7] dt-bindings: pinctrl: qcom: Add ipq6018 pinctrl
 bindings
Date: Thu, 19 Dec 2019 16:11:43 +0530
Message-Id: <1576752109-24497-2-git-send-email-sricharan@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1576752109-24497-1-git-send-email-sricharan@codeaurora.org>
References: <1576752109-24497-1-git-send-email-sricharan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_024254_873326_3F169E13 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add device tree binding Documentation details for ipq6018
pinctrl driver.

Co-developed-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
Signed-off-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
Co-developed-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
Signed-off-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
Co-developed-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
Signed-off-by: Sricharan R <sricharan@codeaurora.org>
---

[V2] Splitted dt bindings and driver into different patches. Added missing bindings,
     and some style changes.

 .../bindings/pinctrl/qcom,ipq6018-pinctrl.yaml     | 172 +++++++++++++++++++++
 1 file changed, 172 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
new file mode 100644
index 0000000..745a11e
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
@@ -0,0 +1,172 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/qcom,ipq6018-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Technologies, Inc. IPQ6018 TLMM block
+
+maintainers:
+  - Sricharan R <sricharan@codeaurora.org>
+
+description: |
+  This binding describes the Top Level Mode Multiplexer block found in the
+  IPQ6018 platform.
+
+properties:
+  compatible:
+    const: qcom,ipq6018-pinctrl
+  reg:
+    maxItems: 1
+  interrupts:
+    Description: Specifies the TLMM summary IRQ
+    maxItems: 1
+  interrupt-controller: true
+  '#interrupt-cells':
+    Description:
+      Specifies the PIN numbers and Flags, as defined in defined in
+      include/dt-bindings/interrupt-controller/irq.h
+    const: 2
+  gpio-controller: true
+  '#gpio-cells':
+    Description: Specifying the pin number and flags, as defined in
+      include/dt-bindings/gpio/gpio.h
+    const: 2
+  gpio-ranges:
+    Description: Documentation/devicetree/bindings/gpio/gpio.txt
+    maxItems: 1
+
+#PIN CONFIGURATION NODES
+patternProperties:
+  '-pins$':
+    type: object
+    Description:
+      Pinctrl node's client devices use subnodes for desired pin configuration.
+      Client device subnodes use below standard properties.
+
+    Properties:
+      pins:
+        allOf:
+          $ref: /schemas/types.yaml#/definitions/string
+          enum:
+            gpio0-gpio80
+            sdc1_clk
+            sdc1_cmd
+            sdc1_data
+            sdc2_clk
+            sdc2_cmd
+            sdc2_data
+            qdsd_cmd
+            qdsd_data0
+            qdsd_data1
+            qdsd_data2
+            qdsd_data3
+        Description:
+          List of gpio pins affected by the properties specified in this
+          subnode.
+
+      function:
+        allOf:
+          $ref: /schemas/types.yaml#/definitions/string
+          enum:
+            adsp_ext, alsp_int, atest_bbrx0, atest_bbrx1, atest_char,
+            atest_char0, atest_char1, atest_char2, atest_char3, atest_combodac,
+            atest_gpsadc0, atest_gpsadc1, atest_tsens, atest_wlan0,
+            atest_wlan1, backlight_en, bimc_dte0, bimc_dte1, blsp_i2c1,
+            blsp_i2c2, blsp_i2c3, blsp_i2c4, blsp_i2c5, blsp_i2c6,  blsp_spi1,
+            blsp_spi1_cs1, blsp_spi1_cs2, blsp_spi1_cs3, blsp_spi2,
+            blsp_spi2_cs1, blsp_spi2_cs2, blsp_spi2_cs3, blsp_spi3,
+            blsp_spi3_cs1, blsp_spi3_cs2, blsp_spi3_cs3, blsp_spi4, blsp_spi5,
+            blsp_spi6, blsp_uart1, blsp_uart2, blsp_uim1, blsp_uim2, cam1_rst,
+            cam1_standby, cam_mclk0, cam_mclk1, cci_async, cci_i2c, cci_timer0,
+            cci_timer1, cci_timer2, cdc_pdm0, codec_mad, dbg_out, display_5v,
+            dmic0_clk, dmic0_data, dsi_rst, ebi0_wrcdc, euro_us, ext_lpass,
+            flash_strobe, gcc_gp1_clk_a, gcc_gp1_clk_b, gcc_gp2_clk_a,
+            gcc_gp2_clk_b, gcc_gp3_clk_a, gcc_gp3_clk_b, gpio, gsm0_tx0,
+            gsm0_tx1, gsm1_tx0, gsm1_tx1, gyro_accl, kpsns0, kpsns1, kpsns2,
+            ldo_en, ldo_update, mag_int, mdp_vsync, modem_tsync, m_voc,
+            nav_pps, nav_tsync, pa_indicator, pbs0, pbs1, pbs2, pri_mi2s,
+            pri_mi2s_ws, prng_rosc, pwr_crypto_enabled_a, pwr_crypto_enabled_b,
+            pwr_modem_enabled_a,  pwr_modem_enabled_b, pwr_nav_enabled_a,
+            pwr_nav_enabled_b, qdss_ctitrig_in_a0, qdss_ctitrig_in_a1,
+            qdss_ctitrig_in_b0, qdss_ctitrig_in_b1, qdss_ctitrig_out_a0,
+            qdss_ctitrig_out_a1, qdss_ctitrig_out_b0, qdss_ctitrig_out_b1,
+            qdss_traceclk_a, qdss_traceclk_b, qdss_tracectl_a, qdss_tracectl_b,
+            qdss_tracedata_a, qdss_tracedata_b, reset_n, sd_card, sd_write,
+            sec_mi2s, smb_int, ssbi_wtr0, ssbi_wtr1, uim1, uim2, uim3,
+            uim_batt, wcss_bt, wcss_fm, wcss_wlan, webcam1_rst
+        Description:
+          Specify the alternative function to be configured for the specified
+          pins.
+      bias-disable:
+        type: boolean
+        Description:
+          The specified pins should be configured as no pull.
+      bias-pull-down:
+        type: boolean
+        Description:
+          The specified pins should be configured as pull down.
+      bias-pull-up:
+        type: boolean
+        Description:
+          The specified pins should be configured as pull up.
+      output-high:
+        type: boolean
+        Description:
+          The specified pins are configured in output mode, driven high.
+          This option is not available for sdc pins.
+      output-low:
+        type: boolean
+        Description:
+          The specified pins are configured in output mode, driven low.
+          This option is not available for sdc pins.
+      drive-strength:
+        allOf:
+          $ref: /schemas/types.yaml#/definitions/uint32
+          enum: [2, 4, 6, 8, 10, 12, 14, 16]
+        Description:
+          elects the drive strength for the specified pins, in mA.
+
+    required:
+      - pins
+      - function
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-controller
+  - '#interrupt-cells'
+  - gpio-controller
+  - '#gpio-cells'
+  - gpio-ranges
+
+example:
+        tlmm: pinctrl@1000000 {
+                compatible = "qcom,ipq6018-pinctrl";
+                reg = <0x1000000 0x300000>;
+                interrupts = <0 208 0>;
+                gpio-controller;
+                #gpio-cells = <2>;
+                interrupt-controller;
+                #interrupt-cells = <2>;
+
+                uart_pins: uart_pins {
+                        mux {
+                                pins = "gpio4", "gpio5";
+                                function = "blsp_uart2";
+                        };
+
+                        tx {
+                                pins = "gpio4";
+                                drive-strength = <4>;
+                                bias-disable;
+                        };
+
+                        rx {
+                                pins = "gpio5";
+                                drive-strength = <2>;
+                                bias-pull-up;
+                        };
+                };
+        };
-- 
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
