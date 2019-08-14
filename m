Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EFB8C63A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 04:14:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kuONq6VQhFxYpVFmIAiPU3ws8FM5s+EgRNkfuh3ECMQ=; b=gIS
	gG27qJ+YcTOUfDj8z8YZLs2MOWhpC2XlFE9XLyVfRMouspgNSVHSZjc66DWC/to92Z5qOiPGv5BwB
	3YWCrT7CFSnoCfLrDq//ERxM/uasTj/EkUB2UtvQpuD6NPc1m4mMXXgAR3LUwT6mCu6EplPsPvg+A
	YLtLD5AfiElYyY8Xq1Aw5y5GDELZvjdPnJ9RRUJxnIgfPMKSoxniSuL2Xz33wvThX5Oc3OM9xoCoq
	VK6MxONR9PburHhXtpOWXEB2pl1uiLmULGlGKkgyw72M76fQcyrT7NlI126M+c0Y2SIkJf2rgHtcW
	8PuXac7PwiZrCm3oTqWxxFbAcVwFENQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxinY-0007cK-5z; Wed, 14 Aug 2019 02:14:00 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hximz-0006r4-9Q
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 02:13:26 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7CEAF1A0256;
 Wed, 14 Aug 2019 04:13:18 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CD5741A0269;
 Wed, 14 Aug 2019 04:13:13 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2C4AB402EC;
 Wed, 14 Aug 2019 10:13:08 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: minghuan.Lian@nxp.com, mingkai.hu@nxp.com, roy.zang@nxp.com,
 lorenzo.pieralisi@arm.com, bhelgaas@google.com,
 linuxppc-dev@lists.ozlabs.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCHv6 1/2] PCI: layerscape: Add the bar_fixed_64bit property in EP
 driver.
Date: Wed, 14 Aug 2019 10:03:29 +0800
Message-Id: <20190814020330.12133-1-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_191325_521053_C35BDBF5 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Xiaowei Bao <xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PCIe controller of layerscape just have 4 BARs, BAR0 and BAR1
is 32bit, BAR2 and BAR4 is 64bit, this is determined by hardware,
so set the bar_fixed_64bit with 0x14.

Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
---
v2:
 - Replace value 0x14 with a macro.
v3:
 - No change.
v4:
 - send the patch again with '--to'.
v5:
 - fix the commit message.
v6:
 - remove the [EXT] tag of the $SUBJECT in email.

 drivers/pci/controller/dwc/pci-layerscape-ep.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pci-layerscape-ep.c b/drivers/pci/controller/dwc/pci-layerscape-ep.c
index be61d96..ca9aa45 100644
--- a/drivers/pci/controller/dwc/pci-layerscape-ep.c
+++ b/drivers/pci/controller/dwc/pci-layerscape-ep.c
@@ -44,6 +44,7 @@ static const struct pci_epc_features ls_pcie_epc_features = {
 	.linkup_notifier = false,
 	.msi_capable = true,
 	.msix_capable = false,
+	.bar_fixed_64bit = (1 << BAR_2) | (1 << BAR_4),
 };
 
 static const struct pci_epc_features*
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
