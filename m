Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F871C055B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 20:56:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rJuOxz53chc16Vyk5zBYoDZXHUzYagM/ZQQ+f+Ere4k=; b=DSAJKOzoBV8fgcKlleEXuouIUT
	dZYheAoQT/poSACEkSRQvszUn80RKxySYujWMEpJdanXRW5+wiTX3fd67Wxf+xH7VnyyoDjtwxLzd
	W+SaAtV0kxa8ul/YCH2TKYCrCJ0yTMdHbc6NzseDFLG63RVcoPPthK+c4UZYD/0kOl+tRIifuZ/bY
	dCQLdL/eI6hziYhzPbhGz4Jw8EPBg9cq2knSymVsuxzI9TYQDWdR32QBYJPbuuLxHE3OZweJ/0FNn
	7kR1/vJF58l8BdgK22RAhSb3HcFHhFJ+ibMpAmsl8hLi26s1vZiYT+oDs3BGU4tgQFAGE1l7JGyDI
	wgBtnPxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUEMH-0003oq-7P; Thu, 30 Apr 2020 18:56:29 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUELV-0003Lm-Gg; Thu, 30 Apr 2020 18:55:43 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 48AE930C0A1;
 Thu, 30 Apr 2020 11:55:28 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 48AE930C0A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1588272928;
 bh=LbAxkhAmGmq8mafAxS/ePqABfxn3O1OKBsGWyQTZcaU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Q53GHiEBvSOkPDqCKrHqE5ofQm01CsnGGYJ8kztbXA7c+ek9wnZl5RAqm3JkR67Cw
 M5MZcd1Y8G7k1aTPbWKMp+yz7uWM2qsrZLaF5cA2ShqAg5GH/E2nRuOQC40J3OtqNt
 EkVFysxO7fLEBti1Ty2tu3pI5Im4zyQJ98LvCgtU=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id D6D03140069;
 Thu, 30 Apr 2020 11:55:34 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: james.quinlan@broadcom.com
Subject: [PATCH 2/5] PCI: brcmstb: fix window register offset from 4 to 8
Date: Thu, 30 Apr 2020 14:55:19 -0400
Message-Id: <20200430185522.4116-2-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430185522.4116-1-james.quinlan@broadcom.com>
References: <20200430185522.4116-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_115541_568219_F08C1F53 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jim Quinlan <jquinlan@broadcom.com>

The oubound memory window registers were being referenced
with an incorrect offset.  This probably wasn't noticed
previously as there was likely only one such outbound window.

Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
---
 drivers/pci/controller/pcie-brcmstb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 454917ee9241..5b0dec5971b8 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -54,11 +54,11 @@
 
 #define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO		0x400c
 #define PCIE_MEM_WIN0_LO(win)	\
-		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO + ((win) * 4)
+		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO + ((win) * 8)
 
 #define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI		0x4010
 #define PCIE_MEM_WIN0_HI(win)	\
-		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI + ((win) * 4)
+		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI + ((win) * 8)
 
 #define PCIE_MISC_RC_BAR1_CONFIG_LO			0x402c
 #define  PCIE_MISC_RC_BAR1_CONFIG_LO_SIZE_MASK		0x1f
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
