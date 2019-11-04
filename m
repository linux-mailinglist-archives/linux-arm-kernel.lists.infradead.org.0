Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D80FEE9EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 21:40:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3G2em5AmD2l1fntkuIj0gRH6C2uE94NBzxKfdu+LMMg=; b=f/c2/yORddY0aV
	1mFcGgDK54Hq0+HAdEfCdtNWYzsw2Wb/pm084qYpNAzP2ce+KhS60Cbqah242oIEs/Ffh1L4PA1/r
	A3+e5D27Zv0kX2Ge9VUwioVQj9NsMYnH/j45wN372hnhWkWGAsta0vIDC+mzOBkBoH4fzLnFF5EZH
	Qbv6qlm84IhuvgnrkAFT6Jn6bkPgavhB39L5OZgtAPoE1arbIetlY5CPLYlZCQTmT7OSOVFMh6frP
	qj7dFGUAj2tstwlY5nD1jILCoEfjwLP4UqPTu307e2rU3PlPKBF3459HNQMJy/aQkoe7istFc/Rg6
	Qa9KGTdnjVcWfaTnED1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRj9N-00059P-90; Mon, 04 Nov 2019 20:40:33 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRj7s-00033H-7i
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 20:39:02 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA4KcubA126439;
 Mon, 4 Nov 2019 14:38:56 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572899936;
 bh=tPqdhNixIKdQvbkA4FXOFaYElMurFZuh15DBk3awDgM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=glWXObMHjf7uqkeyNc14Ohp25FLx8itPPWbYHOlFZSA7PMr/Gien7oG8scsEaTkAD
 xocljDTXtkrPSU1bLutI80l9BbKWPD4UWPJPQ5V3IOnqUaYxraQlSURs+D787GhG6G
 OfjM2E/kOI6OryVGROJpZ/i7dpma2GN/5UO4VOPg=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA4KcuQM121361;
 Mon, 4 Nov 2019 14:38:56 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 4 Nov
 2019 14:38:42 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 4 Nov 2019 14:38:41 -0600
Received: from ula0869644.dal.design.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA4Kcl4p020670;
 Mon, 4 Nov 2019 14:38:55 -0600
From: Benoit Parrot <bparrot@ti.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Tony Lindgren <tony@atomide.com>, Tero
 Kristo <t-kristo@ti.com>
Subject: [Patch v2 4/5] ARM: dts: dra7: Add ti-sysc node for VPE
Date: Mon, 4 Nov 2019 14:38:40 -0600
Message-ID: <20191104203841.3628-5-bparrot@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104203841.3628-1-bparrot@ti.com>
References: <20191104203841.3628-1-bparrot@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_123900_385441_108670B8 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Benoit Parrot <bparrot@ti.com>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add VPE node as a child of l4 interconnect in order for it to probe
using ti-sysc.

Signed-off-by: Benoit Parrot <bparrot@ti.com>
---
 arch/arm/boot/dts/dra7-l4.dtsi | 28 +++++++++++++++++++++++++---
 1 file changed, 25 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/dra7-l4.dtsi b/arch/arm/boot/dts/dra7-l4.dtsi
index ea0e7c19eb4e..0917231a20e2 100644
--- a/arch/arm/boot/dts/dra7-l4.dtsi
+++ b/arch/arm/boot/dts/dra7-l4.dtsi
@@ -4158,12 +4158,34 @@
 			ranges = <0x0 0x1b0000 0x10000>;
 		};
 
-		target-module@1d0000 {			/* 0x489d0000, ap 27 30.0 */
-			compatible = "ti,sysc";
-			status = "disabled";
+		target-module@1d0010 {			/* 0x489d0000, ap 27 30.0 */
+			compatible = "ti,sysc-omap4", "ti,sysc";
+			reg = <0x1d0010 0x4>;
+			reg-names = "sysc";
+			ti,sysc-midle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>;
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>;
+			clocks = <&vpe_clkctrl DRA7_VPE_VPE_CLKCTRL 0>;
+			clock-names = "fck";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x0 0x1d0000 0x10000>;
+
+			vpe: vpe@0 {
+				compatible = "ti,dra7-vpe";
+				reg = <0x0000 0x120>,
+				      <0x0700 0x80>,
+				      <0x5700 0x18>,
+				      <0xd000 0x400>;
+				reg-names = "vpe_top",
+					    "sc",
+					    "csc",
+					    "vpdma";
+				interrupts = <GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH>;
+			};
 		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
