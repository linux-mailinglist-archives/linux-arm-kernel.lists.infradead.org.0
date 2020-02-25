Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E80116BB9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 09:13:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6g3RQ9aAlENerMSm21FEsOk/w61WJ1B+AmHvWXC0ls=; b=vBDWxOrRJ0lwn0
	jMiukXgk5DdfI2T+rK8v3cvx+6XGIQU/pqL0RCjRVJZQWDP2lfEaSnLkQ2rXBlMs7yzEPq5jT94RJ
	f1w4sHnTyBgP84lLDdv4GTkEtoHyHgU4uActdkbXOD04N5iGByBhTEVtZPqbnZmfLn2/Ldbk6tlCX
	SUjSmRNFJGWCxai/CG0cw4StP0eorNt0hc+jzbiRGbj5J35eWOlF/tjjktQS4ImX6bRGnhrI1bGcS
	o8dprDVvuQj5dF1cgqWSmHVQmu/qegTx8ISpxEpeUdJFJgctwi66+bG0dMnCDXw/LIIC4rAy9MvwT
	TzJ2/SbrxDFbsky5yzwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6VLc-0001bu-Jp; Tue, 25 Feb 2020 08:13:44 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VKo-0000z2-LQ
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 08:12:56 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01P8Cnch100503;
 Tue, 25 Feb 2020 02:12:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582618369;
 bh=AjPWXiWRfwYr9E/yQ+iiQAgHij2JOgvin4hry77eZrA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=gq07E6pgBPANdYa+hDUz8pwJJHxEEYZkclhsds2+xFJvLk3+bJ2SWrr8xT+w1cPo7
 bPJDCE8UX/a2TwS8QM36opeJXiMJLDqNFmmh4PEsC+1T9fIhSZXPJSFJ97zAlhZrSH
 u8lHcL/mLhEjpJcLy/qCvRz3B5Jxmb4IXcHVzkYU=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01P8CnXn079310
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 25 Feb 2020 02:12:49 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 25
 Feb 2020 02:12:49 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 25 Feb 2020 02:12:49 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01P8CYuB026220;
 Tue, 25 Feb 2020 02:12:46 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Murali Karicheri <m-karicheri2@ti.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Bjorn Helgaas <bhelgaas@google.com>, Gustavo Pimentel
 <gustavo.pimentel@synopsys.com>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v2 3/3] PCI: keystone: Allow AM654 PCIe Endpoint to raise
 MSI-X interrupt
Date: Tue, 25 Feb 2020 13:47:03 +0530
Message-ID: <20200225081703.8857-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200225081703.8857-1-kishon@ti.com>
References: <20200225081703.8857-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_001254_798531_6956CB2B 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pci@vger.kernel.org, Xiaowei Bao <xiaowei.bao@nxp.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

AM654 PCIe EP controller has MSI-X capability register and has the
ability to raise MSI-X interrupt. Add support in pci-keystone.c
for PCIe endpoint controller in AM654 to raise MSI-X interrupts.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/controller/dwc/pci-keystone.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pci-keystone.c b/drivers/pci/controller/dwc/pci-keystone.c
index c8c702c494a2..790679fdfa48 100644
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
