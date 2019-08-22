Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2AD99243
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 13:36:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cFn/i0Dmp2E+p/Qsednkm3siksYvFS5EBn7yNp+Km8U=; b=giY9pdFxFMgo5bAGTMjkz/rLtS
	aMJGTq9pUBDEM3+UJtektzFoM8FUHSpBdkZo478KSi3oUMa1FOk3vnvpK864u+JzjRyfuGk/wHypS
	rboiji58k00PmJxzFFJDneCd8RUv9UT1/fz5eR+fMsQjAFsPyP6T9wWqqXuk/nRwaxFy2EHV9o9uF
	Zq4mv7SZ2tJKNA1sqt97eFmHV0uP/O2ikglzOscbje+iPEF/MWY69hQXPJ1oshXQvNjMzhoBcuJbv
	3yZtPElWuV60bO+RZX0u6+5CUOA4rK+Dcsq00gKasI9rE8eBDfStb+G8Bxa7AKsJNuBh/xhV/yi+M
	jFy639Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lO9-0001Sv-8g; Thu, 22 Aug 2019 11:36:21 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0lL8-0006kt-3s
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 11:33:18 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DE4A41A02DE;
 Thu, 22 Aug 2019 13:33:12 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0D87C1A00A2;
 Thu, 22 Aug 2019 13:33:03 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1EC0640326;
 Thu, 22 Aug 2019 19:32:47 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, leoyang.li@nxp.com, kishon@ti.com,
 lorenzo.pieralisi@arm.co, arnd@arndb.de, gregkh@linuxfoundation.org,
 minghuan.Lian@nxp.com, mingkai.hu@nxp.com, roy.zang@nxp.com,
 jingoohan1@gmail.com, gustavo.pimentel@synopsys.com,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, andrew.murray@arm.com
Subject: [PATCH v2 10/10] misc: pci_endpoint_test: Add LS1088a in
 pci_device_id table
Date: Thu, 22 Aug 2019 19:22:42 +0800
Message-Id: <20190822112242.16309-10-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190822112242.16309-1-xiaowei.bao@nxp.com>
References: <20190822112242.16309-1-xiaowei.bao@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_043314_578136_C77F9701 
X-CRM114-Status: UNSURE (   6.57  )
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

Add LS1088a in pci_device_id table so that pci-epf-test can be used
for testing PCIe EP in LS1088a.

Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
---
v2:
 - No change.

 drivers/misc/pci_endpoint_test.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
index 6e208a0..d531951 100644
--- a/drivers/misc/pci_endpoint_test.c
+++ b/drivers/misc/pci_endpoint_test.c
@@ -793,6 +793,7 @@ static const struct pci_device_id pci_endpoint_test_tbl[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_DRA74x) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_DRA72x) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_FREESCALE, 0x81c0) },
+	{ PCI_DEVICE(PCI_VENDOR_ID_FREESCALE, 0x80c0) },
 	{ PCI_DEVICE_DATA(SYNOPSYS, EDDA, NULL) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_AM654),
 	  .driver_data = (kernel_ulong_t)&am654_data
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
