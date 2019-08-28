Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 266C5A02F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 15:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvSQS1ePjlblhJiUWRfd56eneP3bn9IwPDJ3vqA6UNU=; b=PDcD9577n2E4t8
	IoSJt63EnzWsG+0Ob3XoXkenLc9LiCFL8eL12f0T4wmzVxmYP4trDfEXCi/JzlMlBp0Xrq5IbiEZA
	lYA/B3XBc/WosNx+sG1QSrJDKKo03wvcBXLoUhO+WQt0JI8VJcbVx7ifgWPHz1nn9lPeuPWHLJB7j
	9WBOYDG6PD/SeyIpzoNnEDT3LTBt765vy5yki0YCmJXvWhwGQQohf3eaOWhbi0JCinOTz4b8Kl/HX
	xIcVd1ofK0lwCMXEHJqYxBeyRglVuoXz0qaAOSTC7/2tVfA1k/s2U/MzjnocA8mqGhzp3djxsfR2X
	6jS6kLaIPPBIVvflDy8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xoF-0003Nn-I1; Wed, 28 Aug 2019 13:16:23 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xnZ-0002y7-7V
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 13:15:44 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d667e7c0001>; Wed, 28 Aug 2019 06:15:40 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Wed, 28 Aug 2019 06:15:40 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Wed, 28 Aug 2019 06:15:40 -0700
Received: from HQMAIL101.nvidia.com (172.20.187.10) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 28 Aug
 2019 13:15:39 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Wed, 28 Aug 2019 13:15:39 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d667e770002>; Wed, 28 Aug 2019 06:15:39 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH V2 3/6] PCI: tegra: Add support to configure sideband pins
Date: Wed, 28 Aug 2019 18:45:02 +0530
Message-ID: <20190828131505.28475-4-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828131505.28475-1-vidyas@nvidia.com>
References: <20190828131505.28475-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1566998140; bh=sqZxuTo6wQZPVbRv2gWjrrG8x7BYtnQNodewva3kbkY=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=VLHvjUhveJbMuCjKHCJDaDQ3Bl8kw8UPLtF9Ft4p1+aDuiXiaNu60di5FoCLlT24z
 UVmdWsYCd0bHMFKrrh5lhHK2FgXELzuSHGishbHqIE/SFZIPuNm120+fZQKCnQmfwC
 DSd3ZqkFF+4g1MAHGxktkKT/ogPp3UHxc6wCEgMNvjoxyKxlpgaECLLD9elPKwNMZo
 NtTLeBZo76gIv2016rk1z9Avf10j0O+L8Q4GLmJhIUAnqb4IX560kPvSmAaTOVuewT
 rwnRFKe0n1AtSDlRTNN8vhr/ee/BZxwWRqHSU/yMVmokESMcnJeuzxvFiOWAB6MUGD
 7zupSklbWdCng==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_061541_451535_3AFF9F49 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, vidyas@nvidia.com, linux-kernel@vger.kernel.org,
 mperttunen@nvidia.com, linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org,
 digetx@gmail.com, kishon@ti.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support to configure sideband signal pins when information is present
in respective controller's device-tree node.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
V2:
* Addressed review comment from Andrew Murray
* Handled failure case of pinctrl_pm_select_default_state() cleanly

 drivers/pci/controller/dwc/pcie-tegra194.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index fc0dbeb31d78..057ba4f9fbcd 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -1304,8 +1304,13 @@ static int tegra_pcie_config_rp(struct tegra_pcie_dw *pcie)
 	if (ret < 0) {
 		dev_err(dev, "Failed to get runtime sync for PCIe dev: %d\n",
 			ret);
-		pm_runtime_disable(dev);
-		return ret;
+		goto fail_pm_get_sync;
+	}
+
+	ret = pinctrl_pm_select_default_state(pcie->dev);
+	if (ret < 0) {
+		dev_err(dev, "Failed to configure sideband pins: %d\n", ret);
+		goto fail_pinctrl;
 	}
 
 	tegra_pcie_init_controller(pcie);
@@ -1332,7 +1337,9 @@ static int tegra_pcie_config_rp(struct tegra_pcie_dw *pcie)
 
 fail_host_init:
 	tegra_pcie_deinit_controller(pcie);
+fail_pinctrl:
 	pm_runtime_put_sync(dev);
+fail_pm_get_sync:
 	pm_runtime_disable(dev);
 	return ret;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
