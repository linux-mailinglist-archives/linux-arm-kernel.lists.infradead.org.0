Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25182182C7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:28:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8//sSpIKTToEmIh9xYBoTbOaSLiRt+dRnUha8njQCc=; b=JJcTH+cTjt58ym
	BVjW/ENEFh7I8qcWlPq0bVqWy7P2hj4qSqYeaTURr1Ea11cPdivtne0uv5Yw/UHaLJLwPfuybiyLc
	bUhjog2sc7fm2Jn/ZZu//Q80Kk+p396ijdIXc7XE9Zt1CB+8e7mg3F98yeSHG7wfe188GEnt0jcwq
	MLPSwl31pRoZ6dvHiuB87FbJLMBL4n/V8tJVyjSnlKtzZhv47JyGK0/7wZi68o6N/kuyVXyiqiXvY
	Tk9oeY94KPrDwcXuBlnQE1Vku9Ebc9sl6kMO19authgJ++ud1BWsbp4uc/btUCyZeBCf8f7GepKa7
	NR2YWjbERnb+AtJWLroA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCK8k-0007Wq-Ea; Thu, 12 Mar 2020 09:28:30 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCK88-0007I4-Jf
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:27:53 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02C9RoYx050647;
 Thu, 12 Mar 2020 04:27:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584005270;
 bh=93Ozw0w3LdMCurx6cSWHKlJdaVIKSKUirOz+tIwd5Us=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=a0UXAzmTDP0go4sAocD8McRdDKrtf2BGKWAjmMa2GxRhGTOz/nLKWZdZiFs+p//Sr
 PdcnNQAI/xtfy6ia944ma6Y37ecyFcwnmYwK4RroXpWfwXFH7ukvvJlnNVYk47LNyn
 DTsg8X9JtzXAp5f/TdnNDGdhCCs045zIzKIWww4s=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02C9RoEV096529
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Mar 2020 04:27:50 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Mar 2020 04:27:50 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Mar 2020 04:27:50 -0500
Received: from a0132425.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02C9Rjpc036158; 
 Thu, 12 Mar 2020 04:27:48 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH 2/2] arm64: dts: ti: k3-am65-mcu: Add DMA entries for ADC
Date: Thu, 12 Mar 2020 14:58:23 +0530
Message-ID: <20200312092823.21587-2-vigneshr@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200312092823.21587-1-vigneshr@ti.com>
References: <20200312092823.21587-1-vigneshr@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_022752_686260_416C5187 
X-CRM114-Status: GOOD (  10.86  )
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
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
index 92629cbdc184..e85498f0dd05 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
@@ -82,6 +82,9 @@ tscadc0: tscadc@40200000 {
 		assigned-clocks = <&k3_clks 0 2>;
 		assigned-clock-rates = <60000000>;
 		clock-names = "adc_tsc_fck";
+		dmas = <&mcu_udmap 0x7100>,
+			<&mcu_udmap 0x7101 >;
+		dma-names = "fifo0", "fifo1";
 
 		adc {
 			#io-channel-cells = <1>;
@@ -97,6 +100,9 @@ tscadc1: tscadc@40210000 {
 		assigned-clocks = <&k3_clks 1 2>;
 		assigned-clock-rates = <60000000>;
 		clock-names = "adc_tsc_fck";
+		dmas = <&mcu_udmap 0x7102>,
+			<&mcu_udmap 0x7103>;
+		dma-names = "fifo0", "fifo1";
 
 		adc {
 			#io-channel-cells = <1>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
