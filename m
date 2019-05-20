Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 526D223AC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:47:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3RmOCdm5J2qisBSKn8akdo9PMut4AKEn+IxXIb6nk4M=; b=L7wm8LzaUh7lHM
	CKHRxarqReyqqtdIdr37VmMXp6V7nyBCalxFZPaA/rbuUcKt/gg3oLlSGWzW46DSjz+3NY1gbt0BB
	S/nlksMXWkRGTgnQSpI/Prasifb1ARCZlQ3N6oo+PvCMuUdeuEKkiaNKK2/dTJhUY6ez9Qskndeem
	kKMtyh+SxWVPg9FucdCeG9GRkO/J4kMcDxwK5LawjZnVy13/QSlraKlSas4TLxHIcm/YeIoMPkTEu
	Vb4xyNvBfFFsY/zk21AGFZdu7QtRWKSBh/XhbkgrzeZN3L2JX3XqNDWnHFhC7Q13+4ldv28CgRkYw
	IuEDT8+xuFn0f5NMYs7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjZe-00089r-Kk; Mon, 20 May 2019 14:47:34 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjZH-0007p6-Kx
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:47:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:References:In-Reply-To
 :Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6j+6ZAFxV1y7Qg1RWkX4ddRlT0yOR4aaVsAYpnFzC50=; b=xidY85DOIOJINvC6PEasTn0faz
 gjWvzuQU4W9tvCydywmR3nyfZst0ZXzDWT3yyydenKjM17TfyBH+sydMZ/qdWSnF0C6QBr8R/Jod8
 CnUfFawSsqArH8SEMkJAoJlfByl6FF0kGtGWrUMv5ZYpaNVF2LuSAYpaAuMRJK/ys8Bc+5hjU4FlF
 wHhMftYXCkFlBc4uxKX/W1B/fzZaekpB2rXxcHCpmNFRRGL+fWplsHk/eXooTWuLGVO9ZsWeLod4g
 TuGVUnR2mc+WlwU4y4W/LMDi4lqCVQ/B1PWepPVrcN9AcCTatA2WzktWyrBoLqqIziA5UMESnL/QH
 0UzcHpHA==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:43224 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hSjZB-0003Oc-CD; Mon, 20 May 2019 15:47:05 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hSjZA-0000Xv-8Y; Mon, 20 May 2019 15:47:04 +0100
In-Reply-To: <20190520144615.gzrztyhoncyfc5xr@shell.armlinux.org.uk>
References: <20190520144615.gzrztyhoncyfc5xr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/8] ARM: riscpc: fix ecard printing
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hSjZA-0000Xv-8Y@rmk-PC.armlinux.org.uk>
Date: Mon, 20 May 2019 15:47:04 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_074711_930372_221BCEDB 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Multiple printk() statements appear to get broken into separate lines,
which messes up the formatting.  Fix these up.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/mach-rpc/ecard.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-rpc/ecard.c b/arch/arm/mach-rpc/ecard.c
index 04b2f22c2739..3e7b81cc4274 100644
--- a/arch/arm/mach-rpc/ecard.c
+++ b/arch/arm/mach-rpc/ecard.c
@@ -496,18 +496,21 @@ static void ecard_dump_irq_state(void)
 	printk("Expansion card IRQ state:\n");
 
 	for (ec = cards; ec; ec = ec->next) {
+		const char *claimed;
+
 		if (ec->slot_no == 8)
 			continue;
 
-		printk("  %d: %sclaimed, ",
-		       ec->slot_no, ec->claimed ? "" : "not ");
+		claimed = ec->claimed ? "" : "not ";
 
 		if (ec->ops && ec->ops->irqpending &&
 		    ec->ops != &ecard_default_ops)
-			printk("irq %spending\n",
+			printk("  %d: %sclaimed irq %spending\n",
+			       ec->slot_no, claimed,
 			       ec->ops->irqpending(ec) ? "" : "not ");
 		else
-			printk("irqaddr %p, mask = %02X, status = %02X\n",
+			printk("  %d: %sclaimed irqaddr %p, mask = %02X, status = %02X\n",
+			       ec->slot_no, claimed,
 			       ec->irqaddr, ec->irqmask, readb(ec->irqaddr));
 	}
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
