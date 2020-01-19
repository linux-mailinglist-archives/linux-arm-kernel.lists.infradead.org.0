Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5967D141E14
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 14:14:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z50B3ZVS5WSJxmZwPZMFpb45t9BTwV3nM3cQb/hBkp0=; b=SD0avsBhZP/J05kh8ZohvpWrXn
	r09szd7wHW3wW56/wyCvwnD77ATsx1AH/XhKthit4S8xBwnuKsgOTOFB7qNYk+nQPABDA/IosXIFN
	3KoqisZJFjwuU5MuYetmCSxWeRo579zoZn7OYMejZTcq6lEm/Xq92UHToTYn9iISwO0D64uYWblgv
	0VktTW8Zsjzwah/v7cx8tPzdCpheY/0t12p4M6A4xfX1rqbgJd/iv1BbmvHxXJUUWC22k25P96byw
	RGsfLaE0FKOHk9VxZ9eWUahrbPRoLKU8fWfcwSijL1WGNsrdlfz44ND1XwFHxp2BZMBxb1UhW6wvb
	CttDFYwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itAPO-0001Ai-14; Sun, 19 Jan 2020 13:14:30 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itAOi-0000wq-Mq
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 13:13:51 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579439629; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=ro86RcBfIaBDPMo4NWO2zpbUAsnPV6ZrA2OGnbFDSs8=;
 b=BjA4Cv7UMcATDlntllfVw/Fa67ScRNWMVd3AEGu+3mBHlQ24l+gixTiBmFdExUFd87dHRaXW
 QP/S3Wn7OHzLaQLoo1gR+v0UPAjoD4SjrJePgBx7vFofdyP1YFfPt6YipBWSWnh62clELnQ5
 TdlJjNICqW3ffmuWSeT7Rdz+LzU=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e245607.7fdc56cba4c8-smtp-out-n03;
 Sun, 19 Jan 2020 13:13:43 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 776A6C43383; Sun, 19 Jan 2020 13:13:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from srichara1-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sricharan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 98BDFC433A2;
 Sun, 19 Jan 2020 13:13:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 98BDFC433A2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
From: Sricharan R <sricharan@codeaurora.org>
To: agross@kernel.org, devicetree@vger.kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-soc@vger.kernel.org, robh+dt@kernel.org, sivaprak@codeaurora.org,
 sricharan@codeaurora.org
Subject: [PATCH V6 1/5] dt-bindings: pinctrl: qcom: Add ipq6018 pinctrl
 bindings
Date: Sun, 19 Jan 2020 18:43:17 +0530
Message-Id: <1579439601-14810-2-git-send-email-sricharan@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1579439601-14810-1-git-send-email-sricharan@codeaurora.org>
References: <1579439601-14810-1-git-send-email-sricharan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_051349_338444_78BBBEFA 
X-CRM114-Status: GOOD (  12.16  )
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
Cc: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 Rajkumar Ayyasamy <arajkuma@codeaurora.org>
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
Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
---
[V6] 
  * Addressed review comments form Rob.
 .../bindings/pinctrl/qcom,ipq6018-pinctrl.yaml     | 153 +++++++++++++++++++++
 1 file changed, 153 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
new file mode 100644
index 0000000..63d1cfe
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
@@ -0,0 +1,153 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
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
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    description: Specifies the TLMM summary IRQ
+    maxItems: 1
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    description:
+      Specifies the PIN numbers and Flags, as defined in defined in
+      include/dt-bindings/interrupt-controller/irq.h
+    const: 2
+
+  gpio-controller: true
+
+  '#gpio-cells':
+    description: Specifying the pin number and flags, as defined in
+      include/dt-bindings/gpio/gpio.h
+    const: 2
+
+  gpio-ranges:
+    maxItems: 1
+
+#PIN CONFIGURATION NODES
+patternProperties:
+  '-pinmux$':
+    type: object
+    description:
+      Pinctrl node's client devices use subnodes for desired pin configuration.
+      Client device subnodes use below standard properties.
+    allOf:
+      - $ref: "/schemas/pinctrl/pincfg-node.yaml"
+
+    properties:
+      pins:
+        description:
+          List of gpio pins affected by the properties specified in this
+          subnode.
+        items:
+          oneOf:
+            - pattern: "^gpio([1-9]|[1-7][0-9]|80)$"
+            - enum: [ sdc1_clk, sdc1_cmd, sdc1_data, sdc2_clk, sdc2_cmd,
+              sdc2_data, qdsd_cmd, qdsd_data0, qdsd_data1, qdsd_data2,
+              qdsd_data3 ]
+        minItems: 1
+        maxItems: 4
+
+      function:
+        description:
+          Specify the alternative function to be configured for the specified
+          pins.
+        enum: [ adsp_ext, alsp_int, atest_bbrx0, atest_bbrx1, atest_char,
+          atest_char0, atest_char1, atest_char2, atest_char3, atest_combodac,
+          atest_gpsadc0, atest_gpsadc1, atest_tsens, atest_wlan0,
+          atest_wlan1, backlight_en, bimc_dte0, bimc_dte1, blsp1_i2c,
+          blsp2_i2c, blsp3_i2c, blsp4_i2c, blsp5_i2c, blsp6_i2c,  blsp1_spi,
+          blsp1_spi_cs1, blsp1_spi_cs2, blsp1_spi_cs3, blsp2_spi,
+          blsp2_spi_cs1, blsp2_spi_cs2, blsp2_spi_cs3, blsp3_spi,
+          blsp3_spi_cs1, blsp3_spi_cs2, blsp3_spi_cs3, blsp4_spi, blsp5_spi,
+          blsp6_spi, blsp1_uart, blsp2_uart, blsp1_uim, blsp2_uim, cam1_rst,
+          cam1_standby, cam_mclk0, cam_mclk1, cci_async, cci_i2c, cci_timer0,
+          cci_timer1, cci_timer2, cdc_pdm0, codec_mad, dbg_out, display_5v,
+          dmic0_clk, dmic0_data, dsi_rst, ebi0_wrcdc, euro_us, ext_lpass,
+          flash_strobe, gcc_gp1_clk_a, gcc_gp1_clk_b, gcc_gp2_clk_a,
+          gcc_gp2_clk_b, gcc_gp3_clk_a, gcc_gp3_clk_b, gpio, gsm0_tx0,
+          gsm0_tx1, gsm1_tx0, gsm1_tx1, gyro_accl, kpsns0, kpsns1, kpsns2,
+          ldo_en, ldo_update, mag_int, mdp_vsync, modem_tsync, m_voc,
+          nav_pps, nav_tsync, pa_indicator, pbs0, pbs1, pbs2, pri_mi2s,
+          pri_mi2s_ws, prng_rosc, pwr_crypto_enabled_a, pwr_crypto_enabled_b,
+          pwr_modem_enabled_a,  pwr_modem_enabled_b, pwr_nav_enabled_a,
+          pwr_nav_enabled_b, qdss_ctitrig_in_a0, qdss_ctitrig_in_a1,
+          qdss_ctitrig_in_b0, qdss_ctitrig_in_b1, qdss_ctitrig_out_a0,
+          qdss_ctitrig_out_a1, qdss_ctitrig_out_b0, qdss_ctitrig_out_b1,
+          qdss_traceclk_a, qdss_traceclk_b, qdss_tracectl_a, qdss_tracectl_b,
+          qdss_tracedata_a, qdss_tracedata_b, reset_n, sd_card, sd_write,
+          sec_mi2s, smb_int, ssbi_wtr0, ssbi_wtr1, uim1, uim2, uim3,
+          uim_batt, wcss_bt, wcss_fm, wcss_wlan, webcam1_rst ]
+
+      drive-strength:
+        enum: [2, 4, 6, 8, 10, 12, 14, 16]
+        default: 2
+        description:
+          Selects the drive strength for the specified pins, in mA.
+
+      bias-pull-down: true
+
+      bias-pull-up: true
+
+      bias-disable: true
+
+      output-high: true
+
+      output-low: true
+
+    required:
+      - pins
+      - function
+
+    additionalProperties: false
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
+additionalProperties: false
+
+examples:
+  - |
+        #include <dt-bindings/interrupt-controller/arm-gic.h>
+        tlmm: pinctrl@1000000 {
+              compatible = "qcom,ipq6018-pinctrl";
+              reg = <0x01000000 0x300000>;
+              interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
+              interrupt-controller;
+              #interrupt-cells = <2>;
+              gpio-controller;
+              #gpio-cells = <2>;
+              gpio-ranges = <&tlmm 0 80>;
+
+              serial3-pinmux {
+                      pins = "gpio44", "gpio45";
+                      function = "blsp2_uart";
+                      drive-strength = <8>;
+                      bias-pull-down;
+              };
+        };
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
