Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1D5D7189
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 10:49:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T80gm734g/Qw+QHIRgr183+JQOEioy1LYwa0NnMzPoY=; b=RGuXbYaUTIrjrNPRFEm5P1KYs2
	eAmFjflGudt2rx2AdheEWqEHYNMmXpoSekS5DuOcOAsTOIZr6KbsActDHU08JaLYsWbFxTX9K622T
	kmPPYp0bcC784zs6MzVwWQnAsiSxhUAq+PbAhGxPAObnVv6YHVeNfDKKNGQidBlggB+D7urIzE5fr
	f0QHT6CvphZDWozsNbudV0nDkMxxbD7pOuLLcOKOlsnKzmiM2V+cFQGNx6PwWDeEcV80LlSsV382k
	I/x8+jR9Sq1F6+SocvMjHw1YGeuJZqMirKOnu2lKUjMPhPQSY4az9ev2EmLmqcR8hosW7f+9XNx1u
	jvrtfvIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKIWJ-0004aC-8G; Tue, 15 Oct 2019 08:49:31 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKIV2-0003az-Be
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 08:48:13 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E791820045E;
 Tue, 15 Oct 2019 10:48:10 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 171A1200449;
 Tue, 15 Oct 2019 10:48:04 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7436C4030B;
 Tue, 15 Oct 2019 16:47:55 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Zhiqiang.Hou@nxp.com, bhelgaas@google.com, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, leoyang.li@nxp.com,
 kishon@ti.com, lorenzo.pieralisi@arm.com, Minghuan.Lian@nxp.com,
 andrew.murray@arm.com, mingkai.hu@nxp.com, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/6] PCI: mobiveil: Add workaround for unsupported request
 error
Date: Tue, 15 Oct 2019 16:37:00 +0800
Message-Id: <20191015083702.21792-5-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20191015083702.21792-1-xiaowei.bao@nxp.com>
References: <20191015083702.21792-1-xiaowei.bao@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_014812_556573_CAEB3C0B 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Xiaowei Bao <xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Errata: unsupported request error on inbound posted write
transaction, PCIe controller reports advisory error instead
of uncorrectable error message to RC.

Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
---
v3: 
 - Use BIT replce the expression.

 drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c | 13 +++++++++++++
 drivers/pci/controller/mobiveil/pcie-mobiveil.h           |  4 ++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c b/drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c
index 56603ea..82bb38d 100644
--- a/drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c
+++ b/drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c
@@ -49,6 +49,19 @@ static void ls_pcie_g4_ep_init(struct mobiveil_pcie_ep *ep)
 	struct mobiveil_pcie *mv_pci = to_mobiveil_pcie_from_ep(ep);
 	int win_idx;
 	u8 bar;
+	u32 val;
+
+	/*
+	 * Errata: unsupported request error on inbound posted write
+	 * transaction, PCIe controller reports advisory error instead
+	 * of uncorrectable error message to RC.
+	 * workaround: set the bit20(unsupported_request_Error_severity) with
+	 * value 1 in uncorrectable_Error_Severity_Register, make the
+	 * unsupported request error generate the fatal error.
+	 */
+	val =  csr_readl(mv_pci, CFG_UNCORRECTABLE_ERROR_SEVERITY);
+	val |= BIT(UNSUPPORTED_REQUEST_ERROR_SHIFT);
+	csr_writel(mv_pci, val, CFG_UNCORRECTABLE_ERROR_SEVERITY);
 
 	ep->bar_num = PCIE_LX2_BAR_NUM;
 
diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.h b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
index 7308fa4..a40707e 100644
--- a/drivers/pci/controller/mobiveil/pcie-mobiveil.h
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
@@ -123,6 +123,10 @@
 #define GPEX_BAR_SIZE_UDW		0x4DC
 #define GPEX_BAR_SELECT			0x4E0
 
+#define CFG_UNCORRECTABLE_ERROR_SEVERITY	0x10c
+#define UNSUPPORTED_REQUEST_ERROR_SHIFT		20
+#define CFG_UNCORRECTABLE_ERROR_MASK		0x108
+
 /* starting offset of INTX bits in status register */
 #define PAB_INTX_START			5
 
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
