Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DD5984D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 21:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVopYxFjYN/8F8alKfBtYoftXOgnZezr1S6ggT5ET7I=; b=R2Arjn5O0CxioL
	lrdGi2qDdYWsgF//TbDrhynztdptyio0H5YAVKAxkOdSAOs6LByYgdAG7ts2MLeWPK1RIoXWHU6r9
	TQnTq3sIOtw8tUtae3YuIQ+y/RuUPQP9f12YFNp6I13ViBMMaARZCwyP8XwXMPvSFlnx4KXpiGFvJ
	ra1Mfa7cppyKjrZXcfN7PAWsEzTHVTjw+f7p0IwZGjIjGDedmiD1LFCOVe7zZqbXwpd2Ptqc8zec8
	JbVC5hQWhmKrak4Emly1I22v0UNWmZY8eCunVCoLnYFUjwD6JU2Z4kO7DC+iOEPlu8MIAEoRHfcBG
	EO+EqRaxYNszqiNPAyJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Wfj-0007eW-S1; Wed, 21 Aug 2019 19:53:31 +0000
Received: from mout.perfora.net ([74.208.4.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0WfL-00074H-TT
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 19:53:09 +0000
Received: from towel.hsd1.wa.comcast.net ([71.197.225.149]) by
 mrelay.perfora.net (mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id
 1M27K1-1hy3gg1CrB-002aZf; Wed, 21 Aug 2019 21:52:59 +0200
From: Sunil Mohan Adapa <sunil@medhas.org>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 2/2] arm64: dts: allwinner: a64: Add A64 OlinuXino board
 (with eMMC)
Date: Wed, 21 Aug 2019 12:52:17 -0700
Message-Id: <20190821195217.4166-3-sunil@medhas.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190821195217.4166-1-sunil@medhas.org>
References: <20190821195217.4166-1-sunil@medhas.org>
MIME-Version: 1.0
X-Provags-ID: V03:K1:OwDbpGg2Ks5LgJ1WREQiBCK2IS1JoIJCbCDp2yFIvmREaZKDzFM
 MUZvypqZfQ+mb0pD3OzvI61YjgxZe33c2BjJ9fk+blKIBh002Tj1LkJfzYAEV+gVu/YDlC9
 h5w+Zm4290wRZvMKcihrrWbH5v21/RB8bYx192Vm6tdLgI8vtku3fZe7Is4gLevGGET0snp
 XVzYlT4Em8DS8i1ISoMNg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6tFNsLTbxzw=:Eg8Ltl30HRzOpUOtw4lJjN
 kE/d/WmvSAJHezs/mEj0jh3ToOYbB7idgjJbX8nnMDaqphzH2JVY+XbqS0vnNMV6/UAqz1YZH
 CO9a96ZbYT8bqZKccUjRm3U3dOvwhrujklQh5kwAxB3L8/5Zo1nAA5lhysJnQSJGN0tBVoudb
 oYbSRNGpSnV9tUzLKfTyMWzY4odWqmGYq7OVsl8G33dvjqUlhCrxk9bHlQyFe/EOpBVX3zL3M
 GIwDc66RxSG7nHxm4z7xYqW6aief40PYUrhbi+705xtn0LYxGCrYh2AxEtZzl4tzQpN7A3pAg
 lw5vCdgZK1l3z1TxA3z976TqfMkG55cHez+vxjChtW42SP1CS0VYVbw31ZYsngv2G6VIEbkTx
 s6u+VeH67JnJGT7YJbl75kh5dCHJimJo2ihlp99GbqWTf4fsx6XyspW7keuU5Rwfg7NlIRfl+
 b9HJ2Sil5BzbH6OOGBs7yTs3CtVzQuDavaC8VEqZO+A9aFizQLvzW1YprmoxUcB/1BHbNDZ6Z
 UyaaVSHMY43VqGOE149jJxcwFNZr1XagdSV/0IHXSqwNhT/CgI0g+G7Ms35uhfNgo3jMlehfa
 1y02r5DBfP4Fp3qWuTs/SazTrx+BG1N3V/C4/l9u6O1W+yFTqCL9jxFYskmAlQpu89Aq+a4CB
 lURJTbziwTx3sM5G3YRyYX8As75ksMV/TE+qHgP41UcYE8g1WzJkyUPjAkPghAfiTYu8CkZCm
 a3X01otzYjHfCiQyVOH8db/JCtQ6E/cx0VLW7Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_125308_048013_254D5318 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.194 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, maxime.ripard@bootlin.com,
 Sunil Mohan Adapa <sunil@medhas.org>, Martin Ayotte <martinayotte@gmail.com>,
 wens@csie.org, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A64 OLinuXino board from Olimex has three variants with onboard eMMC:
A64-OLinuXino-1Ge16GW, A64-OLinuXino-1Ge4GW and A64-OLinuXino-2Ge8G-IND. In
addition, there are two variants without eMMC. One without eMMC and one with SPI
flash. This suggests the need for separate device tree for the three eMMC
variants.

This patch has been tested on A64-OLinuXino-1Ge16GW with Linux 5.0 from Debain.
Basic benchmarks using Flexible IO Tester show reasonable performance from the
eMMC.

eMMC - Random Write: 21.3MiB/s
eMMC - Sequential Write: 68.2MiB/s
SD Card - Random Write: 1690KiB/s
SD Card - Sequential Write: 11.0MiB/s

Changes:

  v3: Separate dts for eMMC variants

  v2: Fix descriptions for VCC and VCCQ

Link: https://github.com/armbian/build/commit/174953de1eb09e6aa1ef7075066b573dba625398
Signed-off-by: Martin Ayotte <martinayotte@gmail.com>
[sunil@medhas.org Fix descriptions for VCC and VCCQ, separate dts for eMMC]
Signed-off-by: Sunil Mohan Adapa <sunil@medhas.org>
Tested-by: Sunil Mohan Adapa <sunil@medhas.org>
---
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../allwinner/sun50i-a64-olinuxino-emmc.dts   | 23 +++++++++++++++++++
 2 files changed, 24 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts

diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index 395fe76f6819..d2418021768b 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -4,6 +4,7 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-bananapi-m64.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-nanopi-a64.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-oceanic-5205-5inmfd.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-olinuxino.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-olinuxino-emmc.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-orangepi-win.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pine64-lts.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pine64-plus.dtb sun50i-a64-pine64.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts
new file mode 100644
index 000000000000..96ab0227e82d
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2018 Martin Ayotte <martinayotte@gmail.com>
+ * Copyright (C) 2019 Sunil Mohan Adapa <sunil@medhas.org>
+ */
+
+#include "sun50i-a64-olinuxino.dts"
+
+/ {
+	model = "Olimex A64-Olinuxino-eMMC";
+	compatible = "olimex,a64-olinuxino-emmc", "allwinner,sun50i-a64";
+};
+
+&mmc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc2_pins>;
+	vmmc-supply = <&reg_dcdc1>;
+	vqmmc-supply = <&reg_dcdc1>;
+	bus-width = <8>;
+	non-removable;
+	cap-mmc-hw-reset;
+	status = "okay";
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
