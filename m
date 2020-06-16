Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3C61FB03A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 14:20:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0FC9w3u8FXfaMYIUstQiHpO320tehecipD6Neuy4N+o=; b=NrFtmFhFl9nFXe
	7owhItM4YaVYtAYm/WUYnOjBkYtT39ENruZKn9K0YDNBnaF07+RnkmaWlzlNrgIK79CUq//AA9/3k
	gsgwXTuPx055W3jKKgoun2mxl3KOu/AuhSNUvxqrAP65Fv5OlsJYdiBelZTsROExVTB4/pY4hxWFn
	xlD97StzlZrrEry2+5ZtBKEj6DOzkURGdy8jEyDs91hDxE5c8Leq5iejkmahzvZObNE7T/yFeexO/
	eAwutAIgOszd5lxTAzwaw701Yv2/8HTM9Pw6mwGSXbZ6i2E6LgjVFAWojZO95DMi7LW2XgruYlW71
	Kun7z59KzDOx3fc7k6vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAZL-0002H9-9d; Tue, 16 Jun 2020 12:19:59 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAWv-0000PM-Bw
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 12:17:31 +0000
Received: by mail-pj1-x1044.google.com with SMTP id h22so1493773pjf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 05:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BJ9zmkSGiRc0Ox6+pRK/p41cAOxjrOMSE4GBWh4e2nA=;
 b=KzmWBsLyrtRflUXX/4QUXLtW0xoZRVMzE6WqoqeCj9rvHhboH4mpNqEUQwemXpfJ5P
 zRz8Hfy49epMaaPMcTSVb3nJ9COZbfAVgdnlkG2QzRTePs1Vu9SCCRXKCXJisCc23dIc
 4GDMDZJStGFgU+gQfYwLi34OmyOyA2gdby97o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BJ9zmkSGiRc0Ox6+pRK/p41cAOxjrOMSE4GBWh4e2nA=;
 b=HGckWMhoL4GL3uPCEhgzL8dDBcEd7PQr7OiJGb0WY0E+ezK2f4umNyretVYVhfZvRe
 CUaMDyLCVS6NI/jakmd1WZmCsO/FA0qatGPIcDrkKvDnreRkbIKWqhCXWDAMH6sKQDZ6
 Zj5sIUssbC+vZgc4LLIS01/g1EKHgKcHOHtdLR0gAydQtjswgDR94sANTj7hpTuLu6dO
 mV9L6/r7rZL8okk+Cl3MXEgYyUMk746hvRNb7h0+pxruq3f5n+WNAzlGM3HhPLI5jZz8
 5EgDI82yzQg6WS8XXQdI6XzAwoHN9jP1vCMzMhLpeNYq1zOIPSG0x3wwMZypJzgvlTmG
 jsBg==
X-Gm-Message-State: AOAM530y/zYEG74hPOmsdOF1uFAvHoHZy4FzuNPlG1Jw77OANJ3A4lAn
 MLMHht8G8v5CQiTRKv1fZ+gBnGYg/hc=
X-Google-Smtp-Source: ABdhPJy9kQPlGP5pMTXQtzWTqqIdiaj6kCIdrlt0fhTqMmsXUccVucFaZuqu8O9Gc3DZ6FeV5o1ywQ==
X-Received: by 2002:a17:90b:46cf:: with SMTP id
 jx15mr2520556pjb.121.1592309847849; 
 Tue, 16 Jun 2020 05:17:27 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id f23sm2360703pja.8.2020.06.16.05.17.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 05:17:27 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 08/12] ARM: mstar: Add Armv7 base dtsi
Date: Tue, 16 Jun 2020 21:15:21 +0900
Message-Id: <20200616121525.1409790-9-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200616121525.1409790-1-daniel@0x0f.com>
References: <20200612130032.3905240-2-daniel@0x0f.com>
 <20200616121525.1409790-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_051729_579080_2A258991 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Daniel Palmer <daniel@0x0f.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds initial dtsi for the base MStar/Sigmastar Armv7 SoCs.

These SoCs have very similar memory maps and this will avoid
duplicating nodes across multiple dtsis.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 MAINTAINERS                     |  1 +
 arch/arm/boot/dts/mstar-v7.dtsi | 83 +++++++++++++++++++++++++++++++++
 2 files changed, 84 insertions(+)
 create mode 100644 arch/arm/boot/dts/mstar-v7.dtsi

diff --git a/MAINTAINERS b/MAINTAINERS
index 3d31bc749f6d..54a2fc60a1d9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2123,6 +2123,7 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 W:	http://linux-chenxing.org/
 F:	Documentation/devicetree/bindings/arm/mstar.yaml
+F:	arch/arm/boot/dts/mstar-v7.dtsi
 F:	arch/arm/mach-mstar/
 
 ARM/NEC MOBILEPRO 900/c MACHINE SUPPORT
diff --git a/arch/arm/boot/dts/mstar-v7.dtsi b/arch/arm/boot/dts/mstar-v7.dtsi
new file mode 100644
index 000000000000..3b99bb435bb5
--- /dev/null
+++ b/arch/arm/boot/dts/mstar-v7.dtsi
@@ -0,0 +1,83 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2020 thingy.jp.
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
+		/*
+		 * we shouldn't need this but the vendor
+		 * u-boot is broken
+		 */
+		clock-frequency = <6000000>;
+	};
+
+	soc: soc {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x16001000 0x16001000 0x00007000>,
+			 <0x1f000000 0x1f000000 0x00400000>;
+
+		gic: interrupt-controller@16001000 {
+			compatible = "arm,cortex-a7-gic";
+			reg = <0x16001000 0x1000>,
+			      <0x16002000 0x2000>,
+			      <0x16004000 0x2000>,
+			      <0x16006000 0x2000>;
+			#interrupt-cells = <3>;
+			interrupt-controller;
+			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(2)
+					| IRQ_TYPE_LEVEL_LOW)>;
+		};
+
+		riu: bus@1f000000 {
+			compatible = "simple-bus";
+			reg = <0x1f000000 0x00400000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x1f000000 0x00400000>;
+
+			l3bridge: l3bridge@204400 {
+				compatible = "mstar,l3bridge";
+				reg = <0x204400 0x200>;
+			};
+
+			pm_uart: uart@221000 {
+				compatible = "ns16550a";
+				reg = <0x221000 0x100>;
+				reg-shift = <3>;
+				clock-frequency = <172000000>;
+				status = "disabled";
+			};
+		};
+	};
+};
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
