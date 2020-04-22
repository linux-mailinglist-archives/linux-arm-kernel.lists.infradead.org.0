Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CE41B3AF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 11:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xcly41cCPv2EN2sPJCbOIiCkrUrOgGjbmt5RwG7gRP4=; b=YF6iPc95kOVxmd
	fKBLQ6tpCLX6pt0jISllqK6chgFCtp4s3534xnfDYaz2SmLgOWP/dlluf0jO60n+5PnzHeLJG/7zt
	Y6WYoCqjRlciXa4tZVhUXEcdVdLytWtEov1IPOiot9jcsTJmdtarQ3YpHl2TWDq3XIsoNTLDZZSTp
	EHa5FwmjvPYE9HdWsTN7HQUKqwihS1QB2yWl4Y5eooCCBgEPdYcvAlxIlTBTJ0OlR0WjivZ4rhmCO
	gU7MK+ZTQMTQ9fQJdMKkbSEpwacSAnvnDMV2FkRAltp4ErCnffqfYFJW+4OJUTzh78WE7A0Yf0i2G
	77L/yZavhjB5fiP1Qy1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRBUJ-0000qh-EM; Wed, 22 Apr 2020 09:16:11 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRBU5-0000pP-J6
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 09:15:58 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03M9FuWX039623;
 Wed, 22 Apr 2020 04:15:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587546956;
 bh=dNvSGT1wK7FqmmMIv0DXJvpt/K/XiMrcfZIuQNKMZoU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=gHU8fJRlkVioBD5ocF1v6qnpuItA3nabYtjFOtvTPAWbjMADwvHMRWGGcRmjFQxAg
 C8KhKobVFY0eD6ca4mopKc5D3QhgYTNPt7MCit/nJ4gCH5cohMXiV+PEqYneOG+AV2
 7wyygqfU5E+6bVnTDp2FXKDNyhvTPKPgvmRGZoyQ=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03M9FuUc057570
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 22 Apr 2020 04:15:56 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 22
 Apr 2020 04:15:56 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 22 Apr 2020 04:15:55 -0500
Received: from deskari.lan (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03M9FpLL050948;
 Wed, 22 Apr 2020 04:15:54 -0500
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Rob Herring
 <robh+dt@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Jyri Sarha <jsarha@ti.com>
Subject: [PATCH 2/3] arm64: dts: ti: k3-j721e-main.dtsi: Add DSS node
Date: Wed, 22 Apr 2020 12:15:11 +0300
Message-ID: <20200422091512.950-2-tomi.valkeinen@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200422091512.950-1-tomi.valkeinen@ti.com>
References: <20200422091512.950-1-tomi.valkeinen@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_021557_705286_B87A5534 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DSS node for J721E SoC.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 57 +++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 0b9d14b838a1..21c362042ecf 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -736,6 +736,63 @@
 		};
 	};
 
+	dss: dss@04a00000 {
+		compatible = "ti,j721e-dss";
+		reg =
+			<0x00 0x04a00000 0x00 0x10000>, /* common_m */
+			<0x00 0x04a10000 0x00 0x10000>, /* common_s0*/
+			<0x00 0x04b00000 0x00 0x10000>, /* common_s1*/
+			<0x00 0x04b10000 0x00 0x10000>, /* common_s2*/
+
+			<0x00 0x04a20000 0x00 0x10000>, /* vidl1 */
+			<0x00 0x04a30000 0x00 0x10000>, /* vidl2 */
+			<0x00 0x04a50000 0x00 0x10000>, /* vid1 */
+			<0x00 0x04a60000 0x00 0x10000>, /* vid2 */
+
+			<0x00 0x04a70000 0x00 0x10000>, /* ovr1 */
+			<0x00 0x04a90000 0x00 0x10000>, /* ovr2 */
+			<0x00 0x04ab0000 0x00 0x10000>, /* ovr3 */
+			<0x00 0x04ad0000 0x00 0x10000>, /* ovr4 */
+
+			<0x00 0x04a80000 0x00 0x10000>, /* vp1 */
+			<0x00 0x04aa0000 0x00 0x10000>, /* vp2 */
+			<0x00 0x04ac0000 0x00 0x10000>, /* vp3 */
+			<0x00 0x04ae0000 0x00 0x10000>, /* vp4 */
+			<0x00 0x04af0000 0x00 0x10000>; /* wb */
+
+		reg-names = "common_m", "common_s0",
+			"common_s1", "common_s2",
+			"vidl1", "vidl2","vid1","vid2",
+			"ovr1", "ovr2", "ovr3", "ovr4",
+			"vp1", "vp2", "vp3", "vp4",
+			"wb";
+
+		clocks =	<&k3_clks 152 0>,
+				<&k3_clks 152 1>,
+				<&k3_clks 152 4>,
+				<&k3_clks 152 9>,
+				<&k3_clks 152 13>;
+		clock-names = "fck", "vp1", "vp2", "vp3", "vp4";
+
+		power-domains = <&k3_pds 152 TI_SCI_PD_EXCLUSIVE>;
+
+		interrupts = <GIC_SPI 602 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 605 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "common_m",
+				  "common_s0",
+				  "common_s1",
+				  "common_s2";
+
+		status = "disabled";
+
+		dss_ports: ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+
 	mcasp0: mcasp@2b00000 {
 		compatible = "ti,am33xx-mcasp-audio";
 		reg = <0x0 0x02b00000 0x0 0x2000>,
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
