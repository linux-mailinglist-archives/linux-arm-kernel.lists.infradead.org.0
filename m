Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE7C7D165
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 00:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sn0J3QG69JPNwO+l4mUmy9CKbYsknhdnxuEVJcwHKFY=; b=coUKEQq617VMGt
	tHOltIf/XxUcPKI0MohGFqzKe9dbgJyj1jHaA09hL+jRqQRwI939x2KVH2NuJilJrlWm9frQXH8VM
	gLESNrMmnoO0gpbWzkopJ6UF9FyllS8drH5F43PoVmBhxoSGnSndKEDrhY2Mvs/DS4TKS2JMXkM0l
	LNJ0WnC/Lgz8fTNrEIPM7w40KncOSKR8E6rWBKm7svKtuzau8GxDbvj9eeWNQ5wgXmM9MIrMj1Ezp
	zgHPlEfUvY1nT0u5MIMcNK7gEfeLQ9PNCBoFesVt6srktduc+80e98syTv3ej3qHeJMvFSU7yfnrl
	6/ZkEsjBEhF6h5aO4PsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsxJN-0004EX-F9; Wed, 31 Jul 2019 22:43:09 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsxJF-0004Cq-LW
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 22:43:03 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6VMftEx086737;
 Wed, 31 Jul 2019 17:41:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564612915;
 bh=Lh/ko7kGLPGr6pxMk6bV2R0qPMr5v+BQRcarbEjRS6s=;
 h=From:To:CC:Subject:Date;
 b=ri8K6j7onwwjk2U/rBCj5CEYgYaeZ32tjH2mc3aj07ophmw6D0hBwCIKU6ShSnFLq
 oGAxRhq+im3z8onHJagKtxNOcHMT7FAz69gRloTIsy+4u0y35OLhEjZ47um1p6KGk2
 2Db6EkRB3gkq+FtF8wzvvfgij2vZOZsL/goND/rY=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6VMftjb071206
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 31 Jul 2019 17:41:55 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 31
 Jul 2019 17:41:54 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 31 Jul 2019 17:41:55 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6VMfsuf127024;
 Wed, 31 Jul 2019 17:41:54 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6VMfsZ24928; 
 Wed, 31 Jul 2019 17:41:54 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Jason
 Cooper <jason@lakedaemon.net>
Subject: [PATCH v2 0/6] Add TI PRUSS Local Interrupt Controller IRQChip driver
Date: Wed, 31 Jul 2019 17:41:43 -0500
Message-ID: <20190731224149.11153-1-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_154301_852928_E6D131AE 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 David Lechner <david@lechnology.com>, Tony Lindgren <tony@atomide.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 "Andrew F. Davis" <afd@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Murali Karicheri <m-karicheri2@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

The following is a v2 version of the series [1] that adds an IRQChip driver for
the local interrupt controller present within a Programmable Real-Time Unit and
Industrial Communication Subsystem (PRU-ICSS) present on a number of TI SoCs 
including OMAP architecture based AM335x, AM437x, AM57xx SoCs, Keystone 2 
architecture based 66AK2G SoCs, Davinci architecture based OMAP-L138/DA850 SoCs
and the latest K3 architecture based AM65x and J721E SoCs. Please see the
v1 cover-letter [1] for details about the features of this interrupt controller.
More details can be found in any of the supported SoC TRMs.
 Eg: Chapter 30.1.6 of AM5728 TRM [2]

Please see the individual patches for exact changes in each patch, following are
the main changes from v1:
 - Dropped the pruss_intc_trigger() API and patch and replaced it with a new
   patch achieving the same through irq_set_irqchip_state() callback (patch 5)
 - Added cleanup logic on INTC mapping fails and reset the mapping registers
   during unmap (patch 4)
 - Minor revisions to the bindings, no new properties introduced (patch 1)

regards
Suman

[1] https://patchwork.kernel.org/cover/11034561/
[2] http://www.ti.com/lit/pdf/spruhz6

Andrew F. Davis (1):
  irqchip/irq-pruss-intc: Add a PRUSS irqchip driver for PRUSS
    interrupts

David Lechner (1):
  irqchip/irq-pruss-intc: Implement irq_{get,set}_irqchip_state ops

Suman Anna (4):
  dt-bindings: irqchip: Add PRUSS interrupt controller bindings
  irqchip/irq-pruss-intc: Add support for shared and invalid interrupts
  irqchip/irq-pruss-intc: Add helper functions to configure internal
    mapping
  irqchip/irq-pruss-intc: Add support for ICSSG INTC on K3 SoCs

 .../interrupt-controller/ti,pruss-intc.txt    |  98 +++
 drivers/irqchip/Kconfig                       |  10 +
 drivers/irqchip/Makefile                      |   1 +
 drivers/irqchip/irq-pruss-intc.c              | 764 ++++++++++++++++++
 include/linux/irqchip/irq-pruss-intc.h        |  36 +
 5 files changed, 909 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.txt
 create mode 100644 drivers/irqchip/irq-pruss-intc.c
 create mode 100644 include/linux/irqchip/irq-pruss-intc.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
