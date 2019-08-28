Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD199FC5D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNJKFILSZRbPZL3ZazTT6a87T8ACgsgETFhzRhxayy8=; b=Q3Z4A4ITwbe1R8
	JUAF2tdHBaK5QNv+wOAJE4XE2Up9f7q+hcVY7Y2BxFncfo22RZMmi1yjWiLnhJO01UGaLj+fd9Zy6
	goNB6ERlq0MyXrvuAj+7xJR0FN/zPFA0DZb6qAChQds7ABlrpLldOS8nyeIYihdMB1Vz/c8w6OAk9
	bifw3jxP2k+nq6uriBbzn1xK8sjjFGN51ZdaN6bomdOWz4w+jitXDTSq8nQykiYI+pCLwatXW2UdG
	GUAAlxL32T3nzcYL/nmRr7G13dVbEknioUgFwMhz5jxnyzL8hmHReZJhHvcWtvjJJX6yXZ18akOan
	U1P4OMgnuSabMjRGIYJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2sq3-0002w8-9h; Wed, 28 Aug 2019 07:57:55 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2spC-0002Ri-FA
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:57:03 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7S7v0T1123126;
 Wed, 28 Aug 2019 02:57:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566979020;
 bh=uXEzRmZ8z51c3KPk6HSXAw3k87purAqVMHp+qIFsIyU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=fn8qFFe/hwbwjccB2ES+C1PtMuLaz/Mn6HnJCxBQqhQfHUxt7Av3rDMF0/omntq/G
 mH1biLT5jOw8ZJfi/oYOKGlpbZ7DhXkYpqCjbL4QFDaRSBPN3ZIhg6C4RgndIUk8mL
 IaRayL34CGDqnrrpAw0Piu7e0Bmdg8JJNLL0mW1U=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7S7v0jr123876
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 02:57:00 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 02:57:00 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 02:57:00 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7S7uuFl107124;
 Wed, 28 Aug 2019 02:56:59 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 02/10] ARM: dts: dra7: add PRM nodes
Date: Wed, 28 Aug 2019 10:56:36 +0300
Message-ID: <20190828075644.4493-3-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828075644.4493-1-t-kristo@ti.com>
References: <20190828075644.4493-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_005702_587119_09DD9959 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add PRM nodes for dra7 series of SoCs. These are initially used to
support reset control for some of the nodes, but will be extended
later to add powerdomain control and support for PRCM irqs among
other things.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/dra7.dtsi | 55 +++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm/boot/dts/dra7.dtsi b/arch/arm/boot/dts/dra7.dtsi
index 953f0ffce2a9..95147289be9c 100644
--- a/arch/arm/boot/dts/dra7.dtsi
+++ b/arch/arm/boot/dts/dra7.dtsi
@@ -763,3 +763,58 @@
 
 #include "dra7-l4.dtsi"
 #include "dra7xx-clocks.dtsi"
+
+&prm {
+	prm_dsp1: prm@400 {
+		compatible = "ti,dra7-prm-inst";
+		reg = <0x400 0x100>;
+		#reset-cells = <1>;
+		clocks = <&dsp1_clkctrl DRA7_DSP1_MMU0_DSP1_CLKCTRL 0>;
+	};
+
+	prm_ipu: prm@500 {
+		compatible = "ti,dra7-prm-inst";
+		reg = <0x500 0x100>;
+		#reset-cells = <1>;
+		clocks = <&ipu1_clkctrl DRA7_IPU1_MMU_IPU1_CLKCTRL 0>;
+	};
+
+	prm_core: prm@700 {
+		compatible = "ti,dra7-prm-inst";
+		reg = <0x700 0x100>;
+		#reset-cells = <1>;
+		clocks = <&ipu2_clkctrl DRA7_IPU2_MMU_IPU2_CLKCTRL 0>;
+	};
+
+	prm_iva: prm@f00 {
+		compatible = "ti,dra7-prm-inst";
+		reg = <0xf00 0x100>;
+	};
+
+	prm_dsp2: prm@1b00 {
+		compatible = "ti,dra7-prm-inst";
+		reg = <0x1b00 0x40>;
+		#reset-cells = <1>;
+		clocks = <&dsp2_clkctrl DRA7_DSP2_MMU0_DSP2_CLKCTRL 0>;
+	};
+
+	prm_eve1: prm@1b40 {
+		compatible = "ti,dra7-prm-inst";
+		reg = <0x1b40 0x40>;
+	};
+
+	prm_eve2: prm@1b80 {
+		compatible = "ti,dra7-prm-inst";
+		reg = <0x1b80 0x40>;
+	};
+
+	prm_eve3: prm@1bc0 {
+		compatible = "ti,dra7-prm-inst";
+		reg = <0x1bc0 0x40>;
+	};
+
+	prm_eve4: prm@1c00 {
+		compatible = "ti,dra7-prm-inst";
+		reg = <0x1c00 0x60>;
+	};
+};
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
