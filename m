Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A961A087C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 19:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2LDhVG7Hw86JlqnyuvPTAzQQjCbkaepX7JkjJ6G+7Sk=; b=AMMZmxHNecKkqO
	Rc/LGQ2N4JgmweedyhKVtwen5Ytc6727UlxTZ57e7ARFn6Um49pvU+na+d69T5YphVAfCDMBRPJ+q
	eaeVHgDKFEKGq7HXpCZT9ZdhaQETDICbxgQQJQjrYoEiwGSg6lXF12oPUAUJfisavFqoATL2M5YzH
	vb7H7hGz1MR9o7+cVh+BaPx8ZFUcxCq3BMizuEZUXt0CUyh6CPBVJA49Kec0rRVOzB+N2E3K9WpJ1
	sE0t47pFQDls1zQ+3FCYb2ZvUjQOf994v0eqfk2AIuYA9EcrCyvJfjTXaiAO5HlVm5fRS4auDpmSj
	4wc8D1iYTPaGWfW/dUgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i31lq-0005Fk-IE; Wed, 28 Aug 2019 17:30:11 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i31kz-0004mC-UM
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 17:29:19 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d66b9ed0000>; Wed, 28 Aug 2019 10:29:17 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Wed, 28 Aug 2019 10:29:17 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Wed, 28 Aug 2019 10:29:17 -0700
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 28 Aug
 2019 17:29:17 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Wed, 28 Aug 2019 17:29:16 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d66b9e80001>; Wed, 28 Aug 2019 10:29:16 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH V3 3/6] PCI: tegra: Add support to configure sideband pins
Date: Wed, 28 Aug 2019 22:58:47 +0530
Message-ID: <20190828172850.19871-4-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828172850.19871-1-vidyas@nvidia.com>
References: <20190828172850.19871-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567013357; bh=pP3FC6DZxMiOab+sYRmEOZSCLGGOw9w1tNXbOyCzOG8=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=D2SKiixIzpvRcdDH9FBmNEtA7SzzKcQeUufCEjdydd1oyAYx/yvKALppa4JE54spg
 9vaD4dfSzMB3jyJX6AhJ0slYSGO4HJgbKDqACp6DG64pf5u7u8TWdZmIN3FPLya/KI
 kTGNcw0CO/gQExSdclFD9wNZaO3BYxAI84+IdMGGEgOPwVHPlJdiYbKt66eai+J7vx
 svKaIgxL+f0QBqgdPfXiBvS/rSmuyGg+SAQN7jF1vic8auMsOXZ2rieYxBCsuH69jW
 5BnrxHsAz6kHbBgK0IxtW+HbcNRl0p5+zrRqcmNk4mt9VVgxD70XS9Coo4DPeXetNP
 r2HkiLDmZVZSg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_102918_058756_E5E4D139 
X-CRM114-Status: GOOD (  10.27  )
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
V3:
* Used 'dev' instead of 'pcie->dev'

V2:
* Addressed review comment from Andrew Murray
* Handled failure case of pinctrl_pm_select_default_state() cleanly

 drivers/pci/controller/dwc/pcie-tegra194.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index fc0dbeb31d78..77fa6f70bc96 100644
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
+	ret = pinctrl_pm_select_default_state(dev);
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
