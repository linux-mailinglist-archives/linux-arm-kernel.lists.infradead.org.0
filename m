Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EFEAF517
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 06:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tqqUjfd+rT+ZHDOOKFY4OnC42CuXMZgdqWyIgU0VEjU=; b=SfO+gCp7HAgpxV
	gMZtZ848SalwnzioMqxCSBd4QmbRtReZyTUY4GSnaz27CZWzGhwqzIKdaDd8Myt5peMgUFkkKbiLB
	L6Vq1fJ5ENOYuJ0Et3CNKcpUKPLT7fSYCmlzjwGWR29/0+1GXVwYjP1OqkMp5CGJdJGFD8Cu6czIF
	scU+wR209/NBvBJGXb64uElqF8Am/pmJJllBQW7q9EcGmR0uEr+7H8FJ75FqMe13ShfuPsrTywsqt
	ARsjbgkhI0SQvQWSfssv2iyJA9KikyZgS6Lm8hNsqALxvfcVA1AmaHpvg5ID5GiOlq796LSrIcE+D
	8wEskveNteEPdDzwKUew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7uJD-0004By-8O; Wed, 11 Sep 2019 04:32:47 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7uIS-0003nG-BD
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 04:32:01 +0000
Received: by mail-pg1-x542.google.com with SMTP id n190so10862297pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 21:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SZu4k1qRyiVWGOszMxiraaL6ZfkJ0Nf9VDkUL9HZTYc=;
 b=ULco3FwuximHuXU65IRL2ZHBklDOdnoOcGKGzmFnU0OwxOaTC9m8syoWmCStRj56SB
 RGfJhFp0FZMpN7vIos6ufqhNvEJ3kZ7/Gdgyli81O0oODp0431zbSiILudot31NjAh1U
 ztsQqT87fk0oE1riR2rRLYvgp6Q9pdESbitQU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SZu4k1qRyiVWGOszMxiraaL6ZfkJ0Nf9VDkUL9HZTYc=;
 b=AbTxQuMZvzRJPR6Map7GGQ3fhWjltXxKl8uFY5MYYFsmxKWzqWj0ma+5Qool5dzslm
 YkjDryksnwLE6unizNnaY6hcsKco+4sCuyR97BBPiSSWNFqIPTTw6xkXyHKw/AG7iM7g
 ay60/STlPkBQJSmG7T3tbRiNBJY5A/acukf0+BMHAxa2wsKy3vr2mxKMR2nYkMA174C+
 +gkWr1NJRtbqkpJp2KkKpM739XEvdE/6UOsCXIBgUVbhXpFK5QL1B09fqjEF5U4L26Sv
 BAUWT5PA7nm2rDiE8R+5H3iqeNg1AH6vqAjr2xfSZRlpzlF2WN2tw8O9bOp2KbDFZO2n
 qQnw==
X-Gm-Message-State: APjAAAWRjT8UICBv2ZN2LJg9TdGw3lbRAvtw9Vi1SU3YFvgwLEk0QZbY
 Vb1Or1OQ7jv5xgY/TDKnRU+DOdrzwrENAA==
X-Google-Smtp-Source: APXvYqwmsIVuIhHXEnSJyy2CmEJAdg0w8fFNg8szCdH0CLzevk0T2a7F0UgoUE+wLOEIJ5WEU6zXvA==
X-Received: by 2002:aa7:8a98:: with SMTP id a24mr39688468pfc.101.1568176319246; 
 Tue, 10 Sep 2019 21:31:59 -0700 (PDT)
Received: from shiro.work (p1092222-ipngn200709sizuokaden.shizuoka.ocn.ne.jp.
 [220.106.235.222])
 by smtp.googlemail.com with ESMTPSA id u17sm264700pjn.7.2019.09.10.21.31.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 21:31:58 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC 3/4] ARM: mstar: Add msc313 series dtsi
Date: Wed, 11 Sep 2019 13:31:41 +0900
Message-Id: <20190911043142.3734-3-daniel@0x0f.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190911043142.3734-1-daniel@0x0f.com>
References: <20190911043142.3734-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_213200_405689_D7296521 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Palmer <daniel@0x0f.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds an initial dtsi for the msc313 SoC family and a dtsi for
the msc313e part.
---
 MAINTAINERS                    |  1 +
 arch/arm/boot/dts/msc313.dtsi  | 71 ++++++++++++++++++++++++++++++++++
 arch/arm/boot/dts/msc313e.dtsi | 14 +++++++
 3 files changed, 86 insertions(+)
 create mode 100644 arch/arm/boot/dts/msc313.dtsi
 create mode 100644 arch/arm/boot/dts/msc313e.dtsi

diff --git a/MAINTAINERS b/MAINTAINERS
index b046773af438..c71c3ec3d43f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1960,6 +1960,7 @@ M:	Daniel Palmer <daniel@thingy.jp>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 F:	Documentation/devicetree/bindings/arm/mstar.yaml
 F:	arch/arm/mach-mstar/
+F:	arch/arm/boot/dts/msc313*.dtsi
 S:	Maintained
 
 ARM/NEC MOBILEPRO 900/c MACHINE SUPPORT
diff --git a/arch/arm/boot/dts/msc313.dtsi b/arch/arm/boot/dts/msc313.dtsi
new file mode 100644
index 000000000000..101582f277ff
--- /dev/null
+++ b/arch/arm/boot/dts/msc313.dtsi
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
diff --git a/arch/arm/boot/dts/msc313e.dtsi b/arch/arm/boot/dts/msc313e.dtsi
new file mode 100644
index 000000000000..c4842625f6e2
--- /dev/null
+++ b/arch/arm/boot/dts/msc313e.dtsi
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+#include "msc313.dtsi"
+
+/ {
+	memory {
+		device_type = "memory";
+		reg = <0x20000000 0x4000000>;
+	};
+};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
