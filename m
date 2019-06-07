Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE6238DB7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o596Iwrrg+C5lueeuiKL9957EwU1C6kM50EraDN106A=; b=IhN7CBGoh3x+V6
	Uj8QC/o7rZ34LZSX2TxjgN4TX2wUhjpjrN8ZQC5sJ9rYfd6OIW2eWar0SKEOTzFLAd2uW8i7NYrbY
	2N9xDJmwhddyxAVOy44pUSgNjyiDgJZI5a+j7gO7e6P8qCvMhfy43prKyHEyW+T3L4BRynop2KdCn
	mEZ5jAIPh7O8SSx4eYbGA3LU/XhNzzxTY0XwsgMPNYXwr4pb3K0lIGbXDNn9aRgXVmu+Egh9LqaTg
	u/ql8xZisAgzw2FD0fhrU6wmRduphtMndkzE9nHnNb7L3UsKQIsLyT9K8zc5bhQbB4jJaPIK1CiDs
	4pxEqAm0l1/WqlyTAheg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZG9n-00010z-W0; Fri, 07 Jun 2019 14:47:52 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZG9D-0000pS-V2
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:47:18 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cfa78f30000>; Fri, 07 Jun 2019 07:47:15 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Fri, 07 Jun 2019 07:47:15 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Fri, 07 Jun 2019 07:47:15 -0700
Received: from HQMAIL101.nvidia.com (172.20.187.10) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 7 Jun
 2019 14:47:15 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Fri, 7 Jun 2019 14:47:15 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5cfa78ed0000>; Fri, 07 Jun 2019 07:47:14 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <mark.rutland@arm.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <kishon@ti.com>, <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <jingoohan1@gmail.com>, <gustavo.pimentel@synopsys.com>
Subject: [PATCH V9 02/15] PCI: Disable MSI for Tegra194 root port
Date: Fri, 7 Jun 2019 20:16:27 +0530
Message-ID: <20190607144640.13427-3-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190607144640.13427-1-vidyas@nvidia.com>
References: <20190607144640.13427-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559918835; bh=FvBIBBeSeJABCphcZGdPQIZy0gR/G92fkmrjhmkqJLQ=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=ozeUXYXeoGlfalFcn/VSuwxrDtHu9h31BbbiCwJW9LZuXulsRVHzozGe8udTozY3w
 mKWla0eNMBU7NlH4JQNrkiWoMSl+bdrXprw6ua286ph0A22WIiGPlGcS43mwKjvdSz
 qeQV8yYVVIUE4qpU4FzckD5LN7EiIV74wMOgRKm4CeH0fispnunET9fqP627+vm7BG
 7KMNvLv50buQSNEOh8dpeLfeX6L3JOE13/23UVDJkE6zahSzO68hC0BfKATKu7zbNi
 ZyT8FGNwF/ftAq7bq7nNR2zXmR6WUhy0aeMANYqw+ehsh47R8s40Cvep0CDHqdmXSy
 Hiu+aoUBsLojw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_074716_050025_1A302FC3 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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

Tegra194 rootports don't generate MSI interrupts for PME and AER events.
Since PCIe spec (Ref: r4.0 sec 7.7.1.2 and 7.7.2.2) doesn't support using
a mix of INTx and MSI/MSI-X, MSI needs to be disabled to avoid root ports
service drivers registering their respective ISRs with MSI interrupt and
to let only INTx be used for all events.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
Reviewed-by: Thierry Reding <treding@nvidia.com>
---
Changes since [v8]:
* None

Changes since [v7]:
* Changed quirk macro to consider class code as well to avoid this quirk
  getting applied to Tegra194 when it is operating in endpoint mode. Also
  quoted relevant sections from PCIe spec in comments.

Changes since [v6]:
* This is a new patch

 drivers/pci/quirks.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
index 0f16acc323c6..69c061e0ca7d 100644
--- a/drivers/pci/quirks.c
+++ b/drivers/pci/quirks.c
@@ -2592,6 +2592,29 @@ DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA,
 			PCI_DEVICE_ID_NVIDIA_NVENET_15,
 			nvenet_msi_disable);
 
+/*
+ * PCIe spec r4.0 sec 7.7.1.2 and sec 7.7.2.2 say that if MSI/MSI-X is enabled,
+ * then the device can't use INTx interrupts. Tegra194's PCIe root ports don't
+ * generate MSI interrupts for PME and AER events instead only INTx interrupts
+ * are generated. Though Tegra194 can generate MSI interrupts for other events,
+ * since PCIe specificiation doesn't support using a mix of INTx and MSI/MSI-X,
+ * it is required to disable MSI interrupts to avoid port service drivers
+ * registering their respective ISRs for MSIs.
+ */
+static void pci_quirk_nvidia_tegra194_disable_rp_msi(struct pci_dev *dev)
+{
+	dev->no_msi = 1;
+}
+DECLARE_PCI_FIXUP_CLASS_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad0,
+			      PCI_CLASS_BRIDGE_PCI, 8,
+			      pci_quirk_nvidia_tegra194_disable_rp_msi);
+DECLARE_PCI_FIXUP_CLASS_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad1,
+			      PCI_CLASS_BRIDGE_PCI, 8,
+			      pci_quirk_nvidia_tegra194_disable_rp_msi);
+DECLARE_PCI_FIXUP_CLASS_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad2,
+			      PCI_CLASS_BRIDGE_PCI, 8,
+			      pci_quirk_nvidia_tegra194_disable_rp_msi);
+
 /*
  * Some versions of the MCP55 bridge from Nvidia have a legacy IRQ routing
  * config register.  This register controls the routing of legacy
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
