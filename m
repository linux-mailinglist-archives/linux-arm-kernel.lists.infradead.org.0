Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E73E70A91
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 22:22:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zQ8pqgZVpBe+P5VQEs17deaM/vjDGVTG5j+ZPbtz3Ms=; b=dbLsOVxJfjMuon
	LRjTG8Y/HtW3bB1UfGGCfs2yasy59nxoQAIvXo83MhvAoBdPi4dymjpSPMYbUI9HzXA0XNsolhXUx
	hl2vgO4w8rSl5/kppX912cXghVT8aWgMQ2fKsKFB7PQI+yb2nX/GAKXa3wQJzn4BKqlc9dNo+RT47
	B7aK8bog4lpjU+arFmjBHxN3d4m2Y05wr23zWfBQxxYZ3UXO5rCcNNgNae6tz1zCasMblqbYaqUai
	y/Q5GlOfasmxWhgALAdVpJRZk3cEaE9+L+bvapprMAropWNGjlmqynrNSUfRFVd9itW8pmg8UMwL/
	z7XGqsaMJ9sdzIew6UWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpep2-0001c1-54; Mon, 22 Jul 2019 20:22:12 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpenb-0000mQ-TB
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 20:20:45 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6MKKhkp024076;
 Mon, 22 Jul 2019 15:20:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563826843;
 bh=N9Id44vPnHBsGn8qtGEL/OKGV6syaAqFqHY6EVGYDdM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=xfrpynzPsWpAGycl0kv4DILD26MnK9UQOQ+9EsDPBn9yOoKOIH4kbhG99dosOcK5E
 xFCe+3qwTTBguksKpl7MXhyJyQl9+F1m6zC3zn310U6CK86dn/by9aT7Bxc6nxyuWc
 jNGmeJ2hTu6grQiGw+9EQRCYWAfnUDOcv7y3UtxY=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6MKKhVw115462
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Jul 2019 15:20:43 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 15:20:42 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 15:20:43 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6MKKgdF100023;
 Mon, 22 Jul 2019 15:20:42 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6MKKgZ21525; 
 Mon, 22 Jul 2019 15:20:42 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH 4/4] arm64: dts: ti: k3-j721e-main: Add IPC sub-mailbox nodes
 for all R5Fs & DSPs
Date: Mon, 22 Jul 2019 15:20:24 -0500
Message-ID: <20190722202024.14867-5-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190722202024.14867-1-s-anna@ti.com>
References: <20190722202024.14867-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_132044_492171_E68F6EED 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the sub-mailbox nodes that are used to communicate between MPU and
various remote processors present in the J721E SoCs. These include the
R5F remote processors in the dual-R5F cluster (MCU_R5FSS0) in the MCU
domain and the two dual-R5F clusters (MAIN_R5FSS0 & MAIN_R5FSS1) in the
MAIN domain; the two C66x DSP remote processors and the single C71x DSP
remote processor in the MAIN domain. The parent mailbox cluster nodes
are also enabled.

The sub-mailbox nodes utilize the System Mailbox clusters 0 through 4.
These sub-mailbox nodes are added to match the hard-coded mailbox
configuration used within the TI RTOS IPC software packages. The R5F
processor sub-systems are assumed to be running in Split mode, so a
sub-mailbox node is used by each of the R5F cores. The sub-mailbox node
for the first R5F core in each cluster is used in case of Lockstep mode.

NOTE:
The GIC_SPI interrupts to be used are dynamically allocated and managed
by the System Firmware through the ti-sci-intr irqchip driver. So, only
valid interrupts (each cluster's User 0 IRQ output) that are used by the
sub-mailbox devices are enabled. This is done to minimize the number of
NavSS Interrupt Router outputs utilized.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 60 +++++++++++++++++++++--
 1 file changed, 55 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 319d423b3440..2985c73154fd 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -102,7 +102,18 @@
 			#mbox-cells = <1>;
 			ti,mbox-num-users = <4>;
 			ti,mbox-num-fifos = <16>;
-			status = "disabled";
+			interrupt-parent = <&main_navss_intr>;
+			interrupts = <214 0>;
+
+			mbox_mcu_r5fss0_core0: mbox-mcu-r5fss0-core0 {
+				ti,mbox-rx = <0 0 0>;
+				ti,mbox-tx = <1 0 0>;
+			};
+
+			mbox_mcu_r5fss0_core1: mbox-mcu-r5fss0-core1 {
+				ti,mbox-rx = <2 0 0>;
+				ti,mbox-tx = <3 0 0>;
+			};
 		};
 
 		mailbox0_cluster1: mailbox@31f81000 {
@@ -111,7 +122,18 @@
 			#mbox-cells = <1>;
 			ti,mbox-num-users = <4>;
 			ti,mbox-num-fifos = <16>;
-			status = "disabled";
+			interrupt-parent = <&main_navss_intr>;
+			interrupts = <215 0>;
+
+			mbox_main_r5fss0_core0: mbox-main-r5fss0-core0 {
+				ti,mbox-rx = <0 0 0>;
+				ti,mbox-tx = <1 0 0>;
+			};
+
+			mbox_main_r5fss0_core1: mbox-main-r5fss0-core1 {
+				ti,mbox-rx = <2 0 0>;
+				ti,mbox-tx = <3 0 0>;
+			};
 		};
 
 		mailbox0_cluster2: mailbox@31f82000 {
@@ -120,7 +142,18 @@
 			#mbox-cells = <1>;
 			ti,mbox-num-users = <4>;
 			ti,mbox-num-fifos = <16>;
-			status = "disabled";
+			interrupt-parent = <&main_navss_intr>;
+			interrupts = <216 0>;
+
+			mbox_main_r5fss1_core0: mbox-main-r5fss1-core0 {
+				ti,mbox-rx = <0 0 0>;
+				ti,mbox-tx = <1 0 0>;
+			};
+
+			mbox_main_r5fss1_core1: mbox-main-r5fss1-core1 {
+				ti,mbox-rx = <2 0 0>;
+				ti,mbox-tx = <3 0 0>;
+			};
 		};
 
 		mailbox0_cluster3: mailbox@31f83000 {
@@ -129,7 +162,18 @@
 			#mbox-cells = <1>;
 			ti,mbox-num-users = <4>;
 			ti,mbox-num-fifos = <16>;
-			status = "disabled";
+			interrupt-parent = <&main_navss_intr>;
+			interrupts = <217 0>;
+
+			mbox_c66_0: mbox-c66-0 {
+				ti,mbox-rx = <0 0 0>;
+				ti,mbox-tx = <1 0 0>;
+			};
+
+			mbox_c66_1: mbox-c66-1 {
+				ti,mbox-rx = <2 0 0>;
+				ti,mbox-tx = <3 0 0>;
+			};
 		};
 
 		mailbox0_cluster4: mailbox@31f84000 {
@@ -138,7 +182,13 @@
 			#mbox-cells = <1>;
 			ti,mbox-num-users = <4>;
 			ti,mbox-num-fifos = <16>;
-			status = "disabled";
+			interrupt-parent = <&main_navss_intr>;
+			interrupts = <218 0>;
+
+			mbox_c71_0: mbox-c71-0 {
+				ti,mbox-rx = <0 0 0>;
+				ti,mbox-tx = <1 0 0>;
+			};
 		};
 
 		mailbox0_cluster5: mailbox@31f85000 {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
