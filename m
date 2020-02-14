Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8224115DD6C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:59:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+dCpN+xfKXO9sx1aVuJVn1eFlfYCwrqWkXoxvhsi0wY=; b=cSRiPVo/jPtXve
	lxMOikmKXgsjBTVOqu70BiOQLS/ahzj4H/rHrgKomcCPLRE2SBobHBpfVKwSYOwNYYKV3ewJkDHpl
	TLvUH3rr2Fz8lFapH4TAPL5x8OFQt4bAe2MajVOZMzh6fWmxDgHUM86FaodDU7P5U2zovYN++hh8u
	21sgHJ1QSHN5KZAPrnchO1Om4wR12Ylh3T8etQepL1YrzgXtUlSGuK7fj8UMTN6j2DgUEv8ZMxX4o
	5QF+RrOoRwYCglgzWVxB9UBX1DMKyB3CKoO3deMqnKjEj25b1ygUmV83XguHKXpwz5w+xMXDS5ccN
	0Jjwk2Tfj/3yXY9WuOYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dNI-0004H7-FJ; Fri, 14 Feb 2020 15:59:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dHL-0006Oe-1N
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:53:21 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B58CC2465D;
 Fri, 14 Feb 2020 15:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695598;
 bh=Ximt0gbK7xTVxkrTv+3W+qrzUdNxPeqPaVwbPCy6Kys=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=o2Q4WEdBoyXTjtStPew36kGCAFAh4pSrR8YfY8RU58f5OG80M8h9v3WkawHM242KH
 pEOwnj8Bp5Z7kyRAo8ABYk6KuZ62OEQh7JYS04JI0NxKyVCj12WYq0nhapTSAygQ5Q
 WND88bb58+s+a0yhittlLP8kyib4JFvzXU4PjxkE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 203/542] PCI: iproc: Apply quirk_paxc_bridge() for
 module as well as built-in
Date: Fri, 14 Feb 2020 10:43:15 -0500
Message-Id: <20200214154854.6746-203-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075319_146289_616FD36B 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, Sasha Levin <sashal@kernel.org>,
 Wei Liu <wei.liu@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wei Liu <wei.liu@kernel.org>

[ Upstream commit 574f29036fce385e28617547955dd6911d375025 ]

Previously quirk_paxc_bridge() was applied when the iproc driver was
built-in, but not when it was compiled as a module.

This happened because it was under #ifdef CONFIG_PCIE_IPROC_PLATFORM:
PCIE_IPROC_PLATFORM=y causes CONFIG_PCIE_IPROC_PLATFORM to be defined, but
PCIE_IPROC_PLATFORM=m causes CONFIG_PCIE_IPROC_PLATFORM_MODULE to be
defined.

Move quirk_paxc_bridge() to pcie-iproc.c and drop the #ifdef so the quirk
is always applied, whether iproc is built-in or a module.

[bhelgaas: commit log, move to pcie-iproc.c, not pcie-iproc-platform.c]
Link: https://lore.kernel.org/r/20191211174511.89713-1-wei.liu@kernel.org
Signed-off-by: Wei Liu <wei.liu@kernel.org>
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pci/controller/pcie-iproc.c | 24 ++++++++++++++++++++++++
 drivers/pci/quirks.c                | 26 --------------------------
 2 files changed, 24 insertions(+), 26 deletions(-)

diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
index 0a468c73bae38..8c7f875acf7fa 100644
--- a/drivers/pci/controller/pcie-iproc.c
+++ b/drivers/pci/controller/pcie-iproc.c
@@ -1588,6 +1588,30 @@ DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_BROADCOM, 0xd802,
 DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_BROADCOM, 0xd804,
 			quirk_paxc_disable_msi_parsing);
 
+static void quirk_paxc_bridge(struct pci_dev *pdev)
+{
+	/*
+	 * The PCI config space is shared with the PAXC root port and the first
+	 * Ethernet device.  So, we need to workaround this by telling the PCI
+	 * code that the bridge is not an Ethernet device.
+	 */
+	if (pdev->hdr_type == PCI_HEADER_TYPE_BRIDGE)
+		pdev->class = PCI_CLASS_BRIDGE_PCI << 8;
+
+	/*
+	 * MPSS is not being set properly (as it is currently 0).  This is
+	 * because that area of the PCI config space is hard coded to zero, and
+	 * is not modifiable by firmware.  Set this to 2 (e.g., 512 byte MPS)
+	 * so that the MPS can be set to the real max value.
+	 */
+	pdev->pcie_mpss = 2;
+}
+DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_BROADCOM, 0x16cd, quirk_paxc_bridge);
+DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_BROADCOM, 0x16f0, quirk_paxc_bridge);
+DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_BROADCOM, 0xd750, quirk_paxc_bridge);
+DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_BROADCOM, 0xd802, quirk_paxc_bridge);
+DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_BROADCOM, 0xd804, quirk_paxc_bridge);
+
 MODULE_AUTHOR("Ray Jui <rjui@broadcom.com>");
 MODULE_DESCRIPTION("Broadcom iPROC PCIe common driver");
 MODULE_LICENSE("GPL v2");
diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
index fbeb9f73ef280..5cd6a77ddefff 100644
--- a/drivers/pci/quirks.c
+++ b/drivers/pci/quirks.c
@@ -2381,32 +2381,6 @@ DECLARE_PCI_FIXUP_ENABLE(PCI_VENDOR_ID_BROADCOM,
 			 PCI_DEVICE_ID_TIGON3_5719,
 			 quirk_brcm_5719_limit_mrrs);
 
-#ifdef CONFIG_PCIE_IPROC_PLATFORM
-static void quirk_paxc_bridge(struct pci_dev *pdev)
-{
-	/*
-	 * The PCI config space is shared with the PAXC root port and the first
-	 * Ethernet device.  So, we need to workaround this by telling the PCI
-	 * code that the bridge is not an Ethernet device.
-	 */
-	if (pdev->hdr_type == PCI_HEADER_TYPE_BRIDGE)
-		pdev->class = PCI_CLASS_BRIDGE_PCI << 8;
-
-	/*
-	 * MPSS is not being set properly (as it is currently 0).  This is
-	 * because that area of the PCI config space is hard coded to zero, and
-	 * is not modifiable by firmware.  Set this to 2 (e.g., 512 byte MPS)
-	 * so that the MPS can be set to the real max value.
-	 */
-	pdev->pcie_mpss = 2;
-}
-DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_BROADCOM, 0x16cd, quirk_paxc_bridge);
-DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_BROADCOM, 0x16f0, quirk_paxc_bridge);
-DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_BROADCOM, 0xd750, quirk_paxc_bridge);
-DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_BROADCOM, 0xd802, quirk_paxc_bridge);
-DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_BROADCOM, 0xd804, quirk_paxc_bridge);
-#endif
-
 /*
  * Originally in EDAC sources for i82875P: Intel tells BIOS developers to
  * hide device 6 which configures the overflow device access containing the
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
