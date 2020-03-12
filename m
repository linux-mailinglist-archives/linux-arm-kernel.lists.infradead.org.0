Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE9F183002
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 13:12:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JXZLdGDDySe5tLB0U5U443JV3HT7zVezWaop6vpSiWo=; b=PJuBscnlm3JlfI
	MiWuCwA9kKa0OssRgY5PZ813TMkBbtAcNySRQ/yPYw8rZgr8Ze56J5WvhDlRRBRWRkHlvYQ6CtREB
	CD6/ZoOc++PMLFeIfyEjhRlqm28ptdAf/uY46Uvd2Xq/b9jsemCrST1z3mqpngjnq3jHRAz6eHIAW
	Wk3lkESxUU9PbPc7Q/kJMH9hCu+8GSZM62QNDnLbTy4t4m1EMTh8VbErQGH6IsoAZiuy1fQXa+79R
	86TsOqGGmxk+rg8L45IGjS51iPYmMuZw+AbXNsbbISs14tmk5zkN1tYsBTieDkNM7fASsPSAfPh/b
	ZvlMU5BdEg2fe8lLdxcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCMhQ-0000Xk-5F; Thu, 12 Mar 2020 12:12:28 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCMhG-0000Wy-To
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 12:12:20 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02CCCGEG088695;
 Thu, 12 Mar 2020 07:12:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584015136;
 bh=9pLx/JDIPxBmhZiIzOkrEL6F3h1xEcuH4vs50oU5rAU=;
 h=From:To:CC:Subject:Date;
 b=G9dZshvTqhm0mnbq3AsQgZdynQYlHt+6MlcM4OtAWIrxZJrh9R3AkLRZem4sZ4TR3
 FBz0XLA0odeVLx7DyCORbaJOaAdzRcr9GJns7r4VUpT9pCdlw1WCrMy8yotjXScdC6
 boWAOaBcBK3Z7czIvjgetW3yjyKRVPZVGc6/wmQk=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02CCCGT0062832
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Mar 2020 07:12:16 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Mar 2020 07:12:16 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Mar 2020 07:12:16 -0500
Received: from a0132425.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02CCCEGd053591; 
 Thu, 12 Mar 2020 07:12:14 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-j721e-mcu-wakeup: Add DMA entries for ADC
Date: Thu, 12 Mar 2020 17:42:51 +0530
Message-ID: <20200312121251.4582-1-vigneshr@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_051219_049889_155DCB56 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DMA entries for ADC nodes

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index 16c874bfd49a..23f8a9dbb595 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -203,6 +203,9 @@ tscadc0: tscadc@40200000 {
 		assigned-clocks = <&k3_clks 0 3>;
 		assigned-clock-rates = <60000000>;
 		clock-names = "adc_tsc_fck";
+		dmas = <&main_udmap 0x7400>,
+			<&main_udmap 0x7401>;
+		dma-names = "fifo0", "fifo1";
 
 		adc {
 			#io-channel-cells = <1>;
@@ -219,6 +222,9 @@ tscadc1: tscadc@40210000 {
 		assigned-clocks = <&k3_clks 1 3>;
 		assigned-clock-rates = <60000000>;
 		clock-names = "adc_tsc_fck";
+		dmas = <&main_udmap 0x7402>,
+			<&main_udmap 0x7403>;
+		dma-names = "fifo0", "fifo1";
 
 		adc {
 			#io-channel-cells = <1>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
