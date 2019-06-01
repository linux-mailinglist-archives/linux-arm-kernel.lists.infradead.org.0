Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CC631B8B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 13:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4wgtW+JQxG5VaxkNduXVLDew7cKezPDzGMQV+dEJQ0=; b=rqlGB+vNzwA7FE
	WCIkKqKUULBvZ1T8blGkw4XYWXo/ZvIkcyP6WbTHKaGN4EcWXqMtDGx97tkh7brdWq81mwVAEuGKk
	3gjKEIk6bCEYM4R6QWoDSyPFJox9Nklvx6wqvtNdzRF7hTonT4gg4xDn67MTtkDttlMh6/uOWYKf+
	aoQ4OB2brXT1rzs4Mo4J+LKC/ekykyTLJN3PTjchDBKKueJ9eh6BmGenIX1JVdjG16V0LKUCPkSuZ
	XwXXvKMBusmPiWvy4FTqZF5dcwIq6kS0O+2PVQcoDvTLnfSBmO3ln+CaV56UGJAeVbKgP/s+9+lTG
	b7AoMUK9sRZWUZrwpErA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX1nB-0003Jy-4c; Sat, 01 Jun 2019 11:03:17 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX1mx-0003Cg-Hd
 for linux-arm-kernel@bombadil.infradead.org; Sat, 01 Jun 2019 11:03:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AznSeI2qecv3FPLBtJdM/efVn5C8LoHjb0YeI/MvakI=; b=DIqen/4N7ZEutHc9nM1i++vZQ
 yLiXGIUIIs15MZ37R+XT4D5O1vOysRMTQMQcGga9JidataqCjmh3VvVNj1F/5rcdlvYFRHVT2l00b
 ujegrwpFw68JoXwjcatsphTgEX1y39FjfdRqvCe2rHVpfmtKj8zszdLkdBXntcaMxq2/PLKLGDmNq
 LHr1EFw84dsp+aQR7QOOpPoKVku4DwsJ6u9a3d45/TUNk5svIp0tcHyl2tvIgp/2BWs8Av2aCT3ns
 h6dtQ7VyoafJCMt6azoGfvSX619lRFaP3dcKWkqX2/a97PKlnNDDYo9q4bjGU87BGnG1kggvHbqkS
 PkcA/UUYA==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX1XB-00013t-Ly
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 10:46:47 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x51Akg5O092119;
 Sat, 1 Jun 2019 05:46:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559386002;
 bh=AznSeI2qecv3FPLBtJdM/efVn5C8LoHjb0YeI/MvakI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ZgUPu+8u6pBE7NbmPZkyvCLhT+lkuvwkk5A4NW0SZ57TEN3rCZ6IdR+k840VKF4+z
 03HWHWoR/aOxJx6sT1ujKFLOklsU4UrQso9ohVfS6pnLEzwMVLr8j/9QnG4CO6XsIU
 weis0+8+NMUrnYYDzGb3qxgvsQ7IcsL3Ff7zSTwk=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x51Akgs1026699
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 1 Jun 2019 05:46:42 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sat, 1 Jun
 2019 05:46:42 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sat, 1 Jun 2019 05:46:42 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x51Akflv052292;
 Sat, 1 Jun 2019 05:46:41 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: "David S. Miller" <davem@davemloft.net>, Santosh Shilimkar
 <ssantosh@kernel.org>, Richard Cochran <richardcochran@gmail.com>, Rob
 Herring <robh+dt@kernel.org>
Subject: [PATCH net-next 08/10] ARM: dts: k2hk-netcp: add cpts refclk_mux node
Date: Sat, 1 Jun 2019 13:45:32 +0300
Message-ID: <20190601104534.25790-9-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190601104534.25790-1-grygorii.strashko@ti.com>
References: <20190601104534.25790-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_114645_934475_D3B9A63A 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
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

KeyStone 66AK2H/K 1G Ethernet Switch Subsystems, can control an external
multiplexer that selects one of up to 32 clocks for time sync reference
(RFTCLK) clock. This feature can be configured through CPTS_RFTCLK_SEL
register (offset: x08) in CPTS module and modelled as multiplexer clock.

Hence, add cpts-refclk-mux clock node which allows to mux one of SYSCLK2,
SYSCLK3, TIMI0, TIMI1, TSREFCLK clocks as CPTS reference clock [1] and
group all CPTS properties under "cpts" subnode.

[1] http://www.ti.com/lit/gpn/66ak2h14
Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 arch/arm/boot/dts/keystone-k2hk-netcp.dtsi | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/keystone-k2hk-netcp.dtsi b/arch/arm/boot/dts/keystone-k2hk-netcp.dtsi
index e203145acbea..d5a6c1f5633c 100644
--- a/arch/arm/boot/dts/keystone-k2hk-netcp.dtsi
+++ b/arch/arm/boot/dts/keystone-k2hk-netcp.dtsi
@@ -152,8 +152,8 @@ netcp: netcp@2000000 {
 	/* NetCP address range */
 	ranges  = <0 0x2000000 0x100000>;
 
-	clocks = <&clkpa>, <&clkcpgmac>, <&chipclk12>;
-	clock-names = "pa_clk", "ethss_clk", "cpts";
+	clocks = <&clkpa>, <&clkcpgmac>;
+	clock-names = "pa_clk", "ethss_clk";
 	dma-coherent;
 
 	ti,navigator-dmas = <&dma_gbe 22>,
@@ -175,6 +175,22 @@ netcp: netcp@2000000 {
 			tx-queue = <648>;
 			tx-channel = "nettx";
 
+			cpts {
+				clocks = <&cpts_refclk_mux>;
+				clock-names = "cpts";
+
+				cpts_refclk_mux: cpts-refclk-mux {
+					#clock-cells = <0>;
+					clocks = <&chipclk12>, <&chipclk13>,
+						 <&timi0>, <&timi1>,
+						 <&tsrefclk>;
+					ti,mux-tbl = <0x0>, <0x1>, <0x2>,
+						<0x3>, <0x8>;
+					assigned-clocks = <&cpts_refclk_mux>;
+					assigned-clock-parents = <&chipclk12>;
+				};
+			};
+
 			interfaces {
 				gbe0: interface-0 {
 					slave-port = <0>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
