Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 134626150F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 15:24:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YNrp4pOEl7AS8xdKcXVszRRhBX8jLZ7i8kTrRP17x7g=; b=QFJEuGMmfqFF2/
	Up8tK0bsc3QU3kWXLes4ELH2VZ9p2HZ8tt7i8vmXLjHxOR3Q7HmOMbgGLM4TR+KmERetWn2MxfGGG
	SRRYEBCRs0RWZhmx8ZAkZ+04FFk3YzlkSTgDWg3CoUVGI4cgesPy4zXby1cB8mRvb2npUbJ+5ebTg
	MiGzLCGjCXJ0V/2Y8JUqQza5Ov6Xy4ro/AP5gzIBXhe/+ZiHtmRLY29M3I01jglWZyV9gX2tbbrDx
	/J8kssoeLEBt9BPmZAjI+TxnmqLF+yykBWyAVL4lnStH9A23ZO3BOFULMaBeRMy17Yfpyz5OUBtiL
	z9LLE6XfKL8bx+++Gs5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hk79o-0003ab-G6; Sun, 07 Jul 2019 13:24:44 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hk791-0003A4-JR
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jul 2019 13:23:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id n9so5081426wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jul 2019 06:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=PozgmYpk6e3239kZizZzBtKP9r6DhYvVMkCeoENwK5I=;
 b=AJ3XsY8NEjeBatMG4PqOVhNRVdbJjoDylIKGyllCrFJwaakcBJ+0DAoC8EARR1/AUQ
 YmNlLjGQBELKF4TR/02qTu3RnelvSXLpMpOFJEEjNXVbAB3J279FIG9RI3m0itfLeTbb
 s3Amqemg5YinR39IY90gQ3GrjfZ3Ro6VcfSoi7b/RLaP3gPIzVrfgG9YxnLiuifgSghJ
 Eq+SdXOg390GlE9r4bjasRkUN9RR7CFMukhOMGXCpiJptfdVgTrsxXVBBSd5LC/CKV6y
 ji7aDwnNNAbOScjXSI9fpT+mOdNLnXxASRmPNsn4yOQk0EmXRTeHuXo7sTlS21S5Weo5
 qr7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=PozgmYpk6e3239kZizZzBtKP9r6DhYvVMkCeoENwK5I=;
 b=mA9VbPB1tckCpz0+c8cddWRWVgiyz78TfhHNY4LV0NEog45c76w9h2g6PeQUQUw1cw
 3carpE0iKjuMAkXOBTx78qLtSBCzCGz+IGFha6F8qmQ1PYC6ytyINjN1Umh/BAoaelY5
 1uFo7hlU/QaLB43Eik0U7CohmNBEpc7j6VgM4XWBy0K1W+FRmGRMgZN5Tudw3+jKbVcl
 BE4rS86AvrkfawN8V2HGhJZu1v5tmgXgoNKA36GVqR34ImxisJmFEF/BJqxbeZHVEV0p
 ibXPOgDajFc3ixno5YBTQUlPQEvca3M/fw2+g3XFRJyYhtzPYJb+/IRARQfWQbVSIlxq
 eVlw==
X-Gm-Message-State: APjAAAXtvP6aPMug0hMdbw1k/CbY2/6r8Bvp69esicTacO7J6g9dkU5r
 k97CFh/jRjv9+HnnOc7p06Y=
X-Google-Smtp-Source: APXvYqyLTMPgQmEK2+zOPxs1c/zJny/YSIhqAGndbB9+JqNn+j/q9cwwNQGN6pU1g2R1MipoXZd3JA==
X-Received: by 2002:adf:efd2:: with SMTP id i18mr11325854wrp.145.1562505834319; 
 Sun, 07 Jul 2019 06:23:54 -0700 (PDT)
Received: from arks.localdomain (179.red-83-58-138.dynamicip.rima-tde.net.
 [83.58.138.179])
 by smtp.gmail.com with ESMTPSA id z5sm9876282wmf.48.2019.07.07.06.23.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 07 Jul 2019 06:23:53 -0700 (PDT)
Date: Sun, 7 Jul 2019 15:23:51 +0200
From: Aleix Roca Nonell <kernelrocks@gmail.com>
To: Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH 6/6] arm64: dts: realtek: Add bpi-w2 board support and its
 RTD1296 SoC
Message-ID: <20190707132351.GG13340@arks.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_062356_532500_B3EC8E99 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelrocks[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add basic device tree description for the Bannana Pi W2 (bpi-w2) and its
SoC. The board should be able to boot up to a ram based rootfs.

The only information available on the memreserve areas are the macro
names holing the addresses in the original source code:

 - 0x00000000 0x00100000 - apparently used to fix an undefined bug
 - 0x02600000 0x00c00000 - ION_AUDIO_HEAP
 - 0x03200000 0x0b800000 - ION_MEDIA_HEAP 1
 - 0x10000000 0x00014000 - ACPU_IDMEM
 - 0x14200000 0x09200000 - ION_MEDIA_HEAP 2

The CPUs still lack the enable-method property "rtk-spin-table" as
previously noted in [1].

[1] - commit 72a7786c0a0d65 ("ARM64: dts: Add Realtek RTD1295 and Zidoo X9S")

Signed-off-by: Aleix Roca Nonell <kernelrocks@gmail.com>
---
 arch/arm64/boot/dts/realtek/Makefile          |  1 +
 .../dts/realtek/rtd1296-bananapi-bpi-w2.dts   | 27 +++++++
 arch/arm64/boot/dts/realtek/rtd1296.dtsi      | 77 +++++++++++++++++++
 3 files changed, 105 insertions(+)
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1296-bananapi-bpi-w2.dts
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1296.dtsi

diff --git a/arch/arm64/boot/dts/realtek/Makefile b/arch/arm64/boot/dts/realtek/Makefile
index 90c897ac3f7a..c1a6654e7d5b 100644
--- a/arch/arm64/boot/dts/realtek/Makefile
+++ b/arch/arm64/boot/dts/realtek/Makefile
@@ -2,3 +2,4 @@
 dtb-$(CONFIG_ARCH_REALTEK) += rtd1295-mele-v9.dtb
 dtb-$(CONFIG_ARCH_REALTEK) += rtd1295-probox2-ava.dtb
 dtb-$(CONFIG_ARCH_REALTEK) += rtd1295-zidoo-x9s.dtb
+dtb-$(CONFIG_ARCH_REALTEK) += rtd1296-bananapi-bpi-w2.dtb
diff --git a/arch/arm64/boot/dts/realtek/rtd1296-bananapi-bpi-w2.dts b/arch/arm64/boot/dts/realtek/rtd1296-bananapi-bpi-w2.dts
new file mode 100644
index 000000000000..1a81b9f2c3c3
--- /dev/null
+++ b/arch/arm64/boot/dts/realtek/rtd1296-bananapi-bpi-w2.dts
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/dts-v1/;
+
+#include "rtd1296.dtsi"
+
+/ {
+	model = "Banana Pi BPI-W2";
+	compatible = "bananapi,bpi-w2", "realtek,rtd1296";
+
+	chosen {
+		bootargs = "earlycon=uart8250,mmio32,0x98007800";
+	};
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0 0x80000000>; /* 2048 MB */
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/realtek/rtd1296.dtsi b/arch/arm64/boot/dts/realtek/rtd1296.dtsi
new file mode 100644
index 000000000000..f7a5f3b9698c
--- /dev/null
+++ b/arch/arm64/boot/dts/realtek/rtd1296.dtsi
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+// extension because of bug reported in realtek's source code
+/memreserve/ 0x00000000 0x00100000;
+
+/memreserve/ 0x02600000 0x00c00000;
+/memreserve/ 0x03200000 0x0b800000;
+/memreserve/ 0x10000000 0x00014000;
+/memreserve/ 0x14200000 0x09200000;
+
+#include "rtd129x.dtsi"
+
+/ {
+	compatible = "realtek,rtd1296";
+	interrupt-parent = <&gic>;
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		A53_0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53", "arm,armv8";
+			reg = <0x0>;
+			cpu-release-addr = <0x0 0x9801AA44>;
+			next-level-cache = <&a53_l2>;
+		};
+
+		A53_1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53", "arm,armv8";
+			reg = <0x1>;
+			cpu-release-addr = <0x0 0x9801AA44>;
+			next-level-cache = <&a53_l2>;
+		};
+
+		A53_2: cpu@2 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53", "arm,armv8";
+			reg = <0x02>;
+			cpu-release-addr = <0x0 0x9801AA44>;
+			next-level-cache = <&a53_l2>;
+		};
+
+		A53_3: cpu@3 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53", "arm,armv8";
+			reg = <0x03>;
+			cpu-release-addr = <0x0 0x9801AA44>;
+			next-level-cache = <&a53_l2>;
+		};
+
+		a53_l2: l2-cache {
+			compatible = "cache";
+		};
+	};
+
+	soc@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		reg = <0x98000000 0x70000>;
+		compatible = "simple-bus";
+		device_type = "soc";
+		ranges;
+	};
+
+	arch_timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <1 13 0xf08>,
+			<1 14 0xf08>,
+			<1 11 0xf08>,
+			<1 10 0xf08>;
+		clock-frequency = <27000000>;
+	};
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
