Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A60A144DB5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 09:27:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+szcOWrotfggPOVsE1sVTEIboNTMeqvJbXC+CKy8Cew=; b=Dpnbx2FwHWnt4z
	6VSLDfKBbkWVL1CvLDP1ftH/IeQ0Q6KnYUWB5qZFJUst1uIbOUn5RL4D15jgE4qVSwVIiN2m0U7Vu
	HPwkbcpLF9vDVGQZZltAk3Qh2EAF6v2VojP7chzn1q6O/Yq5Q4awb+3ApEFfca0tgnZ5ffu/MLN4E
	Hv/Yh+9SqLsS1/Y7SdMpEVqhgXXCph5rd2CD16HfSGVr0mryX433qO+Upyf9KkOjlpbFmTrJ2Lbgs
	9wwJn9a9CNZQkbVUbk3vgw9qq89XZOziC10xKt5Ga8iNV7/dDhPaUZTsNCo0nD7D5XSnfIh4UynNx
	zyrOW+3VITxR6oHlvAGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuBMD-0000Rc-SK; Wed, 22 Jan 2020 08:27:25 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuBKp-0007j9-3L
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 08:26:00 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00M8PtL5088861;
 Wed, 22 Jan 2020 02:25:55 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579681555;
 bh=Q2x893ezCcciSwj8Q+pvuXX92aguGvfzQ1L+9IjYVO4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=AFWasOYf+2/2v/ebqVHS8WzIj2QDuKOgJprhdQfqX2l3A4YkVxp56sHU3bfz9EHiz
 Gg1wTU0WD0WiBR6PiJLhxQVqed8rro32IpBL9DS4rup6D3GMVNe7QX/5x6hqZA4iQn
 hHltWM2SkQgbKbrSqQfZTnuuO0kbaJTbx72OEwKU=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00M8PtUv085513;
 Wed, 22 Jan 2020 02:25:55 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 22
 Jan 2020 02:25:55 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 22 Jan 2020 02:25:55 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00M8PeAM046830;
 Wed, 22 Jan 2020 02:25:53 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <t-kristo@ti.com>, <nm@ti.com>
Subject: [PATCH v2 6/9] arm64: dts: ti: k3-j721e-main: Move secure proxy and
 smmu under main_navss
Date: Wed, 22 Jan 2020 10:26:18 +0200
Message-ID: <20200122082621.4974-7-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200122082621.4974-1-peter.ujfalusi@ti.com>
References: <20200122082621.4974-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_002559_245922_5FD13AF9 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Secure proxy (NAVSS0_SEC_PROXY0) and smmu (NAVSS0_TCU) is part of the
Navigator Subsystem.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 43 +++++++++++------------
 1 file changed, 21 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 09b49708cdda..721a398247d0 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -40,17 +40,6 @@ gic_its: gic-its@1820000 {
 		};
 	};
 
-	smmu0: smmu@36600000 {
-		compatible = "arm,smmu-v3";
-		reg = <0x0 0x36600000 0x0 0x100000>;
-		power-domains = <&k3_pds 229 TI_SCI_PD_EXCLUSIVE>;
-		interrupt-parent = <&gic500>;
-		interrupts = <GIC_SPI 772 IRQ_TYPE_EDGE_RISING>,
-			     <GIC_SPI 768 IRQ_TYPE_EDGE_RISING>;
-		interrupt-names = "eventq", "gerror";
-		#iommu-cells = <1>;
-	};
-
 	main_gpio_intr: interrupt-controller0 {
 		compatible = "ti,sci-intr";
 		ti,intr-trigger-type = <1>;
@@ -91,6 +80,27 @@ main_udmass_inta: interrupt-controller@33d00000 {
 			ti,sci-rm-range-global-event = <0xd>;
 		};
 
+		secure_proxy_main: mailbox@32c00000 {
+			compatible = "ti,am654-secure-proxy";
+			#mbox-cells = <1>;
+			reg-names = "target_data", "rt", "scfg";
+			reg = <0x00 0x32c00000 0x00 0x100000>,
+			      <0x00 0x32400000 0x00 0x100000>,
+			      <0x00 0x32800000 0x00 0x100000>;
+			interrupt-names = "rx_011";
+			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		smmu0: smmu@36600000 {
+			compatible = "arm,smmu-v3";
+			reg = <0x0 0x36600000 0x0 0x100000>;
+			interrupt-parent = <&gic500>;
+			interrupts = <GIC_SPI 772 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 768 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "eventq", "gerror";
+			#iommu-cells = <1>;
+		};
+
 		hwspinlock: spinlock@30e00000 {
 			compatible = "ti,am654-hwspinlock";
 			reg = <0x00 0x30e00000 0x00 0x1000>;
@@ -206,17 +216,6 @@ mailbox0_cluster11: mailbox@31f8b000 {
 		};
 	};
 
-	secure_proxy_main: mailbox@32c00000 {
-		compatible = "ti,am654-secure-proxy";
-		#mbox-cells = <1>;
-		reg-names = "target_data", "rt", "scfg";
-		reg = <0x00 0x32c00000 0x00 0x100000>,
-		      <0x00 0x32400000 0x00 0x100000>,
-		      <0x00 0x32800000 0x00 0x100000>;
-		interrupt-names = "rx_011";
-		interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
-	};
-
 	main_pmx0: pinmux@11c000 {
 		compatible = "pinctrl-single";
 		/* Proxy 0 addressing */
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
