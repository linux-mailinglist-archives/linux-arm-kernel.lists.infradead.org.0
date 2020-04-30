Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A39B1C08D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 23:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ToStKjpOkkx34UPJEZWETIZV2Wkml/JjB17M6QvtjTE=; b=Zk3
	3ZErih2ZJ3WqicT86hSPEpsQFKeoWkVAZRX3yuAGNQFJa4my4rPjHLxPjty7CexMSI0Pw5cCoPRKf
	z3se34BRq+gwrQiQV8yqiANP0AjzQlZY8oRpJqQ4by5qY+RMD8Y9wByzMU8/dh0lp4SRpeLmgnvat
	SC5JgChXtQ4GNQwHLcDf351u3t6/0hKk/Vmi+kUEW5FU4bjLlsxhgojZgsRS++Iw4aBoZMIWAMaAr
	ZQZbnwP7nvKyOInVRvd0uUG9vCDmRtdebRuy5yOQ+hBraT/dYEgjmWLJjf0ozj+sa5kpzfLIR+HXl
	dYbYY/gLycgdrdLZCHWKj5lf5IoRRYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGSo-00040R-Kq; Thu, 30 Apr 2020 21:11:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGSb-0003yg-1M
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 21:11:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5C29E1FB;
 Thu, 30 Apr 2020 14:11:06 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 76D8F3F68F;
 Thu, 30 Apr 2020 14:11:05 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/8] dt-bindings: calxeda: Convert bindings to json-schema
Date: Thu, 30 Apr 2020 22:10:46 +0100
Message-Id: <20200430211054.30466-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_141109_171565_BCAF0E71 
X-CRM114-Status: GOOD (  13.64  )
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
Cc: Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

this is the DT schema bindings conversion part of the v2 Calxeda update
series. The .dts part was already merged, so this tackles what is left.

This series converts the "prose" DT binding documentation for various
devices used by the Calxeda platform to the json-schema format, so that
the automatic checking actually does something useful.
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

Verified by trying to break every single assumption the bindings make
(in their example section): the tooling complained correctly.

Thanks,
Andre

Changelog:
v2 ... v3:
- adjust license to name both BSD and GPL
- add missing address specifier for clock nodes' names
- properly group phandle properties in SATA bindings example
- use itemised interrupt description in l2ecc binding
- limit reg-shift in the IPMI binding
- allow device_type property in IPMI binding

v1 ... v2:
- Remove unneeded property type from clocks and sgpio-gpio
- add additionalProperties: false to bindings missing it before
- limit number in "phydev" to the hardware constraint of 5 bits
- add required: properties to l2ecc binding
- fix enumeration of compatible strings in calxeda-ddr-ctrlr

Andre Przywara (8):
  dt-bindings: clock: Convert Calxeda clock bindings to json-schema
  dt-bindings: sata: Convert Calxeda SATA controller to json-schema
  dt-bindings: net: Convert Calxeda Ethernet binding to json-schema
  dt-bindings: phy: Convert Calxeda ComboPHY binding to json-schema
  dt-bindings: arm: Convert Calxeda L2 cache controller to json-schema
  dt-bindings: memory-controllers: Convert Calxeda DDR to json-schema
  dt-bindings: ipmi: Convert IPMI-SMIC bindings to json-schema
  dt-bindings: arm: Add Calxeda system registers json-schema binding

 .../bindings/arm/calxeda/hb-sregs.yaml        | 49 ++++++++++
 .../devicetree/bindings/arm/calxeda/l2ecc.txt | 15 ---
 .../bindings/arm/calxeda/l2ecc.yaml           | 42 ++++++++
 .../devicetree/bindings/ata/sata_highbank.txt | 44 ---------
 .../bindings/ata/sata_highbank.yaml           | 95 +++++++++++++++++++
 .../devicetree/bindings/clock/calxeda.txt     | 17 ----
 .../devicetree/bindings/clock/calxeda.yaml    | 82 ++++++++++++++++
 .../devicetree/bindings/ipmi/ipmi-smic.txt    | 25 -----
 .../devicetree/bindings/ipmi/ipmi-smic.yaml   | 63 ++++++++++++
 .../memory-controllers/calxeda-ddr-ctrlr.txt  | 16 ----
 .../memory-controllers/calxeda-ddr-ctrlr.yaml | 42 ++++++++
 .../devicetree/bindings/net/calxeda-xgmac.txt | 18 ----
 .../bindings/net/calxeda-xgmac.yaml           | 49 ++++++++++
 .../bindings/phy/calxeda-combophy.txt         | 17 ----
 .../bindings/phy/calxeda-combophy.yaml        | 51 ++++++++++
 15 files changed, 473 insertions(+), 152 deletions(-)
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
