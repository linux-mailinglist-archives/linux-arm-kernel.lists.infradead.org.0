Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 013632003A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:23:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WllsoqtZEFtJS8EBs+UmAsUFjs9UF2KW83eBciuBDjI=; b=YS374+PrbkAg2q
	67/ghie2NTfiHu6oHXFlu6zjodhBWZqNPpGoRGYwTHCZGAG+F+kSKDoQobm+o2IbmVdgcEoQ4uPdM
	B6S9s2+Io6SatLyQiHtl3SqplIlJGg+1l59TrjtvtP2UvRgROA2glHkyQhftYZUGYkimyBrSf0bLL
	ZffSvBAaglY1KYhHrmjc2HeZJYqswcgTW9VayN41T+nZ7lDzS5QTbLta4fT4qullcVWgNqpIKFAWk
	rA7pIgCE1jpjFshVd8tsdHem761YhzqHD31+DD3S9l2gu6NhPMpWlaSWS/Wc0GjDXjojqk5wZndAp
	zvoKs1lobFjWQjgblBIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCJA-0004SV-JX; Fri, 19 Jun 2020 08:23:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCGZ-0002f0-Ki
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 08:20:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3AED12B;
 Fri, 19 Jun 2020 01:20:51 -0700 (PDT)
Received: from red-moon.arm.com (unknown [10.57.58.158])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D5D353F71F;
 Fri, 19 Jun 2020 01:20:48 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 08/12] dt-bindings: arm: fsl: Add msi-map device-tree
 binding for fsl-mc bus
Date: Fri, 19 Jun 2020 09:20:09 +0100
Message-Id: <20200619082013.13661-9-lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200619082013.13661-1-lorenzo.pieralisi@arm.com>
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
 <20200619082013.13661-1-lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_012051_792776_4E0A8F0A 
X-CRM114-Status: GOOD (  16.66  )
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
Cc: devicetree@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-pci@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Hanjun Guo <guohanjun@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Diana Craciun <diana.craciun@oss.nxp.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Robin Murphy <robin.murphy@arm.com>,
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
In addition, deprecate msi-parent property which no longer makes sense
now that we support translating the MSIs.

Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
---
 .../devicetree/bindings/misc/fsl,qoriq-mc.txt | 50 ++++++++++++++++---
 1 file changed, 44 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt b/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
index 9134e9bcca56..ebd329181c14 100644
--- a/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
+++ b/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
@@ -28,6 +28,16 @@ Documentation/devicetree/bindings/iommu/iommu.txt.
 For arm-smmu binding, see:
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml.
 
+The MSI writes are accompanied by sideband data which is derived from the ICID.
+The msi-map property is used to associate the devices with both the ITS
+controller and the sideband data which accompanies the writes.
+
+For generic MSI bindings, see
+Documentation/devicetree/bindings/interrupt-controller/msi.txt.
+
+For GICv3 and GIC ITS bindings, see:
+Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml.
+
 Required properties:
 
     - compatible
@@ -49,11 +59,6 @@ Required properties:
                         region may not be present in some scenarios, such
                         as in the device tree presented to a virtual machine.
 
-    - msi-parent
-        Value type: <phandle>
-        Definition: Must be present and point to the MSI controller node
-                    handling message interrupts for the MC.
-
     - ranges
         Value type: <prop-encoded-array>
         Definition: A standard property.  Defines the mapping between the child
@@ -119,6 +124,28 @@ Optional properties:
   associated with the listed IOMMU, with the iommu-specifier
   (i - icid-base + iommu-base).
 
+- msi-map: Maps an ICID to a GIC ITS and associated msi-specifier
+  data.
+
+  The property is an arbitrary number of tuples of
+  (icid-base,gic-its,msi-base,length).
+
+  Any ICID in the interval [icid-base, icid-base + length) is
+  associated with the listed GIC ITS, with the msi-specifier
+  (i - icid-base + msi-base).
+
+Deprecated properties:
+
+    - msi-parent
+        Value type: <phandle>
+        Definition: Describes the MSI controller node handling message
+                    interrupts for the MC. When there is no translation
+                    between the ICID and deviceID this property can be used
+                    to describe the MSI controller used by the devices on the
+                    mc-bus.
+                    The use of this property for mc-bus is deprecated. Please
+                    use msi-map.
+
 Example:
 
         smmu: iommu@5000000 {
@@ -128,13 +155,24 @@ Example:
                ...
         };
 
+        gic: interrupt-controller@6000000 {
+               compatible = "arm,gic-v3";
+               ...
+        }
+        its: gic-its@6020000 {
+               compatible = "arm,gic-v3-its";
+               msi-controller;
+               ...
+        };
+
         fsl_mc: fsl-mc@80c000000 {
                 compatible = "fsl,qoriq-mc";
                 reg = <0x00000008 0x0c000000 0 0x40>,    /* MC portal base */
                       <0x00000000 0x08340000 0 0x40000>; /* MC control reg */
-                msi-parent = <&its>;
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
