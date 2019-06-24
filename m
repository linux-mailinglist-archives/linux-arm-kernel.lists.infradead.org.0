Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 745B350578
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 11:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O932qWky/UCNSUBhgeVhLe7ZH5Xoq/ApzSenLhpzmKY=; b=ntYNdGQGcF/Ijd
	AwK/+hEBUrEh9g1tC32aMmaldowJF9lP9qD6rGflsJH4GnRGcbCAy0ykSRLteZWwMtdkC+VlZw/RU
	MEGDGjjP//PWk2B7SS0Q6V0fZQaLTUhG+173FOu3g5KZxzPpWRgH+fqhSpaDLIxir6BbjIvHzYUqD
	7fUA6iNmxzB8W+KTZMixNdrGlVY6v629DP5PRlF33FJsjQYBtJ6Fhyiyldu6fW9POa4eVdCC1/+2o
	QdTeQyCz6Pk0f+S/pX2Qt8xhYqKWToPVJst/+HPCLsjgkFVcXJMTuegsD7IM83GbEhtIs5jr6ROeP
	stfPNS9BNvnLRwKae58A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfL66-0002Fh-7b; Mon, 24 Jun 2019 09:17:10 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfL4g-0001c9-2b
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:15:44 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d1094bc0000>; Mon, 24 Jun 2019 02:15:40 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 24 Jun 2019 02:15:41 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 24 Jun 2019 02:15:41 -0700
Received: from HQMAIL102.nvidia.com (172.18.146.10) by HQMAIL104.nvidia.com
 (172.18.146.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 24 Jun
 2019 09:15:41 +0000
Received: from HQMAIL106.nvidia.com (172.18.146.12) by HQMAIL102.nvidia.com
 (172.18.146.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 24 Jun
 2019 09:15:40 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL106.nvidia.com
 (172.18.146.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Mon, 24 Jun 2019 09:15:41 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d1094b80000>; Mon, 24 Jun 2019 02:15:40 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <mark.rutland@arm.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <kishon@ti.com>, <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <jingoohan1@gmail.com>, <gustavo.pimentel@synopsys.com>
Subject: [PATCH V11 03/12] PCI: dwc: Perform dbi regs write lock towards the
 end
Date: Mon, 24 Jun 2019 14:44:56 +0530
Message-ID: <20190624091505.1711-4-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190624091505.1711-1-vidyas@nvidia.com>
References: <20190624091505.1711-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1561367740; bh=UuJEy8rnX9tapQ4+zGNnxBWhCz2B4yMDChjYbTeGYJ8=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=GbDwFvWKgU7lFnOwRHVe3D2j3DgQCVZOkKoKxR5q6C/bI+wpdZBJWOosAl13/oogT
 kX6n2b3Jsej4cawNFjHavnKxZkIzvrXm7oZA4TUxPzE5sVft8IhrfUKUSrcI5T6uSH
 3KwVQ7nyQ31aYX63mT5RFHRyunP7blwIBQY3YFXRmBy4nm9BVnVeLiGigsziYcXDhC
 E6utRt5BGYgo+0gD9CcswO6I268dFW6+FfrPnjSRkjgsETHduI7IMmVYM/jpWjCcGd
 NkVj6bS9N9fi/GcpoP1l0Wtq19nDvbzrS9qWmnqwcMT9TYoxPAFDlLQ1wGonhnFbH/
 p7LYpaJSipFIg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_021542_177898_1AC9FA9B 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, digetx@gmail.com, vidyas@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove multiple write enable and disable sequences of dbi registers as
Tegra194 implements writes to BAR-0 register (offset: 0x10) controlled by
DBI write-lock enable bit thereby not allowing any further writes to BAR-0
register in config space to take place. Hence enabling write permission at
the start of function and disabling the same only towards the end.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
Reviewed-by: Thierry Reding <treding@nvidia.com>
Acked-by: Jingoo Han <jingoohan1@gmail.com>
---
Changes since [v10]:
* None

Changes since [v9]:
* None

Changes since [v8]:
* None

Changes since [v7]:
* None

Changes since [v6]:
* None

Changes since [v5]:
* Moved write enable to the beginning of the API and write disable to the end

Changes since [v4]:
* None

Changes since [v3]:
* None

Changes since [v2]:
* None

Changes since [v1]:
* None

 drivers/pci/controller/dwc/pcie-designware-host.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index f93252d0da5b..d3156446ff27 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -628,6 +628,12 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 	u32 val, ctrl, num_ctrls;
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 
+	/*
+	 * Enable DBI read-only registers for writing/updating configuration.
+	 * Write permission gets disabled towards the end of this function.
+	 */
+	dw_pcie_dbi_ro_wr_en(pci);
+
 	dw_pcie_setup(pci);
 
 	if (!pp->ops->msi_host_init) {
@@ -650,12 +656,10 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_1, 0x00000000);
 
 	/* Setup interrupt pins */
-	dw_pcie_dbi_ro_wr_en(pci);
 	val = dw_pcie_readl_dbi(pci, PCI_INTERRUPT_LINE);
 	val &= 0xffff00ff;
 	val |= 0x00000100;
 	dw_pcie_writel_dbi(pci, PCI_INTERRUPT_LINE, val);
-	dw_pcie_dbi_ro_wr_dis(pci);
 
 	/* Setup bus numbers */
 	val = dw_pcie_readl_dbi(pci, PCI_PRIMARY_BUS);
@@ -687,15 +691,13 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 
 	dw_pcie_wr_own_conf(pp, PCI_BASE_ADDRESS_0, 4, 0);
 
-	/* Enable write permission for the DBI read-only register */
-	dw_pcie_dbi_ro_wr_en(pci);
 	/* Program correct class for RC */
 	dw_pcie_wr_own_conf(pp, PCI_CLASS_DEVICE, 2, PCI_CLASS_BRIDGE_PCI);
-	/* Better disable write permission right after the update */
-	dw_pcie_dbi_ro_wr_dis(pci);
 
 	dw_pcie_rd_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, &val);
 	val |= PORT_LOGIC_SPEED_CHANGE;
 	dw_pcie_wr_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, val);
+
+	dw_pcie_dbi_ro_wr_dis(pci);
 }
 EXPORT_SYMBOL_GPL(dw_pcie_setup_rc);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
