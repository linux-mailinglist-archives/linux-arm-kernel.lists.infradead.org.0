Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA342F9257
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:28:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Atdnqq0xSe0O5mOyfu0A2eMnViNqStTyoTpznBY1Nbg=; b=iDFswzGF5CeA2j
	mM6T2WTyHAiiEs9UXZIwqEbvZKT9oMUrLsT84i+f1u7v/cxfp+uiDICw9X8W2cHBs+cCPmvLGheiA
	qXzak+bcRGOvc9r5SF4e6Daa+LaZ+x46jbXrnB/RxLzSSx3mWMCECJTaKQxNWZJ0OUCWvi82NwwJk
	o9hAHrVgkjzwDvMTgnW2jYrnLo7g29DaSHs06+rp/L6pQJH9GiqW+YoRWwDI+7l021DHmEVhvtNrB
	t/NHGw4+LPMY6PBUptYbWLVRpfJrr9P9NUuAeWjuqXbK3mZINSLCQCKc4LHxnBGaVbBWaABApxB9Z
	QCl0nLRKAk8Det8fg6xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUX9G-0002Sp-Rf; Tue, 12 Nov 2019 14:28:02 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUX6P-0007gl-BH
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:25:08 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xACEP3QD098141;
 Tue, 12 Nov 2019 08:25:03 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573568703;
 bh=FND3XnjPqEdXZhVPPo6uZwFZk9lpeYV53xeWgNl+dek=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Q1CFnaZ97SS9IJTxjMIRY3BUCgs66MlI5zt3x5qnth2h5rXCk35wJ5ioPgEQblo5Z
 Hikz9zKSmB3JsQZ+9+ZIIfg0E3k/cBDzdRd9An5/ZOCnZMXk5qVLRTqrLqT58x0jd0
 Z8Q2bWG526jGyK7RgToS6optCmEETVFfI0/mj8vY=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xACEP3rI020300
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 12 Nov 2019 08:25:03 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 12
 Nov 2019 08:24:45 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 12 Nov 2019 08:24:45 -0600
Received: from uda0869644b.dal.design.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xACEOrBm036029;
 Tue, 12 Nov 2019 08:25:02 -0600
From: Benoit Parrot <bparrot@ti.com>
To: Tony Lindgren <tony@atomide.com>, Tero Kristo <t-kristo@ti.com>
Subject: [Patch v3 07/10] arm: dtsi: dra76x: Add CAL dtsi node
Date: Tue, 12 Nov 2019 08:27:50 -0600
Message-ID: <20191112142753.22976-8-bparrot@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191112142753.22976-1-bparrot@ti.com>
References: <20191112142753.22976-1-bparrot@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_062505_543023_5A6A580C 
X-CRM114-Status: GOOD (  11.79  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Benoit Parrot <bparrot@ti.com>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the required dtsi node to support the Camera
Adaptation Layer (CAL) for the DRA76 family of devices.

Signed-off-by: Benoit Parrot <bparrot@ti.com>
---
 arch/arm/boot/dts/dra76x.dtsi | 43 +++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm/boot/dts/dra76x.dtsi b/arch/arm/boot/dts/dra76x.dtsi
index cdcba3f561c4..2f58c709c081 100644
--- a/arch/arm/boot/dts/dra76x.dtsi
+++ b/arch/arm/boot/dts/dra76x.dtsi
@@ -41,6 +41,49 @@
 
 };
 
+&l4_per3 {
+	target-module@1b0000 {			/* 0x489b0000, ap 25 34.0 */
+		compatible = "ti,sysc-omap4", "ti,sysc";
+		reg = <0x1b0000 0x4>,
+		      <0x1b0010 0x4>;
+		reg-names = "rev", "sysc";
+		ti,sysc-midle = <SYSC_IDLE_FORCE>,
+				<SYSC_IDLE_NO>;
+		ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+				<SYSC_IDLE_NO>;
+		clocks = <&cam_clkctrl DRA7_CAM_VIP3_CLKCTRL 0>;
+		clock-names = "fck";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x1b0000 0x10000>;
+
+		cal: cal@0 {
+			compatible = "ti,dra76-cal";
+			reg = <0x0000 0x400>,
+			      <0x0800 0x40>,
+			      <0x0900 0x40>;
+			reg-names = "cal_top",
+				    "cal_rx_core0",
+				    "cal_rx_core1";
+			interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH>;
+			ti,camerrx-control = <&scm_conf 0x6dc>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csi2_0: port@0 {
+					reg = <0>;
+				};
+				csi2_1: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+	};
+};
+
 /* MCAN interrupts are hard-wired to irqs 67, 68 */
 &crossbar_mpu {
 	ti,irqs-skip = <10 67 68 133 139 140>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
