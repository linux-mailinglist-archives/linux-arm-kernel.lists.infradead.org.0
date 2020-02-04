Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED84151BE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 15:11:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UHHwy2lTZKYTf4fdN0ckJCX+PqHdVZk9rAQBt6ks1Os=; b=W+RZsLftADYuji
	IvNVz0xMhlndUoplWYkiOMP50h+y28BPrLizidotdUkIwUCdolHS3W9/LlMAnqkG2y0Kw5+5X31mZ
	u9o/9tt+djlCWz0Gm0qIS0QufS1TvH+aFfBPtQtjWlpO7dZ0byzT2P7But0Z/3ONfVeyvAsJRSZlr
	wKguPOJOOD8Q2VR1KQXHP7uf0oobjo7NElMiSIm9M6E71w2RRPBByddWMXDhOLoi+kjfjPKOHe7no
	UHqxXGXgWksNvOvW/ofNIgvNns8+/Joyl31E83twd/1W3iCcH4+sqkEJr6GVA73xIGQSmn2J/5OBv
	1vJhhQLQSmKghUQOzq8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyyv8-0001OZ-AR; Tue, 04 Feb 2020 14:11:18 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyyuz-0001Ny-Ec
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 14:11:11 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 014E7HMS032493; Tue, 4 Feb 2020 15:10:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=x0039EP8HFPOf0RsTP5nutRrLlUwQCJuQ4Qn7Y7ROVM=;
 b=LN4xvgGWloVP5OMzg2X9XIW8phOvk1uKNM84DLAmoOaWDOVwNmIhJRVWq4QIP8qjaDNY
 yrQXkfMQDAoy/W7+FoTMO8xjwwPlxU9c7Qt3plc7esRHJeyOoNqyPS+xkOkYy+yCI+t4
 MVXJciklou7suhyFSKmqRAI/zzxc4mPu3+OXlmQCrGxYR/OdW2rqlNQ90LeM1At7JPUy
 hvcrLklGDiUOxNWNo+DO0R4WJ8VCKdWRm3Gs5ldmGciC1jB3vqsjpDdw2LSclPXAOCIY
 2fqXb7S+G0Hz394onVULvlDPbY5e5Q1I1q0vEiIDUzBkE6DBxqoFUlDs5PtE8aulbq4y cA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xw13nssby-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2020 15:10:58 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 059BF100034;
 Tue,  4 Feb 2020 15:10:54 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E54822CD0E3;
 Tue,  4 Feb 2020 15:10:53 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 4 Feb 2020 15:10:53
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH 1/1] ARM: dts: stm32: add resets property on all DMA nodes on
 stm32mp151
Date: Tue, 4 Feb 2020 15:10:53 +0100
Message-ID: <20200204141053.28072-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-04_04:2020-02-04,
 2020-02-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_061109_844548_5916A37C 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

resets property is well-managed in DMA drivers. In previous products,
there were no reset lines, that's why they are missing here in dma1, dma2,
dmamux and mdma nodes.

Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 arch/arm/boot/dts/stm32mp151.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index 53fa6ed82b34..96f43fa48ec4 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -959,6 +959,7 @@
 				     <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&rcc DMA1>;
+			resets = <&rcc DMA1_R>;
 			#dma-cells = <4>;
 			st,mem2mem;
 			dma-requests = <8>;
@@ -976,6 +977,7 @@
 				     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&rcc DMA2>;
+			resets = <&rcc DMA2_R>;
 			#dma-cells = <4>;
 			st,mem2mem;
 			dma-requests = <8>;
@@ -989,6 +991,7 @@
 			dma-masters = <&dma1 &dma2>;
 			dma-channels = <16>;
 			clocks = <&rcc DMAMUX>;
+			resets = <&rcc DMAMUX_R>;
 		};
 
 		adc: adc@48003000 {
@@ -1281,6 +1284,7 @@
 			reg = <0x58000000 0x1000>;
 			interrupts = <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&rcc MDMA>;
+			resets = <&rcc MDMA_R>;
 			#dma-cells = <5>;
 			dma-channels = <32>;
 			dma-requests = <48>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
