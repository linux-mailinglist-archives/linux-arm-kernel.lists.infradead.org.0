Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0761FB89A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 17:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3j0ZTenEJ5LJAmIcv09EOb7I0A1XcttEmihiVMp+vXY=; b=RucCC55CHPNMmQ
	KfjrQ5VGxQMLBYaeCESjiTf5GYMRy793Qt/+vM1hCGnEekgL70qP5MhtWQ1zTytMJoT8baeasajOh
	tvVEtmVFu+Aj57kiisbAJgKfkZMT3LxL8AoIBB0vFTGqwPaTt39sehToMBz4kCHPfKyMIRadm6sat
	bTXFa/ofMaVRdOr3F5EBD15gPaMdqfyNYubD5KpzlPgQXfABMw4VoAgDwydCW7LkGGv6L1IW3Xk57
	Sm743j77KknsRiU3Fvzp3dwpRXUrgpOPeCjUH7DuMgzdeV7ZC76fjxcau4bSliKPhwqAGYGfpVEHz
	xWisHM/EcGEcycY5aNWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlDym-0003BL-U7; Tue, 16 Jun 2020 15:58:28 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDxC-0001ZP-46
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 15:56:52 +0000
IronPort-SDR: KczdYSLlVTMOEWh2c2EI+nS4Xy4fsLA4Unw78HNRi6oMU0Ucsrfl6VpdZsSlxxZS3i3rIwvdPS
 KvD9vVw6PRMA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:56:49 -0700
IronPort-SDR: aqdBPz1alytmC5uJAhIOFCRO1WA9H/qdXQeskpOvCOHmLMBcGqgMk/hig45cAJ90neUJB2nZXX
 D8wny2avyf0g==
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="449888162"
Received: from pperycz-mobl.ger.corp.intel.com (HELO
 dalessan-mobl1.ir.intel.com) ([10.213.235.69])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:56:46 -0700
From: Daniele Alessandrelli <daniele.alessandrelli@linux.intel.com>
To: linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 7/7] arm64: dts: keembay: Add device tree for Keem Bay EVM
 board
Date: Tue, 16 Jun 2020 16:56:13 +0100
Message-Id: <20200616155613.121242-8-daniele.alessandrelli@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200616155613.121242-1-daniele.alessandrelli@linux.intel.com>
References: <20200616155613.121242-1-daniele.alessandrelli@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_085650_241169_03261586 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

Add initial device tree for Keem Bay EVM board. With this minimal device
tree the board boots fine using an initramfs image.

Reviewed-by: Dinh Nguyen <dinguyen@kernel.org>
Signed-off-by: Daniele Alessandrelli <daniele.alessandrelli@intel.com>
---
 MAINTAINERS                               |  1 +
 arch/arm64/boot/dts/intel/Makefile        |  1 +
 arch/arm64/boot/dts/intel/keembay-evm.dts | 55 +++++++++++++++++++++++
 3 files changed, 57 insertions(+)
 create mode 100644 arch/arm64/boot/dts/intel/keembay-evm.dts

diff --git a/MAINTAINERS b/MAINTAINERS
index 610907bf391b..d714762e805c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1959,6 +1959,7 @@ M:	Paul J. Murphy <paul.j.murphy@intel.com>
 M:	Daniele Alessandrelli <daniele.alessandrelli@intel.com>
 S:	Maintained
 F:	Documentation/devicetree/bindings/arm/keembay.yaml
+F:	arch/arm64/boot/dts/intel/keembay-evm.dts
 F:	arch/arm64/boot/dts/intel/keembay-soc.dtsi
 F:	include/dt-bindings/clock/keembay-clocks.h
 F:	include/dt-bindings/power/keembay-power.h
diff --git a/arch/arm64/boot/dts/intel/Makefile b/arch/arm64/boot/dts/intel/Makefile
index 40cb16e8c814..296eceec4276 100644
--- a/arch/arm64/boot/dts/intel/Makefile
+++ b/arch/arm64/boot/dts/intel/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 dtb-$(CONFIG_ARCH_AGILEX) += socfpga_agilex_socdk.dtb \
 			     socfpga_agilex_socdk_nand.dtb
+dtb-$(CONFIG_ARCH_KEEMBAY) += keembay-evm.dtb
diff --git a/arch/arm64/boot/dts/intel/keembay-evm.dts b/arch/arm64/boot/dts/intel/keembay-evm.dts
new file mode 100644
index 000000000000..46859763cb03
--- /dev/null
+++ b/arch/arm64/boot/dts/intel/keembay-evm.dts
@@ -0,0 +1,55 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2020, Intel Corporation
+ *
+ * Device tree describing Keem Bay EVM board.
+ */
+
+/dts-v1/;
+
+#include "keembay-soc.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "Keem Bay EVM";
+	compatible = "intel,keembay-evm";
+
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	aliases {
+		serial0 = &uart3;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		/* 2GB of DDR memory. */
+		reg = <0x0 0x80000000 0x0 0x80000000>;
+	};
+
+	sysmem@84000000 {
+		compatible = "mmio-sram";
+		reg = <0x0 0x84000000 0x0 0x800000>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges = <0 0x0 0x0 0x84000000 0x0 0x800000>;
+		/*
+		 * Allocate 1MB at fixed location for shared memory between
+		 * non-secure world and BL31 to be used for SCMI.
+		 */
+		scmi_sec_shmem: scmi_sec_shmem@0 {
+			compatible = "arm,scmi-shmem";
+			reg = <0x0 0x0 0x0 0x100000>;
+			pool;
+		};
+	};
+};
+
+&uart3 {
+	status = "okay";
+};
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
