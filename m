Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A26A60818
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XmMv5bfVmfzG6S7lCYr1s+13NQnXZYEav2C9hT5m38w=; b=DAS8HthmkkryeyQnoutsRnD+rb
	X7Azkod3SrJUq3YfUKUpeZAuEPPy7Ze0c/thgu3juE1Q/QIqpR0GUlWisiZKoEOl+tSzpfpONvnIp
	1zWSrwYtVCl+ZXIvfbgXw5OMv1Qg6infWOXpT5vmjJ5y6+09tGRMQ3TIffHy94UfNqsHcqbko8na9
	+LM1lfGe/YAXPF7S8Rnc92FgBwdGysNsVn25OULbvnu/ulh6gxRCP6mAKAMsNRLTysMsbsRIboZBn
	XE4tcSJdGfewrdh2lvqdmEqd2PT/h2FnMp4apfXRyD0gobnHWAdM8IHMSEXp+eOjiEVYhIfcruFYk
	2qYxCHRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPP9-0004VW-MB; Fri, 05 Jul 2019 14:41:39 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPKQ-0006Sf-H5
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:36:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Rje/IlXzJFRmaETcjeji6nF2pxF6nciwL2mIlD/m4JM=; b=UhZPUYsIG5MN+IZ4pc6BicB5j
 VGCzo3fnOLgXSjSoEQjze/cPtC9AbWnyOj4yaHYhuHeKcHfpebcU3SKVU3C967mb9ypYWztcyrz6D
 hZWmzzn3yHkT+ocLb6bxdMsIJIPlifnDYgKTyZYCBfbFc7WKO8TpbdFCDzLGNS+hVpIOCRSlPkGtS
 SrpXQ5PrKWXe5RACDOyRms3bw94r7Zxf1N6l3j/fSsOfeX5Uo80R444bc+fbfRr18KGjRwxas1QaZ
 omR11uQjsbWEFTuNYx+W35aSZscybvGeLttxPx1zDWsfysSrQ+8NWsEpA0GZxLtN/E8R+QuNuDaSH
 TIXf4zJ+w==;
Received: from inva020.nxp.com ([92.121.34.13])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL7o-000221-Jc
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:07:30 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B11401A077B;
 Fri,  5 Jul 2019 12:07:20 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 33A1E1A0EB1;
 Fri,  5 Jul 2019 12:07:12 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 546C240305;
 Fri,  5 Jul 2019 18:06:58 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 09/28] PCI: mobiveil: Move IRQ chained handler setup out of
 DT parse
Date: Fri,  5 Jul 2019 17:56:37 +0800
Message-Id: <20190705095656.19191-10-Zhiqiang.Hou@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
References: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_110728_671528_211734B0 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
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
Cc: Minghuan.Lian@nxp.com, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Xiaowei.Bao@nxp.com, Mingkai.Hu@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The irq_set_chained_handler_and_data() call is not dependent on device
tree firmware so it should be moved out of the DT parsing function for
clarity.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
[lorenzo.pieralisi@arm.com: rewritten commit log]
Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V6:
 - Rebased the patch, no functional change.

 drivers/pci/controller/pcie-mobiveil.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index 8f92f05..cdf15cc 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -446,8 +446,6 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
 		return -ENODEV;
 	}
 
-	irq_set_chained_handler_and_data(pcie->irq, mobiveil_pcie_isr, pcie);
-
 	return 0;
 }
 
@@ -872,6 +870,8 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 		goto error;
 	}
 
+	irq_set_chained_handler_and_data(pcie->irq, mobiveil_pcie_isr, pcie);
+
 	ret = devm_request_pci_bus_resources(dev, &pcie->resources);
 	if (ret)
 		goto error;
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
