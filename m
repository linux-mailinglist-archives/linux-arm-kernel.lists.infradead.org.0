Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D85A49C5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 16:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZpDqBeKPMU02WDUovg1bxbXhFes8/kT0EVqzRXVcgIA=; b=OunHSFpu94gOYj
	hQItXwLFuZOdIV68CLc8+9hT3n4XKDmH7pcjzq/IjXLIjqkP9eUZIkdzJOUKeIWH3I7GM7aiacqmG
	5XZR1QSE7v3ZNE/6PLj69B+VvkfJrVhnJPbkg0uyywHIuRc0BGo5tOSVFSdjNgy9LL72I5JnKG9+s
	xvMRGaZpqxprdJy87ej7bPyGbZjX7UFaPpAWM/V5rFM5Nonwm+PL3g64dKDvcjhISpflA4FVgPAtk
	zEV8BIia0fai0fFpOpz1d4Q+iTzMO+5GalLRSVAPBqJRI4vhh8uruT5sqbL+v1JYA8QAki3FEh1Qy
	QQj8ExcNZJTB5KxQw/Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4QdO-0003Cz-Pf; Sun, 01 Sep 2019 14:15:14 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4QdA-0003Cn-MG
 for linux-arm-kernel@bombadil.infradead.org; Sun, 01 Sep 2019 14:15:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J4/Ockjg5uBi5u+myxueJ8OzbByM74uGm8JCd7teVVU=; b=wgt6P/4IR+Q+lMix2WemaQduUY
 5l9M2PieXgToO6grdlofLU8o+71V2tLkZgKmbB1boc70PRSRhs0NjkXvzasvK79yjK9nW8z8ZFFjt
 65IxPn/nOQfB0/s9YqQUExnKJ5tmCcj22IAzVdbsNGRS97kVY6btTAsabBipgax9oOBlk+egT5Uvw
 ER4HsJhBei4gsVC65NDRoe/1RwF0wU6Kai0GoXpA8OXSL9uk6BfrzL5SBVjqj8a66f8+RjAYw+9rK
 vCH/lC01gW3Ix5PpLKqvcMoXEh1L//GFo/vIBcDmEW2iEzF0e8oAKKTAakdp/1VQoaJDO/3dmv1TN
 a+ZbjkJQ==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4Qd5-0002kl-NS
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 14:14:57 +0000
Received: from localhost (unknown [88.190.179.123])
 (Authenticated sender: repk@triplefau.lt)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id BD80E100005;
 Sun,  1 Sep 2019 14:14:10 +0000 (UTC)
From: Remi Pommarel <repk@triplefau.lt>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH] PCI: aardvark: Don't rely on jiffies while holding spinlock
Date: Sun,  1 Sep 2019 16:23:03 +0200
Message-Id: <20190901142303.27815-1-repk@triplefau.lt>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pci@vger.kernel.org, Remi Pommarel <repk@triplefau.lt>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

advk_pcie_wait_pio() can be called while holding a spinlock (from
pci_bus_read_config_dword()), then depends on jiffies in order to
timeout while polling on PIO state registers. In the case the PIO
transaction failed, the timeout will never happen and will also cause
the cpu to stall.

This decrements a variable and wait instead of using jiffies.

Signed-off-by: Remi Pommarel <repk@triplefau.lt>
---
 drivers/pci/controller/pci-aardvark.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
index fc0fe4d4de49..1fa6d04ad7aa 100644
--- a/drivers/pci/controller/pci-aardvark.c
+++ b/drivers/pci/controller/pci-aardvark.c
@@ -175,7 +175,8 @@
 	(PCIE_CONF_BUS(bus) | PCIE_CONF_DEV(PCI_SLOT(devfn))	| \
 	 PCIE_CONF_FUNC(PCI_FUNC(devfn)) | PCIE_CONF_REG(where))
 
-#define PIO_TIMEOUT_MS			1
+#define PIO_RETRY_CNT			10
+#define PIO_RETRY_DELAY			100 /* 100 us*/
 
 #define LINK_WAIT_MAX_RETRIES		10
 #define LINK_WAIT_USLEEP_MIN		90000
@@ -383,17 +384,16 @@ static void advk_pcie_check_pio_status(struct advk_pcie *pcie)
 static int advk_pcie_wait_pio(struct advk_pcie *pcie)
 {
 	struct device *dev = &pcie->pdev->dev;
-	unsigned long timeout;
+	size_t i;
 
-	timeout = jiffies + msecs_to_jiffies(PIO_TIMEOUT_MS);
-
-	while (time_before(jiffies, timeout)) {
+	for (i = 0; i < PIO_RETRY_CNT; ++i) {
 		u32 start, isr;
 
 		start = advk_readl(pcie, PIO_START);
 		isr = advk_readl(pcie, PIO_ISR);
 		if (!start && isr)
 			return 0;
+		udelay(PIO_RETRY_DELAY);
 	}
 
 	dev_err(dev, "config read/write timed out\n");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
