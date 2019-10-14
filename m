Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1CAD5B58
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 08:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMOJGx7maysxdaUygxlFsEZbK3kAhJ6sd17pJsS1eqM=; b=ov8u98CR/C1RPp
	rIn2jh/RwvBZFgJ9DLhEqnBBO/DraCHKocHGfBuOfSXAdG+xHXHcxFIeQdVu2VNqSmcj9l0nRRTz/
	PbwuCAgnkzIrrZQbqWUyRN5BbFlZdA14oB2IUxZIDGKhHyEwdVzGLkZGoO4Ija1BPxcPAJ/bxE5P8
	6aqxBYc9GJ9ewtqlvBTp3DKrzGO1lRuO/73bvhdagLRv+N2RYeUc7tlXdZeOtjfgjdyoHeGfv9sRH
	sdhF2RR2Tw34xh+VNrY/00RNEBfewB+lB8YqL3NREZIAyAGV0l3G3HrwRlrbyi/iWDQm1gAOIFR5I
	i8bos5P4NQeep+epk4bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJtk3-0008Fx-Hj; Mon, 14 Oct 2019 06:22:03 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJtjs-0008Dt-NT
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 06:21:54 +0000
Received: by mail-pg1-x543.google.com with SMTP id w3so2551568pgt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 13 Oct 2019 23:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dt9aSfmBZ6LIV0i55cEdXYechi1vICbK96yocgmvqwk=;
 b=fMeNYw08oac+yqfjGz66wpSYP6I5s4d03WYFUwW7jPVKzEYacgso3WXR/vnIWvLWEP
 DfchWo8zVwmHxi6GKS1k/fpHOwmvAny5wvuYNGu2594W00s3xQOp7LVPcnrQiCSnfWU3
 NOELA+GK3dKPVeok9z7/hXLUxdDOYroqqMZb0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dt9aSfmBZ6LIV0i55cEdXYechi1vICbK96yocgmvqwk=;
 b=LRurBf3/FZD2zdTD/N6loyZ+FUkRGuyBTVLwrXFh6wxOjo0v7h1TBfYWzIUgfKS/eh
 rkhCLs2HUtD0m3w+Q7NaaXbkKwwriO/XKPGce+nnDmNUQxQEGq20CZ32OV82dniNERji
 ZHi3+LVCKu5SdexYpwUO5qvTaxNbAmYxpJ/1qbWyIR5IdQGv+IyGrSIxinJCsub5Vb29
 bfM5ZeuA+RqfrjTZY6JpT/TsXUHkx/wMsA+Zm18v4gi1XKh4DgY2/ll+VivTOZGIcvyz
 oGYt1bJwsbHGZ161WSObt84+P9Y4Qn56d8pFAdhCdtNaoDxzWExs01UXeT1Bv8pBKPYQ
 tL/Q==
X-Gm-Message-State: APjAAAXunSWlPj03MIvsuhrFTdbASaP38+ytKq7LmjhpAfQSR46eepuA
 V+q/VjqD0VJl2fGgL8gbmttXkg==
X-Google-Smtp-Source: APXvYqyg5mD4dW8rMIaeqg1wy4Th5FUhx0sXYlfMLKeDe3PUH+hGw/J1/3zoyaDIccQRSqG/n/Fvew==
X-Received: by 2002:a63:1417:: with SMTP id u23mr30319138pgl.279.1571034112068; 
 Sun, 13 Oct 2019 23:21:52 -0700 (PDT)
Received: from shiro.work (p1092222-ipngn200709sizuokaden.shizuoka.ocn.ne.jp.
 [220.106.235.222])
 by smtp.googlemail.com with ESMTPSA id g24sm16874074pfi.81.2019.10.13.23.21.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 23:21:51 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: 
Subject: [PATCH 3/4] ARM: mstar: Add infinity series dtsi
Date: Mon, 14 Oct 2019 15:15:58 +0900
Message-Id: <20191014061617.10296-3-daniel@0x0f.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191014061617.10296-1-daniel@0x0f.com>
References: <20191014061617.10296-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_232152_823426_E2020027 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Linus Walleij <linus.walleij@linaro.org>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>, daniel@0x0f.com,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Nathan Huckleberry <nhuck15@gmail.com>, Icenowy Zheng <icenowy@aosc.io>,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Stefan Agner <stefan@agner.ch>, Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Pitre <nico@fluxnic.net>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Andrew Morton <akpm@linux-foundation.org>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds initial dtsis for the infinity SoC family and a dtsi for
the infinity3 based msc313e part.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 MAINTAINERS                              |  1 +
 arch/arm/boot/dts/Makefile               |  3 +
 arch/arm/boot/dts/infinity.dtsi          | 71 ++++++++++++++++++++++++
 arch/arm/boot/dts/infinity3-msc313e.dtsi | 14 +++++
 arch/arm/boot/dts/infinity3.dtsi         | 11 ++++
 5 files changed, 100 insertions(+)
 create mode 100644 arch/arm/boot/dts/infinity.dtsi
 create mode 100644 arch/arm/boot/dts/infinity3-msc313e.dtsi
 create mode 100644 arch/arm/boot/dts/infinity3.dtsi

diff --git a/MAINTAINERS b/MAINTAINERS
index e35c3eb2b680..8045563ac76f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1986,6 +1986,7 @@ M:	Daniel Palmer <daniel@thingy.jp>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 F:	Documentation/devicetree/bindings/arm/mstar.yaml
 F:	arch/arm/mach-mstar/
+F:	arch/arm/boot/dts/infinity*.dtsi
 S:	Maintained
 
 ARM/NEC MOBILEPRO 900/c MACHINE SUPPORT
diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index b21b3a64641a..bf0aa53d3a13 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1303,3 +1303,6 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-bmc-opp-zaius.dtb \
 	aspeed-bmc-portwell-neptune.dtb \
 	aspeed-bmc-quanta-q71l.dtb
+dtb-$(CONFIG_ARCH_MSTAR) += \
+	infinity3-msc313e-breadbee.dtb
+
diff --git a/arch/arm/boot/dts/infinity.dtsi b/arch/arm/boot/dts/infinity.dtsi
new file mode 100644
index 000000000000..101582f277ff
--- /dev/null
+++ b/arch/arm/boot/dts/infinity.dtsi
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+/ {
+	#address-cells = <1>;
+	#size-cells = <1>;
+	interrupt-parent = <&gic>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a7";
+			reg = <0x0>;
+		};
+	};
+
+	arch_timer {
+		compatible = "arm,armv7-timer";
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2)
+				| IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(2)
+				| IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(2)
+				| IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(2)
+				| IRQ_TYPE_LEVEL_LOW)>;
+		clock-frequency = <6000000>;
+	};
+
+	pmu {
+		compatible = "arm,cortex-a7-pmu";
+		interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	soc: soc {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		gic: interrupt-controller@0x16001000 {
+			compatible = "arm,cortex-a7-gic";
+			#interrupt-cells = <3>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			interrupt-controller;
+			reg = <0x16001000 0x1000>,
+			      <0x16002000 0x1000>;
+		};
+
+		pm_uart: uart@1f221000 {
+			compatible = "ns16550a";
+			reg = <0x1f221000 0x100>;
+			reg-shift = <3>;
+			clock-frequency = <172000000>;
+			status = "disabled";
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/infinity3-msc313e.dtsi b/arch/arm/boot/dts/infinity3-msc313e.dtsi
new file mode 100644
index 000000000000..d0c53153faad
--- /dev/null
+++ b/arch/arm/boot/dts/infinity3-msc313e.dtsi
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+#include "infinity3.dtsi"
+
+/ {
+	memory {
+		device_type = "memory";
+		reg = <0x20000000 0x4000000>;
+	};
+};
diff --git a/arch/arm/boot/dts/infinity3.dtsi b/arch/arm/boot/dts/infinity3.dtsi
new file mode 100644
index 000000000000..bea22cf62373
--- /dev/null
+++ b/arch/arm/boot/dts/infinity3.dtsi
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+#include "infinity.dtsi"
+
+/ {
+};
+
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
