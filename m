Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B87111AB37
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 13:46:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtiT1nv32TUigYfAXRuYvc3tBZ7qVA1eXf1Cq64/dNo=; b=sXyv4QylmYMpLs
	x2SnZq6TnGYsXPK0RVHsMb703Vj7SsuD9IWgb/rPwc7HCK56wR9I7deN1nKKkRpy7sdTau/GRRECn
	tgKTD3zbdPwtQRQpQU57+s7QBHi7bsMUTjot+f84R7NVrM2i6zT0I2qZzRjreIKodj8y79iI6Xtr+
	VtPSfGRPl8MI/MtlPx+I0JEG/eWqa2yimS4bH0AuDDghyyYLup79ie3WNui/Zx+7Wh/04G+OfWmi2
	x/b2245/qWEyGa8as4GE3QuinwxnNRS/KrHu+0kj/MozNvbPkukNJE8c84CF82mn6cWt5UdsI/KSm
	8P6d3eKB/2OOziX/1hWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if1NU-0007n1-Q5; Wed, 11 Dec 2019 12:46:04 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if1Mf-00074n-Qd
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 12:45:16 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBBCj8sH012121;
 Wed, 11 Dec 2019 06:45:08 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576068308;
 bh=2tvalbS51NRH72d/eck6wNFaarOFGq+9ECr88otyLfI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=oJoyfKk6hUmwxuhwQ/RokizqaBg9NBAcGl9+qwYGDaqe1sSsGOrG+WiciI9ONFbkr
 Bz3gEngOMeo5KhbEQHQaHxgjShp/7vSFd8AzunP9rgSEWgmM1rohvLM8LCO65FGwKS
 FSKTy0WdR71YZY7bjeOxjSpB7tGSewdOJDlBQUWI=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBBCj8RM105562;
 Wed, 11 Dec 2019 06:45:08 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 11
 Dec 2019 06:45:08 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 11 Dec 2019 06:45:08 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBBCirfk125451;
 Wed, 11 Dec 2019 06:45:05 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Andrew Murray
 <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, Gustavo
 Pimentel <gustavo.pimentel@synopsys.com>
Subject: [PATCH 3/4] PCI: keystone: Allow AM654 PCIe Endpoint to raise MSIX
 interrupt
Date: Wed, 11 Dec 2019 18:16:07 +0530
Message-ID: <20191211124608.887-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211124608.887-1-kishon@ti.com>
References: <20191211124608.887-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_044513_946620_7E0D6596 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Xiaowei Bao <xiaowei.bao@nxp.com>, Jingoo Han <jingoohan1@gmail.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Murali Karicheri <m-karicheri2@ti.com>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

AM654 PCIe EP controller has MSIX capability register and has the
ability to raise MSIX interrupt. Add support in pci-keystone.c
for PCIe endpoint controller in AM654 to raise MSIX interrupts.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/controller/dwc/pci-keystone.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pci-keystone.c b/drivers/pci/controller/dwc/pci-keystone.c
index af677254a072..dbe31589eb61 100644
--- a/drivers/pci/controller/dwc/pci-keystone.c
+++ b/drivers/pci/controller/dwc/pci-keystone.c
@@ -959,6 +959,9 @@ static int ks_pcie_am654_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
 	case PCI_EPC_IRQ_MSI:
 		dw_pcie_ep_raise_msi_irq(ep, func_no, interrupt_num);
 		break;
+	case PCI_EPC_IRQ_MSIX:
+		dw_pcie_ep_raise_msix_irq(ep, func_no, interrupt_num);
+		break;
 	default:
 		dev_err(pci->dev, "UNKNOWN IRQ type\n");
 		return -EINVAL;
@@ -970,7 +973,7 @@ static int ks_pcie_am654_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
 static const struct pci_epc_features ks_pcie_am654_epc_features = {
 	.linkup_notifier = false,
 	.msi_capable = true,
-	.msix_capable = false,
+	.msix_capable = true,
 	.reserved_bar = 1 << BAR_0 | 1 << BAR_1,
 	.bar_fixed_64bit = 1 << BAR_0,
 	.bar_fixed_size[2] = SZ_1M,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
