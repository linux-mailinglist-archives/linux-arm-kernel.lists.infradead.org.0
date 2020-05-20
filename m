Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8BB1DB41B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5/Z77TLA8sRksdh/G1U2wet5XX+Ox5ZyB0bpE7Krrg=; b=uiEZ3stiBFGZff
	aS2cRv0EAOtEFoI2vR2Fb5fuftgfH6VOYfgc/m9c/3Xx9DV2ZdPDWZpxfJKDzmC4aBMquea0cPpRa
	xZHDDSReZf/ICIm+PFUEyWAWXO8aid52q72blamsN6ADRs6/vhq+jb2hPg6oEKfP1jp2w8a4+p3uv
	G8GhtXXhKlCQaDWALWMLmRuswvG7xBg1wcvu8iTszfG7Ffrt4Fsv971ZP0Hgm3hOIi8G7W9rhI4W1
	m1N7pmuCl/AzSaKP3HWphf6mZTaXwf97fU/ZF43NMAr4GBvZV7hL9WaLC4Fh5B64kQhkE3mhgypI4
	u4QnUdWtupF7d3BzHDAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbO9o-0008Kk-U9; Wed, 20 May 2020 12:49:12 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbO6a-0005xv-J5
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:45:57 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04KCjhxh051443;
 Wed, 20 May 2020 07:45:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589978743;
 bh=j1ayoQNTGfrKr/gCIdv4VMSuX/WqGSoPL0U2S+Ejmbc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=PliXrfzwOLyE/H0GDd3WCNMIPLZUu983NpvvlRcB2kAySFOxM7+40ho+OdYLqfz+p
 k/BbbUbG2bvJ8yftRqlQb9PQVGMMNcgZjqgtO/XH2xVGaDOZ7YzCq/aF51zyjtnVQe
 SV7MQTu6fr1VF4piBNfc46CySztJjABdejT/d1Qk=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04KCjhwW001893
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 20 May 2020 07:45:43 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 May 2020 07:45:43 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 May 2020 07:45:43 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04KCiuvV026764;
 Wed, 20 May 2020 07:45:39 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 11/12] arm64: dts: k3-am65: ti-sci-inta/intr: Update to latest
 bindings
Date: Wed, 20 May 2020 18:14:53 +0530
Message-ID: <20200520124454.10532-12-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200520124454.10532-1-lokeshvutla@ti.com>
References: <20200520124454.10532-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_054552_789250_E0199BDD 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishanth Menon <nm@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Suman Anna <s-anna@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the INTA and INTR dt nodes to the latest DT bindings.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 22 +++++++++----------
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi    |  8 +++----
 .../arm64/boot/dts/ti/k3-am654-base-board.dts |  4 ++--
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  1 -
 4 files changed, 16 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 11887c72f23a..84fe71db7023 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -372,10 +372,10 @@
 		ti,intr-trigger-type = <1>;
 		interrupt-controller;
 		interrupt-parent = <&gic500>;
-		#interrupt-cells = <2>;
+		#interrupt-cells = <1>;
 		ti,sci = <&dmsc>;
-		ti,sci-dst-id = <56>;
-		ti,sci-rm-range-girq = <0x1>;
+		ti,sci-dev-id = <100>;
+		ti,interrupt-ranges = <0 392 32>;
 	};
 
 	main_navss {
@@ -393,10 +393,11 @@
 			ti,intr-trigger-type = <4>;
 			interrupt-controller;
 			interrupt-parent = <&gic500>;
-			#interrupt-cells = <2>;
+			#interrupt-cells = <1>;
 			ti,sci = <&dmsc>;
-			ti,sci-dst-id = <56>;
-			ti,sci-rm-range-girq = <0x0>, <0x2>;
+			ti,sci-dev-id = <182>;
+			ti,interrupt-ranges = <0 64 64>,
+					      <64 448 64>;
 		};
 
 		inta_main_udmass: interrupt-controller@33d00000 {
@@ -407,8 +408,7 @@
 			msi-controller;
 			ti,sci = <&dmsc>;
 			ti,sci-dev-id = <179>;
-			ti,sci-rm-range-vint = <0x0>;
-			ti,sci-rm-range-global-event = <0x1>;
+			ti,interrupt-ranges = <0 0 256>;
 		};
 
 		secure_proxy_main: mailbox@32c00000 {
@@ -578,8 +578,7 @@
 		gpio-controller;
 		#gpio-cells = <2>;
 		interrupt-parent = <&intr_main_gpio>;
-		interrupts = <57 256>, <57 257>, <57 258>, <57 259>, <57 260>,
-				<57 261>;
+		interrupts = <192>, <193>, <194>, <195>, <196>, <197>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
 		ti,ngpio = <96>;
@@ -594,8 +593,7 @@
 		gpio-controller;
 		#gpio-cells = <2>;
 		interrupt-parent = <&intr_main_gpio>;
-		interrupts = <58 256>, <58 257>, <58 258>, <58 259>, <58 260>,
-				<58 261>;
+		interrupts = <200>, <201>, <202>, <203>, <204>, <205>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
 		ti,ngpio = <90>;
diff --git a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
index f4227e2743f2..72295fa64f0e 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
@@ -69,10 +69,10 @@
 		ti,intr-trigger-type = <1>;
 		interrupt-controller;
 		interrupt-parent = <&gic500>;
-		#interrupt-cells = <2>;
+		#interrupt-cells = <1>;
 		ti,sci = <&dmsc>;
-		ti,sci-dst-id = <56>;
-		ti,sci-rm-range-girq = <0x4>;
+		ti,sci-dev-id = <156>;
+		ti,interrupt-ranges = <0 712 16>;
 	};
 
 	wkup_gpio0: wkup_gpio0@42110000 {
@@ -81,7 +81,7 @@
 		gpio-controller;
 		#gpio-cells = <2>;
 		interrupt-parent = <&intr_wkup_gpio>;
-		interrupts = <59 128>, <59 129>, <59 130>, <59 131>;
+		interrupts = <60>, <61>, <62>, <63>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
 		ti,ngpio = <56>;
diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index 2f3d3316a1cf..e58668f9fb59 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -359,7 +359,7 @@
 };
 
 &mailbox0_cluster0 {
-	interrupts = <164 0>;
+	interrupts = <436>;
 
 	mbox_mcu_r5fss0_core0: mbox-mcu-r5fss0-core0 {
 		ti,mbox-tx = <1 0 0>;
@@ -368,7 +368,7 @@
 };
 
 &mailbox0_cluster1 {
-	interrupts = <165 0>;
+	interrupts = <432>;
 
 	mbox_mcu_r5fss0_core1: mbox-mcu-r5fss0-core1 {
 		ti,mbox-tx = <1 0 0>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index a17074c8a172..cd1e782d08bd 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -100,7 +100,6 @@
 		ti,sci = <&dmsc>;
 		ti,sci-dev-id = <137>;
 		ti,interrupt-ranges = <16 960 16>;
-		ti,sci-rm-range-girq = <0x5>;
 	};
 
 	wkup_gpio0: gpio@42110000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
