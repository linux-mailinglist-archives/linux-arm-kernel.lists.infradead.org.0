Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5094A076
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 14:13:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+A4kau+S4oefvf0Qnwuq1QUUE3Kug8VhEdo+iVt2V4k=; b=A8oozY5gvScjxM
	kLw07qtkZqY6UBedMbxWICUdxKd3EEFmsIn0Rj6wQBvQnCoGKvjHvSAQqZuYqLak2pA3xWcp9P0Lh
	PuFXYTzAFvpg1qBlcALxzhcNrN23uQb0D0n3BWi8rTxyjA7G2OPy2XyOFuapmnkBsLKmA+rDWlmwC
	T1yc5UlPtBwO+qyDhxF+Ef8H2Z/mYC2O8bK+3LPxNxaJhXKQNzP/dz5K8YAogRHVia6nj0Jrhs6g1
	iX18dTmwmjaZIWkMgq7lRoxxD6HH92gTo+6LuoZt0EBWrLeS0+1QVbOXgAi08rdi5pHGLqF5RMV0k
	VRuAUVrqYKXlzZYoTKTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCz9-0007N2-60; Tue, 18 Jun 2019 12:13:11 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCvG-0003Fy-7M
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 12:09:12 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5IC8gKT077794;
 Tue, 18 Jun 2019 07:08:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560859722;
 bh=y47Dmxqdu2axu8XFuL5chdma5kAOZBKLQnnNccav38w=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=IQhdQ+2Z3U5v56HD2juwKT/dltQ32THHc0U2z3pBTiYv41L1M35iaFwsK/eMQ7XMj
 hyVMrOUvZLfQiacARHH18TKSnon1IQipeOJOEI8hrf0g8/ZYj8ux+OX+xiqDWw98Iy
 35JvtEXGFC2nXekNoApPJ5uvyAjy6Ie9jkyPt5HI=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5IC8fAB044902
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 18 Jun 2019 07:08:42 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 07:08:41 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 07:08:41 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5IC89Gi080327;
 Tue, 18 Jun 2019 07:08:39 -0500
From: Keerthy <j-keerthy@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>
Subject: [PATCH 10/10] arm64: dts: k3-am6: Add crypto accelarator node
Date: Tue, 18 Jun 2019 17:38:43 +0530
Message-ID: <20190618120843.18777-11-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190618120843.18777-1-j-keerthy@ti.com>
References: <20190618120843.18777-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_050910_579553_318C26F6 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: nm@ti.com, devicetree@vger.kernel.org, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add crypto accelarator node. Define the psil specific config
node as well. This can be used in Packet Mode alone.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 33 ++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 91ca5bfeefc2..5e4f9ec39f01 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -91,6 +91,39 @@
 		power-domains = <&k3_pds 148>;
 	};
 
+	crypto: crypto@4E00000 {
+		compatible = "ti,sa2ul-crypto";
+		label = "crypto-aes-gbe";
+		reg = <0x0 0x4E00000 0x0 0x1200>;
+
+		status = "okay";
+		ti,psil-base = <0x4000>;
+
+		/* tx: crypto_pnp-1, rx: crypto_pnp-1 */
+		dmas = <&main_udmap &crypto 0 UDMA_DIR_TX>,
+				<&main_udmap &crypto 0 UDMA_DIR_RX>,
+				<&main_udmap &crypto 1 UDMA_DIR_RX>;
+		dma-names = "tx", "rx1", "rx2";
+
+		ti,psil-config0 {
+			linux,udma-mode = <UDMA_PKT_MODE>;
+			ti,needs-epib;
+			ti,psd-size = <64>;
+		};
+
+		ti,psil-config1 {
+			linux,udma-mode = <UDMA_PKT_MODE>;
+			ti,needs-epib;
+			ti,psd-size = <64>;
+		};
+
+		ti,psil-config2 {
+			linux,udma-mode = <UDMA_PKT_MODE>;
+			ti,needs-epib;
+			ti,psd-size = <64>;
+		};
+	};
+
 	main_pmx0: pinmux@11c000 {
 		compatible = "pinctrl-single";
 		reg = <0x0 0x11c000 0x0 0x2e4>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
