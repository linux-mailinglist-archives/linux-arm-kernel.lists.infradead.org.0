Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16012D7AD1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 18:07:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SIl/qvsBydM7MbWxr+rizeP36/suSzTvg+7KLudSVXM=; b=tvMY8uYuDypXYu
	BGdxPNLwPGC1A+EOi5XV5uOHG7MvUjDyjyR6kJ+gSRQZ2UQ7Mb4o1biSINEasNt/80FmsqnlwsCBG
	TSZ08hRxCIglXGgsxBNQNHnioIn8bdLewrfv2v3eygTa/PWpXX5SadW86DXGhGojyqpqUQD9tvvlQ
	ZuPXOFCrH+vAByfK9aHrXkee5QZ1qxejTtvtkRqFiU4MhhXYHDZHeAz0tCqy8URPSJ7DWOLyvjIjS
	tDyL1r/eFaUwN4veCUJIyJU2ETVlWMpYymMuGWdf+LQLtasRKT2p4VHkTDK0iN8Gfm0kyGnxhHK5P
	pk7oQdejqJ7N8IWgmJ3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKPLz-00052R-0Z; Tue, 15 Oct 2019 16:07:19 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKPLp-00051g-20
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 16:07:10 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iKPLj-0007jR-I9; Tue, 15 Oct 2019 17:07:03 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iKPLi-0002TI-TD; Tue, 15 Oct 2019 17:07:02 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] pci: iproc-msi: fix __iomem annotation in decode_msi_hwirq()
Date: Tue, 15 Oct 2019 17:07:02 +0100
Message-Id: <20191015160702.9457-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_090709_244689_C267B2AB 
X-CRM114-Status: GOOD (  11.58  )
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
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 bcm-kernel-feedback-list@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix __iomem attribute on msg variable passed to readl() in
the decode_msi_hwirq() function. Fixes the following sparse
warning:

drivers/pci/controller/pcie-iproc-msi.c:301:17: warning: incorrect type in argument 1 (different address spaces)
drivers/pci/controller/pcie-iproc-msi.c:301:17:    expected void const volatile [noderef] <asn:2> *addr
drivers/pci/controller/pcie-iproc-msi.c:301:17:    got unsigned int [usertype] *[assigned] msg

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Andrew Murray <andrew.murray@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Ray Jui <rjui@broadcom.com>
Cc: Scott Branden <sbranden@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com
Cc: linux-pci@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
.. (open list)
---
 drivers/pci/controller/pcie-iproc-msi.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-iproc-msi.c b/drivers/pci/controller/pcie-iproc-msi.c
index 0a3f61be5625..3176ad3ab0e5 100644
--- a/drivers/pci/controller/pcie-iproc-msi.c
+++ b/drivers/pci/controller/pcie-iproc-msi.c
@@ -293,11 +293,12 @@ static const struct irq_domain_ops msi_domain_ops = {
 
 static inline u32 decode_msi_hwirq(struct iproc_msi *msi, u32 eq, u32 head)
 {
-	u32 *msg, hwirq;
+	u32 __iomem *msg;
+	u32 hwirq;
 	unsigned int offs;
 
 	offs = iproc_msi_eq_offset(msi, eq) + head * sizeof(u32);
-	msg = (u32 *)(msi->eq_cpu + offs);
+	msg = (u32 __iomem *)(msi->eq_cpu + offs);
 	hwirq = readl(msg);
 	hwirq = (hwirq >> 5) + (hwirq & 0x1f);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
