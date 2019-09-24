Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34824BC015
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 04:31:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tL6N5xatSSd2flpQoAg9RlZuokHMWBcnrFfRJ/tYX1w=; b=elMM/qQCGuCJ99j/FxySR+royU
	JcEySBNydcH34O559TfYYV9cFB/EIpjYqGz6DgFoWe2Y4nOwexa41tT5FcJTPnRBgxQXPC+Zt5DZF
	Zyk62UppVgvP26PJOElyrZ+W/gg/CgcJamoO0/jPp3UTtpEksefGAMeWYFLfDiXbZjjykIoUZuCsD
	E45inqoMVUeMYGxIrckz5XeCHKHS/mpLq+xl1GuexYVU2PSkO878vJjoCTSKu7vWMq6n+Fmja+YyQ
	3quXLQOOwV0YPrp3MXBMDckgc19BQxARbULPJt3LuaLwzfAp+AsJvNQ93VgKZDM5THxBwemaFC04a
	rS8/zUyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCabr-0005m2-Qy; Tue, 24 Sep 2019 02:31:23 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCaaJ-0002vq-ID
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 02:29:49 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 24CBA200186;
 Tue, 24 Sep 2019 04:29:46 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 54545200386;
 Tue, 24 Sep 2019 04:29:38 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id D001B402B4;
 Tue, 24 Sep 2019 10:29:25 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 leoyang.li@nxp.com, kishon@ti.com, lorenzo.pieralisi@arm.com,
 minghuan.Lian@nxp.com, mingkai.hu@nxp.com, roy.zang@nxp.com,
 jingoohan1@gmail.com, gustavo.pimentel@synopsys.com, andrew.murray@arm.com,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Subject: [PATCH v4 08/11] PCI: layerscape: Modify the MSIX to the doorbell mode
Date: Tue, 24 Sep 2019 10:18:46 +0800
Message-Id: <20190924021849.3185-9-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190924021849.3185-1-xiaowei.bao@nxp.com>
References: <20190924021849.3185-1-xiaowei.bao@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_192947_827587_0567AF01 
X-CRM114-Status: UNSURE (   9.63  )
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

dw_pcie_ep_raise_msix_irq was never called in the exisitng driver
before, because the ls1046a platform don't support the MSIX feature
and msix_capable was always set to false.
Now that add the ls1088a platform with MSIX support, but the existing
dw_pcie_ep_raise_msix_irq doesn't work, so use the doorbell method to
support the MSIX feature.

Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
---
v2: 
 - No change
v3:
 - Modify the commit message make it clearly.
v4: 
 - No change

 drivers/pci/controller/dwc/pci-layerscape-ep.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pci-layerscape-ep.c b/drivers/pci/controller/dwc/pci-layerscape-ep.c
index 1e07287..5f0cb99 100644
--- a/drivers/pci/controller/dwc/pci-layerscape-ep.c
+++ b/drivers/pci/controller/dwc/pci-layerscape-ep.c
@@ -79,7 +79,8 @@ static int ls_pcie_ep_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
 	case PCI_EPC_IRQ_MSI:
 		return dw_pcie_ep_raise_msi_irq(ep, func_no, interrupt_num);
 	case PCI_EPC_IRQ_MSIX:
-		return dw_pcie_ep_raise_msix_irq(ep, func_no, interrupt_num);
+		return dw_pcie_ep_raise_msix_irq_doorbell(ep, func_no,
+							  interrupt_num);
 	default:
 		dev_err(pci->dev, "UNKNOWN IRQ type\n");
 		return -EINVAL;
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
