Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A5270A8F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 22:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oz+8/7OG25xbhNXxZygrFyycl5Ms2uWLLj+vaAhVQn8=; b=gBGUawLoX+u7NG
	mhnI3xFryABX0HlX+Akt7KPuq45w2weXBpzOFriaAJkaQ3QpqbUZs+QgH4hJaC+xfYZnuK/fLup/z
	LaFUsxU8Cb1qWr57iFUkg88QgxzwoAa5/WTHmvckaHAousSKrqIHzNCPx0Ofl0G8iLkf0OggIHE6S
	p+K9IfXsugtVQvigOa4lyJWiOURNm9IsxYXWBRl2jQKdP3ILWCGpUI78nuA4Q9E4YDXH+w+JNS7IA
	chbD9D/p7Sgp2sYzSXv/og4ZMg4HLxxDZ9k5sXGbrATg2kjbAY0+QetnEaxEUyMcF4VayrDi/wBmk
	WXRemEY1hajAFoZgRKNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpeoK-00015x-L2; Mon, 22 Jul 2019 20:21:28 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpenX-0000ie-So
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 20:20:41 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6MKKdoZ107367;
 Mon, 22 Jul 2019 15:20:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563826839;
 bh=xSJYWr6Q8dYY3cdBz2U1xq3NTPqBkr/olNgj1NHVlMI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=vvOKleEYyCUM4lW2vCR9ETAa3WjMlaau8FhJ0c+MZyOhIZqfaUaQVMnBnbU1wdT+O
 vyUuBDWl9TgGx8Sg7RaWQlRavw2pOpR21+76HPhfOE9kLCWD47GnFIb9RbnYo+JlAl
 fDUeCGp11+tjkwMqgwU0CZ11g8+RX2QNi5gYZQGE=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6MKKdDG001721
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Jul 2019 15:20:39 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 15:20:38 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 15:20:38 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6MKKcUB099967;
 Mon, 22 Jul 2019 15:20:38 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6MKKcZ21510; 
 Mon, 22 Jul 2019 15:20:38 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH 2/4] arm64: dts: ti: k3-am65-main: Add IPC sub-mailbox nodes
 for R5Fs
Date: Mon, 22 Jul 2019 15:20:22 -0500
Message-ID: <20190722202024.14867-3-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190722202024.14867-1-s-anna@ti.com>
References: <20190722202024.14867-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_132040_143186_C840B850 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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

Add the sub-mailbox nodes that are used to communicate between
MPU and the two R5F remote processors present in the MCU domain.
The parent mailbox cluster nodes are enabled and the interrupts
associated with the Mailbox Cluster User interrupt used by the
sub-mailbox nodes are also added. The GIC_SPI interrupt to be
used is dynamically allocated and managed by the System Firmware
through the ti-sci-intr irqchip driver.

The sub-mailbox nodes utilize the System Mailbox clusters 1 and 2.
These sub-mailbox nodes are added to match the hard-coded mailbox
configuration used within the TI RTOS IPC software packages. The
Cortex R5F processor sub-system is assumed to be running in Split
mode, so a sub-mailbox node is used by each of the R5F cores. Only
the sub-mailbox node from cluster 0 is used in case of Lockstep
mode.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 0b3ea2a871ee..317563c995b1 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -426,7 +426,13 @@
 			#mbox-cells = <1>;
 			ti,mbox-num-users = <4>;
 			ti,mbox-num-fifos = <16>;
-			status = "disabled";
+			interrupt-parent = <&intr_main_navss>;
+			interrupts = <164 0>;
+
+			mbox_mcu_r5fss0_core0: mbox-mcu-r5fss0-core0 {
+				ti,mbox-tx = <1 0 0>;
+				ti,mbox-rx = <0 0 0>;
+			};
 		};
 
 		mailbox0_cluster1: mailbox@31f81000 {
@@ -435,7 +441,13 @@
 			#mbox-cells = <1>;
 			ti,mbox-num-users = <4>;
 			ti,mbox-num-fifos = <16>;
-			status = "disabled";
+			interrupt-parent = <&intr_main_navss>;
+			interrupts = <165 0>;
+
+			mbox_mcu_r5fss0_core1: mbox-mcu-r5fss0-core1 {
+				ti,mbox-tx = <1 0 0>;
+				ti,mbox-rx = <0 0 0>;
+			};
 		};
 
 		mailbox0_cluster2: mailbox@31f82000 {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
