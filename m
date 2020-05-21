Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 345EA1DCDA9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jerlcHyOMnnBOGz1tcriB4KIbqF78lLb2Tb90u2NQlQ=; b=r8jxR2r4CQxbCn
	5hmk2eAQrmaUN5bFkHkxRCvKcxRLmRHRnjx/JRAqUPL4KxuEl50nevsMBLoDjGO2eBSMBORJxbqtM
	U/hilHQ5w+spxrnbPJO7x21ob7lyCjVM5BGoMcPRqT4yj1laJJ0NeNuSG2reZk1EKnrmLYP4pYTFT
	vHVz/QrWa01SREDysvhrYmlSC49BcCKfIAUfJ5qcl36FVbSWsZgcDphYLWF3dgWnq1NFaNVfyWPus
	6AbNYNcLtVX+Xeiyd7Lkvb85OmnD9iOigQj7QaPzmfGK5Px0Q4/SzYdcC98Cst50y9YUpvXGRDaci
	0cCyfiTt7k+n30bO8PmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbkrJ-00022y-H7; Thu, 21 May 2020 13:03:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbkoU-0008GC-5K
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:00:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C5DC1045;
 Thu, 21 May 2020 06:00:41 -0700 (PDT)
Received: from red-moon.arm.com (unknown [10.57.29.145])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 30A613F305;
 Thu, 21 May 2020 06:00:39 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 09/12] dt-bindings: arm: fsl: Add msi-map device-tree binding
 for fsl-mc bus
Date: Thu, 21 May 2020 14:00:05 +0100
Message-Id: <20200521130008.8266-10-lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_060042_298277_EF90E69F 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, linux-pci@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Sudeep Holla <sudeep.holla@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Hanjun Guo <guohanjun@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Robin Murphy <robin.murphy@arm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Laurentiu Tudor <laurentiu.tudor@nxp.com>

The existing bindings cannot be used to specify the relationship
between fsl-mc devices and GIC ITSes.

Add a generic binding for mapping fsl-mc devices to GIC ITSes, using
msi-map property.

Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
---
 .../devicetree/bindings/misc/fsl,qoriq-mc.txt | 30 +++++++++++++++++--
 1 file changed, 27 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt b/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
index 9134e9bcca56..b0813b2d0493 100644
--- a/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
+++ b/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
@@ -18,9 +18,9 @@ same hardware "isolation context" and a 10-bit value called an ICID
 the requester.
 
 The generic 'iommus' property is insufficient to describe the relationship
-between ICIDs and IOMMUs, so an iommu-map property is used to define
-the set of possible ICIDs under a root DPRC and how they map to
-an IOMMU.
+between ICIDs and IOMMUs, so the iommu-map and msi-map properties are used
+to define the set of possible ICIDs under a root DPRC and how they map to
+an IOMMU and a GIC ITS respectively.
 
 For generic IOMMU bindings, see
 Documentation/devicetree/bindings/iommu/iommu.txt.
@@ -28,6 +28,9 @@ Documentation/devicetree/bindings/iommu/iommu.txt.
 For arm-smmu binding, see:
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml.
 
+For GICv3 and GIC ITS bindings, see:
+Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml.
+
 Required properties:
 
     - compatible
@@ -119,6 +122,15 @@ Optional properties:
   associated with the listed IOMMU, with the iommu-specifier
   (i - icid-base + iommu-base).
 
+- msi-map: Maps an ICID to a GIC ITS and associated iommu-specifier
+  data.
+
+  The property is an arbitrary number of tuples of
+  (icid-base,iommu,iommu-base,length).
+
+  Any ICID in the interval [icid-base, icid-base + length) is
+  associated with the listed GIC ITS, with the iommu-specifier
+  (i - icid-base + iommu-base).
 Example:
 
         smmu: iommu@5000000 {
@@ -128,6 +140,16 @@ Example:
                ...
         };
 
+	gic: interrupt-controller@6000000 {
+		compatible = "arm,gic-v3";
+		...
+		its: gic-its@6020000 {
+			compatible = "arm,gic-v3-its";
+			msi-controller;
+			...
+		};
+	};
+
         fsl_mc: fsl-mc@80c000000 {
                 compatible = "fsl,qoriq-mc";
                 reg = <0x00000008 0x0c000000 0 0x40>,    /* MC portal base */
@@ -135,6 +157,8 @@ Example:
                 msi-parent = <&its>;
                 /* define map for ICIDs 23-64 */
                 iommu-map = <23 &smmu 23 41>;
+                /* define msi map for ICIDs 23-64 */
+                msi-map = <23 &its 23 41>;
                 #address-cells = <3>;
                 #size-cells = <1>;
 
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
