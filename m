Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8533068A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 04:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ovp6P5AEZbgkUrUbw/Jbdbye3k1hZTKWag/nR5Mf+1E=; b=pkHkH8CDAYLNGV
	8HV8bIDxcLn68haIy9lMqbej5INK0Otc4sWj3UC1ZDqR7HXsRsw3AX630MAPqZdv/J9O0w5TjgoP1
	mHv1hWvyE9kQ3g/LIWBq0JzyCGbEwp4vxPrrHeRT46Y1jdChQrJtHP9TC42CfKaGvfCvEHvRjnzK7
	tJ3W+5EnOAGRHkSvdYDPZQqeDQSB+7tCbq4ZI/K2IncTCJ6l4n2Ic85urf7eXxdZNwbzePFy+bFnB
	XLLKdgC+gS4Y9uOunTpLFVXKgE2x8UlsIjxhZWoTCuuvJSuccGirL6dpQaz9q7QLF9UevqEMXlLxa
	AVGhgxCYTrJ7JeWHIbtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWX3d-0005AN-CH; Fri, 31 May 2019 02:14:13 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWX2t-0004Za-IZ
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 02:13:30 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4V2DOfM098761;
 Thu, 30 May 2019 21:13:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559268804;
 bh=Oen/+xiiETjW9FwkFkd7lXZEV3DCVFsj5dxIIjqAEis=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=cCkE3gFxF8xewl2nldyei9Z3N+HqGVMJR1eaGHyGxf50P540bd6l6cG0CD1vNRuCS
 q9RZiCXXkVo6HISWdfUFvGwRE3pJk9Cozj+a+DLW6Pq/voAySv/li8CdulbrI9W8Gq
 lEEmRK5pUwiOMCQFDaPfGXj/5gWd2l2saGTngFDI=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4V2DOul115235
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 30 May 2019 21:13:24 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 30
 May 2019 21:13:23 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 30 May 2019 21:13:24 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4V2DNjD029304;
 Thu, 30 May 2019 21:13:23 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x4V2DNm18128; 
 Thu, 30 May 2019 21:13:23 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 1/3] dt-bindings: hwlock: Update OMAP binding for TI K3 SoCs
Date: Thu, 30 May 2019 21:13:19 -0500
Message-ID: <20190531021321.14025-2-s-anna@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190531021321.14025-1-s-anna@ti.com>
References: <20190531021321.14025-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_191327_693065_2F4609D0 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The TI K3 AM65x and J721E family of SoCs have a HwSpinlock IP that
is similar to the existing HwSpinlock IP present in OMAP architecture
based SoCs with minor differences. Update the existing OMAP HwSpinlock
binding for this IP on TI K3 AM65x and J721E SoCs. The same compatible
from AM65x SoCs is reused for J721E SoCs.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 .../bindings/hwlock/omap-hwspinlock.txt       | 25 +++++++++++++++----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/hwlock/omap-hwspinlock.txt b/Documentation/devicetree/bindings/hwlock/omap-hwspinlock.txt
index 2c9804f4f4ac..8d365f89694c 100644
--- a/Documentation/devicetree/bindings/hwlock/omap-hwspinlock.txt
+++ b/Documentation/devicetree/bindings/hwlock/omap-hwspinlock.txt
@@ -1,12 +1,16 @@
-OMAP4+ HwSpinlock Driver
-========================
+TI HwSpinlock for OMAP and K3 based SoCs
+=========================================
 
 Required properties:
-- compatible:		Should be "ti,omap4-hwspinlock" for
-			    OMAP44xx, OMAP54xx, AM33xx, AM43xx, DRA7xx SoCs
+- compatible:		Should be one of the following,
+			  "ti,omap4-hwspinlock" for
+				OMAP44xx, OMAP54xx, AM33xx, AM43xx, DRA7xx SoCs
+			  "ti,am654-hwspinlock" for
+				K3 AM65x and J721E SoCs
 - reg:			Contains the hwspinlock module register address space
 			(base address and length)
 - ti,hwmods:		Name of the hwmod associated with the hwspinlock device
+			(for OMAP architecture based SoCs only)
 - #hwlock-cells:	Should be 1. The OMAP hwspinlock users will use a
 			0-indexed relative hwlock number as the argument
 			specifier value for requesting a specific hwspinlock
@@ -17,10 +21,21 @@ Please look at the generic hwlock binding for usage information for consumers,
 
 Example:
 
-/* OMAP4 */
+1. OMAP4 SoCs
 hwspinlock: spinlock@4a0f6000 {
 	compatible = "ti,omap4-hwspinlock";
 	reg = <0x4a0f6000 0x1000>;
 	ti,hwmods = "spinlock";
 	#hwlock-cells = <1>;
 };
+
+2. AM65x SoCs and J721E SoCs
+&cbass_main {
+	cbass_main_navss: interconnect0 {
+		hwspinlock: spinlock@30e00000 {
+			compatible = "ti,am654-hwspinlock";
+			reg = <0x00 0x30e00000 0x00 0x1000>;
+			#hwlock-cells = <1>;
+		};
+	};
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
