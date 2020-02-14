Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B3115E55A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:42:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhL+rrFRROfFOO2rHsldd19urGe6E5Lmr7OOWrHHPkY=; b=I/6EZOjWkd611+
	0cwPxtoHRcZ8nqJ7GDKm19YKy2dBTZso5lKA3pst0l150Gly5jaI0EXXCIWDsCKaDOKA3dxoiZXQS
	W1wN1sTyiZN/nh4zIQ5vG2Fg7qpcmjuPimZvFVPAbIeV0NANpwUdJBf4sbZ2pbhi4TEigIh+uRAbR
	c9yLmzbl7kHz071aKIZliqP4nd7J4pAX+EodyTayUCdPymj0ytHTTCQrGSwiZMMBAkKNaRZIh/Qz2
	Lzi6IZa6+oc6xLndb4TbFfosVaCPHnFDqw5ea7dmUfJ9X3U42ooATiDmikDpOBUenUvp9hPVc20MO
	9f0Qklok4deTXGYLVFiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2e2P-0003NJ-FF; Fri, 14 Feb 2020 16:41:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2db7-0005gI-IM
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:14:09 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC59D246DE;
 Fri, 14 Feb 2020 16:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696824;
 bh=eIfNHxaTaF6oemS/jKYLYEWreka0CQ5m1S3ahstw9uc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZKCye3p00wPGQdEK1Xhi630FoIEkqVTfO2xFwbNOUj1eLPANN6wflFFfCH8HxSSaD
 8LSTDxmW1gZV1ixW9UIW4PCyL56fq2w+jNG3M9swF990EcjdAYZiFVqDTh6skYJZmw
 5fR6Z4NnA3q8gGSDNiEMGq5bd0Y7Xo/d5FBpVAz4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 091/252] PCI: iproc: Apply quirk_paxc_bridge()
 for module as well as built-in
Date: Fri, 14 Feb 2020 11:09:06 -0500
Message-Id: <20200214161147.15842-91-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_081345_731772_2BC739E6 
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
index 9d5cbc75d5ae0..ec86414216f97 100644
--- a/drivers/pci/controller/pcie-iproc.c
+++ b/drivers/pci/controller/pcie-iproc.c
@@ -1526,6 +1526,30 @@ DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_BROADCOM, 0xd802,
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
index 5b4c36ab15962..84f10cda539ea 100644
--- a/drivers/pci/quirks.c
+++ b/drivers/pci/quirks.c
@@ -2358,32 +2358,6 @@ DECLARE_PCI_FIXUP_ENABLE(PCI_VENDOR_ID_BROADCOM,
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
