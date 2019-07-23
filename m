Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E337166D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 12:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eBirN3pOqzWdxBYjcjDeU4OTJE0pUh1RWcUsy1qfDgI=; b=Ogk7irWd2b/ePx
	AozcROVmLhG0SvZpw7Vi150NVghY57b2QJBBFY1LLO3lGi9u+wdrjFRruRwnZM7U7r3qTA2Vlqg7K
	rAc1oBXxR79THLewG5pd6kedkKp4Jc2/vR0NfdCyY+4ikdeuPDF/AroXaBUssaNooNqS94zAaSzSv
	1+e/PMajhdCjaxI/JFmntIeL+ixKmX6K0pdDAvmMECAZ70R72ShiMz4i27BFwlK6SIaGowaA0wyV9
	jX6ogW2NVAXCyBE/mwo00XP8mRCbx6js9jJ8AsqJgtWPQSYzaRk+VrbkGEUOwmgpC7NekCTD9Qk7P
	azgrThWLQ9j1xI4RMfhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpsID-0006WL-6T; Tue, 23 Jul 2019 10:45:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsHo-0006Ut-Gh
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 10:44:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E51D337;
 Tue, 23 Jul 2019 03:44:47 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 441A73F71A;
 Tue, 23 Jul 2019 03:44:46 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 0/9] irqchip/gic-v3: Add support for GICv3.1 extended PPI/SPI
 ranges
Date: Tue, 23 Jul 2019 11:44:28 +0100
Message-Id: <20190723104437.154403-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_034448_596798_26CBBEDF 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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

This has been tested on a FastModel.

[1] https://developer.arm.com/docs/ihi0069/latest (version E)

Marc Zyngier (9):
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

 .../interrupt-controller/arm,gic-v3.yaml      |   6 +-
 drivers/irqchip/irq-gic-common.c              |  33 +-
 drivers/irqchip/irq-gic-common.h              |   2 +-
 drivers/irqchip/irq-gic-v3.c                  | 323 ++++++++++++++----
 drivers/irqchip/irq-gic.c                     |  12 +-
 drivers/irqchip/irq-hip04.c                   |   9 +-
 include/linux/irqchip/arm-gic-v3.h            |  29 +-
 7 files changed, 319 insertions(+), 95 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
