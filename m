Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF784ECBD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=swOvbX1SHDFOsxZQf3c3aDlMInYWtZAZNrYuOFjOLPY=; b=c4sY7ZHISZJVVD
	0HuPImSjv/ZmAGajWKZnfHLozHwUfMmlwKx5BaaoSNNVYVJLiK69suqygch6uWNB1CFaMlsKg6e29
	f3lPc37Lg/GHxcI5TxlOCWqvyp7FmgWNrLGWsOdc4ZPgSyeJ28Q8tTWNtRzdJSuljlPcSSLb2bpSl
	LYEmk87RloS22qMf8XoF3VI1qHBmfrNj6I6WPEFlLdfcwBrHazMqGUKiUwuWAQyNmS3Hbqq9fIftz
	3FgxtspQb6bUSji2wDKo+sUyzqL2ykWGrvGAV7xZ1C6zyluAMbS+tgE6tg28l/34Z5455E9VC8MoK
	UPlHgNH50eZOQV9yAL4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLwV-0005tP-89; Fri, 21 Jun 2019 15:59:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLwG-0005sf-NL
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:58:57 +0000
Received: from localhost.localdomain (unknown [194.230.155.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE7C8206B7;
 Fri, 21 Jun 2019 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561132735;
 bh=7XFF/9p+dYOYssFeDHiKPhmpzkHKkQfC0rOFxlDqZKo=;
 h=From:To:Subject:Date:From;
 b=nCCbG66mlF9/FT/MMmVUwArOmDcJsgQD3NUalhRzU6LxSnJ7YwPx68wR2F9R9MIOZ
 r4jxw8/eJorPcIPjui3P8gwvKh5KnB+1v9g/BU5EgwmlFy0d82jayxaA76RvEtSmo4
 xygb5w2udm6p89vzImMBvuVqJgBas2sli9wHNXmY=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Anand Moon <linux.amoon@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] ARM: dts: exynos: Disable unused buck10 regulator on
 Odroid HC1 board
Date: Fri, 21 Jun 2019 17:58:42 +0200
Message-Id: <20190621155845.7079-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_085856_804181_C5E5A99F 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The eMMC memory on Odroid XU3/XU4 boards is supplied by two regulators
LDO18 and buck10 (and LDO13 for the host interface).

However the Odroid HC1 board does not have eMMC connector so this
regulator does not have to be always on.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. None
---
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi      | 2 --
 arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi | 6 ++++++
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index 25d95de15c9b..0f967259ad29 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -490,8 +490,6 @@
 				regulator-name = "vdd_vmem";
 				regulator-min-microvolt = <2850000>;
 				regulator-max-microvolt = <2850000>;
-				regulator-always-on;
-				regulator-boot-on;
 			};
 		};
 	};
diff --git a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
index 93a48f2dda49..838872037493 100644
--- a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
@@ -360,6 +360,12 @@
 	};
 };
 
+&buck10_reg {
+	/* Supplies vmmc-supply of mmc_0 */
+	regulator-always-on;
+	regulator-boot-on;
+};
+
 &hdmi {
 	status = "okay";
 	ddc = <&i2c_2>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
