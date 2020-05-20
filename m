Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C391DB408
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iPxUcdrNEf44AZm2U3sFmOVfIF3m8CvlJ3SyJ0SYTQw=; b=UjegO3lJ5ShUV6
	Cc4uDlX28f2+ebCmFoRcfM3uoG9Gy7Sv37E6CGBlCpG3qrHgYnnn1lkZX3OlQUE0B2ghNQpPLhkcd
	17SYuzj/D6TpWlddm3IOsn9hItF1KXrqblGKmCHkP1VJptX4eiAcZdCxZ1TVWdOmMCipbSR4N17MX
	PVr+ZoWJ8OIOljWL04hG5dk5mNqjejF2qnDhFyTSm0lB9Mcb1MS6+1ZV6oIHJfPAUKSuck4A8ZYnu
	8HXqf8r+kEX7WuRvfaHpKxSi7ERSy+HJTs+d3gWJmXhmek4jl32F6MIQnouVBLjj/3skceOfsZhjH
	G89/H27buTftpovja+uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbO6y-00064p-Lv; Wed, 20 May 2020 12:46:16 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbO67-0003F3-Ov
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:45:30 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04KCj0uD006158;
 Wed, 20 May 2020 07:45:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589978700;
 bh=8nwhAbh5OTRkKkm30f70KfL0dIF8WSriIhQIaxxmJpc=;
 h=From:To:CC:Subject:Date;
 b=c3cWrTEriFZcDIzEnZoHtBYNDTpzG4pcB4hT1aAvivjOmT1CpuXa5nen6Y0x/4lHV
 jdaXxB8Z2MfdpoqbcPqbbmenJRWIASwvZ7Cfr8K025YOKWy6+aluCLzPy9DT2nMLfu
 8/Jdudu8utktIk+0DbDINqQuUoCsXuqpD+SOU574=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04KCj0LG048681;
 Wed, 20 May 2020 07:45:00 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 May 2020 07:45:00 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 May 2020 07:45:00 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04KCiuvK026764;
 Wed, 20 May 2020 07:44:57 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 00/12] irqchip: ti,
 sci-intr/inta: Update the dt bindings to accept different interrupt
 parents
Date: Wed, 20 May 2020 18:14:42 +0530
Message-ID: <20200520124454.10532-1-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_054523_883503_98DB373B 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishanth Menon <nm@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,
	This is continuation of the RFC patches[0] regarding the driver
updates to support for following interrupt parent connection:
- INTR -> INTR
- INTA -> GICv3
The current existing driver assumes that INTR is always connected to
GICv3 and INTA is always connected to INTR.

As discussed this change breaks the DT backward compatibility but it
allows to not depend on TISCI firmware properties in DT node. IMHO, this
will ensure that any future changes will not effect DT properties.

[0] https://lore.kernel.org/linux-arm-kernel/20190923042405.26064-1-lokeshvutla@ti.com/

Thanks and regards,
Lokesh

Lokesh Vutla (12):
  firmware: ti_sci: Drop the device id to resource type translation
  firmware: ti_sci: Drop unused structure ti_sci_rm_type_map
  firmware: ti_sci: Add support for getting resource with subtype
  dt-bindings: irqchip: ti,sci-intr: Update bindings to drop the usage
    of gic as parent
  dt-bindings: irqchip: Convert ti,sci-intr bindings to yaml
  irqchip/ti-sci-intr: Add support for INTR being a parent to INTR
  dt-bindings: irqchip: ti,sci-inta: Update docs to support different
    parent.
  dt-bindings: irqchip: Convert ti,sci-inta bindings to yaml
  irqchip/ti-sci-inta: Add support for INTA directly connecting to GIC
  arm64: dts: k3-j721e: ti-sci-inta/intr: Update to latest bindings
  arm64: dts: k3-am65: ti-sci-inta/intr: Update to latest bindings
  arm64: dts: k3-am65: Update the RM resource types

 .../interrupt-controller/ti,sci-inta.txt      |  66 --------
 .../interrupt-controller/ti,sci-inta.yaml     | 104 ++++++++++++
 .../interrupt-controller/ti,sci-intr.txt      |  82 ---------
 .../interrupt-controller/ti,sci-intr.yaml     | 113 +++++++++++++
 MAINTAINERS                                   |   4 +-
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      |  34 ++--
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi       |  12 +-
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi    |   8 +-
 .../arm64/boot/dts/ti/k3-am654-base-board.dts |   4 +-
 .../dts/ti/k3-j721e-common-proc-board.dts     |  10 +-
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     |  41 ++---
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  12 +-
 drivers/firmware/ti_sci.c                     | 155 ++++++++----------
 drivers/irqchip/irq-ti-sci-inta.c             |  90 ++++++++--
 drivers/irqchip/irq-ti-sci-intr.c             | 150 ++++++++++-------
 include/linux/soc/ti/ti_sci_protocol.h        |  13 ++
 16 files changed, 527 insertions(+), 371 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.txt
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.yaml
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
