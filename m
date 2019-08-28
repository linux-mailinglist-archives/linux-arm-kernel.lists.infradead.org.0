Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E559FC61
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:58:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQg4GHHp7T5+aEy3kD/XYHvQmIo8+EzxAlRtpUQcZKQ=; b=sdKCSkTuhGdizv
	qWw2rc4YDR1dxDb+99e54+T1lTiMrwTUD6XMyS1//nlKtMn7lz8X+zy9d5W6tEWwytuXhn5cOM79X
	pfupO7qaEQNM9TFsqAjZ1Ocqfy5yKAqkre6fo4cl0SRZr7BhBmvghqsT4pEEhRwSyHlE6qOJaw/Rv
	GakfDWZSeGXcwlJrwlJeaSi75LF9WbAI81rfKGhNEM3riAc93bBDjW+30iQEC+ERcIZLGbe7ASksj
	rKwp7R7m7tdXOkpzWyyiCG71YQ9KMDaDTguxDq7G0wh4vJOyOvuaaVwLckk3/v7uYm07c/mJ3d4CL
	0hAAkzxbjbl9qbkGUAWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2sqk-0003PM-Fy; Wed, 28 Aug 2019 07:58:38 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2spF-0002Th-7D
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:57:07 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7S7v3kS127658;
 Wed, 28 Aug 2019 02:57:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566979023;
 bh=kh0XqWPOVpwPZwZq3NDgP1PINZHnA6n9NcYoIfo7Ms8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=xELkV4NvKsUmAKWgdTz8PyPcHUwUK9sCG1T27KPYW9bKxygVrN1x0LqKTOWMsI3zd
 7Me+zMWTkrCrDkm5NHid4PubiN7mgtoU3wiiSEWkh6lDdD/CsniydC5GoZ0Ta7WuHv
 2jdNDbHslir1Ee4VI3ia7h3Xk5QpLUIaaWE91X8s=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7S7v3II124014
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 02:57:03 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 02:57:03 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 02:57:03 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7S7uuFn107124;
 Wed, 28 Aug 2019 02:57:02 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 04/10] ARM: dts: am33xx: Add PRM data
Date: Wed, 28 Aug 2019 10:56:38 +0300
Message-ID: <20190828075644.4493-5-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828075644.4493-1-t-kristo@ti.com>
References: <20190828075644.4493-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_005705_417813_CEFEC748 
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

Add PRM data for AM33xx SoC. Initially this is used to provide reset
support, but will be expanded later to support also powerdomain control.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/am33xx.dtsi | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm/boot/dts/am33xx.dtsi b/arch/arm/boot/dts/am33xx.dtsi
index e5c2f71a7c77..7448400a119e 100644
--- a/arch/arm/boot/dts/am33xx.dtsi
+++ b/arch/arm/boot/dts/am33xx.dtsi
@@ -445,3 +445,32 @@
 
 #include "am33xx-l4.dtsi"
 #include "am33xx-clocks.dtsi"
+
+&prcm {
+	prm_per: prm@c00 {
+		compatible = "ti,am3-prm-inst";
+		reg = <0xc00 0x100>;
+		#reset-cells = <1>;
+		clocks = <&pruss_ocp_clkctrl AM3_PRUSS_OCP_PRUSS_CLKCTRL 0>;
+	};
+
+	prm_wkup: prm@d00 {
+		compatible = "ti,am3-prm-inst";
+		reg = <0xd00 0x100>;
+		#reset-cells = <1>;
+		clocks = <&l4_wkup_clkctrl AM3_WKUP_M3_CLKCTRL 0>;
+	};
+
+	prm_device: prm@f00 {
+		compatible = "ti,am3-prm-inst";
+		reg = <0xf00 0x100>;
+		#reset-cells = <1>;
+	};
+
+	prm_gfx: prm@1100 {
+		compatible = "ti,am3-prm-inst";
+		reg = <0x1100 0x100>;
+		#reset-cells = <1>;
+		clocks = <&gfx_l3_clkctrl AM3_GFX_CLKCTRL 0>;
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
