Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5B21C8825
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Qdyt2Zw+6XtpcGEXpIRBeaZZNpy+EnmE1i5qiTNv1t8=; b=I3KNr0Xf2JdvIi+M1JC2sv9rlm
	xQr/Trmq39FLe/jrPgyGjNmaktgOiNgsshtEMUDV3x1Jh9KfZ7aQDZ8yAwOjy/KvXdByQRAt3isCb
	ZhA5iz2OCyGeQzjPALSxmjBwzhODStpw2uEQNnhVwfwAi8/8xxpd+WlAXRCh5Pb/Gbqo4h3Vy0Odu
	SzOhzAB7GO3MZR5hP1W8RwZg6awGMByhFYFfNLnO1CwBPQpx+UE1fq3geXP+VD3ROeD4yRc9qs+WF
	C1/Ir1Y+GL+DLxMIjcLE78Lx17B4nLnFf6x9as4FmRvOyDDW1qRwmNW5z6jQJ7vFqzZdfuJR9fdKv
	TJZ76h0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWefy-0002NC-Ma; Thu, 07 May 2020 11:26:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWee7-0006ql-CX
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:24:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75F54106F;
 Thu,  7 May 2020 04:24:54 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4257E3F68F;
 Thu,  7 May 2020 04:24:53 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 08/17] arm64: dts: arm: Fix ITS node names and #msi-cells
Date: Thu,  7 May 2020 12:24:21 +0100
Message-Id: <20200507112430.183940-9-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507112430.183940-1-andre.przywara@arm.com>
References: <20200507112430.183940-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_042455_483566_54011B11 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Marc Zyngier <maz@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GIC ITS nodes in the fastmodel DTS files were not fully binding
compliant.

Use one of the allowed node names, also add the required #msi-cells
property for the older model.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi | 3 ++-
 arch/arm64/boot/dts/arm/fvp-base-revc.dts        | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi b/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi
index f2c75c756039..c668162ee3bf 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi
@@ -19,9 +19,10 @@
 			<0x0 0x2c02f000 0x0 0x2000>;
 		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 
-		its: its@2f020000 {
+		its: msi-controller@2f020000 {
 			compatible = "arm,gic-v3-its";
 			msi-controller;
+			#msi-cells = <1>;
 			reg = <0x0 0x2f020000 0x0 0x20000>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 66381d89c1ce..0cf96ceff431 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -126,7 +126,7 @@
 		      <0x0 0x2c02f000 0 0x2000>;	// GICV
 		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 
-		its: its@2f020000 {
+		its: msi-controller@2f020000 {
 			#msi-cells = <1>;
 			compatible = "arm,gic-v3-its";
 			reg = <0x0 0x2f020000 0x0 0x20000>; // GITS
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
