Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2829837998
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzpgn78Ww+6zems3Rcoo7F1gsWM6GjAacwOVPnWLoys=; b=AciQnz1GRSiKXS
	V/mvfzeJTH9jyvIxXnNfXChJZSfHAsE7MyMyxbn14CBEdKrAAMYx2BAwlRjexvN1hR4bVAk4bW+Hb
	GaywVpv6CWl4X4RdQQYI37c9v0CbcRW9150jpVS4Bu9/vMDOl47o67j3EuyKA4TLElRZIG37PzSPF
	XvFGCd1hGCnwnWykaIrrXb9cId04ue97ncZtFqQmZUopnFeoylBZvs++j3AlkaNRbLicS02vzE91z
	SeUzoUhMSw+sWWxN/ZkeriEXT+aUtWwRTV01LwMsPeUO/Jq6NzAExxWel5fhvDv2cJ8vaXRKa3z3V
	8Al6YqryUn/V3OVZM8vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvIX-0007D1-V5; Thu, 06 Jun 2019 16:31:29 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvIC-0006vj-Ei
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:31:10 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x56GV6JV108047;
 Thu, 6 Jun 2019 11:31:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559838666;
 bh=DlaHGuBwA9qxrYjkx0p7cfUajFkarVJmB4WO+zGG17g=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=dXnCDunR5KQ175AyxGWOZl1uOf1a4h2Q517O/ipisK8ES5vxxm45eM8EpiIU1R935
 uIs7UOiUNZwCDTvODnzR2tjXXRM8gpID32AbRTp37blx/B28wlXl5HAiClQiKEWqTd
 1KiaN7UrhwaN+lXSiVWRfmov8wkZnf/WY4setmoQ=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x56GV5J3082453
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 6 Jun 2019 11:31:05 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 6 Jun
 2019 11:31:05 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 6 Jun 2019 11:31:05 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x56GV4Ef052215;
 Thu, 6 Jun 2019 11:31:05 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: "David S. Miller" <davem@davemloft.net>, Santosh Shilimkar
 <ssantosh@kernel.org>, Richard Cochran <richardcochran@gmail.com>, Rob
 Herring <robh+dt@kernel.org>
Subject: [PATCH net-next v2 01/10] dt-bindings: doc: net: keystone-netcp:
 document cpts
Date: Thu, 6 Jun 2019 19:30:38 +0300
Message-ID: <20190606163047.31199-2-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190606163047.31199-1-grygorii.strashko@ti.com>
References: <20190606163047.31199-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_093108_636583_434D905F 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Wingman Kwok <w-kwok2@ti.com>, netdev@vger.kernel.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Murali Karicheri <m-karicheri2@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Keystone 2 66AK2HK/E/L 1G Ethernet Switch Subsystems contains The
Common Platform Time Sync (CPTS) module which is in general compatible with
CPTS module found on "legacy" TI AM3/4/5 SoCs. So, the basic support for
Keystone 2 CPTS is available by default, but not documented.
The Keystone 2 CPTS module supports also some additional features like time
sync reference (RFTCLK) clock selection through CPTS_RFTCLK_SEL register
(offset: x08) in CPTS module, which is modelled as multiplexer clock.

This patch adds missed binding documentation for Keystone 2 66AK2HK/E/L
CPTS module.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
Acked-by: Richard Cochran <richardcochran@gmail.com>
---
 .../bindings/net/keystone-netcp.txt           | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/keystone-netcp.txt b/Documentation/devicetree/bindings/net/keystone-netcp.txt
index 6262c2f293b0..24f11e042f8d 100644
--- a/Documentation/devicetree/bindings/net/keystone-netcp.txt
+++ b/Documentation/devicetree/bindings/net/keystone-netcp.txt
@@ -104,6 +104,23 @@ Required properties:
 			- 10Gb mac<->mac forced mode : 11
 ----phy-handle:	phandle to PHY device
 
+- cpts:		sub-node time synchronization (CPTS) submodule configuration
+-- clocks:	CPTS reference clock. Should point on cpts-refclk-mux clock.
+-- clock-names: should be "cpts"
+-- cpts-refclk-mux: multiplexer clock definition sub-node for CPTS reference (RFTCLK) clock
+--- #clock-cells: should be 0
+--- clocks:	list of CPTS reference (RFTCLK) clock's parents as defined in Data manual
+--- ti,mux-tbl: array of multiplexer indexes as defined in Data manual
+--- assigned-clocks: should point on cpts-refclk-mux clock
+--- assigned-clock-parents: should point on required RFTCLK clock parent to be selected
+-- cpts_clock_mult: (optional) Numerator to convert input clock ticks
+		into nanoseconds
+-- cpts_clock_shift: (optional) Denominator to convert input clock ticks into
+		nanoseconds.
+		Mult and shift will be calculated basing on CPTS
+		rftclk frequency if both cpts_clock_shift and
+		cpts_clock_mult properties are not provided.
+
 Optional properties:
 - enable-ale:	NetCP driver keeps the address learning feature in the ethernet
 		switch module disabled. This attribute is to enable the address
@@ -168,6 +185,23 @@ netcp: netcp@2000000 {
 			tx-queue = <648>;
 			tx-channel = <8>;
 
+			cpts {
+				clocks = <&cpts_refclk_mux>;
+				clock-names = "cpts";
+
+				cpts_refclk_mux: cpts-refclk-mux {
+					#clock-cells = <0>;
+					clocks = <&chipclk12>, <&chipclk13>,
+						 <&timi0>, <&timi1>,
+						 <&tsipclka>, <&tsrefclk>,
+						 <&tsipclkb>;
+					ti,mux-tbl = <0x0>, <0x1>, <0x2>,
+						<0x3>, <0x4>, <0x8>, <0xC>;
+					assigned-clocks = <&cpts_refclk_mux>;
+					assigned-clock-parents = <&chipclk12>;
+				};
+			};
+
 			interfaces {
 				gbe0: interface-0 {
 					slave-port = <0>;
@@ -219,3 +253,13 @@ netcp: netcp@2000000 {
 		};
 	};
 };
+
+CPTS board configuration - select external CPTS RFTCLK:
+
+&tsrefclk{
+	clock-frequency = <500000000>;
+};
+
+&cpts_refclk_mux {
+	assigned-clock-parents = <&tsrefclk>;
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
