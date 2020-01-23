Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DC714672B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:46:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBQKGsQ6FlapdkuwO8Wo5kDjLOH6Qplt64gJvS4mRnE=; b=GGip9STR89IDP0
	49fgRoimC7KxxqzmikeRbCACIEX4FJNjp4KCP2V9Gs96iXexmdJBlmwsZ2t+0Prjpwm/5cj+G8O2e
	np9zPAp6MdOPQoQ136c2jeZxWRT4tlcLKy0MkpHMjBpy7kOKYovwJ/03Wbtw9D9mMv1bOye9LVag2
	o6Jn+PCEmQtyCBWsg1I+Gg7DuUjYvJFmVC9RxkVGdemd7Wu/ZaeDO0KnNASzYfFTHSEqntaNgRrfi
	pX9rDQU0EdNxO1nvA4+qZDmwbNa9hilXjeY8ZD3TH8qsM7LirvFdxPiCl2cnY9orG3r9+QXsNeDy/
	07rfYSwrSvfewJvYKtwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuawa-0002Uy-CG; Thu, 23 Jan 2020 11:46:40 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuauw-0000IB-Pt
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:45:00 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00NBit4B023591;
 Thu, 23 Jan 2020 05:44:55 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579779895;
 bh=nTfS2DbemGgn283yCl1Z05g9XUWRyrgK3hXnBn7+i4c=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=s7DKi4ugkQHjef84i+NaE/c1axPL7/3TVr6jTl9BB2Rd/iYF1kL3l0AcGBRas1gr/
 ejoI8Kreb0WlIx2SoV4cRGsfjTrgS+er1yMpv1PoInqzCJAUp3nrbE4yngIiREJJAI
 /4JeKw866F9oDI4yXSpCBXthHGgGTTmC3n7K4RJw=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00NBit7k060557;
 Thu, 23 Jan 2020 05:44:55 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 23
 Jan 2020 05:44:54 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 23 Jan 2020 05:44:54 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00NBijBG114078;
 Thu, 23 Jan 2020 05:44:52 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <t-kristo@ti.com>, <nm@ti.com>, <lokeshvutla@ti.com>
Subject: [PATCH v3 3/9] arm64: dts: ti: k3-am65: DMA support
Date: Thu, 23 Jan 2020 13:45:22 +0200
Message-ID: <20200123114528.26552-4-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200123114528.26552-1-peter.ujfalusi@ti.com>
References: <20200123114528.26552-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_034458_928671_1AF6C541 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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

Add the ringacc and udmap nodes for main and mcu NAVSS.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 39 ++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi  | 46 ++++++++++++++++++++++++
 2 files changed, 85 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index c21315c43c55..7c4853a8a02c 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -379,6 +379,10 @@ main_navss {
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
index 319e821b3c27..92629cbdc184 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
@@ -104,6 +104,52 @@ adc {
 		};
 	};
 
+	mcu_navss {
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
+
 	fss: fss@47000000 {
 		compatible = "simple-bus";
 		#address-cells = <2>;
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
