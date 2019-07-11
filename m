Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B758C65A22
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08SAN4M/yUYBWzDVvczhJ/r87pdC9OpZMWDA2vTXszg=; b=JSS3Itt6zREzRK
	uTBj7fnesW62tRzlCXErRdtDcWy15478vAyTXQKWP612eVhgUv7/kRkvr61L50OycYmtt5MbSD5im
	X1vTcRj6N0+HpX/HbhNdizMS4u/aCVpYX1UGR+yt3jqIipXmtzMhLlg8j0XNKYDWKd76azpI9tKrN
	L9IiSBy4mSnkIb9CK5pfZDUmJ8mMfOu3V4BmzoJfxqtkIiC0Gj7fbA41y35l7HSGJE4pboKzGdwJv
	ZkcS8gRIzKJhZcuN18IN3xhWmqVvduzr4D3wh92gFP2mTe+zl17cPlVjLiV0GnMQPuU6vZ/or1Bqg
	aDrzWpfhRDp/m00qS6iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlai8-0007XY-6y; Thu, 11 Jul 2019 15:10:16 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlahs-0007X4-D7
 for linux-arm-kernel@bombadil.infradead.org; Thu, 11 Jul 2019 15:10:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NydRS5amDj1kp9ZJgWP85hzOmwxf1CUR6Jdpb4mr50w=; b=rTtT7HGIDHIp77xfdA2M2C4gIA
 YWptSUMdH1AwhpeRwcoMAS9YE3Fx06LBEXDq+41mCxnUdJKqs0o+OFmNioBoz8loAVbNTxYllhs3U
 BxoFnO161TfVMy8G7mMIwA3me/FLDRhp+HtnhEQaZX3b0xUmXy78iXrSod7X42UugFskT7UkPME5A
 nWF+lXpU5c3QN7c9583a469fgaKvPwjBFK/dTOoaQEQ7nSVfpERBbi4GfdumSyg7ktPoyAbPPZTxv
 rKIqgBoHtP9qhlIGZXkkKxI5ESj+iDF76WE8QnPr7v2LS05Jx4e/OVBjUVY4ILbrWdKvQAFofsaKg
 JFphovzQ==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlahp-0004n8-M5
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 15:09:58 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 6B866C000A;
 Thu, 11 Jul 2019 15:09:24 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org
Subject: [PATCH v2 4/4] arm64: dts: marvell: armada-ap806: add smmu support
Date: Thu, 11 Jul 2019 17:02:42 +0200
Message-Id: <20190711150242.25290-5-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190711150242.25290-1-gregory.clement@bootlin.com>
References: <20190711150242.25290-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>, Antoine Tenart <antoine.tenart@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Will Deacon <will.deacon@arm.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?q?Miqu=C3=A8l=20Raynal?= <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add IOMMU node for Marvell AP806 based SoCs.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 arch/arm64/boot/dts/marvell/armada-ap806.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
index 91dad7e4ee59..8e29d593970a 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
@@ -115,6 +115,23 @@
 				interrupts = <17>;
 			};
 
+			smmu: iommu@5000000 {
+				compatible = "marvell,mmu-500";
+				reg = <0x100000 0x100000>;
+				dma-coherent;
+				#iommu-cells = <1>;
+				#global-interrupts = <1>;
+				interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+					    <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+					    <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+					    <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+					    <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+					    <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+					    <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+					    <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+					    <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+			};
+
 			odmi: odmi@300000 {
 				compatible = "marvell,odmi-controller";
 				interrupt-controller;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
