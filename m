Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9E4182C75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:28:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5vW0fW+BhjW5IesHDOSm6R7rKJlU7C5MQ6bjH0Jc8aU=; b=dTrMyztSz+EsU2
	3hbHB5ws3ehdCmcCFDTUqhjX9stag1W3391yvqFmrnvVCzWgooFL9VQs0rhLwfFlAZjg8Es6H6naJ
	lwXAeG11HIRKV3hw3vJ6cEkcHYTzVZ8cDRTNv5jAqywWreTeS379aq8eahXYJE0eoNs7V4u3WonOo
	AGEpewzJWrXFdmZa8P1HcYuyULshquMoAqNzktQ+XeIXorituhW/QPvSduKqehzDiYqq6BRRjH8m4
	aeOXBw+enO+VCW3s9p34BU+99MaJjLCyDbuP41rYl4HF3Gn0TWpJWCQHU8LQWKnJe2LeFi6fOcDD2
	ZXpbQmSOAcI/fNQ+d+FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCK8K-0007IP-Ug; Thu, 12 Mar 2020 09:28:05 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCK85-0007HT-Op
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:27:51 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02C9RmOs129981;
 Thu, 12 Mar 2020 04:27:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584005268;
 bh=GqVcNEGCSqO43d8JjVZhJGIosXmnS9GliY5ZdDU3wF4=;
 h=From:To:CC:Subject:Date;
 b=ZWu4/WVCtugPrmgV1hR9v9eOvWZ41Fv98z1j7rM4L6OSulrB1ccu4sbYynb8gWi0V
 3sqvta4Gyh0781QQ5oziCZKDV3B/8mlcSPAC7rdF6BQP3FhF+r6cfElMDSx6tJ6Eeu
 R0SDJGr8rtJw6AIwrOzeaStrkdH/RXk/rd7Dqiig=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02C9Rm5x097588;
 Thu, 12 Mar 2020 04:27:48 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Mar 2020 04:27:47 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Mar 2020 04:27:47 -0500
Received: from a0132425.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02C9Rjpb036158; 
 Thu, 12 Mar 2020 04:27:45 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH 1/2] arm64: dts: ti: k3-am65-main: Add DMA entries for
 main_spi0
Date: Thu, 12 Mar 2020 14:58:22 +0530
Message-ID: <20200312092823.21587-1-vigneshr@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_022749_896535_76E56AC5 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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

Add DMA entry for main_spi0, that has SPI flash connected, for better
throughput and reduced CPU load.

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index e5df20a2d2f9..0ff291ef2950 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -189,6 +189,8 @@ main_spi0: spi@2100000 {
 		power-domains = <&k3_pds 137 TI_SCI_PD_EXCLUSIVE>;
 		#address-cells = <1>;
 		#size-cells = <0>;
+		dmas = <&main_udmap 0xc500>, <&main_udmap 0x4500>;
+		dma-names = "tx0", "rx0";
 	};
 
 	main_spi1: spi@2110000 {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
