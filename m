Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C43DF810B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 06:15:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NFrVyLJmMVdc+h3pq+dvQGQetFuQ9A5pVfs8+GS/qSs=; b=ccK5+xcxLQ+2eYURD3gdMZyo3C
	mwy/28f5pSqCDGFZHfzZaWzEuugbsSGLetEm25BaG69CWKxIpW0IIBp3awk/yF3OSNS72ZzUbGK5A
	mQHT7EXHgKEJ7rcxtEesnjTMYkGJx70wuAYoaDsEdCNxpswB4eqiCWidiBkkybdDhdEPhBVHQFqxG
	hJ2aW/WWEbSmGe6sdaUe4cGxELlnQ4fi1Do3dDv1I2/QejIn4QLUeR3ESTpw3JYTWBNz3z9UVpHOG
	GIhtL8xI8dRFI591rhm50C8jqMMu/XCDBuJnQRPfi2Jb39CJtUCdmftUOuCYqxZcPwYqaGAoZWzzm
	wEG7uyEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huUOz-0001Ng-4V; Mon, 05 Aug 2019 04:15:17 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huUOZ-0001A9-15
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 04:14:52 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CBC3F1A0084;
 Mon,  5 Aug 2019 06:14:49 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B71521A00A9;
 Mon,  5 Aug 2019 06:14:38 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 923CE402DD;
 Mon,  5 Aug 2019 12:14:25 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, leoyang.li@nxp.com, kishon@ti.com,
 lorenzo.pieralisi@arm.com, arnd@arndb.de, gregkh@linuxfoundation.org,
 minghuan.Lian@nxp.com, mingkai.hu@nxp.com, zhiqiang.hou@nxp.com,
 roy.zang@nxp.com, kstewart@linuxfoundation.org, pombredanne@nexb.com,
 shawn.lin@rock-chips.com, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org
Subject: [PATCHv2 3/3] PCI: layerscape: Add LS1028a support
Date: Mon,  5 Aug 2019 12:04:53 +0800
Message-Id: <20190805040453.48009-3-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190805040453.48009-1-xiaowei.bao@nxp.com>
References: <20190805040453.48009-1-xiaowei.bao@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_211451_206256_F18E294D 
X-CRM114-Status: UNSURE (   6.42  )
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

Add support for the LS1028a PCIe controller.

Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
---
v2:
 - no change.

 drivers/pci/controller/dwc/pci-layerscape.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/pci/controller/dwc/pci-layerscape.c b/drivers/pci/controller/dwc/pci-layerscape.c
index 3a5fa26..8c556e1 100644
--- a/drivers/pci/controller/dwc/pci-layerscape.c
+++ b/drivers/pci/controller/dwc/pci-layerscape.c
@@ -236,6 +236,14 @@ static const struct ls_pcie_drvdata ls1043_drvdata = {
 	.dw_pcie_ops = &dw_ls_pcie_ops,
 };
 
+static const struct ls_pcie_drvdata ls1028a_drvdata = {
+	.lut_offset = 0x80000,
+	.ltssm_shift = 0,
+	.lut_dbg = 0x407fc,
+	.ops = &ls_pcie_host_ops,
+	.dw_pcie_ops = &dw_ls_pcie_ops,
+};
+
 static const struct ls_pcie_drvdata ls1046_drvdata = {
 	.lut_offset = 0x80000,
 	.ltssm_shift = 24,
@@ -263,6 +271,7 @@ static const struct ls_pcie_drvdata ls2088_drvdata = {
 static const struct of_device_id ls_pcie_of_match[] = {
 	{ .compatible = "fsl,ls1012a-pcie", .data = &ls1046_drvdata },
 	{ .compatible = "fsl,ls1021a-pcie", .data = &ls1021_drvdata },
+	{ .compatible = "fsl,ls1028a-pcie", .data = &ls1028a_drvdata },
 	{ .compatible = "fsl,ls1043a-pcie", .data = &ls1043_drvdata },
 	{ .compatible = "fsl,ls1046a-pcie", .data = &ls1046_drvdata },
 	{ .compatible = "fsl,ls2080a-pcie", .data = &ls2080_drvdata },
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
