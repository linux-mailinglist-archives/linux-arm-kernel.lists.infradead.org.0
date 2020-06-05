Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8841EF470
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 11:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cZfzXk8hu07V0mdZZISaHZhYbg1Sqb1Hgm+M6TMTC+8=; b=KTe
	MC2CF6QepFXngGE0jYZzHXHohkM4mTEQkyHP2MK6qBm5N0kVbzCUHk3FH3qgoZz7szZ7bMzm0htfJ
	mYfKYssN1hwy8X1dPRUXG3/6OCg37A5Ef/yht/FgTfjVpfm9uj+cltANnHqP3zEKeVLnc+VIQNZBB
	UlWQiZawi/AcXngl3OAIWIjwXNueu6MCVzmt3jMZaTEBJG7mkd7pW869saCjE7BKFhzs7YPvlPfHL
	fxJDLLDGtFQUuMt7AKb6ScIrptp4L2h3bdh4ICSgogAU+VIppNTcUxTlu6BY4Ls1Ce5XIDzNUG9nM
	/8y8WOE58nDkV0j9mt5W0ykLuvQ5t1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh8ud-0007zh-N6; Fri, 05 Jun 2020 09:45:19 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh8u3-0007o3-48
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 09:44:45 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 05 Jun 2020 18:44:39 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 8EA4A18010B;
 Fri,  5 Jun 2020 18:44:39 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 5 Jun 2020 18:44:39 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id EF85B1A12AD;
 Fri,  5 Jun 2020 18:44:38 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Rob Herring <robh+dt@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v4 0/6] PCI: uniphier: Add features for UniPhier PCIe host
 controller
Date: Fri,  5 Jun 2020 18:44:30 +0900
Message-Id: <1591350276-15816-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_024443_283237_640A070D 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
