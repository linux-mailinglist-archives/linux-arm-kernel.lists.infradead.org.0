Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 378CD60987
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:45:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vEztbhnyJwpgASf61ph0serNqLiCeM1c4xNcpOYcc4g=; b=uGfChEt4xa5LnaVOofJ3pLX23f
	h7YXntXbE75x58wx7+y4xCJuwJ6edMj7gh+tWXgQ/+NsCohCm5UesT/Byuhi9P131+1NxF/tfMcYp
	HGM4GGAdKbJxDq/8RhMQrMceckj21cY58Ip5GHAmdih0S7dK4Ew9oVF6iA27O8zwTo1hoBQtQ+nIj
	OGSjNnSz18CCwmyGf0yNhzhtv19NkOIqw3g3abHewKosfRz9t3pYWovR9S6F1WpCNno/Cs4SkFUxT
	z6iw+KKKdmHYOTGqPUc6pX9uKrsBaVWXOgJ+fQC54DA3xWp3zeTu8XOAREKLchEhPx5QGrdOqMFGh
	aFdJGNWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQOR-0006Qb-Ib; Fri, 05 Jul 2019 15:44:59 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQNA-0005JT-Cu
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:43:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iVCDtlwyL1YFzJHfrd2nzV2if98bnpUEYiaNp1RYU48=; b=sS/BUG+tl/Y+Orwfeu/AGa4mz
 LdU3WHIbFnLdYlIwvy6o+RuwgspBSRXJVB+JQu1DuczI5uPMfYCtKi2vAREjZLu2wMi+ARzgpZV5V
 eo4UaW3DOsuvc8A/ppwE11M/vmfB31Z7aDLOmgnxrJzRQ5Iq78hV7W4rcV+3pjBcLcGoesbvWqIct
 Jz4PKMhZoL32U8jnXvB6d/sqHuv+4fjnxbCz/Bh5R2fXdMaqu5rgwdZzjm0zw+Sfkfj4M1aNOI9Vj
 wxRYmXG/VV2n0brVTfc0uy1AbAulUk4rQqSUWcapuC/xN9QSZ9p0zRq2Yi7CqESGdKRfVuTxc/Vvk
 w3n/xgkig==;
Received: from inva020.nxp.com ([92.121.34.13])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL7h-0000zc-OU
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:07:23 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3D2511A0EAC;
 Fri,  5 Jul 2019 12:07:17 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B194B1A077B;
 Fri,  5 Jul 2019 12:07:08 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BE66E40327;
 Fri,  5 Jul 2019 18:06:56 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 08/28] PCI: mobiveil: Move the link up waiting out of
 mobiveil_host_init()
Date: Fri,  5 Jul 2019 17:56:36 +0800
Message-Id: <20190705095656.19191-9-Zhiqiang.Hou@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
References: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Minghuan.Lian@nxp.com, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Xiaowei.Bao@nxp.com, Mingkai.Hu@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The host initializing sequence does not depend on PCIe link up,
so move it to the plac just before the enumeration.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V6:
 - Rebased the patch, no functional change.

 drivers/pci/controller/pcie-mobiveil.c |   15 +++++++--------
 1 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index 9e08061..8f92f05 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -561,15 +561,8 @@ static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
 static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 {
 	u32 value, pab_ctrl, type = 0;
-	int err;
 	struct resource_entry *win;
 
-	err = mobiveil_bringup_link(pcie);
-	if (err) {
-		dev_info(&pcie->pdev->dev, "link bring-up failed\n");
-		return err;
-	}
-
 	/*
 	 * program Bus Master Enable Bit in Command Register in PAB Config
 	 * Space
@@ -635,7 +628,7 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	/* setup MSI hardware registers */
 	mobiveil_pcie_enable_msi(pcie);
 
-	return err;
+	return 0;
 }
 
 static void mobiveil_mask_intx_irq(struct irq_data *data)
@@ -892,6 +885,12 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 	bridge->map_irq = of_irq_parse_and_map_pci;
 	bridge->swizzle_irq = pci_common_swizzle;
 
+	ret = mobiveil_bringup_link(pcie);
+	if (ret) {
+		dev_info(dev, "link bring-up failed\n");
+		goto error;
+	}
+
 	/* setup the kernel resources for the newly added PCIe root bus */
 	ret = pci_scan_root_bus_bridge(bridge);
 	if (ret)
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
