Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687ABA4DB6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 05:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6Qeb7ZQEjFshfBsZyjz8Ut/G2lA8XaNxnPJ3TFbvWiU=; b=bxRvqLk7G86CAjqx0E2BSxQhbN
	eYvj/So9bNIXYx8RutXC7sompHIXJBkgarB6UpjINtforJU5uBbUgBJllPqq6FpWgzyOYDfxniwN/
	eaAqDBKmazrWk7UmT8l+7mfXAsjfbzXA6J6TtPt+wi40IR3b6aVzfYu8eXt85+80qKmVoqUlLBO65
	xN99H2MN+bM38jJSP9yPbjP3VZ5OtHACQUeEEFgLCI8hcEgI7KtAHFZasuqzZwfwlRmBatzXVIQGK
	OYftqzhX/1aN8n2+5csBqYHokxXqVq9FM5wIMyo6w8nm+fjqYhohH4Gvvdx9KTIXxtNSFJbGKfaAh
	FMrL3kvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4d31-0007Qt-K6; Mon, 02 Sep 2019 03:30:31 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4d0R-000496-RJ
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 03:27:53 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A30A1200668;
 Mon,  2 Sep 2019 05:27:50 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 20B0B200658;
 Mon,  2 Sep 2019 05:27:42 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 473874031F;
 Mon,  2 Sep 2019 11:27:31 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 leoyang.li@nxp.com, kishon@ti.com, lorenzo.pieralisi@arm.com,
 minghuan.Lian@nxp.com, mingkai.hu@nxp.com, roy.zang@nxp.com,
 jingoohan1@gmail.com, gustavo.pimentel@synopsys.com,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org
Subject: [PATCH v3 08/11] PCI: layerscape: Modify the MSIX to the doorbell mode
Date: Mon,  2 Sep 2019 11:17:13 +0800
Message-Id: <20190902031716.43195-9-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190902031716.43195-1-xiaowei.bao@nxp.com>
References: <20190902031716.43195-1-xiaowei.bao@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_202752_187686_87D30AB6 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: gregkh@linuxfoundation.org, zhiqiang.hou@nxp.com,
 Xiaowei Bao <xiaowei.bao@nxp.com>, arnd@arndb.de
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
---
v2: 
 - No change
v3:
 - Modify the commit message make it clearly.

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
