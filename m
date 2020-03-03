Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE1E177E48
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 19:11:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VlHFQe33pJwHQhCiOnYG1+A5GcfsTDRnIBa/Ji9irQo=; b=KzY8g+HFKDSN48
	JRO4962slJkxIUVYaOWZ1RAzzJ7C94r3/mdhGV8AokvXAgwDa3AOaaJNL6rYR3FoQDDcfvMtPtf0Z
	/ZtmGm2jn6OYSCnyaNW3vtVefXMx3mJT0KNpLvGbiolcaxHrclLtMpugkK3dKTCzhQpkJm4/kjAoS
	euBiZYni+xK0uv+3X8BmU0v6wzqOm8OzF+Vo/oDA1C3ikwNijiWwEi87CF/HRgQyuFoilWOV5qw0m
	kK1gzqDsiu+zo8PWxeCuStBKLcWm/nyqAbxlc/uFG70cGhgL04AwHqRyxqmb+W5YXMgacTItodFYm
	fh69el0U4DPPPUz/odeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9C12-0005X6-9F; Tue, 03 Mar 2020 18:11:36 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9C0X-0005HU-Cr
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 18:11:06 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e5e9d650000>; Tue, 03 Mar 2020 10:09:41 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 03 Mar 2020 10:11:05 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 03 Mar 2020 10:11:05 -0800
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 3 Mar
 2020 18:11:04 +0000
Received: from hqnvemgw03.nvidia.com (10.124.88.68) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Tue, 3 Mar 2020 18:11:04 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw03.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5e5e9db40021>; Tue, 03 Mar 2020 10:11:04 -0800
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH V5 1/5] soc/tegra: bpmp: Update ABI header
Date: Tue, 3 Mar 2020 23:40:48 +0530
Message-ID: <20200303181052.16134-2-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200303181052.16134-1-vidyas@nvidia.com>
References: <20200303181052.16134-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1583258981; bh=XUQcmVU2DhS8rtI3qwBuPWvGBmBm8sm2EFYBWL3lXzQ=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=lW0tSYl+OiW/sKB01NwG6K4zxTMZibNXeEQcbE+4eXc32UbmFHxN8tJPuSfQp9FgO
 26JuRSvtpT2g9CJZym6MN4zTs7qbRQWEiRiVulnbbdJQJv2/gDyHqGJIalZNwPCFau
 TO3x/mgqoBFfURMOm2FeNiC0Hs4iMnJ2JC0E2xZTegpMCHS+cPHLznwrYsYNjtfpt0
 Dn9a5tC6gK0KuWTPhNWie63qxfUafEcbLzeqtKnMhqNIJWUFUWMfKmd+VUibx8y75R
 qVBCHJ0ChViG2eWO0m7dRHX2XLfGemWrRhWCyuz9DjqKSRvkrajlr9RYKC6YcTHKR2
 9MyQRKLRO31XQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_101105_440608_1C69618D 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Acked-by: Thierry Reding <treding@nvidia.com>
---
V5:
* None

V4:
* None

V3:
* Added Acked-by: Thierry Reding <treding@nvidia.com>

V2:
* Changed Copyright year from 2019 to 2020

 include/soc/tegra/bpmp-abi.h | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/include/soc/tegra/bpmp-abi.h b/include/soc/tegra/bpmp-abi.h
index cac6f610b3fe..8f8e73e5cd45 100644
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
