Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1CF134036
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 12:19:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=liol+HvTrYVQw/sDNd/F79ABJWQw0/h2KBCq804TdkQ=; b=eRMfVYwTD1v4Y0
	ZqJR3tGXofp+pyy1G9DLnK3kcExxsAFbHte/N1L+wgS1SY15CPVYpHhTdlueLfhnDATWbEKVbjgXt
	lQn4UELQv2qnv4PfjEa8XZ9jfON/J8YKgiCAnYR5+id/MrVm7p5GEgag87jrRCViiNOk1soo4OgsD
	Cxdqyw6SL5XibJTNqu40GliWZefUUroMzGV5al8sjGxLpWYI090tQgob4OSqRz0B8JGf07C3x3F3W
	s2I41Sc93aUIiSJ2uF9Nyl7BBIHavcsK78O8M0u68O+kbQvYddFkEJU1Ss965sUZYzr73cd+4XiRT
	3Q/RT+HKaT44mluNiLOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip9NK-0001o3-6T; Wed, 08 Jan 2020 11:19:46 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9MN-0001B5-U0
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 11:18:50 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 008BIk8S071125;
 Wed, 8 Jan 2020 05:18:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578482326;
 bh=8YeSUGy91+ux0GdAN63CEOnCwkemtQHzEJnj/LSx62o=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=MnTCd3Q2vlQzGXutbXclX38rd2+WcWet69vAxnHFuu8dV201hZTJf7Q5QsKnhTssf
 udtJg+hvpB1shyF8wnnTflh1ueGXGkLAqOI5p6Aw9PUFUNH5rvYQJmf3jXFxIa/huG
 /afIPs4kk1Y1m2K6jOk9uYQmWh5OMVZoZeTBm3PE=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 008BIkg9031349;
 Wed, 8 Jan 2020 05:18:46 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 8 Jan
 2020 05:18:44 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 8 Jan 2020 05:18:44 -0600
Received: from lta0400828a.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 008BIWBt087830;
 Wed, 8 Jan 2020 05:18:42 -0600
From: Roger Quadros <rogerq@ti.com>
To: <t-kristo@ti.com>
Subject: [PATCH 4/5] arm64: dts: ti: k3-j721e: Enable Super-Speed support for
 USB0
Date: Wed, 8 Jan 2020 13:18:29 +0200
Message-ID: <20200108111830.8482-5-rogerq@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108111830.8482-1-rogerq@ti.com>
References: <20200108111830.8482-1-rogerq@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_031848_129177_39F5F8E1 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: nm@ti.com, devicetree@vger.kernel.org, vigneshr@ti.com, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

USB0 supports super-speed mode on the EVM. Enable that.
On the EVM, USB0 uses SERDES3 for super-speed lane.

Since USB0 is a type-C port, it needs to support lane swapping
for cable flip support. This is provided using SERDES lane
swap feature. Provide the Type-C cable orientation GPIO
to the SERDES Wrapper driver.

Signed-off-by: Roger Quadros <rogerq@ti.com>
Signed-off-by: Sekhar Nori <nsekhar@ti.com>
---
 .../dts/ti/k3-j721e-common-proc-board.dts     | 32 +++++++++++++++++--
 1 file changed, 30 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
index 2a3cd6174504..4d180887342c 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
@@ -59,6 +59,7 @@
 	main_usbss0_pins_default: main_usbss0_pins_default {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x290, PIN_OUTPUT, 0) /* (U6) USB0_DRVVBUS */
+			J721E_IOPAD(0x210, PIN_INPUT, 7) /* (W3) MCAN1_RX.GPIO1_3 */
 		>;
 	};
 
@@ -257,16 +258,43 @@
 	status = "disabled";
 };
 
+&usb_serdes_mux {
+	idle-states = <1>, <0>; /* USB0 to SERDES3, USB1 to SERDES1 */
+};
+
+&serdes_ln_ctrl {
+	idle-states = <SERDES0_LANE0_PCIE0_LANE0>, <SERDES0_LANE1_PCIE0_LANE1>,
+		      <SERDES1_LANE0_PCIE1_LANE0>, <SERDES1_LANE1_PCIE1_LANE1>,
+		      <SERDES2_LANE0_PCIE2_LANE0>, <SERDES2_LANE1_PCIE2_LANE1>,
+		      <SERDES3_LANE0_USB3_0_SWAP>, <SERDES3_LANE1_USB3_0>,
+		      <SERDES4_LANE0_EDP_LANE0>, <SERDES4_LANE1_EDP_LANE1>, <SERDES4_LANE2_EDP_LANE2>, <SERDES4_LANE3_EDP_LANE3>;
+};
+
+&serdes_wiz3 {
+	typec-dir-gpios = <&main_gpio1 3 GPIO_ACTIVE_HIGH>;
+};
+
+&serdes3 {
+	serdes3_usb_link: link@0 {
+		reg = <0>;
+		cdns,num-lanes = <2>;
+		#phy-cells = <0>;
+		cdns,phy-type = <PHY_TYPE_USB3>;
+		resets = <&serdes_wiz3 1>, <&serdes_wiz3 2>;
+	};
+};
+
 &usbss0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_usbss0_pins_default>;
-	ti,usb2-only;
 	ti,vbus-divider;
 };
 
 &usb0 {
 	dr_mode = "otg";
-	maximum-speed = "high-speed";
+	maximum-speed = "super-speed";
+	phys = <&serdes3_usb_link>;
+	phy-names = "cdns3,usb3-phy";
 };
 
 &usbss1 {
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
