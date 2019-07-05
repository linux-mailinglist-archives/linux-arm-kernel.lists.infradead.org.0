Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 103C7608E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:14:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4wgtW+JQxG5VaxkNduXVLDew7cKezPDzGMQV+dEJQ0=; b=oalxoFRTBsmUqA
	dAAJo8dmOb1QoRCLIbFteLwbkrhjMbuyWD9iJN+GP33k0vOqyihwUNK70KuxK/Pubtz3DmyqNGr1w
	VFZIHQLtZI2hKH0m1HcYKFYVn5Gk+mAs99WxCCNEKOuvr3paxRchJ3OeHj+Wt4gs/AFYIiCGbc363
	7k/lCO2w9z8iuliogXKs014gJ4skTO9fWQVFgGyOw4DKj57Ww2m4U8SrsVg0cBAVlsJosMQQZvsRv
	z1jsjvkeAZJyQNwt6wS9MPstF2KQw27e6uHiHYqc6w2I5Upzrg+vstbexaqOLZzKjj66hD/XWManF
	iTaQd6VVVmICBq2YYu9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPuZ-0008BZ-Gq; Fri, 05 Jul 2019 15:14:07 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPtr-0007cf-Nk
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 15:13:27 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x65FDLDO059321;
 Fri, 5 Jul 2019 10:13:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1562339601;
 bh=AznSeI2qecv3FPLBtJdM/efVn5C8LoHjb0YeI/MvakI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=QkeXIR22QaQA0RdT+rvE3tKSG+PvryDasZGIOLzqpPvLT5vz9RauaCyPtxoEAfMMN
 GLopovH2o0/Rh8XtmZuMy6UPev/sp/MkIP5YCQ5Zu6z6s91C30NrI20b/HoGsSrU7r
 K3eZSPvu6TSeyfQPfRbr7ErihCUicFtjMR/oim1w=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x65FDLRo015208
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 5 Jul 2019 10:13:21 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 5 Jul
 2019 10:13:21 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 5 Jul 2019 10:13:20 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x65FDKQT033754;
 Fri, 5 Jul 2019 10:13:20 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Santosh Shilimkar <ssantosh@kernel.org>
Subject: [RESEND PATCH next v2 4/6] ARM: dts: k2hk-netcp: add cpts refclk_mux
 node
Date: Fri, 5 Jul 2019 18:12:45 +0300
Message-ID: <20190705151247.30422-5-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190705151247.30422-1-grygorii.strashko@ti.com>
References: <20190705151247.30422-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_081323_873489_1DAD133E 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
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
