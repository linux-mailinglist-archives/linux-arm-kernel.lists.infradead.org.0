Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B9874271
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 02:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6270hlLCP45lZe8Qqa1/gsy2g3qW40ofeUMbnH0jEU=; b=itVAVTf/CbSrqA
	cYdMWxWtk+oSKHu0xEBGH0+0gJSVr2O8lcfOaJqvFlJoPB3FmiHfHHBvm8Hl/F2K2FIsf1QCPdzyZ
	Jl+GJI2N9oAE7azjQc6pti2yxMRH2/5VJyZoDiHO4LQ7dy7zfJdt4clE9ZsZmBGlpSGwHZlKGZK27
	DnLzyW33LRdFsTo+yItJ+HCD3Qh+NrtU5YR3BRkw+6LJs1djXIcWtnoigxIaNxvNWslAsvjmpG0W8
	wjpJnIBoTMqqyJa639E5vTNJdL5LH47ZO4RHb67DkSAjbQXZwSNnKSuxJv3OVdfu3kzkyI1JkIjON
	qkLgWJOOLrHJpaPkkVwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqRLt-0003Ks-8V; Thu, 25 Jul 2019 00:11:21 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqRL4-0002tZ-H4
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 00:10:32 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6P0ATwV122045;
 Wed, 24 Jul 2019 19:10:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564013429;
 bh=qDreqCR73pbPENS9RmPYUr2C38wb56QlLWKMCBYTvao=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=FsRKLusBBkHHGxournzCefucjDxNG4SNNUxAfxUxBlcyAmDA6WXGYzvVFRv5gddDy
 L2W6besepVx8SwZYQIvRY/NuEvpykAsAy9HXetT0sAfM9x4ffFirWg89Pl8vBsEW+8
 7GTSmvQ+YpRswpQ39PIAoCajTsbEcY+97lpj0KGU=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6P0ATUf116874
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 24 Jul 2019 19:10:29 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 24
 Jul 2019 19:10:29 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 24 Jul 2019 19:10:29 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6P0ATl8066063;
 Wed, 24 Jul 2019 19:10:29 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6P0ATZ03271; 
 Wed, 24 Jul 2019 19:10:29 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH v2 2/4] arm64: dts: ti: k3-am65-base-board: Add IPC
 sub-mailbox nodes for R5Fs
Date: Wed, 24 Jul 2019 19:10:18 -0500
Message-ID: <20190725001020.23781-3-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190725001020.23781-1-s-anna@ti.com>
References: <20190725001020.23781-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_171030_643874_A6F75226 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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
the two R5F remote processors present in the MCU domain to the AM654
EVM base board. These sub-mailbox nodes utilize the System Mailbox
clusters 0 and 1. The interrupts associated with the Mailbox Cluster
User interrupt used by the sub-mailbox nodes are also added. The GIC_SPI
interrupt to be used is dynamically allocated and managed by the System
Firmware through the ti-sci-intr irqchip driver. All the remaining
mailbox clusters are currently not used on A53 core, and so are disabled.

The sub-mailbox nodes added match the hard-coded mailbox configuration
used within the TI RTOS IPC software packages. The Cortex R5F processor
sub-system is assumed to be running in Split mode, so a sub-mailbox node
is used by each of the R5F cores. Only the sub-mailbox node from cluster 0
is used in case of Lockstep mode.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
v2:
 - Sub-mailboxes added in board dts file instead of base dtsi file
 - Unused mailbox clusters 2 through 11 disabled
 - Patch description and title updated
v1: https://patchwork.kernel.org/patch/11053405/

 .../arm64/boot/dts/ti/k3-am654-base-board.dts | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index 52c245d36db9..579b7a474f35 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -279,3 +279,61 @@
 &pcie1_ep {
 	status = "disabled";
 };
+
+&mailbox0_cluster0 {
+	interrupts = <164 0>;
+
+	mbox_mcu_r5fss0_core0: mbox-mcu-r5fss0-core0 {
+		ti,mbox-tx = <1 0 0>;
+		ti,mbox-rx = <0 0 0>;
+	};
+};
+
+&mailbox0_cluster1 {
+	interrupts = <165 0>;
+
+	mbox_mcu_r5fss0_core1: mbox-mcu-r5fss0-core1 {
+		ti,mbox-tx = <1 0 0>;
+		ti,mbox-rx = <0 0 0>;
+	};
+};
+
+&mailbox0_cluster2 {
+	status = "disabled";
+};
+
+&mailbox0_cluster3 {
+	status = "disabled";
+};
+
+&mailbox0_cluster4 {
+	status = "disabled";
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
