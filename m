Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DBA459CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QHq6JWaWJUi1kCxEM6HahO6euNvVO7mDL1+2EkGsYIM=; b=U8Jxtr2rQ977F2
	q7/pFJyOnUlzws5K8QGzLY7nKdiWAT9Qm1YKZ2fozb8kEaZyId7Iegoh0IYo7GYSGast/HSQ4FJOd
	x88yxSXSG9quLSqbdoNdjYRfsgf3LcRKm4jn4KgxfGfhn7V+85RiQfmP4VrPym+FUmreVaCWMMv5M
	SIsYerppODZKv/MlnDYjUL46AtyBCwaZbiU5SkuEc57uS/FbOxuhlJQmDG65qsi5FSgoQs60txoEm
	0yi59vHYBuZcPc262SJQPjzus2/F8rsCB5kkf0z2halsTrHq8oNe2aa0/PQfmrHm0lcwIfezG9Gxy
	5DEnMKuZUdHU7R+Eohow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbj2K-0005uo-SX; Fri, 14 Jun 2019 10:02:20 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbj2A-0005tu-1O
 for linux-arm-kernel@bombadil.infradead.org; Fri, 14 Jun 2019 10:02:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EZ3L2Fiofxr3pK8P81q2A2EuutLGOnACbqss2XG6JlY=; b=N7Lezlo0HdiWnr/kaXvNiHZ83V
 uauqM3dzs3TmheQUZjQnyjXgKMqTKamCH9nfefshRvXrO5FkRi85I7p0aT8EU3zkhSJrB+GWIi/x7
 Ea7VU1SXSxENGKrDAPBAYfSQr0uvO9aZYC7v4CYyePesBeSxu/vSRhgJelC+ixajO4JHB4t8XK3eX
 yF25R0W49oM+ugvmSiFDhbZtKFNaLP13XnkP70B5g4sodU5k4uT6gHidrsbkYBS+SagYu0kb/AaYK
 +8s1aniNl3N9w7fzq1bBBnwJFKoufsXNAizKOTXduEsG5OyH1oOItGgUp2khvfJ0bSMtlq9WFgwGf
 5ThbMKCQ==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbj25-0002RI-D2
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 10:02:07 +0000
Received: from localhost (unknown [88.190.179.123])
 (Authenticated sender: repk@triplefau.lt)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id BF1E1100018;
 Fri, 14 Jun 2019 10:01:21 +0000 (UTC)
From: Remi Pommarel <repk@triplefau.lt>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <helgaas@kernel.org>
Subject: [PATCH v3] PCI: aardvark: Fix PCI_EXP_RTCTL register configuration
Date: Fri, 14 Jun 2019 12:10:59 +0200
Message-Id: <20190614101059.1664-1-repk@triplefau.lt>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_110205_486838_DFA389DA 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: linux-pci@vger.kernel.org, Ellie Reeves <ellierevves@gmail.com>,
 Remi Pommarel <repk@triplefau.lt>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PCI_EXP_RTCTL is used to activate PME interrupt only, so writing into it
should not modify other interrupts' mask. The ISR mask polarity was also
inverted, when PCI_EXP_RTCTL_PMEIE is set PCIE_MSG_PM_PME_MASK mask bit
should actually be cleared.

Fixes: 8a3ebd8de328 ("PCI: aardvark: Implement emulated root PCI bridge config space")
Signed-off-by: Remi Pommarel <repk@triplefau.lt>
---
Changes since v1:
 * Improve code readability
 * Fix mask polarity
 * PME_MASK shift was off by one
Changes since v2:
 * Modify patch title
 * Change Fixes tag to commit that actually introduces the bug
---
 drivers/pci/controller/pci-aardvark.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
index 134e0306ff00..f6e55c4597b1 100644
--- a/drivers/pci/controller/pci-aardvark.c
+++ b/drivers/pci/controller/pci-aardvark.c
@@ -415,7 +415,7 @@ advk_pci_bridge_emul_pcie_conf_read(struct pci_bridge_emul *bridge,
 
 	case PCI_EXP_RTCTL: {
 		u32 val = advk_readl(pcie, PCIE_ISR0_MASK_REG);
-		*value = (val & PCIE_MSG_PM_PME_MASK) ? PCI_EXP_RTCTL_PMEIE : 0;
+		*value = (val & PCIE_MSG_PM_PME_MASK) ? 0 : PCI_EXP_RTCTL_PMEIE;
 		return PCI_BRIDGE_EMUL_HANDLED;
 	}
 
@@ -451,10 +451,15 @@ advk_pci_bridge_emul_pcie_conf_write(struct pci_bridge_emul *bridge,
 		advk_writel(pcie, new, PCIE_CORE_PCIEXP_CAP + reg);
 		break;
 
-	case PCI_EXP_RTCTL:
-		new = (new & PCI_EXP_RTCTL_PMEIE) << 3;
-		advk_writel(pcie, new, PCIE_ISR0_MASK_REG);
+	case PCI_EXP_RTCTL: {
+		/* Only mask/unmask PME interrupt */
+		u32 val = advk_readl(pcie, PCIE_ISR0_MASK_REG) &
+			~PCIE_MSG_PM_PME_MASK;
+		if ((new & PCI_EXP_RTCTL_PMEIE) == 0)
+			val |= PCIE_MSG_PM_PME_MASK;
+		advk_writel(pcie, val, PCIE_ISR0_MASK_REG);
 		break;
+	}
 
 	case PCI_EXP_RTSTA:
 		new = (new & PCI_EXP_RTSTA_PME) >> 9;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
