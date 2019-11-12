Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B636AF92B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:34:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/wDnCURe/MlDHV/MJEeycCsM4secSWz2EuifzaTHZs=; b=Ixmxb3JhEam0zB
	/xJEUYSqOB25I9wwqdhcuI2IfvnZ2BbK6nqo6h09EvzeMLCzU6g0QA76KKejRI5otLa49gZvqn2qT
	+lnVRghoXjEoEgErFdtUqh91XuZlSuoD4NbNta+/3BtgNj+nwc8kVetEINeAAVw+Lw7gkBB9K7dbK
	ebotmiYs2R2k6xE57ArJ03QeE8sBh9KqT0lkB6zWUCxyASuENRFBI0KbH1d5pJoKjHfCUeRu31ydc
	yyFSU4Z26F4XNxx0cDlQ9LcsTMN7C2Jki1c88FyuyQ9+X7gB1NRvjZn33DXayf3nKbrz46gSBtmQy
	FI64kl8kRCT37WVMqYiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXFD-0000g4-DZ; Tue, 12 Nov 2019 14:34:11 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUXDM-0007Vp-6x
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:32:17 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xACEWCkP092759;
 Tue, 12 Nov 2019 08:32:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573569132;
 bh=Js6q+cKDSu/GtCk1xmemL71aVYq/SyFJ6i4cBFubWEw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=fnpE/gzraLs3EnTOxqfCi0wVSfx87trg7LbA93poj9I6Pq9v75Sks0vDm19ITg68I
 sNszf+5DKz5oLMXQzQhJ6zV7t2RYKXmBOI1L6UcJ9bwRiewSn6kSL5rDcZy9kFIxIa
 y8E3cAZumwKzT68aCKAmLERUDIyJY4I/KW7nAGdE=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xACEWCbZ032051
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 12 Nov 2019 08:32:12 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 12
 Nov 2019 08:31:54 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 12 Nov 2019 08:31:54 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xACEVjUQ050451;
 Tue, 12 Nov 2019 08:32:08 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <t-kristo@ti.com>, <nm@ti.com>
Subject: [PATCH 7/9] arm64: dts: ti: k3-j721e-main: Move secure proxy and smmu
 under main_navss
Date: Tue, 12 Nov 2019 16:32:59 +0200
Message-ID: <20191112143301.3168-8-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112143301.3168-1-peter.ujfalusi@ti.com>
References: <20191112143301.3168-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_063216_342453_E948DF8D 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 42 +++++++++++------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 7f320eec0459..4bf8c27ecc64 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -40,16 +40,6 @@ gic_its: gic-its@1820000 {
 		};
 	};
 
-	smmu0: smmu@36600000 {
-		compatible = "arm,smmu-v3";
-		reg = <0x0 0x36600000 0x0 0x100000>;
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
@@ -90,6 +80,27 @@ main_udmass_inta: interrupt-controller@33d00000 {
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
@@ -205,17 +216,6 @@ mailbox0_cluster11: mailbox@31f8b000 {
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
