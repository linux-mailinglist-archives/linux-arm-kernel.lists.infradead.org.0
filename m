Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD1F1C5DF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 18:52:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ON5H9AXtIQrARCaQJHeTUt5xCs+mupcVSSIdJqQLUh0=; b=nJq
	tpdoIHHffi5p6HKZ1kuyUnUKkonWykPREVz4uZ/6CYyqK9SLIqnLQdiEyK6yLI/M24Nhhm4dyzKox
	lFYxsvzkmX8KUlZDpUSugOwv2l64h4vczhFAJXq+iCz2eWj3epZtT298oyvlE+vuEfM5XrD4TcxYL
	DRXMYIXljhsZPGmm+4NNv7V5ocxCC+YPXIaiQsPatUBC8ax4rYIqezCRMzP55HZvyQKyvNB8F7AEL
	2r6pGAlfylzxt1ZKuVLY2QCuyFBFRhQHvqfq3BEB5/ObqCNwxk7A0VeXkpwx7iC/x/Brde9hE+XmW
	Cy8/8FSNfMwqxw48bKOt/9A1zASQKFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW0oF-0001G9-Gw; Tue, 05 May 2020 16:52:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW0nz-0001DR-AB
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 16:52:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2688E31B;
 Tue,  5 May 2020 09:52:25 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E615A3F305;
 Tue,  5 May 2020 09:52:23 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 00/16] dts/dt-bindings: Fix Arm Ltd. ARMv8 "boards"
Date: Tue,  5 May 2020 17:51:56 +0100
Message-Id: <20200505165212.76466-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_095227_437885_C03D54E7 
X-CRM114-Status: GOOD (  15.01  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Marc Zyngier <maz@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The .dts files in the arch/arm64/boot/dts/arm directory describe several
boards and platforms provided by Arm Ltd. (mostly Juno and fastmodels).
Both the .dts files and some of their associated .yaml bindings were not
fully compliant, for some boards a simple dtc run complains already.
And make dtbs_check would create quite a list of violations.

This series attempts to fix all of them, although some are not yet
covered, as they require some discussion about potential binding or
DT schema changes.

The first three patches fix some minor omissions in the yaml bindings.
The rest of the series then address the violations that dtbs_check
reported: many node name scheme mismatches, some missing properties or
wrong child node handling. See the respective patches for more details.

After applying this series I still see the following warnings:
- vexpress-v2f-1xv7-ca53x2: leds: linux,default-trigger names not
  listed. The kernel provides triggers for each CPU core, which the DT
  tries to use. However cpu<x> is not listed in the binding, and I fail
  to add a regexp for a property *value* to express this easily.
  Alternatively we could drop any constraint on this string at all,
  since this might become a moving target and is not really a hardware
  property, rather than a convenience Linux configuration option.
- juno: scp-sram: The compatible names for the SCPI child nodes are not
  fully converted to yaml yet, so dtbs_check fails to find a matching
  schema. Converting the SCPI bindings over is next on my list.
- fvp-base-revc: panel: 'power-supply' is a required property
  Indeed the Linux driver depends on that property, not sure how this
  ever worked. I am about to test this, the fix should a rather easy
  addition of a fixed regulator.

Please have a look, I am open to discussions.

Cheers,
Andre

Andre Przywara (16):
  dt-bindings: mali-midgard: Allow dma-coherent
  dt-bindings: arm-smmu: Allow mmu-400,smmu-v1 compatible
  dt-bindings: ehci/ohci: Allow iommus property
  arm64: dts: arm: Fix node address fields
  arm64: dts: arm: FVP: Fix motherboard .dtsi
  arm64: dts: juno: Fix mem-timer
  arm64: dts: arm: Fix GIC compatible names
  arm64: dts: arm: Fix GIC child nodes
  arm64: dts: arm: Fix ITS node names and #msi-cells
  arm64: dts: juno: usb: Use proper DT node name
  arm64: dts: arm: Fix serial node names
  arm64: dts: fvp: Fix SMMU DT node
  arm64: dts: arm: Fix bus node names
  arm64: dts: juno: Fix GPU interrupt order
  arm64: dts: arm: Fix VExpress LED names
  arm64: dts: juno: Fix SCPI shared mem node name

 .../bindings/gpu/arm,mali-midgard.yaml        |   2 +
 .../devicetree/bindings/iommu/arm,smmu.yaml   |   4 +-
 .../devicetree/bindings/usb/generic-ehci.yaml |   3 +
 .../devicetree/bindings/usb/generic-ohci.yaml |   3 +
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi       |  38 ++---
 .../boot/dts/arm/foundation-v8-gicv2.dtsi     |   4 +-
 .../boot/dts/arm/foundation-v8-gicv3.dtsi     |   3 +-
 arch/arm64/boot/dts/arm/foundation-v8.dtsi    |  12 +-
 arch/arm64/boot/dts/arm/fvp-base-revc.dts     |  10 +-
 arch/arm64/boot/dts/arm/juno-base.dtsi        |  44 ++---
 arch/arm64/boot/dts/arm/juno-motherboard.dtsi |   8 +-
 arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts    |   2 +-
 .../boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi |   4 +-
 .../boot/dts/arm/rtsm_ve-motherboard.dtsi     | 152 +++++++++---------
 14 files changed, 150 insertions(+), 139 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
