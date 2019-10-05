Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B5DCCB60
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 18:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fVplnVZcnVlufhLbf/VkktXDXZyGeTA+w2d/Mx/gu5w=; b=Icqtxd1QBKuCQU
	aN+Mu1AAfy8DzPZ74FscyS8u7oytlOwI5dKs1UeGC81U6+gMl7cQYwknG6U2anbpH3vmAPWEd77Hi
	00r5JCFNKMm4X/YpqEPM2uw4o6wkTwcakyhWwh+kS58jbGbUMQaAjRJoujr7hFyTrMqKASGPz0y/a
	ZLy78bHiKtBxNO2ai22O8P0IkuIzmJExppICBVt8ev+HPZlIlw8YBKrulD184q7y0djbQWqeliLDY
	F+siqv8C7O7RJJYDXOcAW6N8oVIt1Q/s92aCALyEwiRCUx4iFL15A/A6CAvC6bwmdzeiRTupSX9oE
	tbJ+R/z8yffFzBoVA9GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGn8d-0000bD-G8; Sat, 05 Oct 2019 16:42:35 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGn8S-0000Zm-TJ
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 16:42:27 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d98c7f40000>; Sat, 05 Oct 2019 09:42:29 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Sat, 05 Oct 2019 09:42:20 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Sat, 05 Oct 2019 09:42:20 -0700
Received: from HQMAIL111.nvidia.com (172.20.187.18) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sat, 5 Oct
 2019 16:42:19 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Sat, 5 Oct 2019 16:42:19 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d98c7e70002>; Sat, 05 Oct 2019 09:42:19 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH 1/2] PCI: tegra: Fix CLKREQ dependency programming
Date: Sat, 5 Oct 2019 22:12:11 +0530
Message-ID: <20191005164212.3646-1-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1570293749; bh=JIPpG+lfw01RfxwSRWSqhEV5xH3G9nsKMdV1CumkkqQ=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 X-NVConfidentiality:MIME-Version:Content-Type;
 b=LR5xqBGZG0ci2+QtPybXX6xRdbtLVG+TU6Tg9fpXjMfxlGmHpxsvoN666vRx064w6
 iQ5p+yh7XrHrqiWiq/yTAxfXUkQHTMmq9uj/DhfSj+fiCfSrIbcug3mC7Lpo2XCjtq
 iilwFW36c0H6TwSNr+1kNwjp6kEiWHlqtzvHHylkhDS5o/UrXkWuYpA81bQ3udJvcQ
 QtJHUgfCuhcFdo59S8UDKPFAcX6nHLG4e06NofejNeOG+ePPhIboFy5xfHJxw18szD
 3jMdhUAwKzQOgkP+NtIHsO0ve4eitHpDvKb1L/BELtsY0Ah3gbRPDZph1TsA01S2Tp
 +4ORmYKmwvJYA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_094224_955199_91DA6C6B 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, vidyas@nvidia.com,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Corrects the programming to provide REFCLK to the downstream device
when there is no CLKREQ sideband signal routing present from root port
to the endpont.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
 drivers/pci/controller/dwc/pcie-tegra194.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index f89f5acee72d..cbe95f0ea0ca 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -40,8 +40,6 @@
 #define APPL_PINMUX_CLKREQ_OVERRIDE		BIT(3)
 #define APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE_EN	BIT(4)
 #define APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE	BIT(5)
-#define APPL_PINMUX_CLKREQ_OUT_OVRD_EN		BIT(9)
-#define APPL_PINMUX_CLKREQ_OUT_OVRD		BIT(10)
 
 #define APPL_CTRL				0x4
 #define APPL_CTRL_SYS_PRE_DET_STATE		BIT(6)
@@ -1193,8 +1191,8 @@ static int tegra_pcie_config_controller(struct tegra_pcie_dw *pcie,
 
 	if (!pcie->supports_clkreq) {
 		val = appl_readl(pcie, APPL_PINMUX);
-		val |= APPL_PINMUX_CLKREQ_OUT_OVRD_EN;
-		val |= APPL_PINMUX_CLKREQ_OUT_OVRD;
+		val |= APPL_PINMUX_CLKREQ_OVERRIDE_EN;
+		val &= ~APPL_PINMUX_CLKREQ_OVERRIDE;
 		appl_writel(pcie, val, APPL_PINMUX);
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
