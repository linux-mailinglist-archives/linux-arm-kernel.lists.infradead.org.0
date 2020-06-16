Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 962061FC054
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 22:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zqol/VthtbjXmLzxPSIcmNBBQEGh6Nzf057wYGkSb+U=; b=L2BogUharqhf91YXkcrT9dvQuC
	deMUhLkdGjXyJecN7oNy7lk2RDHpuTmbqKvf+RumPdKdRHfjjw+Zv027qbqT99eb+qGrUt8rsoiLo
	jBWqiu9AdPAuoUx1+pBCVaF4qXx2YOrobHOQB80rszYf8HQ1kcKbCAVzzvNN8WnSy+BRvE62aBmL9
	/nXYx+bcjkyZ849BZemtFN+vDv/NOlK48nHQ91+SD5OWX+TVI1hAWWWimohVfHsLYZhvrh6kMoF2M
	Nbc2biOsVopFrhUq0MxeJTF30UKhaSm89nbk2WWN0g1vLd/t52ce2vn+i9DPWhXc7Roewt4yxZtsl
	0kdXhQJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlIcl-0002Gw-Oa; Tue, 16 Jun 2020 20:56:03 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlIca-0002F6-ED; Tue, 16 Jun 2020 20:55:54 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 6495E30D300;
 Tue, 16 Jun 2020 13:55:51 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 6495E30D300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1592340951;
 bh=gdzd4vdx7GUsNTrT6Y/VQe95MNFFHJin6zBEHLZd76c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hgOKprDTxUdp7sSzXwSWkxMCLWrNOR1jWMWTkzMvGUzRBSCULjItXXnJbHqvGIxLE
 CVIFzw4wyY1iNlFlNmpuNpbv6PbCCwHKIjPegPwRjvuClLibMfMtVbG8BbCSLNrOyO
 kwH1v6P7xKDD1W7+mBzOTvFei3KsFRXUO2rw6jVk=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id CB13C14008B;
 Tue, 16 Jun 2020 13:55:49 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, james.quinlan@broadcom.com
Subject: [PATCH v5 03/12] dt-bindings: PCI: Add bindings for more Brcmstb chips
Date: Tue, 16 Jun 2020 16:55:10 -0400
Message-Id: <20200616205533.3513-4-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200616205533.3513-1-james.quinlan@broadcom.com>
References: <20200616205533.3513-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_135552_506802_0B3F6006 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jim Quinlan <jquinlan@broadcom.com>

- Add compatible strings for three more Broadcom STB chips: 7278, 7216,
  7211 (STB version of RPi4).
- add new property 'brcm,scb-sizes'
- add new property 'resets'
- add new property 'reset-names' for 7216 only
- allow 'ranges' and 'dma-ranges' to have more than one item and update
  the example to show this.

Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/pci/brcm,stb-pcie.yaml           | 56 ++++++++++++++++---
 1 file changed, 49 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
index 8680a0f86c5a..807694b4f41f 100644
--- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
@@ -9,12 +9,15 @@ title: Brcmstb PCIe Host Controller Device Tree Bindings
 maintainers:
   - Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
 
-allOf:
-  - $ref: /schemas/pci/pci-bus.yaml#
-
 properties:
   compatible:
-    const: brcm,bcm2711-pcie # The Raspberry Pi 4
+    items:
+      - enum:
+          - brcm,bcm2711-pcie # The Raspberry Pi 4
+          - brcm,bcm7211-pcie # Broadcom STB version of RPi4
+          - brcm,bcm7278-pcie # Broadcom 7278 Arm
+          - brcm,bcm7216-pcie # Broadcom 7216 Arm
+          - brcm,bcm7445-pcie # Broadcom 7445 Arm
 
   reg:
     maxItems: 1
@@ -34,10 +37,12 @@ properties:
       - const: msi
 
   ranges:
-    maxItems: 1
+    minItems: 1
+    maxItems: 4
 
   dma-ranges:
-    maxItems: 1
+    minItems: 1
+    maxItems: 6
 
   clocks:
     maxItems: 1
@@ -58,8 +63,31 @@ properties:
 
   aspm-no-l0s: true
 
+  resets:
+    description: for "brcm,bcm7216-pcie", must be a valid reset
+      phandle pointing to the RESCAL reset controller provider node.
+    $ref: "/schemas/types.yaml#/definitions/phandle"
+
+  reset-names:
+    items:
+      - const: rescal
+
+  brcm,scb-sizes:
+    description: u64 giving the 64bit PCIe memory
+      viewport size of a memory controller.  There may be up to
+      three controllers, and each size must be a power of two
+      with a size greater or equal to the amount of memory the
+      controller supports.  Note that each memory controller
+      may have two component regions -- base and extended -- so
+      this information cannot be deduced from the dma-ranges.
+    $ref: /schemas/types.yaml#/definitions/uint64-array
+    items:
+      minItems: 1
+      maxItems: 3
+
 required:
   - reg
+  - ranges
   - dma-ranges
   - "#interrupt-cells"
   - interrupts
@@ -68,6 +96,18 @@ required:
   - interrupt-map
   - msi-controller
 
+allOf:
+  - $ref: /schemas/pci/pci-bus.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,bcm7216-pcie
+    then:
+      required:
+        - resets
+        - reset-names
+
 unevaluatedProperties: false
 
 examples:
@@ -93,7 +133,9 @@ examples:
                     msi-parent = <&pcie0>;
                     msi-controller;
                     ranges = <0x02000000 0x0 0xf8000000 0x6 0x00000000 0x0 0x04000000>;
-                    dma-ranges = <0x02000000 0x0 0x00000000 0x0 0x00000000 0x0 0x80000000>;
+                    dma-ranges = <0x42000000 0x1 0x00000000 0x0 0x40000000 0x0 0x80000000>,
+                                 <0x42000000 0x1 0x80000000 0x3 0x00000000 0x0 0x80000000>;
                     brcm,enable-ssc;
+                    brcm,scb-sizes =  <0x0000000080000000 0x0000000080000000>;
             };
     };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
