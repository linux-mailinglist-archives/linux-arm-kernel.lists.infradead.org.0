Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B85E444133
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=skwfExct8BWdWxzdtu9hAHo1iyoIUw+CeRj/CcseEOY=; b=ab1
	U+1DClRGU0Evh7B6C98dqypU8ZS4fg4bryO/ahun5Yti8Y6/ZC+9lFRsgPWdWnJRf2hzUjI4kq+8F
	FgzhAhHbyl7m/h4GSceNHB9jbsd2Vamxt9qFHNvSisKF0jJFvvbjk3UMn14YikPJMbVsc20IETnQ3
	wVhAhd4yy0Mo+ryd41QaSF0mp0vBiEYVnKmsbhRjI5kS0PTvx9n1U/mvNLx7bWVj+nOlFlYSp8aYo
	n1HJaVLcVgzXk1r3jJUUc1edS5l01a8y9Wr9sZBbcS155v7lj37IAumKycxcs6KKq/RNxIvAPLA9g
	bvJrMZkhOXPDh7oL7zlR1Qphl2Z7zjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSLE-0000L5-Bi; Thu, 13 Jun 2019 16:12:44 +0000
Received: from smtp5-g21.free.fr ([212.27.42.5])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSKt-00007k-Kh
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:12:25 +0000
Received: from heffalump.sk2.org (unknown [88.186.243.14])
 by smtp5-g21.free.fr (Postfix) with ESMTPS id 4DB325FFB9;
 Thu, 13 Jun 2019 18:12:12 +0200 (CEST)
Received: from steve by heffalump.sk2.org with local (Exim 4.89)
 (envelope-from <steve@sk2.org>)
 id 1hbSKh-0004Qa-LM; Thu, 13 Jun 2019 18:12:11 +0200
From: Stephen Kitt <steve@sk2.org>
To: x86@kernel.org, linux-alpha@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org
Subject: [PATCH] Drop unused isa_page_to_bus
Date: Thu, 13 Jun 2019 18:11:55 +0200
Message-Id: <20190613161155.16946-1-steve@sk2.org>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_091223_942565_72CEDFF5 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.27.42.5 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.27.42.5 listed in wl.mailspike.net]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: sk2.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: sk2.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephen Kitt <steve@sk2.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

isa_page_to_bus is deprecated and no longer used anywhere, this patch
removes it entirely.

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
 arch/alpha/include/asm/io.h | 5 -----
 arch/arm/include/asm/io.h   | 1 -
 arch/mips/include/asm/io.h  | 2 --
 arch/x86/include/asm/io.h   | 1 -
 4 files changed, 9 deletions(-)

diff --git a/arch/alpha/include/asm/io.h b/arch/alpha/include/asm/io.h
index ccf9d65166bb..af2c0063dc75 100644
--- a/arch/alpha/include/asm/io.h
+++ b/arch/alpha/include/asm/io.h
@@ -93,11 +93,6 @@ static inline void * phys_to_virt(unsigned long address)
 
 #define page_to_phys(page)	page_to_pa(page)
 
-static inline dma_addr_t __deprecated isa_page_to_bus(struct page *page)
-{
-	return page_to_phys(page);
-}
-
 /* Maximum PIO space address supported?  */
 #define IO_SPACE_LIMIT 0xffff
 
diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index 7e22c81398c4..f96ec93679b7 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -33,7 +33,6 @@
  * ISA I/O bus memory addresses are 1:1 with the physical address.
  */
 #define isa_virt_to_bus virt_to_phys
-#define isa_page_to_bus page_to_phys
 #define isa_bus_to_virt phys_to_virt
 
 /*
diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 29997e42480e..1790274c27eb 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -149,8 +149,6 @@ static inline void *isa_bus_to_virt(unsigned long address)
 	return phys_to_virt(address);
 }
 
-#define isa_page_to_bus page_to_phys
-
 /*
  * However PCI ones are not necessarily 1:1 and therefore these interfaces
  * are forbidden in portable PCI drivers.
diff --git a/arch/x86/include/asm/io.h b/arch/x86/include/asm/io.h
index a06a9f8294ea..6bed97ff6db2 100644
--- a/arch/x86/include/asm/io.h
+++ b/arch/x86/include/asm/io.h
@@ -165,7 +165,6 @@ static inline unsigned int isa_virt_to_bus(volatile void *address)
 {
 	return (unsigned int)virt_to_phys(address);
 }
-#define isa_page_to_bus(page)	((unsigned int)page_to_phys(page))
 #define isa_bus_to_virt		phys_to_virt
 
 /*
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
