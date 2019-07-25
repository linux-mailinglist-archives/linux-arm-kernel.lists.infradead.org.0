Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 589AE74274
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 02:11:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6B5TK3F2uNDi5NiM+JmpuKtxQbY09yCcO7tXpIjsj4M=; b=iDCrfnbsnirCOw
	0Ibh+fqZzURgc5mdOD0iKjUX9SG3y6rYkX8G4Oy9rJRR2334i9Oy6DdOsTS1TJ0NCZXE7YfjZ7eTi
	NnC9LtS4DWZ2fFN92LGDmXuVHRC5paZEM7LJ1zZlDMCzQ5EGcywBgWB7MwVjd1oVY5P69K3vysOgt
	FBQPiBWv/piCXKXRD3Y5kGec7/tZye8FuqPWRCm82QJXLKw9Kga5BONWBHFHYQWj7S0Q40F743NKR
	eAbVd+35WgVskoWnAiT48vMML63MPAaCePXTzdhWj/95sZgJGrU06ogL9n8P/HXzdtr3WxPCP62Zu
	2BsSV+DPNdWEzUUC9V7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqRMO-0003s5-Ql; Thu, 25 Jul 2019 00:11:52 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqRL6-0002uT-5E
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 00:10:33 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6P0AVjI015380;
 Wed, 24 Jul 2019 19:10:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564013431;
 bh=r6VFLcRsIVD2QJoHeMzGmZVijy4Xhtp+jaJARX48jrs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=pwlCvcTKa9n29g16AhqMmhEgz+VH1MCJst9MTeYm9rwYXXqUqPHTiHUjmHYVqVC8R
 TJXCd8kDDK6lEpp5Uvfosh2sZ8ywZmmm/12Wsex47gDukrj92JcexDZ62h+zy4DQWW
 G0p7HpUN2u2vmysV7QVHuTU+Q5KlzcLeGZDkZJVk=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6P0AVVF026501
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 24 Jul 2019 19:10:31 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 24
 Jul 2019 19:10:31 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 24 Jul 2019 19:10:31 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6P0AVil108012;
 Wed, 24 Jul 2019 19:10:31 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6P0AVZ03284; 
 Wed, 24 Jul 2019 19:10:31 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH v2 4/4] arm64: dts: ti: k3-j721e-common-proc-board: Add IPC
 sub-mailbox nodes
Date: Wed, 24 Jul 2019 19:10:20 -0500
Message-ID: <20190725001020.23781-5-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190725001020.23781-1-s-anna@ti.com>
References: <20190725001020.23781-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_171032_278644_179C8D7A 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
various remote processors present in the J721E SoCs to the J721E common
processor board. These include the R5F remote processors in the dual-R5F
cluster (MCU_R5FSS0) in the MCU domain and the two dual-R5F clusters
(MAIN_R5FSS0 & MAIN_R5FSS1) in the MAIN domain; the two C66x DSP remote
processors and the single C71x DSP remote processor in the MAIN domain.
These sub-mailbox nodes utilize the System Mailbox clusters 0 through 4.
All the remaining mailbox clusters are currently not used on A72 core,
and so are disabled.

The sub-mailbox nodes added match the hard-coded mailbox configuration
used within the TI RTOS IPC software packages. The R5F processor
sub-systems are assumed to be running in Split mode, so a sub-mailbox
node is used by each of the R5F cores. Only the sub-mailbox node for
the first R5F core in each cluster is used in case of a Lockstep mode
for that R5F cluster.

NOTE:
The GIC_SPI interrupts to be used are dynamically allocated and managed
by the System Firmware through the ti-sci-intr irqchip driver. So, only
valid interrupts (each cluster's User 0 IRQ output) that are used by the
sub-mailbox devices are enabled. This is done to minimize the number of
NavSS Interrupt Router outputs utilized.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
v2:
 - Sub-mailboxes added in board dts file instead of base dtsi file
 - Unused mailbox clusters 5 through 11 disabled
 - Patch description and title updated
v1: https://patchwork.kernel.org/patch/11053409/

 .../dts/ti/k3-j721e-common-proc-board.dts     | 93 +++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
index c680123f067c..93ae1d49dcc1 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
@@ -48,3 +48,96 @@
 	/* UART not brought out */
 	status = "disabled";
 };
+
+&mailbox0_cluster0 {
+	interrupts = <214 0>;
+
+	mbox_mcu_r5fss0_core0: mbox-mcu-r5fss0-core0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_mcu_r5fss0_core1: mbox-mcu-r5fss0-core1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
+&mailbox0_cluster1 {
+	interrupts = <215 0>;
+
+	mbox_main_r5fss0_core0: mbox-main-r5fss0-core0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_main_r5fss0_core1: mbox-main-r5fss0-core1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
+&mailbox0_cluster2 {
+	interrupts = <216 0>;
+
+	mbox_main_r5fss1_core0: mbox-main-r5fss1-core0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_main_r5fss1_core1: mbox-main-r5fss1-core1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
+&mailbox0_cluster3 {
+	interrupts = <217 0>;
+
+	mbox_c66_0: mbox-c66-0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_c66_1: mbox-c66-1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
+&mailbox0_cluster4 {
+	interrupts = <218 0>;
+
+	mbox_c71_0: mbox-c71-0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+};
+
+&mailbox0_cluster5 {
+	status = "disabled";
+};
+
+&mailbox0_cluster6 {
+	status = "disabled";
+};
+
+&mailbox0_cluster7 {
+	status = "disabled";
+};
+
+&mailbox0_cluster8 {
+	status = "disabled";
+};
+
+&mailbox0_cluster9 {
+	status = "disabled";
+};
+
+&mailbox0_cluster10 {
+	status = "disabled";
+};
+
+&mailbox0_cluster11 {
+	status = "disabled";
+};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
