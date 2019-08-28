Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288B29FC62
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:58:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IAmd8K+U0IHYpzFNYugOhgbfgR4VgTianDCISvUPtyQ=; b=EJDg53QgLf4zM/
	5QJMdinYZdXH5kDoKlT/RS6CT2bFda7RybSvYYGnhcmwPeg/+PZ0/QKQ6+PqtdJjwwS3R9d/aFJ3M
	Dy/gdNGQSkf4aIYfZCfBjjVHN0k0YmOMkvULoVn6cMfJbE7q2Nabci3SkwED9PGwHCltABEe80T0B
	BA7emHEqQRJfnEcUo8eTTv9MaGaU+SA6IOQfG3q/bkkFyDczZbmYB2osoonbPG6pF5co/TR1fDZjF
	ibJBuRyXJ9MZFEl79wZNPGprztDiTFMD105Y0c0BVTZu2xQogvdWrcNwfOtWF2pYjQsLJ8+jTsGWw
	GLMqHB7ItDPUNYWPWnJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2sqz-0003e9-G6; Wed, 28 Aug 2019 07:58:53 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2spG-0002VN-Hq
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:57:08 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7S7v5ms127667;
 Wed, 28 Aug 2019 02:57:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566979025;
 bh=bV7v6jpzGIFR9zq5s75cVQi0wC5i+NfYYrnSlvWqJrY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=fpx+YKcpik5O8NsYVVQvNBBcj20qZLch66ErL87bPypPTB/oqDBgy1OL2ByrUmy1i
 Te8W7NMdmak1u5aFyVkYqiW4GUeGjdbD9QGnUM+LFKGatBpcJxkHgViGoIdOrMimdi
 qlp/l7MCOg5a+f4kJdu+w06HuDehryacpQbV8/aY=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7S7v5c7127606
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 02:57:05 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 02:57:04 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 02:57:04 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7S7uuFo107124;
 Wed, 28 Aug 2019 02:57:03 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 05/10] ARM: dts: am43xx: Add PRM data
Date: Wed, 28 Aug 2019 10:56:39 +0300
Message-ID: <20190828075644.4493-6-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828075644.4493-1-t-kristo@ti.com>
References: <20190828075644.4493-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_005706_722927_9FF50F92 
X-CRM114-Status: GOOD (  10.77  )
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

Add PRM data for AM43xx SoC. Initially this is used to provide reset
support, but will be expanded later to support also powerdomain control.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/am4372.dtsi | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm/boot/dts/am4372.dtsi b/arch/arm/boot/dts/am4372.dtsi
index 55aff4db9c7c..4bd22c6ba3ff 100644
--- a/arch/arm/boot/dts/am4372.dtsi
+++ b/arch/arm/boot/dts/am4372.dtsi
@@ -353,3 +353,32 @@
 
 #include "am437x-l4.dtsi"
 #include "am43xx-clocks.dtsi"
+
+&prcm {
+	prm_gfx: prm@400 {
+		compatible = "ti,am4-prm-inst";
+		reg = <0x400 0x100>;
+		#reset-cells = <1>;
+		clocks = <&gfx_l3_clkctrl AM4_GFX_L3_GFX_CLKCTRL 0>;
+	};
+
+	prm_per: prm@800 {
+		compatible = "ti,am4-prm-inst";
+		reg = <0x800 0x100>;
+		#reset-cells = <1>;
+		clocks = <&pruss_ocp_clkctrl AM4_PRUSS_OCP_PRUSS_CLKCTRL 0>;
+	};
+
+	prm_wkup: prm@2000 {
+		compatible = "ti,am4-prm-inst";
+		reg = <0x2000 0x100>;
+		#reset-cells = <1>;
+		clocks = <&l4_wkup_aon_clkctrl AM4_L4_WKUP_AON_WKUP_M3_CLKCTRL 0>;
+	};
+
+	prm_device: prm@4000 {
+		compatible = "ti,am4-prm-inst";
+		reg = <0x4000 0x100>;
+		#reset-cells = <1>;
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
