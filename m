Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B0C82F6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tTGWTm4N6mf+mdIRiDtTsQj0zqNAc+Oyn5PMp5GxByY=; b=sq1/x1pcwg8kOo
	pPKPnIhWGOk432dyExaT+ir6bOM4GxQ/J0yuuxfrYDmyP9rAQlQWUswMTNFJJY8oH1SszYUzWsH+y
	0vuxtAygv3YF67opEFeJZR5y8cdQcA8ZcvyJZbB7evEsKjdAcRpZ4kM1bbpVObYcTZOXannbE0ndG
	8GXWMyxt8nHVZi2jXaSgE4PwwoIHU99S9hriyMfDT0+WHFxdXervMZDrdriwFbea+04tZWL4DOUuG
	Jt6UbP6wgHQ4wSR9DBYENttcSI1Og4CfS5Zrtl6/UK1ctCqixaRSXHPRF3WXIZ7YYx6lRiNDtS2wo
	lfQOH+wuoc2xkvYkVM3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwKC-0004QU-UR; Tue, 06 Aug 2019 10:04:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huwHc-0002nW-U2
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:01:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 24F33337;
 Tue,  6 Aug 2019 03:01:28 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF92F3F706;
 Tue,  6 Aug 2019 03:01:26 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 00/12] irqchip/gic-v3: Add support for GICv3.1 extended
 PPI/SPI ranges
Date: Tue,  6 Aug 2019 11:01:09 +0100
Message-Id: <20190806100121.240767-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_030133_272261_75789846 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>, John Garry <john.garry@huawei.com>,
 linux-kernel@vger.kernel.org,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Apparently, having ~1000 wired interrupts is not enough, and some
people need more. Fear not! The GIC Achitecture Department hereby
grants you another 1024 SPIs, together with 64 PPIs, provided that you
implement GICv3.1 (see [1] for the details)

This series implements the required support, which requires a bit of
infrastructure rework in order to make the thing less horrible...

This has been tested on a FastModel. If there is no additional issue being
reported, I plan to put this into -next toward the end of this week and
let it simmer there for a bit.

[1] https://developer.arm.com/docs/ihi0069/latest (version E)

* From v1:
  - Tighten ESPI range matching
  - Added a warning to detect inconsistent distributor/cpu interface
    configurations
  - Added quirks to handle HIP06/07 erratum 161010803 which unexpectedly
    advertise ESPI support

Marc Zyngier (12):
  irqchip/gic: Rework gic_configure_irq to take the full ICFGR base
  irqchip/gic-v3: Add INTID range and convertion primitives
  dt-bindings: interrupt-controller: arm,gic-v3: Describe ESPI range
    support
  irqchip/gic-v3: Add ESPI range support
  irqchip/gic: Prepare for more than 16 PPIs
  irqchip/gic-v3: Dynamically allocate PPI NMI refcounts
  irqchip/gic-v3: Dynamically allocate PPI partition descriptors
  dt-bindings: interrupt-controller: arm,gic-v3: Describe EPPI range
    support
  irqchip/gic-v3: Add EPPI range support
  irqchip/gic-v3: Warn about inconsistent implementations of extended
    ranges
  irqchip/gic: Skip DT quirks when evaluating IIDR-based quirks
  irqchip/gic-v3: Add quirks for HIP06/07 invalid GICD_TYPER erratum
    161010803

 Documentation/arm64/silicon-errata.rst        |   2 +
 .../interrupt-controller/arm,gic-v3.yaml      |   6 +-
 drivers/irqchip/irq-gic-common.c              |  35 +-
 drivers/irqchip/irq-gic-common.h              |   2 +-
 drivers/irqchip/irq-gic-v3.c                  | 380 ++++++++++++++----
 drivers/irqchip/irq-gic.c                     |  12 +-
 drivers/irqchip/irq-hip04.c                   |   9 +-
 include/linux/irqchip/arm-gic-v3.h            |  30 +-
 8 files changed, 372 insertions(+), 104 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
