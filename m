Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C30870E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 06:47:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7RZ9oxUHgAohNNDL3yEiTpnPZyJad7QIGu8bPWXpEw4=; b=QjgGOnDufOE202
	v1lMG+Hzo2pL+tILOgVFguRvVBWRMcGO4KC7jTGZ1bLyouOibMK41rho6xCeJyR0AnVL7kZI9pW2T
	01zOQ4kEqv5O/f+mhYR47Rrq2327HpzOoR4OrBmjrDZsfJhSYPOFyKdZpjDEuN3LCIycuePwxapk7
	UFGh82eXAQp4+6b+tLtP5Y2G+bniGO3UcVG+KP14hEZCgHvesC4viX7xUTBpPC2WAkiuF5E6vRWdW
	rNOjwlc78lp8B41smqi4ojYEAhLdSYjzE3HY4/gjSGlWs3LgRvU9+3yDPEejKwGtdq67mvW1HkemW
	52SThpDv6A3d2eLymRWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvwoI-0001w9-Lp; Fri, 09 Aug 2019 04:47:26 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvwnV-0001Ph-0D
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 04:46:38 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d4cfaae0001>; Thu, 08 Aug 2019 21:46:38 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 08 Aug 2019 21:46:36 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 08 Aug 2019 21:46:36 -0700
Received: from HQMAIL111.nvidia.com (172.20.187.18) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 9 Aug
 2019 04:46:36 +0000
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 9 Aug
 2019 04:46:36 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Fri, 9 Aug 2019 04:46:36 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d4cfaa70001>; Thu, 08 Aug 2019 21:46:35 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <mark.rutland@arm.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <kishon@ti.com>, <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <jingoohan1@gmail.com>, <gustavo.pimentel@synopsys.com>
Subject: [PATCH V15 03/13] PCI: dwc: Perform dbi regs write lock towards the
 end
Date: Fri, 9 Aug 2019 10:15:59 +0530
Message-ID: <20190809044609.20401-4-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190809044609.20401-1-vidyas@nvidia.com>
References: <20190809044609.20401-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1565325998; bh=PRDHbLnTZXeiHLvKiWJA9P1nwcZ6xymQgiFj69/670Q=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=Ba1De5vHciHNxVxkY+EyvcjVO01TR4Nfnds1Z2xICUpNnbLgWHafmxpgVP2z4xIpV
 jGlNEHIzVFmA6ggk5EVxaSN/cQ8E9qqKCLoY2fznwg+t5U91bQ5EcWX689odEy8657
 qgA3SNgtC63t6jluTE0BVy/zbi9AI81jl5IB9TTi1x+enS2oDwnCc0qYlYMDtaBWo1
 /FXMBABSxb3WovEPM+ST6+i5+T5NVNDKWCjw1WsAE8RfXFRdqIuw4ikqtILQFRyjDq
 qDXmH2TJo8aT5ENV+urkkDqP1+xP0mIE2hs0W9o2sENd3IBeVMVLWRzHzlQzBx5ajq
 0DME6nnqou88A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_214637_122043_CC64EFF7 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, digetx@gmail.com, vidyas@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some of DesignWare core's DBI registers (a.k.a configuration space
registers) are write-protected with a lock without enabling which they are
read-only by default. These write-protected registers are implementation
specific. Tegra194's BAR-0 register which is at offset 0x10 in the
configuration space is an example. Current implementation in
dw_pcie_setup_rc() API attempts to unlock those write-protected registers
whenever they are updated and lock them back again for writing. This patch
attempts to unlock all such write-protected registers for writing in the
beginning of the API once and lock them back again towards the end to avoid
bloating the API with multiple unlock/lock sequences for all those
write-protected registers.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
Reviewed-by: Thierry Reding <treding@nvidia.com>
Acked-by: Jingoo Han <jingoohan1@gmail.com>
---
V15:
* None

V14:
* None

V13:
* None

V12:
* Modified commit message to make it explicit that write-protected registers are
  implementation specific.

V11:
* None

V10:
* None

V9:
* None

V8:
* None

V7:
* None

V6:
* Moved write enable to the beginning of the API and write disable to the end

V5:
* None

V4:
* None

V3:
* None

V2:
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
