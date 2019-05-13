Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3171AFB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 07:07:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JBzSW+MhDZ1cAkoKqmR/OzLl3Fd3jP3Tt3VaMBmvsTM=; b=PO+SHGER5epRyB
	++li9UQEmZrDEL00zH7vzJFKflTOGbdzef6XVfoJWoHbcZO9YRj7BSUK/8d8S4EwnKYjLQ4tw1tDY
	tk002Jg3NGBgCZd9ZQmU7ZgCRpu0h7OCxSgop8ddUn7WQo0YthIeAW64pA7G/Ggz21b8gPK2OxQiH
	OZDqsXA+UcezXrt/27SnHdgCdIVvyRMozlTDZBZBEx/erdNQ5FbjojiCkx0ffv+NTac69eWUz71pT
	zqeqoJ2R1VEK2NIDcSmlshydBow/GCkT8AU+rtJUB9pfgTyoFTGenWH3K9iZ7PDeZf0XVqMrS2jJ1
	/bzLJ7y0TmtI2J7IV0IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ3BE-0006h2-NE; Mon, 13 May 2019 05:07:16 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ3Av-0006Rj-1h
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 05:07:03 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cd8fb490000>; Sun, 12 May 2019 22:06:17 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Sun, 12 May 2019 22:06:56 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Sun, 12 May 2019 22:06:56 -0700
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL104.nvidia.com
 (172.18.146.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 13 May
 2019 05:06:55 +0000
Received: from HQMAIL106.nvidia.com (172.18.146.12) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 13 May
 2019 05:06:55 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL106.nvidia.com
 (172.18.146.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Mon, 13 May 2019 05:06:55 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5cd8fb6a0000>; Sun, 12 May 2019 22:06:55 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <mark.rutland@arm.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <kishon@ti.com>, <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <jingoohan1@gmail.com>, <gustavo.pimentel@synopsys.com>
Subject: [PATCH V6 02/15] PCI/PME: Export pcie_pme_disable_msi() &
 pcie_pme_no_msi() APIs
Date: Mon, 13 May 2019 10:36:13 +0530
Message-ID: <20190513050626.14991-3-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513050626.14991-1-vidyas@nvidia.com>
References: <20190513050626.14991-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557723977; bh=XpwGlTpIwDMmEwSkX6vEoKEiKUYpxb07EBYGUS3y60A=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=N2FClCZsuBx1/tlLxA5l0oOjvjZUbSYtTEaMaGxgVGQEYr/DByusYmsAEi6/r+lTu
 pz3A40hTGo5ucMxqPIhQLQvtwMkJoPPx2tckAQVl2yTVPYbZJ9LEezdUMP2xp5FBZ4
 jNtPmRMEa5VVeuj4b/B3yiqcqYBjpc2yPuOZFCv1N2cdQUmCsE5MuYPyQ2YJA/a86M
 +Le0l0k6vF2GVziFunptIf3id9lzmTfhCLB832vfrjRYD/LhcAyGg83CYzCuVTOoNV
 a61wwwyJC21I+ta6hmZUaHCeWfaHRDTVnoxoQb5e6d+DD9sNjHANI2nv+OJi9j8gh8
 ZTogMskNRisvw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_220657_680996_B193EE82 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-tegra@vger.kernel.org, vidyas@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Export pcie_pme_disable_msi() & pcie_pme_no_msi() APIs to enable drivers
using these APIs be able to build as loadable modules.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
Changes since [v5]:
* Corrected inline implementation of pcie_pme_no_msi() API

Changes since [v4]:
* None

Changes since [v3]:
* None

Changes since [v2]:
* Exported pcie_pme_no_msi() API after making pcie_pme_msi_disabled a static

Changes since [v1]:
* This is a new patch in v2 series

 drivers/pci/pcie/pme.c     | 14 +++++++++++++-
 drivers/pci/pcie/portdrv.h | 14 ++------------
 2 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/pci/pcie/pme.c b/drivers/pci/pcie/pme.c
index 54d593d10396..d5e0ea4a62fc 100644
--- a/drivers/pci/pcie/pme.c
+++ b/drivers/pci/pcie/pme.c
@@ -25,7 +25,19 @@
  * that using MSI for PCIe PME signaling doesn't play well with PCIe PME-based
  * wake-up from system sleep states.
  */
-bool pcie_pme_msi_disabled;
+static bool pcie_pme_msi_disabled;
+
+void pcie_pme_disable_msi(void)
+{
+	pcie_pme_msi_disabled = true;
+}
+EXPORT_SYMBOL_GPL(pcie_pme_disable_msi);
+
+bool pcie_pme_no_msi(void)
+{
+	return pcie_pme_msi_disabled;
+}
+EXPORT_SYMBOL_GPL(pcie_pme_no_msi);
 
 static int __init pcie_pme_setup(char *str)
 {
diff --git a/drivers/pci/pcie/portdrv.h b/drivers/pci/pcie/portdrv.h
index 944827a8c7d3..1d441fe26c51 100644
--- a/drivers/pci/pcie/portdrv.h
+++ b/drivers/pci/pcie/portdrv.h
@@ -129,18 +129,8 @@ void pcie_port_bus_unregister(void);
 struct pci_dev;
 
 #ifdef CONFIG_PCIE_PME
-extern bool pcie_pme_msi_disabled;
-
-static inline void pcie_pme_disable_msi(void)
-{
-	pcie_pme_msi_disabled = true;
-}
-
-static inline bool pcie_pme_no_msi(void)
-{
-	return pcie_pme_msi_disabled;
-}
-
+void pcie_pme_disable_msi(void);
+bool pcie_pme_no_msi(void);
 void pcie_pme_interrupt_enable(struct pci_dev *dev, bool enable);
 #else /* !CONFIG_PCIE_PME */
 static inline void pcie_pme_disable_msi(void) {}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
