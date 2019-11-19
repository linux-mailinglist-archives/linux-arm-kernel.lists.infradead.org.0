Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3614710192E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 07:16:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Message-ID:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayC4vuM4txgH1TWpyA/Pvlf21v92pQ1+gqOEYHnMWFE=; b=r3V6A03Q3/f0/H
	p8wQydzec7BCjtUlg2WBvaOQTUt9+1jBgzZH3VPyyxvIqvHJZSpEhIEAzGhngYFpbN2HEs3IOPNHe
	CCwndGPmGotg8lZIuSEUvV+AtyJvEjKEAjEuRfMviGGtYomWhnEg49/CyV5Zl1cPwKDgAgMGzZkid
	/w1/Dvir12bBwfSZkNzghsJbnOnL3IjE5IZyLFwupuwJ4JrK6FDxdPP/RRKIB2xE7/Hjb9y9wNzlR
	lphquaQ7Az0ThnHRR30mdGh97ws7lHDAq6Z9uqqDXfKqKChU0tal5UYxBxBeCHKIESJAz92qJNZBX
	ehao2GhSgoFGocKGbjTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWwnt-0007Ly-VP; Tue, 19 Nov 2019 06:15:57 +0000
Received: from sender4-of-o54.zoho.com ([136.143.188.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWwnm-0007LQ-1c; Tue, 19 Nov 2019 06:15:51 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1574144065; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=jYsQ/Ang1g/QV7bYQiF7N9psKdbFqIWI67awWl7sGQ5sUVq4pFa7DdVBs7hGmwTHz8e9JwIGnhBohnjFSxDR1UAhJdYNSHDb2Ia2YFT4AI0GecIrUmMdammD0jdjZZxl9wRxcns9vxN6SauBLDF6oGV/ri8OHGCG118Q6eBq0bM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1574144065;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=IPoYpGPpQsih0UlY0KIRwlvTF5g15RLNEpbWU4+o53c=; 
 b=JmauD1JpuJv5SlGgLaMJKAIZM+poM3PtTuyxq0enqgNMZ9vqofR628kLGgsi1d1uglvRid4KdT8MnM3qnUC+Fk+NxtmwOAZwI2J4YDBuF+xIwkApufX325uQPXyWx6wXTqtq9shVjmCN5eEaLZdC2SD3JPUXbQDio0XnvC45OkI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1574144065; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=3354; bh=IPoYpGPpQsih0UlY0KIRwlvTF5g15RLNEpbWU4+o53c=;
 b=c8QTc0bXkXSsr9jbhaFvBMSJM+Wj9IzfOuuUVE42e+ZOLMQvBuNAoh9HZPFRWCDJ
 TqsbrWzvMm1zWpNWqV+BBEIzqdQ99LsiK26cUp88uwmOuvaiTi+4/0wADf8uFkhOGB6
 I2LtJvViCfsBkvWA7r3n/u+KFtHpDfhjYOwgCeTA=
Received: from localhost (195.173.24.136.in-addr.arpa [136.24.173.195]) by
 mx.zohomail.com with SMTPS id 1574144064042832.9788464647007;
 Mon, 18 Nov 2019 22:14:24 -0800 (PST)
From: Stephen Brennan <stephen@brennan.io>
To: stephen@brennan.io
Message-ID: <20191119061407.69911-4-stephen@brennan.io>
Subject: [PATCH v2 3/3] ARM: dts: bcm2711: Enable HWRNG support
Date: Mon, 18 Nov 2019 22:14:07 -0800
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191119061407.69911-1-stephen@brennan.io>
References: <20191119061407.69911-1-stephen@brennan.io>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_221550_112036_5F37EF93 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Matt Mackall <mpm@selenic.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BCM2711 features a RNG200 hardware random number generator block, which is
different from the BCM283x from which it inherits. Move the rng block from
BCM283x into a separate common file, and update the rng declaration of
BCM2711.

Signed-off-by: Stephen Brennan <stephen@brennan.io>
---
 arch/arm/boot/dts/bcm2711.dtsi        |  6 +++---
 arch/arm/boot/dts/bcm2835.dtsi        |  1 +
 arch/arm/boot/dts/bcm2836.dtsi        |  1 +
 arch/arm/boot/dts/bcm2837.dtsi        |  1 +
 arch/arm/boot/dts/bcm283x-common.dtsi | 11 +++++++++++
 arch/arm/boot/dts/bcm283x.dtsi        |  6 ------
 6 files changed, 17 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm/boot/dts/bcm283x-common.dtsi

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index ac83dac2e6ba..4975567e948e 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -92,10 +92,10 @@ pm: watchdog@7e100000 {
 		};
 
 		rng@7e104000 {
+			compatible = "brcm,bcm2711-rng200";
+			reg = <0x7e104000 0x28>;
 			interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
-
-			/* RNG is incompatible with brcm,bcm2835-rng */
-			status = "disabled";
+			status = "okay";
 		};
 
 		uart2: serial@7e201400 {
diff --git a/arch/arm/boot/dts/bcm2835.dtsi b/arch/arm/boot/dts/bcm2835.dtsi
index 53bf4579cc22..f7b2f46e307d 100644
--- a/arch/arm/boot/dts/bcm2835.dtsi
+++ b/arch/arm/boot/dts/bcm2835.dtsi
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 #include "bcm283x.dtsi"
+#include "bcm283x-common.dtsi"
 #include "bcm2835-common.dtsi"
 
 / {
diff --git a/arch/arm/boot/dts/bcm2836.dtsi b/arch/arm/boot/dts/bcm2836.dtsi
index 82d6c4662ae4..a85374195796 100644
--- a/arch/arm/boot/dts/bcm2836.dtsi
+++ b/arch/arm/boot/dts/bcm2836.dtsi
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 #include "bcm283x.dtsi"
+#include "bcm283x-common.dtsi"
 #include "bcm2835-common.dtsi"
 
 / {
diff --git a/arch/arm/boot/dts/bcm2837.dtsi b/arch/arm/boot/dts/bcm2837.dtsi
index 9e95fee78e19..045d78ffea08 100644
--- a/arch/arm/boot/dts/bcm2837.dtsi
+++ b/arch/arm/boot/dts/bcm2837.dtsi
@@ -1,4 +1,5 @@
 #include "bcm283x.dtsi"
+#include "bcm283x-common.dtsi"
 #include "bcm2835-common.dtsi"
 
 / {
diff --git a/arch/arm/boot/dts/bcm283x-common.dtsi b/arch/arm/boot/dts/bcm283x-common.dtsi
new file mode 100644
index 000000000000..3c8834bee390
--- /dev/null
+++ b/arch/arm/boot/dts/bcm283x-common.dtsi
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/ {
+	soc {
+		rng@7e104000 {
+			compatible = "brcm,bcm2835-rng";
+			reg = <0x7e104000 0x10>;
+			interrupts = <2 29>;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
index 3caaa57eb6c8..5219339fc27c 100644
--- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -84,12 +84,6 @@ clocks: cprman@7e101000 {
 				<&dsi1 0>, <&dsi1 1>, <&dsi1 2>;
 		};
 
-		rng@7e104000 {
-			compatible = "brcm,bcm2835-rng";
-			reg = <0x7e104000 0x10>;
-			interrupts = <2 29>;
-		};
-
 		mailbox: mailbox@7e00b880 {
 			compatible = "brcm,bcm2835-mbox";
 			reg = <0x7e00b880 0x40>;
-- 
2.24.0




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
