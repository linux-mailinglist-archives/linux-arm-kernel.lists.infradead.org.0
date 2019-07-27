Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E296D7792D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 16:18:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xLYoXjm2p8Pw13pTcXP5lPvo9VL5YPUIvIBiUfx9rms=; b=bjWBg/Zzwkngd6
	4wZezatCc6QiEHkK+FZk9LV9Xhku4ZxnWkUdrOnEyKVRHIGTwQfzCvDkAgw5Sx2+fkToG7r7nZger
	jXXWhBPyYHMyx8S0AyKwVV3MSEwuzJyE+uRfbeIiK/ickgVX+JmWNLSW/9qBx6ldkkP3Xj99yHMNv
	Dl0gTnVuAgI/2lHb48NWLsPa0xoRcaFO0uv9GJbSqqKDZfdpcNEX12roR1RBYAgZLx+jdQl2Bahto
	vXGTZj5JUYHa7unpi/2WMOgzszKqV38OUcV37aCDwcWg89IgkUcFwi0pC0KrMxLh4K8OAqhwLalpQ
	a2P+0eQOnGhxSL88RJiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrNWs-00052m-8Z; Sat, 27 Jul 2019 14:18:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrNWQ-00051v-LE
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 14:18:08 +0000
Received: from localhost.localdomain (unknown [194.230.155.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A1AC42075E;
 Sat, 27 Jul 2019 14:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564237081;
 bh=jNHwtPY86cIyPUWN0driQ9jY6ypwTMDCkIMRU4xajzo=;
 h=From:To:Subject:Date:From;
 b=LYLgcDKVAgLTzlkKV+i2E5fJV6nteMMW1xrU0+HtXVK25DVrUAQe1kcp1g7p2Ns6w
 Q3WIy6N+6z1nU4L6zNWM2QwYtE5zEsA0dQa46gETJC4OKD25aQyWy59eJH9auwHDQn
 BhBddoaxcHvI6MWVtDRUBLM4VseMO/IB+dMGi70Q=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: exynos: Use space after '=' in
 exynos4412-itop-scp-core
Date: Sat, 27 Jul 2019 16:16:56 +0200
Message-Id: <20190727141656.10692-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_071807_004241_AB7507E1 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Replace tab with space after assignment operator.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 .../arm/boot/dts/exynos4412-itop-scp-core.dtsi | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi b/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi
index 462a5409b1de..dfceb155b3a7 100644
--- a/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi
+++ b/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi
@@ -377,7 +377,7 @@
 			buck1_reg: BUCK1 {
 				regulator-name = "vdd_mif";
 				regulator-min-microvolt = <850000>;
-				regulator-max-microvolt	= <1100000>;
+				regulator-max-microvolt = <1100000>;
 				regulator-always-on;
 				regulator-boot-on;
 				op_mode = <1>; /* Normal Mode */
@@ -386,7 +386,7 @@
 			buck2_reg: BUCK2 {
 				regulator-name = "vdd_arm";
 				regulator-min-microvolt = <850000>;
-				regulator-max-microvolt	= <1456250>;
+				regulator-max-microvolt = <1456250>;
 				regulator-always-on;
 				regulator-boot-on;
 				op_mode = <1>; /* Normal Mode */
@@ -395,7 +395,7 @@
 			buck3_reg: BUCK3 {
 				regulator-name = "vdd_int";
 				regulator-min-microvolt = <875000>;
-				regulator-max-microvolt	= <1200000>;
+				regulator-max-microvolt = <1200000>;
 				regulator-always-on;
 				regulator-boot-on;
 				op_mode = <1>; /* Normal Mode */
@@ -404,7 +404,7 @@
 			buck4_reg: BUCK4 {
 				regulator-name = "vdd_g3d";
 				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt	= <1500000>;
+				regulator-max-microvolt = <1500000>;
 				regulator-always-on;
 				regulator-boot-on;
 				op_mode = <1>; /* Normal Mode */
@@ -413,7 +413,7 @@
 			buck5_reg: BUCK5 {
 				regulator-name = "vdd_m12";
 				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt	= <1500000>;
+				regulator-max-microvolt = <1500000>;
 				regulator-always-on;
 				regulator-boot-on;
 				op_mode = <1>; /* Normal Mode */
@@ -422,7 +422,7 @@
 			buck6_reg: BUCK6 {
 				regulator-name = "vdd12_5m";
 				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt	= <1500000>;
+				regulator-max-microvolt = <1500000>;
 				regulator-always-on;
 				regulator-boot-on;
 				op_mode = <1>; /* Normal Mode */
@@ -431,7 +431,7 @@
 			buck7_reg: BUCK7 {
 				regulator-name = "pvdd_buck7";
 				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt	= <2000000>;
+				regulator-max-microvolt = <2000000>;
 				regulator-boot-on;
 				regulator-always-on;
 				op_mode = <1>; /* Normal Mode */
@@ -440,7 +440,7 @@
 			buck8_reg: BUCK8 {
 				regulator-name = "pvdd_buck8";
 				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt	= <1500000>;
+				regulator-max-microvolt = <1500000>;
 				regulator-boot-on;
 				regulator-always-on;
 				op_mode = <1>; /* Normal Mode */
@@ -449,7 +449,7 @@
 			buck9_reg: BUCK9 {
 				regulator-name = "vddf28_emmc";
 				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt	= <3000000>;
+				regulator-max-microvolt = <3000000>;
 				op_mode = <1>; /* Normal Mode */
 			};
 		};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
