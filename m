Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04024F92B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:33:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6Q1mT2H9lkktf0RBEjS4qV/a1FuEjg8bqL7Ab/N0Y8=; b=OBXtsGTWgF4eWE
	gMZwiXCyvqhZQABPyRWwjvXHB90FTAe3F6iDzfOycJV2t/P4+iNp3cOlHklr8LstSiG8ZdyUzswbA
	h3RTXudzw3bXKC2SAKR72bdT00LL96bqFw0LEAyIx9o4ALeXFAoGkMT65fjTrUnrIuXuWiV9WlljH
	1qgFswkQFG9tROf1QPIMp8hnsCtbJu2iFYZn5pqEdj9EekkugLmUFain1T2KMqMu3C4LA96zYfnZF
	ZHTuXBSRcKBr9N97TvGW/i88hhJKkrG6VnnqXMmZEI+axenKH/7zeS+FKS/sGbKgFFMAWQkTnsm0o
	UMFJ6TVvlGht8u49bXSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXEE-00082S-Be; Tue, 12 Nov 2019 14:33:10 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUXDB-0007Kb-IV
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:32:07 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xACEVx6q046180;
 Tue, 12 Nov 2019 08:31:59 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573569119;
 bh=rdDTMAol8BJ7BzBuc2QSkiXQFB4uWb3zPVmmVQndFWA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=LaiPT59IKFwdQz5u0mM4+JJKD6FGSpu6GvHdw1mMWuSJ2eS5Jz3n59/K7WeZq5SRb
 UuioiMQyoJdEefPBkxcIExq8lkchmRZZkxGakzQQETwcJpaGBVIJauX1mmg1LkWV2q
 9w0KMNM3MFDgTLQ8pUpPHF/rzTMPyg02ZXm7hxcc=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xACEVxbH031531
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 12 Nov 2019 08:31:59 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 12
 Nov 2019 08:31:41 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 12 Nov 2019 08:31:41 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xACEVjUM050451;
 Tue, 12 Nov 2019 08:31:55 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <t-kristo@ti.com>, <nm@ti.com>
Subject: [PATCH 3/9] arm64: dts: ti: k3-am65: DMA support
Date: Tue, 12 Nov 2019 16:32:55 +0200
Message-ID: <20191112143301.3168-4-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112143301.3168-1-peter.ujfalusi@ti.com>
References: <20191112143301.3168-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_063205_732115_99DB7C3E 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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

Add the ringacc and udmap nodes for main and mcu NAVSS.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 39 ++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi  | 46 ++++++++++++++++++++++++
 2 files changed, 85 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index a125d66dd552..be841fc44b76 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -379,6 +379,10 @@ cbass_main_navss: navss@30800000 {
 		#address-cells = <2>;
 		#size-cells = <2>;
 		ranges;
+		dma-coherent;
+		dma-ranges;
+
+		ti,sci-dev-id = <118>;
 
 		intr_main_navss: interrupt-controller1 {
 			compatible = "ti,sci-intr";
@@ -527,6 +531,41 @@ mailbox0_cluster11: mailbox@31f8b000 {
 			ti,mbox-num-fifos = <16>;
 			interrupt-parent = <&intr_main_navss>;
 		};
+
+		ringacc: ringacc@3c000000 {
+			compatible = "ti,am654-navss-ringacc";
+			reg =	<0x0 0x3c000000 0x0 0x400000>,
+				<0x0 0x38000000 0x0 0x400000>,
+				<0x0 0x31120000 0x0 0x100>,
+				<0x0 0x33000000 0x0 0x40000>;
+			reg-names = "rt", "fifos", "proxy_gcfg", "proxy_target";
+			ti,num-rings = <818>;
+			ti,sci-rm-range-gp-rings = <0x2>; /* GP ring range */
+			ti,dma-ring-reset-quirk;
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <187>;
+			msi-parent = <&inta_main_udmass>;
+		};
+
+		main_udmap: dma-controller@31150000 {
+			compatible = "ti,am654-navss-main-udmap";
+			reg =	<0x0 0x31150000 0x0 0x100>,
+				<0x0 0x34000000 0x0 0x100000>,
+				<0x0 0x35000000 0x0 0x100000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt";
+			msi-parent = <&inta_main_udmass>;
+			#dma-cells = <1>;
+
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <188>;
+			ti,ringacc = <&ringacc>;
+
+			ti,sci-rm-range-tchan = <0x1>, /* TX_HCHAN */
+						<0x2>; /* TX_CHAN */
+			ti,sci-rm-range-rchan = <0x4>, /* RX_HCHAN */
+						<0x5>; /* RX_CHAN */
+			ti,sci-rm-range-rflow = <0x6>; /* GP RFLOW */
+		};
 	};
 
 	main_gpio0:  main_gpio0@600000 {
diff --git a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
index 7bdf5342f58f..27fc73f94cf9 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
@@ -95,4 +95,50 @@ adc {
 			compatible = "ti,am654-adc", "ti,am3359-adc";
 		};
 	};
+
+	cbass_mcu_navss: navss@28380000 {
+		compatible = "simple-mfd";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		dma-coherent;
+		dma-ranges;
+
+		ti,sci-dev-id = <119>;
+
+		mcu_ringacc: ringacc@2b800000 {
+			compatible = "ti,am654-navss-ringacc";
+			reg =	<0x0 0x2b800000 0x0 0x400000>,
+				<0x0 0x2b000000 0x0 0x400000>,
+				<0x0 0x28590000 0x0 0x100>,
+				<0x0 0x2a500000 0x0 0x40000>;
+			reg-names = "rt", "fifos", "proxy_gcfg", "proxy_target";
+			ti,num-rings = <286>;
+			ti,sci-rm-range-gp-rings = <0x2>; /* GP ring range */
+			ti,dma-ring-reset-quirk;
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <195>;
+			msi-parent = <&inta_main_udmass>;
+		};
+
+		mcu_udmap: dma-controller@285c0000 {
+			compatible = "ti,am654-navss-mcu-udmap";
+			reg =	<0x0 0x285c0000 0x0 0x100>,
+				<0x0 0x2a800000 0x0 0x40000>,
+				<0x0 0x2aa00000 0x0 0x40000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt";
+			msi-parent = <&inta_main_udmass>;
+			#dma-cells = <1>;
+
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <194>;
+			ti,ringacc = <&mcu_ringacc>;
+
+			ti,sci-rm-range-tchan = <0x1>, /* TX_HCHAN */
+						<0x2>; /* TX_CHAN */
+			ti,sci-rm-range-rchan = <0x3>, /* RX_HCHAN */
+						<0x4>; /* RX_CHAN */
+			ti,sci-rm-range-rflow = <0x5>; /* GP RFLOW */
+		};
+	};
 };
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
