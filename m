Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D8ED7AE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 18:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6+/svs0wGHuvOEumvP1wFrFVchmFFH3k36R2IVJcIIE=; b=rjIeZQ49Eq4VFZ
	DsXXRqN73OraaWHhfvPHrx1E8uMq0e/bmKGM/6JFDErLMklpB3KdN8Xp/L2DM1eFq9cv9/pLCV7TY
	9mOQTTY7q/mPIyeK4BVW6KTwaSJR6VxoaVv0aJtI9YP29F1YFY/yzod+qxoq9OH5WzKlyIMU2RVMu
	W3RzckyQlxVjA0FhwFumQiDiI4yAYGewfAgHolixon+2fb1bS4/cFm+Oyei+ncGaypR3hakg/6c8g
	QXecUqaYZn6hoj1T8a7QFUKIax8fliKlWdAaEXBAJmdxd3RNtJbfZcIdrtV0nhwWyyvTNH84JNriD
	LBS2fO8KZm7xYxjv2ivA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKPQb-0007PS-IC; Tue, 15 Oct 2019 16:12:05 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKPQS-0007OZ-3B
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 16:11:57 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iKPQL-0007rN-Tc; Tue, 15 Oct 2019 17:11:50 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iKPQL-00019x-8c; Tue, 15 Oct 2019 17:11:49 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] PCI: mvebu: mvebu_pcie_map_registers __iomem fix
Date: Tue, 15 Oct 2019 17:11:48 +0100
Message-Id: <20191015161148.4413-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_091156_285878_757C3D0B 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the return type of mvebu_pcie_map_registers in the
error path to have __iomem on it. Fixes the following
sparse warning:

drivers/pci/controller/pci-mvebu.c:716:31: warning: incorrect type in return expression (different address spaces)
drivers/pci/controller/pci-mvebu.c:716:31:    expected void [noderef] <asn:2> *
drivers/pci/controller/pci-mvebu.c:716:31:    got void *

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Andrew Murray <andrew.murray@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/pci/controller/pci-mvebu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pci-mvebu.c b/drivers/pci/controller/pci-mvebu.c
index ed032e9a3156..153a64676bc9 100644
--- a/drivers/pci/controller/pci-mvebu.c
+++ b/drivers/pci/controller/pci-mvebu.c
@@ -713,7 +713,7 @@ static void __iomem *mvebu_pcie_map_registers(struct platform_device *pdev,
 
 	ret = of_address_to_resource(np, 0, &regs);
 	if (ret)
-		return ERR_PTR(ret);
+		return (void __iomem *)ERR_PTR(ret);
 
 	return devm_ioremap_resource(&pdev->dev, &regs);
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
