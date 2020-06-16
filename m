Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F16C1FB894
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 17:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MMz7b/9JEoRzjqhtiUCibCSp4HOrBiJiMO1ldmenV9A=; b=NS3IrKuia7564+
	0lO7OuiVrIPcDhORbQKLpKYyvBYx7Cl2jHSaUxDNDnpFLKE7JyO6a02ISv6FqnniQoPZWpTwUtcsJ
	bHbkPixJKTXcN1toTEz3bS59AXaEASAf0D4wrm4A/MhdLgqpIjs9UmVsW2ocSVito0SHL1nQpV0BL
	R0PJUsjcvehiTFglqx/Z3j9wwQbVGBtgKQprFT98JUdDTHUooQFUwLCbLOvw5y4G8W/+du7oljVEK
	eQ3DOcaUWTEY3jUgvI6cpNsZA8oHlN5isFM88tVtBehjq9emYKPsTi+6GQFVdZFlSf+v0YhBe2Z0s
	Ah0tpoR8QVWD7xT0vY5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlDxq-0002Gq-M5; Tue, 16 Jun 2020 15:57:30 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDx1-0001ZP-Qd
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 15:56:42 +0000
IronPort-SDR: jDc65IGnMgSAlSqieqKbAS2b28DR6tQmZO2Qj1oP3sAY0NP4spAv3Q5ZWwqX1QtuKNqc54uBrP
 D4dLH6C4kTmg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:56:39 -0700
IronPort-SDR: nM6Z3wKoScbxVDqEt4QZY6Tfy8xRfP442kbm9DyoUmyCx2rOLqSODVKHx9BmCQvpcvIAEVOWPP
 JmMFWIocmnyw==
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="449888121"
Received: from pperycz-mobl.ger.corp.intel.com (HELO
 dalessan-mobl1.ir.intel.com) ([10.213.235.69])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:56:36 -0700
From: Daniele Alessandrelli <daniele.alessandrelli@linux.intel.com>
To: linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 4/7] dt-bindings: arm: Add Keem Bay bindings
Date: Tue, 16 Jun 2020 16:56:10 +0100
Message-Id: <20200616155613.121242-5-daniele.alessandrelli@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200616155613.121242-1-daniele.alessandrelli@linux.intel.com>
References: <20200616155613.121242-1-daniele.alessandrelli@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_085640_008362_9050EF58 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -4.2 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Dinh Nguyen <dinguyen@kernel.org>,
 Paul Murphy <paul.j.murphy@intel.com>, Will Deacon <will@kernel.org>,
 Daniele Alessandrelli <daniele.alessandrelli@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniele Alessandrelli <daniele.alessandrelli@intel.com>

Document Intel Movidius SoC code-named Keem Bay, along with the Keem Bay
EVM board.

Reviewed-by: Dinh Nguyen <dinguyen@kernel.org>
Signed-off-by: Daniele Alessandrelli <daniele.alessandrelli@intel.com>
---
 .../devicetree/bindings/arm/keembay.yaml      |  19 ++
 include/dt-bindings/clock/keembay-clocks.h    | 188 ++++++++++++++++++
 include/dt-bindings/power/keembay-power.h     |  19 ++
 3 files changed, 226 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/keembay.yaml
 create mode 100644 include/dt-bindings/clock/keembay-clocks.h
 create mode 100644 include/dt-bindings/power/keembay-power.h

diff --git a/Documentation/devicetree/bindings/arm/keembay.yaml b/Documentation/devicetree/bindings/arm/keembay.yaml
new file mode 100644
index 000000000000..f81b110046ca
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/keembay.yaml
@@ -0,0 +1,19 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/keembay.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Keem Bay platform device tree bindings
+
+maintainers:
+  - Paul J. Murphy <paul.j.murphy@intel.com>
+  - Daniele Alessandrelli <daniele.alessandrelli@intel.com>
+
+properties:
+  compatible:
+    items:
+      - enum:
+        - intel,keembay-evm
+      - const: intel,keembay
+...
diff --git a/include/dt-bindings/clock/keembay-clocks.h b/include/dt-bindings/clock/keembay-clocks.h
new file mode 100644
index 000000000000..a68e986dd565
--- /dev/null
+++ b/include/dt-bindings/clock/keembay-clocks.h
@@ -0,0 +1,188 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2020 Intel Corporation.
+ *
+ * Device tree defines for clocks in Keem Bay.
+ */
+
+#ifndef __DT_BINDINGS_KEEMBAY_CLOCKS_H
+#define __DT_BINDINGS_KEEMBAY_CLOCKS_H
+
+/* CPR_PLL region. CLK_ID: 0 - 11 */
+#define KEEM_BAY_A53_PLL_START_ID (0)
+#define KEEM_BAY_A53_PLL_0_OUT_0 (KEEM_BAY_A53_PLL_START_ID + 0)
+#define KEEM_BAY_A53_PLL_0_OUT_1 (KEEM_BAY_A53_PLL_START_ID + 1)
+#define KEEM_BAY_A53_PLL_0_OUT_2 (KEEM_BAY_A53_PLL_START_ID + 2)
+#define KEEM_BAY_A53_PLL_0_OUT_3 (KEEM_BAY_A53_PLL_START_ID + 3)
+#define KEEM_BAY_A53_PLL_1_OUT_0 (KEEM_BAY_A53_PLL_START_ID + 4)
+#define KEEM_BAY_A53_PLL_1_OUT_1 (KEEM_BAY_A53_PLL_START_ID + 5)
+#define KEEM_BAY_A53_PLL_1_OUT_2 (KEEM_BAY_A53_PLL_START_ID + 6)
+#define KEEM_BAY_A53_PLL_1_OUT_3 (KEEM_BAY_A53_PLL_START_ID + 7)
+#define KEEM_BAY_A53_PLL_2_OUT_0 (KEEM_BAY_A53_PLL_START_ID + 8)
+#define KEEM_BAY_A53_PLL_2_OUT_1 (KEEM_BAY_A53_PLL_START_ID + 9)
+#define KEEM_BAY_A53_PLL_2_OUT_2 (KEEM_BAY_A53_PLL_START_ID + 10)
+#define KEEM_BAY_A53_PLL_2_OUT_3 (KEEM_BAY_A53_PLL_START_ID + 11)
+#define KEEM_BAY_A53_PLL_MAX_ID (KEEM_BAY_A53_PLL_2_OUT_3)
+
+/* A53_CPR region. CLK_ID: 12 - 30 */
+#define KEEM_BAY_A53_START_ID (KEEM_BAY_A53_PLL_MAX_ID + 1)
+#define KEEM_BAY_A53_AON (KEEM_BAY_A53_START_ID + 0)
+#define KEEM_BAY_A53_NOC (KEEM_BAY_A53_START_ID + 1)
+#define KEEM_BAY_A53_FUSE (KEEM_BAY_A53_START_ID + 2)
+#define KEEM_BAY_A53_ROM (KEEM_BAY_A53_START_ID + 3)
+#define KEEM_BAY_A53_ICB (KEEM_BAY_A53_START_ID + 4)
+#define KEEM_BAY_A53_GIC (KEEM_BAY_A53_START_ID + 5)
+#define KEEM_BAY_A53_TIM (KEEM_BAY_A53_START_ID + 6)
+#define KEEM_BAY_A53_GPIO (KEEM_BAY_A53_START_ID + 7)
+#define KEEM_BAY_A53_JTAG (KEEM_BAY_A53_START_ID + 8)
+#define KEEM_BAY_A53_MBIST_0 (KEEM_BAY_A53_START_ID + 9)
+#define KEEM_BAY_A53_DSS (KEEM_BAY_A53_START_ID + 10)
+#define KEEM_BAY_A53_MSS (KEEM_BAY_A53_START_ID + 11)
+#define KEEM_BAY_A53_PSS (KEEM_BAY_A53_START_ID + 12)
+#define KEEM_BAY_A53_PCIE (KEEM_BAY_A53_START_ID + 13)
+#define KEEM_BAY_A53_VENC (KEEM_BAY_A53_START_ID + 14)
+#define KEEM_BAY_A53_VDEC (KEEM_BAY_A53_START_ID + 15)
+#define KEEM_BAY_A53_MBIST_1 (KEEM_BAY_A53_START_ID + 16)
+#define KEEM_BAY_A53_MBIST_2 (KEEM_BAY_A53_START_ID + 17)
+#define KEEM_BAY_A53_MBIST_3 (KEEM_BAY_A53_START_ID + 18)
+#define KEEM_BAY_A53_MAX_ID (KEEM_BAY_A53_MBIST_3)
+
+/* A53_CPR_AUX region. CLK_ID: 31 - 57 */
+#define KEEM_BAY_A53_AUX_START_ID (KEEM_BAY_A53_MAX_ID + 1)
+#define KEEM_BAY_A53_AUX_32KHZ (KEEM_BAY_A53_AUX_START_ID + 0)
+#define KEEM_BAY_A53_AUX_CPR (KEEM_BAY_A53_AUX_START_ID + 1)
+#define KEEM_BAY_A53_AUX_TSENS (KEEM_BAY_A53_AUX_START_ID + 2)
+#define KEEM_BAY_A53_AUX_GPIO0 (KEEM_BAY_A53_AUX_START_ID + 3)
+#define KEEM_BAY_A53_AUX_GPIO1 (KEEM_BAY_A53_AUX_START_ID + 4)
+#define KEEM_BAY_A53_AUX_GPIO2 (KEEM_BAY_A53_AUX_START_ID + 5)
+#define KEEM_BAY_A53_AUX_GPIO3 (KEEM_BAY_A53_AUX_START_ID + 6)
+#define KEEM_BAY_A53_AUX_DDR_REF (KEEM_BAY_A53_AUX_START_ID + 7)
+#define KEEM_BAY_A53_AUX_DDR_REF_BYPASS (KEEM_BAY_A53_AUX_START_ID + 8)
+#define KEEM_BAY_A53_AUX_RESERVED1 (KEEM_BAY_A53_AUX_START_ID + 9)
+#define KEEM_BAY_A53_AUX_VENC (KEEM_BAY_A53_AUX_START_ID + 10)
+#define KEEM_BAY_A53_AUX_VDEC (KEEM_BAY_A53_AUX_START_ID + 11)
+#define KEEM_BAY_A53_AUX_USOC_USB_CTRL (KEEM_BAY_A53_AUX_START_ID + 12)
+#define KEEM_BAY_A53_AUX_USB (KEEM_BAY_A53_AUX_START_ID + 13)
+#define KEEM_BAY_A53_AUX_USB_REF (KEEM_BAY_A53_AUX_START_ID + 14)
+#define KEEM_BAY_A53_AUX_USB_ALT_REF (KEEM_BAY_A53_AUX_START_ID + 15)
+#define KEEM_BAY_A53_AUX_USB_SUSPEND (KEEM_BAY_A53_AUX_START_ID + 16)
+#define KEEM_BAY_A53_AUX_RESERVED2 (KEEM_BAY_A53_AUX_START_ID + 17)
+#define KEEM_BAY_A53_AUX_PCIE (KEEM_BAY_A53_AUX_START_ID + 18)
+#define KEEM_BAY_A53_AUX_DBG_CLK (KEEM_BAY_A53_AUX_START_ID + 19)
+#define KEEM_BAY_A53_AUX_DBG_TRACE (KEEM_BAY_A53_AUX_START_ID + 20)
+#define KEEM_BAY_A53_AUX_DBG_DAP (KEEM_BAY_A53_AUX_START_ID + 21)
+#define KEEM_BAY_A53_AUX_ARM_CLKIN (KEEM_BAY_A53_AUX_START_ID + 22)
+#define KEEM_BAY_A53_AUX_ARM_AXI (KEEM_BAY_A53_AUX_START_ID + 23)
+#define KEEM_BAY_A53_AUX_USOC (KEEM_BAY_A53_AUX_START_ID + 24)
+#define KEEM_BAY_A53_AUX_USOC_REF (KEEM_BAY_A53_AUX_START_ID + 25)
+#define KEEM_BAY_A53_AUX_USOC_ALT_REF (KEEM_BAY_A53_AUX_START_ID + 26)
+#define KEEM_BAY_A53_AUX_MAX_ID (KEEM_BAY_A53_AUX_USOC_ALT_REF)
+
+/* PSS_CPR region CLK_ID: CLK_ID: 58 - 82 */
+#define KEEM_BAY_PSS_START_ID (KEEM_BAY_A53_AUX_MAX_ID + 1)
+#define KEEM_BAY_PSS_I2C0 (KEEM_BAY_PSS_START_ID + 0)
+#define KEEM_BAY_PSS_I2C1 (KEEM_BAY_PSS_START_ID + 1)
+#define KEEM_BAY_PSS_I2C2 (KEEM_BAY_PSS_START_ID + 2)
+#define KEEM_BAY_PSS_I2C3 (KEEM_BAY_PSS_START_ID + 3)
+#define KEEM_BAY_PSS_I2C4 (KEEM_BAY_PSS_START_ID + 4)
+#define KEEM_BAY_PSS_SD0 (KEEM_BAY_PSS_START_ID + 5)
+#define KEEM_BAY_PSS_SD1 (KEEM_BAY_PSS_START_ID + 6)
+#define KEEM_BAY_PSS_EMMC (KEEM_BAY_PSS_START_ID + 7)
+#define KEEM_BAY_PSS_AXI_DMA (KEEM_BAY_PSS_START_ID + 8)
+#define KEEM_BAY_PSS_SPI0 (KEEM_BAY_PSS_START_ID + 9)
+#define KEEM_BAY_PSS_SPI1 (KEEM_BAY_PSS_START_ID + 10)
+#define KEEM_BAY_PSS_SPI2 (KEEM_BAY_PSS_START_ID + 11)
+#define KEEM_BAY_PSS_SPI3 (KEEM_BAY_PSS_START_ID + 12)
+#define KEEM_BAY_PSS_I2S0 (KEEM_BAY_PSS_START_ID + 13)
+#define KEEM_BAY_PSS_I2S1 (KEEM_BAY_PSS_START_ID + 14)
+#define KEEM_BAY_PSS_I2S2 (KEEM_BAY_PSS_START_ID + 15)
+#define KEEM_BAY_PSS_I2S3 (KEEM_BAY_PSS_START_ID + 16)
+#define KEEM_BAY_PSS_UART0 (KEEM_BAY_PSS_START_ID + 17)
+#define KEEM_BAY_PSS_UART1 (KEEM_BAY_PSS_START_ID + 18)
+#define KEEM_BAY_PSS_UART2 (KEEM_BAY_PSS_START_ID + 19)
+#define KEEM_BAY_PSS_UART3 (KEEM_BAY_PSS_START_ID + 20)
+#define KEEM_BAY_PSS_I3C0 (KEEM_BAY_PSS_START_ID + 21)
+#define KEEM_BAY_PSS_I3C1 (KEEM_BAY_PSS_START_ID + 22)
+#define KEEM_BAY_PSS_I3C2 (KEEM_BAY_PSS_START_ID + 23)
+#define KEEM_BAY_PSS_GBE (KEEM_BAY_PSS_START_ID + 24)
+#define KEEM_BAY_PSS_MAX_ID (KEEM_BAY_PSS_GBE)
+
+/* PSS_CPR_AUX region. CLK_ID: 83 - 97 */
+#define KEEM_BAY_PSS_AUX_START_ID (KEEM_BAY_PSS_MAX_ID + 1)
+#define KEEM_BAY_PSS_AUX_I2S0 (KEEM_BAY_PSS_AUX_START_ID + 0)
+#define KEEM_BAY_PSS_AUX_I2S1 (KEEM_BAY_PSS_AUX_START_ID + 1)
+#define KEEM_BAY_PSS_AUX_I2S2 (KEEM_BAY_PSS_AUX_START_ID + 2)
+#define KEEM_BAY_PSS_AUX_I2S3 (KEEM_BAY_PSS_AUX_START_ID + 3)
+#define KEEM_BAY_PSS_AUX_UART0 (KEEM_BAY_PSS_AUX_START_ID + 4)
+#define KEEM_BAY_PSS_AUX_UART1 (KEEM_BAY_PSS_AUX_START_ID + 5)
+#define KEEM_BAY_PSS_AUX_UART2 (KEEM_BAY_PSS_AUX_START_ID + 6)
+#define KEEM_BAY_PSS_AUX_UART3 (KEEM_BAY_PSS_AUX_START_ID + 7)
+#define KEEM_BAY_PSS_AUX_SD0 (KEEM_BAY_PSS_AUX_START_ID + 8)
+#define KEEM_BAY_PSS_AUX_SD1 (KEEM_BAY_PSS_AUX_START_ID + 9)
+#define KEEM_BAY_PSS_AUX_EMMC (KEEM_BAY_PSS_AUX_START_ID + 10)
+#define KEEM_BAY_PSS_AUX_TRNG (KEEM_BAY_PSS_AUX_START_ID + 11)
+#define KEEM_BAY_PSS_AUX_OCS (KEEM_BAY_PSS_AUX_START_ID + 12)
+#define KEEM_BAY_PSS_AUX_GBE_PTP (KEEM_BAY_PSS_AUX_START_ID + 13)
+#define KEEM_BAY_PSS_AUX_GBE_TX (KEEM_BAY_PSS_AUX_START_ID + 14)
+#define KEEM_BAY_PSS_AUX_MAX_ID (KEEM_BAY_PSS_AUX_GBE_TX)
+
+/* DSS_CPR region. CLK_ID: 98 - 109 */
+#define KEEM_BAY_DSS_START_ID (KEEM_BAY_PSS_AUX_MAX_ID + 1)
+#define KEEM_BAY_DSS_SYS (KEEM_BAY_DSS_START_ID + 0)
+#define KEEM_BAY_DSS_DEC400 (KEEM_BAY_DSS_START_ID + 1)
+#define KEEM_BAY_DSS_TSENSE (KEEM_BAY_DSS_START_ID + 2)
+#define KEEM_BAY_DSS_BUS_0 (KEEM_BAY_DSS_START_ID + 3)
+#define KEEM_BAY_DSS_CORE_0 (KEEM_BAY_DSS_START_ID + 4)
+#define KEEM_BAY_DSS_REF_0 (KEEM_BAY_DSS_START_ID + 5)
+#define KEEM_BAY_DSS_REF_BYP_0 (KEEM_BAY_DSS_START_ID + 6)
+#define KEEM_BAY_DSS_BUS_1 (KEEM_BAY_DSS_START_ID + 7)
+#define KEEM_BAY_DSS_CORE_1 (KEEM_BAY_DSS_START_ID + 8)
+#define KEEM_BAY_DSS_REF_1 (KEEM_BAY_DSS_START_ID + 9)
+#define KEEM_BAY_DSS_REF_BYP_1 (KEEM_BAY_DSS_START_ID + 10)
+#define KEEM_BAY_DSS_MMU500 (KEEM_BAY_DSS_START_ID + 11)
+#define KEEM_BAY_DSS_MAX_ID (KEEM_BAY_DSS_MMU500)
+
+/* USS_CPR region. CLK_ID: 110 - 116 */
+#define KEEM_BAY_USS_START_ID (KEEM_BAY_DSS_MAX_ID + 1)
+#define KEEM_BAY_USS_SYS (KEEM_BAY_USS_START_ID + 0)
+#define KEEM_BAY_USS_REF (KEEM_BAY_USS_START_ID + 1)
+#define KEEM_BAY_USS_ALT_REF (KEEM_BAY_USS_START_ID + 2)
+#define KEEM_BAY_USS_SUSPEND (KEEM_BAY_USS_START_ID + 3)
+#define KEEM_BAY_USS_CORE (KEEM_BAY_USS_START_ID + 4)
+#define KEEM_BAY_USS_LOW_JIT (KEEM_BAY_USS_START_ID + 5)
+#define KEEM_BAY_USS_PHY_TST (KEEM_BAY_USS_START_ID + 6)
+#define KEEM_BAY_USS_MAX_ID (KEEM_BAY_USS_PHY_TST)
+
+/* MSS_CPR region. CLK_ID: 117 - 129 */
+#define KEEM_BAY_MSS_START_ID (KEEM_BAY_USS_MAX_ID + 1)
+#define KEEM_BAY_MSS_CPU (KEEM_BAY_MSS_START_ID + 0)
+#define KEEM_BAY_MSS_CPU_DSU (KEEM_BAY_MSS_START_ID + 1)
+#define KEEM_BAY_MSS_CPU_L2C (KEEM_BAY_MSS_START_ID + 2)
+#define KEEM_BAY_MSS_CPU_ICB (KEEM_BAY_MSS_START_ID + 3)
+#define KEEM_BAY_MSS_CPU_TIM (KEEM_BAY_MSS_START_ID + 4)
+#define KEEM_BAY_MSS_JPGENC (KEEM_BAY_MSS_START_ID + 5)
+#define KEEM_BAY_MSS_DTB (KEEM_BAY_MSS_START_ID + 6)
+#define KEEM_BAY_MSS_BLT (KEEM_BAY_MSS_START_ID + 7)
+#define KEEM_BAY_MSS_UPA (KEEM_BAY_MSS_START_ID + 8)
+#define KEEM_BAY_MSS_NCE (KEEM_BAY_MSS_START_ID + 9)
+#define KEEM_BAY_MSS_CV (KEEM_BAY_MSS_START_ID + 10)
+#define KEEM_BAY_MSS_ISP (KEEM_BAY_MSS_START_ID + 11)
+#define KEEM_BAY_MSS_CAM (KEEM_BAY_MSS_START_ID + 12)
+#define KEEM_BAY_MSS_MAX_ID (KEEM_BAY_MSS_CAM)
+
+/* MSS_CPR_AUX region. CLK_ID: 130 - 138 */
+#define KEEM_BAY_MSS_AUX_START_ID (KEEM_BAY_MSS_MAX_ID + 1)
+#define KEEM_BAY_MSS_AUX_CIF (KEEM_BAY_MSS_AUX_START_ID + 0)
+#define KEEM_BAY_MSS_AUX_LCD (KEEM_BAY_MSS_AUX_START_ID + 1)
+#define KEEM_BAY_MSS_AUX_SLVDS0 (KEEM_BAY_MSS_AUX_START_ID + 2)
+#define KEEM_BAY_MSS_AUX_SLVDS1 (KEEM_BAY_MSS_AUX_START_ID + 3)
+#define KEEM_BAY_MSS_AUX_MIPI_TX0 (KEEM_BAY_MSS_AUX_START_ID + 4)
+#define KEEM_BAY_MSS_AUX_MIPI_TX1 (KEEM_BAY_MSS_AUX_START_ID + 5)
+#define KEEM_BAY_MSS_AUX_MIPI_ECFG (KEEM_BAY_MSS_AUX_START_ID + 6)
+#define KEEM_BAY_MSS_AUX_MIPI_CFG (KEEM_BAY_MSS_AUX_START_ID + 7)
+#define KEEM_BAY_MSS_AUX_JPGENC (KEEM_BAY_MSS_AUX_START_ID + 8)
+#define KEEM_BAY_MSS_AUX_MAX_ID (KEEM_BAY_MSS_AUX_JPGENC)
+
+#define KEEM_BAY_NUM_CLOCKS (KEEM_BAY_MSS_AUX_MAX_ID + 1)
+
+#endif /* __DT_BINDINGS_KEEMBAY_CLOCKS_H */
diff --git a/include/dt-bindings/power/keembay-power.h b/include/dt-bindings/power/keembay-power.h
new file mode 100644
index 000000000000..335008a8b68e
--- /dev/null
+++ b/include/dt-bindings/power/keembay-power.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2020 Intel Corporation.
+ *
+ * Device tree defines for power domains in Keem Bay.
+ */
+
+#ifndef __DT_BINDINGS_KEEMBAY_POWER_H
+#define __DT_BINDINGS_KEEMBAY_POWER_H
+
+#define KEEM_BAY_PSS_POWER_DOMAIN 0
+#define KEEM_BAY_MSS_CPU_POWER_DOMAIN 1
+#define KEEM_BAY_VDEC_POWER_DOMAIN 2
+#define KEEM_BAY_VENC_POWER_DOMAIN 3
+#define KEEM_BAY_PCIE_POWER_DOMAIN 4
+#define KEEM_BAY_USS_POWER_DOMAIN 5
+#define KEEM_BAY_MSS_CAM_POWER_DOMAIN 6
+
+#endif /* __DT_BINDINGS_KEEMBAY_POWER_H */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
