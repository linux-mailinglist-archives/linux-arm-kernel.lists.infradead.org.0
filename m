Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C82E1FEDCC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 10:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ygEemtLZLQ3IMJyXchMQKMqzj4xck+JwjQoIjvzuQ74=; b=q+8
	M0vWmeDyR1ta/ytncg4GJdrHwwHBeHmIrEsrBNhzFggVwc9lUm0YHfhukm8+XCt7e95tAoYQ0K80p
	/x4WtYBgKL+GJ25aFjlzDXeEcd2RAu4jwwqMJE95yt6DAeiWnRXfa37VLbpZn3UKrAwOFz+ek349k
	1cP1oWOM8lpqwwLl9gS39bwvZdMJfeB7NNaFOx9zJcyXmJ4wb7Qhf5WSpiXjFAjD3AbMiY66bvSLL
	rdlIn61ZjCPAjtI01x1i/K4fVIImLFVLmf4yXHy8CD1qC8OLxlyuDoFEX5+rs/0Zt9FthDZYzULXp
	f0ML57tFPQEvVCDgOruW4iBmcBFYOig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlq4F-0002YW-7f; Thu, 18 Jun 2020 08:38:39 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlq42-0002Vt-DA
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 08:38:27 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 18 Jun 2020 17:38:23 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 4B19960066;
 Thu, 18 Jun 2020 17:38:23 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Thu, 18 Jun 2020 17:38:23 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id D588B1A12AD;
 Thu, 18 Jun 2020 17:38:22 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Rob Herring <robh+dt@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v5 0/6] PCI: uniphier: Add features for UniPhier PCIe host
 controller
Date: Thu, 18 Jun 2020 17:38:07 +0900
Message-Id: <1592469493-1549-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_013826_563604_02EF3AE4 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds some features for UniPhier PCIe host controller.

- Add support for PME and AER invoked by MSI interrupt
- Add iATU register view support for PCIe version >= 4.80
- Add an error message when failing to get phy driver

This adds a new function called by MSI handler in DesignWare PCIe framework,
that invokes PME and AER funcions to detect the factor from SoC-dependent
registers.

Changes since v4:
- Add Acked-by: line to dwc patch

Changes since v3:
- Move msi_host_isr() call into dw_handle_msi_irq()
- Move uniphier_pcie_misc_isr() call into the guard of chained_irq
- Use a bool argument is_msi instead of pci_msi_enabled()
- Consolidate handler calls for the same interrupt
- Fix typos in commit messages

Changes since v2:
- Avoid printing phy error message in case of EPROBE_DEFER
- Fix iATU register mapping method
- dt-bindings: Add Acked-by: line
- Fix typos in commit messages
- Use devm_platform_ioremap_resource_byname()

Changes since v1:
- Add check if struct resource is NULL
- Fix warning in the type of dev_err() argument

Kunihiko Hayashi (6):
  PCI: dwc: Add msi_host_isr() callback
  PCI: uniphier: Add misc interrupt handler to invoke PME and AER
  dt-bindings: PCI: uniphier: Add iATU register description
  PCI: uniphier: Add iATU register support
  PCI: uniphier: Add error message when failed to get phy
  PCI: uniphier: Use devm_platform_ioremap_resource_byname()

 .../devicetree/bindings/pci/uniphier-pcie.txt      |  1 +
 drivers/pci/controller/dwc/pcie-designware-host.c  |  3 +
 drivers/pci/controller/dwc/pcie-designware.h       |  1 +
 drivers/pci/controller/dwc/pcie-uniphier.c         | 73 +++++++++++++++++-----
 4 files changed, 63 insertions(+), 15 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
