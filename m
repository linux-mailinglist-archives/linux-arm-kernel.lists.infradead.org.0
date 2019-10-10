Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7F9D22A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 10:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CONXqfQ/0q+NMzYGaJ+ky43/T44gmRBkuWdE9IT/tTU=; b=Bekq5YaV9+1Q9x
	4H9Cm0bcdb+ywkL/EgiWUKl5ezMUte31b+jZgaSabqXQSnm+Zq7EujUg72sDVp+KcSfcNk61LiyPi
	YVJZXhULTkGgfVUolL3mh88a+IfREqiNC9KY/M/VLMgrvHfSURj7dtnVqejNsS7uWTC54b7JFWruJ
	tC/HZHPOnRRS2bgP9i0UV9i+/T6ZblBvKikckrNRyOfuy4iEgPr90jI7cTj3zeIuEKKl33thej9Ph
	Cwaa3tsCeTI3vloZXZscYSD2EiXzZkQ2xqQZgbwCbINE1NeWVSt41fx3BALEs4B0QdLxgfie4de1l
	KUpqiUP1t1tikm1ExDnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iITie-0007mj-OO; Thu, 10 Oct 2019 08:22:44 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIThK-0006XN-P0
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 08:21:24 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9A8LK2F119361;
 Thu, 10 Oct 2019 03:21:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570695680;
 bh=BZjTfO0hw7QY/DOKoGd7XFdcQdgiFx0Fe8Ciulw6L6Y=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=QsnYSKeo/U7vszz/eNAwI0k5ZhEqYCiH0KHPaFceG6ycVg/FaRd8GalbvE7ifQB27
 5JPSrkSQMZMjpyRAemC/UrMgBu8KJFQcdpRopo7N0tt30Q9C61KcaRKo0QkElvZlUC
 pOSmGTBGur8INj7Z3rDW8w4AwRwGi/UK+uAgyaY0=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9A8LKk7003671
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 10 Oct 2019 03:21:20 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 10
 Oct 2019 03:21:16 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 10 Oct 2019 03:21:19 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9A8LAtF012630;
 Thu, 10 Oct 2019 03:21:18 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 5/5] ARM: dts: omap5: Add PRM data
Date: Thu, 10 Oct 2019 11:21:08 +0300
Message-ID: <20191010082108.15448-6-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191010082108.15448-1-t-kristo@ti.com>
References: <20191010082108.15448-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_012122_851628_C6B3DB21 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add PRM data for OMAP54xx SoC. Initially this is used to provide reset
support, but will be expanded later to support also powerdomain control.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/omap5.dtsi | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/boot/dts/omap5.dtsi b/arch/arm/boot/dts/omap5.dtsi
index 1fb7937638f0..cec8a38fb420 100644
--- a/arch/arm/boot/dts/omap5.dtsi
+++ b/arch/arm/boot/dts/omap5.dtsi
@@ -435,3 +435,29 @@
 
 #include "omap5-l4-abe.dtsi"
 #include "omap54xx-clocks.dtsi"
+
+&prm {
+	prm_dsp: prm@400 {
+		compatible = "ti,omap5-prm-inst", "ti,omap-prm-inst";
+		reg = <0x400 0x100>;
+		#reset-cells = <1>;
+	};
+
+	prm_core: prm@700 {
+		compatible = "ti,omap5-prm-inst", "ti,omap-prm-inst";
+		reg = <0x700 0x100>;
+		#reset-cells = <1>;
+	};
+
+	prm_iva: prm@1200 {
+		compatible = "ti,omap5-prm-inst", "ti,omap-prm-inst";
+		reg = <0x1200 0x100>;
+		#reset-cells = <1>;
+	};
+
+	prm_device: prm@1c00 {
+		compatible = "ti,omap5-prm-inst", "ti,omap-prm-inst";
+		reg = <0x1c00 0x100>;
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
