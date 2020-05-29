Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1121E7DDE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 15:05:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3OSkH0kjMH1kFYTJpBGoH+VJwoIAoEveUBJJqVOPOk=; b=M2T+G08kortkY0
	1Dq0apV97CCOxW4Uz3fb+60jckMbpUX2bh7YJIpsL7nUQXR103GRk/aUeE2W8mVrg+X5fQzABh2Bm
	aksMQuPnI0F+lZ4H00Z4cxPDFEVmNzwGcOoub3skHBzgOU3yWWQSumvwZKW5y918IzxSegnejdwFG
	Cig7RqYVV6LS+V0NKeVE++uUSEyEjQYjEzIHyF/npk56Bql5lPY62E+3N26axPqTI+Bcvhv/nBEyS
	zDZV37N8CYE8qwoG1HzmUnTTx5slPSgHnkAVDDwnyjiUtqfRgxnZpNIKJaIYRjpunrzilLLSPvBhb
	630z8lyFGoV21fLn7DWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeegz-0007q5-9S; Fri, 29 May 2020 13:04:57 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeegS-0007fr-Ud; Fri, 29 May 2020 13:04:26 +0000
X-Originating-IP: 86.250.147.67
Received: from pc-10.home (lfbn-tou-1-695-67.w86-250.abo.wanadoo.fr
 [86.250.147.67])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 01CB8C0004;
 Fri, 29 May 2020 13:04:21 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Add the camera interface
 description of the PX30
Date: Fri, 29 May 2020 15:04:05 +0200
Message-Id: <20200529130405.929429-4-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200529130405.929429-1-maxime.chevallier@bootlin.com>
References: <20200529130405.929429-1-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_060425_116763_A1CBA0BD 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PX30 has a camera interface, supporting CSI2, BT656 and Parallel
modes. Add a DT description for this interface.

Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---

Changes since V1:

 - Updated the clock and reset names
 - Reordered the properties to have clocks and resets bundled together

 arch/arm64/boot/dts/rockchip/px30.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 9f84aaaf3fba..d895541b7216 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1140,6 +1140,18 @@ vopl_mmu: iommu@ff470f00 {
 		status = "disabled";
 	};
 
+	cif: cif@ff490000 {
+		compatible = "rockchip,px30-cif";
+		reg = <0x0 0xff490000 0x0 0x200>;
+		interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_CIF>, <&cru HCLK_CIF>, <&cru PCLK_CIF>, <&cru SCLK_CIF_OUT>;
+		clock-names = "aclk", "hclk", "pclkin";
+		power-domains = <&power PX30_PD_VI>;
+		resets = <&cru SRST_CIF_A>, <&cru SRST_CIF_H>, <&cru SRST_CIF_PCLKIN>;
+		reset-names = "axi", "ahb", "pclkin";
+		status = "disabled";
+	};
+
 	qos_gmac: qos@ff518000 {
 		compatible = "syscon";
 		reg = <0x0 0xff518000 0x0 0x20>;
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
