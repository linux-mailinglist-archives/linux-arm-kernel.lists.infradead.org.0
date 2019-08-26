Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A894C9CA98
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:32:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QaXkYlheE1IAp9KB/1LESiJxAs9alTElnqwSnmp91XI=; b=LTT8NqDDNfmGHO
	fmKVT2fj7phkBc2v9XYqgbFhIrQaP2qoWIVfXOig97DBPBl2Vok8WLoTZOm1YQt8avxhNZTyeKrY6
	+cPzyCQ/wmF03e1TGyZYA22SD8aq6XKJIccfDpWOWWA/urSuecJuqBi7Gr6wjdMJL9acVq72SwLNq
	KWev3VnybfzmAwcF9KIwhY/7rxxXNZNxLCoI/KeaesYj4sMGFpQ2KGS/V8lIJ/q8JNDW5M1mmk9Bu
	VgtQ3HNY60Lb2qhzbpxa9O9MqI+Au2sGfWSsMsEH3AIeM+UJTc6yp6QTvuOoim72BIDl+CQmvruRN
	ddyDZm82sxzm0qXqtqkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29Um-00061C-5o; Mon, 26 Aug 2019 07:32:56 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29U0-0005YK-UZ
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 07:32:10 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d638af90002>; Mon, 26 Aug 2019 00:32:09 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Mon, 26 Aug 2019 00:32:08 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Mon, 26 Aug 2019 00:32:08 -0700
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 26 Aug
 2019 07:32:08 +0000
Received: from HQMAIL101.nvidia.com (172.20.187.10) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 26 Aug
 2019 07:32:07 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Mon, 26 Aug 2019 07:32:08 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d638af30001>; Mon, 26 Aug 2019 00:32:07 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
Subject: [PATCH 3/6] PCI: tegra: Add support to configure sideband pins
Date: Mon, 26 Aug 2019 13:01:40 +0530
Message-ID: <20190826073143.4582-4-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826073143.4582-1-vidyas@nvidia.com>
References: <20190826073143.4582-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1566804729; bh=ADNWY6D18iASNntieqTjCPp7lsXA6jQML9nnBWw895Q=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=jeTwYT2iS12PPwyC0Ld8lTHD+FIuHUtHKTLihXLYR01J92uIwHuS1SM5KPu0l1+7R
 tkU+QwWZDkarpFCcFuZypPCqT8LaXzkBbS4sjg6XFtEHwnO/JsYd1YOH61vUrDoFxM
 ZO4JLVXN6+h4rC6+OAYDL0WDSuxdHtygD19VkaFfsjvk2PBumgRdBhL1Ma0W/aL0zg
 XRMeX2EvgZWOVHfjTtIf5m7GCc9wJfekjjQnzjOmWCOi5ROPRU5+vX1u3Ndy8L8nUS
 GRBZj0erUOlYsKcH7z+n90eDDpzz2hUBPb1muYLvH52BRKd4TI24ZfalA8Z8E5h+4T
 8Mpn/LJ85VQZQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_003209_334161_67A59897 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 drivers/pci/controller/dwc/pcie-tegra194.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index fc0dbeb31d78..8a27b25893c9 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -1308,6 +1308,12 @@ static int tegra_pcie_config_rp(struct tegra_pcie_dw *pcie)
 		return ret;
 	}
 
+	ret = pinctrl_pm_select_default_state(pcie->dev);
+	if (ret < 0) {
+		dev_err(pcie->dev, "Failed to configure sideband pins\n");
+		return ret;
+	}
+
 	tegra_pcie_init_controller(pcie);
 
 	pcie->link_state = tegra_pcie_dw_link_up(&pcie->pci);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
