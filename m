Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BE4E1AE5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EUhf+kWhC9SDR20/l/p2z10GmSgJMfF5Wc39Fpv0jwQ=; b=gcgz5p6sIyj2GsjQcki4fB+BHS
	9Bq4oVT+UsJ8Kgg6uDPcZBvGuAJw8f3/Vef989V7EhwYMgvzjsbi7+bIwquaiLixXvPkBxZvl+hgE
	fM9xrX2hPK11oa9mEFPgosxyLbIWpdClbHoAJ4WZZBcjyPKQilJhD+MckxVsUBVH4MXaHNoe6MphQ
	QaV4IM5UvTCiVEbBtPNZ49nY36NIJoDbs7DPCt8mMNzn7jjCCbNLsUg54dDl5RGOXDEsl2nGj7KQn
	pdlsIXIB4rtF6f+HO7lMUUr3Rw0cdJkw8IMHDX+MYfABZWTW1IYqwAlmOcPorLyHKfruevg70rpJQ
	aOHQNlzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFw0-0004Gd-EF; Wed, 23 Oct 2019 12:40:16 +0000
Received: from leibniz.telenet-ops.be ([195.130.137.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFpj-0006mx-A8
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:33:55 +0000
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be
 [IPv6:2a02:1800:110:4::f00:19])
 by leibniz.telenet-ops.be (Postfix) with ESMTPS id 46yqYN6984zMqdqM
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 14:33:44 +0200 (CEST)
Received: from ramsan ([84.194.98.4]) by laurent.telenet-ops.be with bizsmtp
 id H0Zk2100d05gfCL010ZkaV; Wed, 23 Oct 2019 14:33:44 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFpg-0003uD-4t; Wed, 23 Oct 2019 14:33:44 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFpg-0003Qc-3g; Wed, 23 Oct 2019 14:33:44 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH v2 09/11] arm64: dts: renesas: Add support for Salvator-XS
 with R-Car M3-W+
Date: Wed, 23 Oct 2019 14:33:40 +0200
Message-Id: <20191023123342.13100-10-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023123342.13100-1-geert+renesas@glider.be>
References: <20191023123342.13100-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_053347_564208_9FA3CE26 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [195.130.137.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Eugeniu Rosca <erosca@de.adit-jv.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add initial support for the Renesas Salvator-X 2nd version development
board equipped with an R-Car M3-W+ SiP with 8 (2 x 4) GiB of RAM.

The memory map is as follows:
  - Bank0: 4GiB RAM : 0x000048000000 -> 0x000bfffffff
		      0x000480000000 -> 0x004ffffffff
  - Bank1: 4GiB RAM : 0x000600000000 -> 0x006ffffffff

Based on a patch in the BSP by Takeshi Kihara
<takeshi.kihara.df@renesas.com>.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Tested-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
v2:
  - Add Reviewed-by, Tested-by.
---
 arch/arm64/boot/dts/renesas/Makefile          |  1 +
 .../boot/dts/renesas/r8a77961-salvator-xs.dts | 31 +++++++++++++++++++
 2 files changed, 32 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r8a77961-salvator-xs.dts

diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/renesas/Makefile
index 937a3e4c3fadebb3..8fdbd2267384186b 100644
--- a/arch/arm64/boot/dts/renesas/Makefile
+++ b/arch/arm64/boot/dts/renesas/Makefile
@@ -15,6 +15,7 @@ dtb-$(CONFIG_ARCH_R8A7796) += r8a7796-salvator-xs.dtb
 dtb-$(CONFIG_ARCH_R8A77960) += r8a7796-salvator-x.dtb r8a7796-m3ulcb.dtb
 dtb-$(CONFIG_ARCH_R8A77960) += r8a7796-m3ulcb-kf.dtb
 dtb-$(CONFIG_ARCH_R8A77960) += r8a7796-salvator-xs.dtb
+dtb-$(CONFIG_ARCH_R8A77961) += r8a77961-salvator-xs.dtb
 dtb-$(CONFIG_ARCH_R8A77965) += r8a77965-salvator-x.dtb r8a77965-salvator-xs.dtb
 dtb-$(CONFIG_ARCH_R8A77965) += r8a77965-m3nulcb.dtb
 dtb-$(CONFIG_ARCH_R8A77965) += r8a77965-m3nulcb-kf.dtb
diff --git a/arch/arm64/boot/dts/renesas/r8a77961-salvator-xs.dts b/arch/arm64/boot/dts/renesas/r8a77961-salvator-xs.dts
new file mode 100644
index 0000000000000000..4abd78ac1cd597d9
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r8a77961-salvator-xs.dts
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree Source for the Salvator-X 2nd version board with R-Car M3-W+
+ *
+ * Copyright (C) 2018 Renesas Electronics Corp.
+ */
+
+/dts-v1/;
+#include "r8a77961.dtsi"
+#include "salvator-xs.dtsi"
+
+/ {
+	model = "Renesas Salvator-X 2nd version board based on r8a77961";
+	compatible = "renesas,salvator-xs", "renesas,r8a77961";
+
+	memory@48000000 {
+		device_type = "memory";
+		/* first 128MB is reserved for secure area. */
+		reg = <0x0 0x48000000 0x0 0x78000000>;
+	};
+
+	memory@400000000 {
+		device_type = "memory";
+		reg = <0x4 0x80000000 0x0 0x80000000>;
+	};
+
+	memory@600000000 {
+		device_type = "memory";
+		reg = <0x6 0x00000000 0x1 0x00000000>;
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
