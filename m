Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA38470A8D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 22:21:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kA8ZC8ti3nBJbgFQQMbUWyO8vgA+s+5VftQ7kEcFm04=; b=BQFe3J/A8GYMk9
	1EAefxCSvP+PV5ugxLQfqz3tSivzIkvpH3qaQ8FcdjfwSyzKNwP27F842SQcdnUNWGnR/2PL4PMra
	JAnEwnZbcHLd2guL6w/qoIh8w0nGmP2KzTYDvzzqoqUHr1Q4KLtN1ThVQb2x58nHCh/YZHyrdOKWJ
	O5Ny43F0rTRfo5YSAUIVjCsULxbqw+kPoETulTDxmWWMx8K6duf5MRa1WSghawWTnoAWhYt1Dm/DF
	tQylrUGUDOCFgm6slwBkWGK3Ffgs8TfoAGwSjh5aJbgqd+nwe7Nu+016gXPcICSZkgb1pg9Hwv8uD
	HRMPsftCJ7J3jrhSckig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpeo2-0000rX-0Z; Mon, 22 Jul 2019 20:21:10 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpenU-0000fs-LF
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 20:20:38 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6MKKZV4024052;
 Mon, 22 Jul 2019 15:20:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563826835;
 bh=8fAjnJ7nDQcPPJxsddFYnZQ7qDq7y2jRlwXHDTMkcB0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=dHdoKBztjEdjgDABtRwBRiRcC2EGolKZ0AUhWgSuDLvWsXXT69wUKjTp+VichBuG6
 zlnpFxKRwQPsR8r9zORuDi9LC04i4vMisgqqctT60N/4Va+0ACD/PbNPT7cerhY1SR
 i/WbEWMKY0oLTOAiQ02QU5VWp7SW6C47Q3XTJChE=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6MKKZQL064877
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Jul 2019 15:20:35 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 15:20:35 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 15:20:35 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6MKKZs2109981;
 Mon, 22 Jul 2019 15:20:35 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6MKKZZ21504; 
 Mon, 22 Jul 2019 15:20:35 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH 1/4] arm64: dts: ti: k3-am65-main: Add mailbox cluster nodes
Date: Mon, 22 Jul 2019 15:20:21 -0500
Message-ID: <20190722202024.14867-2-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190722202024.14867-1-s-anna@ti.com>
References: <20190722202024.14867-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_132036_808857_A7A444B2 
X-CRM114-Status: GOOD (  11.18  )
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

The AM65x Main NavSS block contains a Mailbox IP instance with
multiple clusters. Each cluster is equivalent to an Mailbox IP
instance on OMAP platforms.

Add all the Mailbox clusters as their own nodes under the MAIN
NavSS cbass_main_navss interconnect node instead of creating an
almost empty parent node for the new K3 mailbox IP and the clusters
as its child nodes. All these nodes are marked as disabled, and
they need to be enabled along with the appropriate child nodes
on a need basis.

NOTE:
The NavSS only has a limited number of interrupts, so all the
interrupts generated by a Mailbox IP are not added by default.
Only the needed interrupts that are targeted towards the A53
GIC will need to be be added later on when some sub-mailbox
child nodes are added.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 108 +++++++++++++++++++++++
 1 file changed, 108 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 8413e80f9d3a..0b3ea2a871ee 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -419,6 +419,114 @@
 			reg = <0x00 0x30e00000 0x00 0x1000>;
 			#hwlock-cells = <1>;
 		};
+
+		mailbox0_cluster0: mailbox@31f80000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f80000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster1: mailbox@31f81000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f81000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster2: mailbox@31f82000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f82000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster3: mailbox@31f83000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f83000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster4: mailbox@31f84000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f84000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster5: mailbox@31f85000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f85000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster6: mailbox@31f86000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f86000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster7: mailbox@31f87000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f87000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster8: mailbox@31f88000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f88000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster9: mailbox@31f89000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f89000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster10: mailbox@31f8a000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f8a000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster11: mailbox@31f8b000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f8b000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			status = "disabled";
+		};
 	};
 
 	main_gpio0:  main_gpio0@600000 {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
