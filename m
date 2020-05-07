Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCA71C880A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:25:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DK9Uz9sMXDHnUYL0Bq19vCluFZoy5V4nmOLASeGJZCw=; b=A/l
	nsF2mUgoYMWt8E9zKWk2h+MlVToPctdKqvnTYmCjeEIO7AHWYdkCryCNfecowZ9NO5ZFTtlRnf+N2
	dm38KOnbUaVbGzSLFU7IxOoAyYh66RLMSbCvDLIexEV8woyM1hg5ghZ5xCPfm6Dfm3wA3rbif5Wzh
	z9cKH1TY9xJlYdiGkcN4Ogq0UUst/1a7N4FLln/5OYvamUUG9572v8N2uMV34K0v4vOKieRAl7bTO
	79audCOp3bcjjzE4SLjerNiHi9IVpXzWu0bk7aM919o/BZ5DtYcWoZttg2DvA6YMXYnRoE3giuDsb
	PNOulHASi2kwrEKhE0gMkJUymG+3Xcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeeB-0006ij-Tk; Thu, 07 May 2020 11:24:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWedv-0006i1-Tj
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:24:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F1D5A1FB;
 Thu,  7 May 2020 04:24:42 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BCACF3F68F;
 Thu,  7 May 2020 04:24:41 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 00/17] dts/dt-bindings: Fix Arm Ltd. ARMv8 "boards"
Date: Thu,  7 May 2020 12:24:13 +0100
Message-Id: <20200507112430.183940-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_042444_048584_97F5B3BB 
X-CRM114-Status: GOOD (  16.20  )
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

Just some small fixes in v2: changing the GIC binding instead of the
compatible strings used for Juno, re-ordering the patches, and, most
importantly, (hopefully) fixing the subject lines ;-)
I keep the last two patches in, even though I agree that there should be
a more generic solution.
-----------------------------------

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

Changelog v1 .. v2:
- drop GIC "compatible" changes for Juno
- add "arm,gic-400", "arm,cortex-a15-gic" as a valid combination
- reorder more controversial binding fixes to the end
- add Robin's Acked-by:
- fix subject lines in first three emails

Andre Przywara (17):
  dt-bindings: arm-smmu: Allow mmu-400,smmu-v1 compatible
  dt-bindings: arm: gic: Allow combining arm,gic-400 compatible strings
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
  dt-bindings: mali-midgard: Allow dma-coherent
  dt-bindings: ehci/ohci: Allow iommus property

 .../bindings/gpu/arm,mali-midgard.yaml        |   2 +
 .../interrupt-controller/arm,gic.yaml         |   6 +
 .../devicetree/bindings/iommu/arm,smmu.yaml   |   4 +-
 .../devicetree/bindings/usb/generic-ehci.yaml |   3 +
 .../devicetree/bindings/usb/generic-ohci.yaml |   3 +
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi       |  38 ++---
 .../boot/dts/arm/foundation-v8-gicv2.dtsi     |   4 +-
 .../boot/dts/arm/foundation-v8-gicv3.dtsi     |   3 +-
 arch/arm64/boot/dts/arm/foundation-v8.dtsi    |  12 +-
 arch/arm64/boot/dts/arm/fvp-base-revc.dts     |  10 +-
 arch/arm64/boot/dts/arm/juno-base.dtsi        |  42 ++---
 arch/arm64/boot/dts/arm/juno-motherboard.dtsi |   8 +-
 arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts    |   2 +-
 .../boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi |   4 +-
 .../boot/dts/arm/rtsm_ve-motherboard.dtsi     | 152 +++++++++---------
 15 files changed, 155 insertions(+), 138 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
