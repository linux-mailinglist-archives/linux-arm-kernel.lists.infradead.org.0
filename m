Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DF11738E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 14:52:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=V6Y6Yw+QmeUOutboHL7j5l5jtOZWGNEFWyIALrlu4Nw=; b=igw
	mWz1nd0fdG24kR17NY7mZc8S9sjXHZ3awOAyB73qTPcZ3umEvMd50yemJSVsHCkC+3SgxgBeqB3bP
	Oxw1ZVOQim4S6KXv0vg3PPB1rLC/L/1pcn715V6eBqSXrlAa0dxcn5WnQUjw7K4rAfG5P4QNHBkEG
	Qp5jIeQaqqAJ/UyZF4ueADHn/QDOCErTXMUmTrOe7hFX1xZ7J1w1etnWGcfbV8mJwWfOfZ/+3KM4E
	Xbjja/T9UC59yJ0xCEc8+VEVL5alu/KLvxnTdiAtU/tdzAZWzyRNt7UnY51j6X6F2jzDO2foy8KnD
	vDOleJMNIYsj018E8ypSpxXtEw5xjyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7g3T-00045x-HE; Fri, 28 Feb 2020 13:51:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7g3J-00045C-IB
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 13:51:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D5D8531B;
 Fri, 28 Feb 2020 05:51:40 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F17323F7B4;
 Fri, 28 Feb 2020 05:51:38 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: soc@kernel.org, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v3 0/5] arm: calxeda: update DTS and MAINTAINERS
Date: Fri, 28 Feb 2020 13:51:01 +0000
Message-Id: <20200228135106.220620-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_055141_647312_A0CC1D0A 
X-CRM114-Status: GOOD (  11.53  )
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
Cc: Rob Herring <robh@kernel.org>, Jon Loeliger <jdl@jdl.com>,
 Mark Langsdorf <mlangsdo@redhat.com>, Robert Richter <rric@kernel.org>,
 devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Eric Auger <eric.auger@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

this is mostly a repost of the DT and MAINTAINERS part of the
previous v2 series, with Rob's ACKs added.
Please apply to armsoc!
Patches based on soc/for-next (c247a41835698).

------------------
This series is an answer to the attempt [1] of removing the Calxeda
Highbank platform support from the kernel. Apart from the pending removal
of ARM32 host KVM support from the kernel, the lack of proper DT schema
bindings and passing checks was another major reason for Rob's series.

This series addresses the .dts part of the problem.
The first four patches adjust the .dts files to pass the existing
(mostly generic) DT schema binding checks, also prepare for passing
later when the schemas get updated in a parallel series.
Those changes do not affect the functionality.

The final patch then changes the MAINTAINERS file to hand over the
maintainership to me. I have a working machine under my desk and have
some interest in keeping this platform support alive.

Changelog:
v2 ... v3:
- Remove schema binding conversions from this series
- Re-add #address-cells = <0> to the GIC node
- Add Rob's ACKs

v1 ... v2:
- Remove unneeded property type from clocks and sgpio-gpio
- add additionalProperties: false to bindings missing it before
- limit number in "phydev" to the hardware constraint of 5 bits
- add required: properties to l2ecc binding
- fix enumeration of compatible strings in calxeda-ddr-ctrlr

Cheers,
Andre.

[1] https://lore.kernel.org/linux-arm-kernel/20200218171321.30990-1-robh@kernel.org/

Andre Przywara (5):
  arm: dts: calxeda: Basic DT file fixes
  arm: dts: calxeda: Provide UART clock
  arm: dts: calxeda: Fix interrupt grouping
  arm: dts: calxeda: Group port-phys and sgpio-gpio items
  MAINTAINERS: Update Calxeda Highbank maintainership

 MAINTAINERS                       |  2 +-
 arch/arm/boot/dts/ecx-2000.dts    |  6 ++----
 arch/arm/boot/dts/ecx-common.dtsi | 17 +++++++++--------
 arch/arm/boot/dts/highbank.dts    | 11 ++++-------
 4 files changed, 16 insertions(+), 20 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
