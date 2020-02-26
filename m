Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40486170757
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:12:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BfMXDguP4JimB0okun2FrJAvAR3aLopi3jHPaRO9WmQ=; b=pi/
	jGqLYS+hrHQJVvhMbrhD1e5UuwJ8yJ35L6yEzpdLLlNZddjFsppdrFz+tEcx/gGH7m0PNd5w6hm/k
	mL44k921JV7BMMnWxikFN51H2uGF3iGORXrsl3Te4wytjv3snVJ+Ov3t0b12Ycr2r2xLwxx7yuYET
	Sq45y7ImD+4etluFTYrQh+REpjsQggdmqa11Gozl8XW6dk6bd89oHWrCc7qgL+l9m83jKdxbCIBAS
	jSvSIPbQVWO2g4ewfPn9YPuqpcDmPFXQEX6jYrazL7DHk8G6bG/LpFaMDAWdbtf+qS0jex1+gyFJv
	whAk+1KkSasS1acfZKE+3po4ooVEiIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71AK-0005LI-NB; Wed, 26 Feb 2020 18:12:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j717T-0001yO-53
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:09:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A437330E;
 Wed, 26 Feb 2020 10:09:12 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1C8563F881;
 Wed, 26 Feb 2020 10:09:11 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 00/13] arm: calxeda: update DTS, bindings and MAINTAINERS
Date: Wed, 26 Feb 2020 18:08:48 +0000
Message-Id: <20200226180901.89940-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_100915_384938_92FB9E9B 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Jon Loeliger <jdl@jdl.com>, Mark Langsdorf <mlangsdo@redhat.com>,
 Robert Richter <rric@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Eric Auger <eric.auger@redhat.com>, soc@kernel.org,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

this series is an answer to the attempt [1] of removing the Calxeda
Highbank platform support from the kernel. Apart from the pending removal
of ARM32 host KVM support from the kernel, the lack of proper DT schema
bindings was another major reason for Rob's series.

This series addresses this. The first four patches adjust the .dts files
to pass the existing (mostly generic) DT schema binding checks. Those
changes should not affect the functionality.
The following eight patches then convert the "prose" DT binding
documentation to the json-schema format, so that the automatic checking
actually does something useful.
After those patches "make dtbs_check" comes back clean for the two .dts
files in the kernel, and "dt_validate -m" reports only those three
not-covered nodes (on Highbank, only the last one on Midway):
arm,cortex-a9-twd-timer
arm,cortex-a9-twd-wdt
calxeda,hb-sdhci
The first two are generic ARM devices, for which the binding doc just
does not have been converted yet. The SDHCI controller is actually
disabled in the DTs, and the SD slot is populated on very few special
systems only, also there has never been a driver in the kernel for
this device anyway.

The final patch then changes the MAINTAINERS file to hand over the
maintainership to me. I have a working machine under my desk and have
some interest in keeping this platform support alive.

Cheers,
Andre.

[1] https://lore.kernel.org/linux-arm-kernel/20200218171321.30990-1-robh@kernel.org/

Andre Przywara (13):
  arm: dts: calxeda: Basic DT file fixes
  arm: dts: calxeda: Provide UART clock
  arm: dts: calxeda: Fix interrupt grouping
  arm: dts: calxeda: Group port-phys and sgpio-gpio items
  dt-bindings: clock: Convert Calxeda clock bindings to json-schema
  dt-bindings: sata: Convert Calxeda SATA controller to json-schema
  dt-bindings: net: Convert Calxeda Ethernet binding to json-schema
  dt-bindings: phy: Convert Calxeda ComboPHY binding to json-schema
  dt-bindings: arm: Convert Calxeda L2 cache controller to json-schema
  dt-bindings: memory-controllers: convert Calxeda DDR to json-schema
  dt-bindings: ipmi: Convert IPMI-SMIC bindings to json-schema
  dt-bindings: arm: Add Calxeda system registers json-schema binding
  MAINTAINERS: Update Calxeda Highbank maintainership

 .../bindings/arm/calxeda/hb-sregs.yaml        | 47 +++++++++
 .../devicetree/bindings/arm/calxeda/l2ecc.txt | 15 ---
 .../bindings/arm/calxeda/l2ecc.yaml           | 36 +++++++
 .../devicetree/bindings/ata/sata_highbank.txt | 44 ---------
 .../bindings/ata/sata_highbank.yaml           | 96 +++++++++++++++++++
 .../devicetree/bindings/clock/calxeda.txt     | 17 ----
 .../devicetree/bindings/clock/calxeda.yaml    | 83 ++++++++++++++++
 .../devicetree/bindings/ipmi/ipmi-smic.txt    | 25 -----
 .../devicetree/bindings/ipmi/ipmi-smic.yaml   | 56 +++++++++++
 .../memory-controllers/calxeda-ddr-ctrlr.txt  | 16 ----
 .../memory-controllers/calxeda-ddr-ctrlr.yaml | 41 ++++++++
 .../devicetree/bindings/net/calxeda-xgmac.txt | 18 ----
 .../bindings/net/calxeda-xgmac.yaml           | 47 +++++++++
 .../bindings/phy/calxeda-combophy.txt         | 17 ----
 .../bindings/phy/calxeda-combophy.yaml        | 47 +++++++++
 MAINTAINERS                                   |  2 +-
 arch/arm/boot/dts/ecx-2000.dts                |  5 +-
 arch/arm/boot/dts/ecx-common.dtsi             | 17 ++--
 arch/arm/boot/dts/highbank.dts                | 11 +--
 19 files changed, 468 insertions(+), 172 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/calxeda/hb-sregs.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/calxeda/l2ecc.txt
 create mode 100644 Documentation/devicetree/bindings/arm/calxeda/l2ecc.yaml
 delete mode 100644 Documentation/devicetree/bindings/ata/sata_highbank.txt
 create mode 100644 Documentation/devicetree/bindings/ata/sata_highbank.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/calxeda.txt
 create mode 100644 Documentation/devicetree/bindings/clock/calxeda.yaml
 delete mode 100644 Documentation/devicetree/bindings/ipmi/ipmi-smic.txt
 create mode 100644 Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/calxeda-xgmac.txt
 create mode 100644 Documentation/devicetree/bindings/net/calxeda-xgmac.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/calxeda-combophy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/calxeda-combophy.yaml

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
