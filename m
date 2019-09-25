Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A56BDFDE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 16:17:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bg01ZSwH4Vfw77DWTOrWJ8zkJ/NixKJSGrcms9k5Wt8=; b=S2gDeExPpG7vC1
	7r7tzuOM0wcxDUnpedovaZ2QWwvmjHP9+mb5yjnQtuDTNIYp5KDioy+EF8C78JLVnns8x+5Mnunmj
	10Spzo0jm7Et0bLCxrx+p1LIms65pg8NJsox8CG009kp9g+IecYuXAfMYwKOXjO58NH3qTBhVjnln
	SD/0j19wsh1Ejp8V/cbbnQI3+qImkWbDPA2EC7bN6TQgm+5hvVANRVgcImYFhddWspk9YnH4FOyOK
	y1xNYB5mLdHrVmDgCaKxr4yX3oiUKdlmmqyBCaPrkGhKskrrfWRpJoGEE4k1j2dL2lp5w5jpVi/3P
	nPTd21BVrk/DkM9enIrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD86p-0001cy-4Q; Wed, 25 Sep 2019 14:17:35 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD85W-0001RV-Tx
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 14:16:18 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iD85Q-0000DO-Rb; Wed, 25 Sep 2019 15:16:08 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iD85Q-00065i-G5; Wed, 25 Sep 2019 15:16:08 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] arm: move pcibios_report_status to <asm/pci.h>
Date: Wed, 25 Sep 2019 15:16:03 +0100
Message-Id: <20190925141604.23364-3-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190925141604.23364-1-ben.dooks@codethink.co.uk>
References: <20190925141604.23364-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_071615_130811_D60CD44E 
X-CRM114-Status: GOOD (  10.99  )
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
Cc: Ben Dooks <ben.dooks@codethink.co.uk>, Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move the pcibios_report_status to <asm/pci.h> include to remove the
following sparse warning and to remove the extra definition in the
footbrdige dc21285.c driver:

arch/arm/kernel/bios32.c:59:6: warning: symbol 'pcibios_report_status' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
 arch/arm/include/asm/pci.h         | 2 ++
 arch/arm/mach-footbridge/dc21285.c | 1 -
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/pci.h b/arch/arm/include/asm/pci.h
index 0abd389cf0ec..68e6f25784a4 100644
--- a/arch/arm/include/asm/pci.h
+++ b/arch/arm/include/asm/pci.h
@@ -27,5 +27,7 @@ static inline int pci_get_legacy_ide_irq(struct pci_dev *dev, int channel)
 	return channel ? 15 : 14;
 }
 
+extern void pcibios_report_status(unsigned int status_mask, int warn);
+
 #endif /* __KERNEL__ */
 #endif
diff --git a/arch/arm/mach-footbridge/dc21285.c b/arch/arm/mach-footbridge/dc21285.c
index 8b81a17f675d..416462e3f5d6 100644
--- a/arch/arm/mach-footbridge/dc21285.c
+++ b/arch/arm/mach-footbridge/dc21285.c
@@ -31,7 +31,6 @@
 				  PCI_STATUS_PARITY) << 16)
 
 extern int setup_arm_irq(int, struct irqaction *);
-extern void pcibios_report_status(u_int status_mask, int warn);
 
 static unsigned long
 dc21285_base_address(struct pci_bus *bus, unsigned int devfn)
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
