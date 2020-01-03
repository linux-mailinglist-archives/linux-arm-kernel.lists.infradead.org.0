Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA84412F866
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 13:44:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DAidFa1SRpna2w/QK1sBy7rpbhLHtliDYcQ2KA5QYLI=; b=kp1LD3pComa6IX
	G4TOjHDXNfMz5eDVxmxUXUl/R3xr4ObiNyFUvpYF2i4LaNBUUNQSqcOdTJ0g+bH3hEVuWn6cLFkkQ
	XHu4YV/ihAbCAZCeBcBxRwmfG0Au+w85zwTOnv9BbReTVhz5hrH6AsGUSqnQpaUjK/IRT+kP5kBd/
	o+nQNJv/HYED2/aIiV0eroCIIIC/Ou+hhhFcKiLSl3LUfEC7mLUCwuqvrzBNBBOoxLNCUmjKD+Dz+
	022aRAo8E3b2ifFTzWJ0RiUw2+XXhjTHJdNM2iw1gkVEKsWSUemW4Wni7RkYRCUEA3YdsWMfrXrlg
	Heq/tsWSnu4LtDOL6e+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inMJn-0002wU-OZ; Fri, 03 Jan 2020 12:44:43 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inMJR-0002pc-Gk
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 12:44:22 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e0f36f80000>; Fri, 03 Jan 2020 04:43:36 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Fri, 03 Jan 2020 04:44:20 -0800
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Fri, 03 Jan 2020 04:44:20 -0800
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 3 Jan
 2020 12:44:19 +0000
Received: from hqnvemgw03.nvidia.com (10.124.88.68) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Fri, 3 Jan 2020 12:44:19 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.48]) by
 hqnvemgw03.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5e0f371f0001>; Fri, 03 Jan 2020 04:44:19 -0800
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH V2 1/5] soc/tegra: bpmp: Update ABI header
Date: Fri, 3 Jan 2020 18:14:00 +0530
Message-ID: <20200103124404.20662-2-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200103124404.20662-1-vidyas@nvidia.com>
References: <20200103124404.20662-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1578055416; bh=CQGXHZYbyzfijuWfKoywjCBY7hwzaU1tc1bdNFjJ15g=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=UAQECaNkn3JLvEm3cUlVRmYz0XplAJUhnHJpmtPkUH4pQkNNXjrePkMCNod9FIdaA
 ckWME0pQVt3+XBMvxa0EygYuBtwUcQHFJ037+IlUAog0JEaN+eE0CA4fP3vbGcxHU/
 /3fAWquYabn5rLU4cjtnwiWZe9WGPFxV69IulSViY0tzVnOPlnhwJxzfNYxSVCJHI0
 mJaevwiQnsd+eTy30ppmMagJgLjGpKER9QJVNV51+FKFGfxRVA2xIFdq6wE3Mukpc5
 v8jUT49My1JJdBn63Gdrl/RLSCgOGxo3s/ij0JnRGT8o/TW8n33+cAj7h6fSwqUwGw
 0HQPbzCl2QY4A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_044421_582424_64FF88EF 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org, vidyas@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the firmware header to support uninitialization of UPHY PLL
when the PCIe controller is operating in endpoint mode and host cuts
the PCIe reference clock.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
V2:
* Changed Copyright year from 2019 to 2020

 include/soc/tegra/bpmp-abi.h | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/include/soc/tegra/bpmp-abi.h b/include/soc/tegra/bpmp-abi.h
index cac6f610b3fe..322d06e21918 100644
--- a/include/soc/tegra/bpmp-abi.h
+++ b/include/soc/tegra/bpmp-abi.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * Copyright (c) 2014-2018, NVIDIA CORPORATION.  All rights reserved.
+ * Copyright (c) 2014-2020, NVIDIA CORPORATION.  All rights reserved.
  */
 
 #ifndef _ABI_BPMP_ABI_H_
@@ -2119,6 +2119,7 @@ enum {
 	CMD_UPHY_PCIE_LANE_MARGIN_STATUS = 2,
 	CMD_UPHY_PCIE_EP_CONTROLLER_PLL_INIT = 3,
 	CMD_UPHY_PCIE_CONTROLLER_STATE = 4,
+	CMD_UPHY_PCIE_EP_CONTROLLER_PLL_OFF = 5,
 	CMD_UPHY_MAX,
 };
 
@@ -2151,6 +2152,11 @@ struct cmd_uphy_pcie_controller_state_request {
 	uint8_t enable;
 } __ABI_PACKED;
 
+struct cmd_uphy_ep_controller_pll_off_request {
+	/** @brief EP controller number, valid: 0, 4, 5 */
+	uint8_t ep_controller;
+} __ABI_PACKED;
+
 /**
  * @ingroup UPHY
  * @brief Request with #MRQ_UPHY
@@ -2165,6 +2171,7 @@ struct cmd_uphy_pcie_controller_state_request {
  * |CMD_UPHY_PCIE_LANE_MARGIN_STATUS     |                                        |
  * |CMD_UPHY_PCIE_EP_CONTROLLER_PLL_INIT |cmd_uphy_ep_controller_pll_init_request |
  * |CMD_UPHY_PCIE_CONTROLLER_STATE       |cmd_uphy_pcie_controller_state_request  |
+ * |CMD_UPHY_PCIE_EP_CONTROLLER_PLL_OFF  |cmd_uphy_ep_controller_pll_off_request  |
  *
  */
 
@@ -2178,6 +2185,7 @@ struct mrq_uphy_request {
 		struct cmd_uphy_margin_control_request uphy_set_margin_control;
 		struct cmd_uphy_ep_controller_pll_init_request ep_ctrlr_pll_init;
 		struct cmd_uphy_pcie_controller_state_request controller_state;
+		struct cmd_uphy_ep_controller_pll_off_request ep_ctrlr_pll_off;
 	} __UNION_ANON;
 } __ABI_PACKED;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
