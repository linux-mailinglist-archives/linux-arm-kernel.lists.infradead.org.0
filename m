Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7228E762
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 10:49:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=197rttl/sGyweQ7Ppplr4s0d+vax8ZBQl7uZ2drPBPY=; b=ejGpsB9xrVSweNudzpL8T69Rva
	/yQexfR4+9QsDtLg7UhB09bc8CiN3IU4NyguO+lyP8IoEWkD84zRZJm+TXsa2UQ/ZnbJb4xCNfm0e
	Ekfk4d5J86JFKWnFeH2T1IX5J/vSPunAJRt6vuO1HO0iuy5YTaXArl6oMay5Of+km78wB1g9sztId
	vzXovIspyNaHERfWmp1JkcNDmM0YkzVO9pn1xNFQAisFWmCOyppsFAVPXklYsAR+0MKMungyz0nya
	FSp47m+hyloWjB6YV/JWKNaKXfDnfN3jfbqBOX93ynQMt7Kh+YRrj6ML6IgYW40+rosagcHmBlQWg
	fdzYpjsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyBS7-00085c-P9; Thu, 15 Aug 2019 08:49:47 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyBQJ-0006bg-At
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 08:47:56 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2463B1A046A;
 Thu, 15 Aug 2019 10:47:54 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 71AA51A046E;
 Thu, 15 Aug 2019 10:47:45 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9F07440305;
 Thu, 15 Aug 2019 16:47:34 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: jingoohan1@gmail.com, gustavo.pimentel@synopsys.com, bhelgaas@google.com,
 robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 leoyang.li@nxp.com, kishon@ti.com, lorenzo.pieralisi@arm.com,
 arnd@arndb.de, gregkh@linuxfoundation.org, minghuan.Lian@nxp.com,
 mingkai.hu@nxp.com, roy.zang@nxp.com, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org
Subject: [PATCH 07/10] PCI: layerscape: Fix some format issue of the code
Date: Thu, 15 Aug 2019 16:37:13 +0800
Message-Id: <20190815083716.4715-7-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190815083716.4715-1-xiaowei.bao@nxp.com>
References: <20190815083716.4715-1-xiaowei.bao@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_014755_555405_7F204B94 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Fix some format issue of the code in EP driver.

Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
---
 drivers/pci/controller/dwc/pci-layerscape-ep.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-layerscape-ep.c b/drivers/pci/controller/dwc/pci-layerscape-ep.c
index a0cd5ff..2ada445 100644
--- a/drivers/pci/controller/dwc/pci-layerscape-ep.c
+++ b/drivers/pci/controller/dwc/pci-layerscape-ep.c
@@ -64,7 +64,7 @@ static void ls_pcie_ep_init(struct dw_pcie_ep *ep)
 }
 
 static int ls_pcie_ep_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
-				  enum pci_epc_irq_type type, u16 interrupt_num)
+				enum pci_epc_irq_type type, u16 interrupt_num)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 
@@ -89,7 +89,7 @@ static const struct dw_pcie_ep_ops pcie_ep_ops = {
 };
 
 static int __init ls_add_pcie_ep(struct ls_pcie_ep *pcie,
-					struct platform_device *pdev)
+				 struct platform_device *pdev)
 {
 	struct dw_pcie *pci = pcie->pci;
 	struct device *dev = pci->dev;
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
