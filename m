Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB5214672D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:47:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+uGr7nfEr5Pzly+9yLg7CEd97qSSsPZmNWhbbpxV5s=; b=uRcBhsdSoOBhWS
	kgI3GRJQ7W9yPdFqCPtyHETVAHvQHr6b3wWDwIIJHRKwnlDwoxCdRzlkJYaV+twxjAJZIfUsvex0D
	4cDuMFOVNBJsiwDfUYqiCWMlg21igeTH5gQNtRpccrBiIagGj5J/1fLulit10ELJeEPh6XQZO15uh
	IN1rV/iDzRq6mzHIbvwvYx2d25Lr6QPYTmWjUiE1iPd2Ue3DJOKfgb4keBGGloqoXqahsxEFxziAU
	C8bTDuWlU0EZvByeHWXfFNuUpOa7FaPU9tNyBgjZi/+makm8ND0Xm/+h8u286NIvhvysUVCg32B3j
	Up75MqAuOG46OrgyOiZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuawy-0002nK-0v; Thu, 23 Jan 2020 11:47:04 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuav4-0000mJ-I8
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:45:08 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00NBj2AK098693;
 Thu, 23 Jan 2020 05:45:02 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579779902;
 bh=sUxfh7+xTFULpvEdiX+NQwvAhZEl7MFGUlzVf7lyaEc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=wELgubAW1q2J2LKIgDvKNhCM3OxVv/iLCXHy461cQsApFsNiC5fJ+x7lD1L6QZLMN
 J/0fpSJB46JBQKR8DAqcerdu7mQE58BaaX0NVcbFsfhi92QTavDe+brTsbxhZtkTYb
 qxaGY6wMskmFlS2LALwfJ57Fe8XjJaumPWOuUPG4=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00NBj25B017240
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 23 Jan 2020 05:45:02 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 23
 Jan 2020 05:45:01 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 23 Jan 2020 05:45:01 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00NBijBJ114078;
 Thu, 23 Jan 2020 05:44:59 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <t-kristo@ti.com>, <nm@ti.com>, <lokeshvutla@ti.com>
Subject: [PATCH v3 6/9] arm64: dts: ti: k3-j721e-main: Move secure proxy and
 smmu under main_navss
Date: Thu, 23 Jan 2020 13:45:25 +0200
Message-ID: <20200123114528.26552-7-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200123114528.26552-1-peter.ujfalusi@ti.com>
References: <20200123114528.26552-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_034507_072937_9FC256C8 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index 6a805be4513a..97b194e0bcba 100644
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
