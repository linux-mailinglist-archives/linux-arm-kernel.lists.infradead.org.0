Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1646A9E919
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n4ofK4KgUOJodmxcrJL88WwVRcmnQC5HIo6/l1Gg7X8=; b=XtJlTNBlqXVdncur++Nsdb0+gz
	OyVZAhSMA+BM1Hp0Swd0s8MbTsFoCcDbgQzurUP/aOw3CkN2c53OPYCHfzd83KvZxn5c9cVmJagkO
	1wQzjmd4o57I9YlhvKqN2ORpL7vXpouerlVOzylkb0JjVcJLnWOxHHXzar7PWfT0vREhZjCiuqX9G
	uS2DrrI7XQEQiciRzokWlW4sE2clfOncf3zH7TUQHhcriZklh7MpCkzRH/5gCykKlGUfHgApXnWy2
	SL9r7zI9X5sXQBQs+iy+KN8PjtTKmzzGUQTAwPa9dCdggZV6AJP0K5RdEdNNNBPnsIU2nVuQKhxcO
	w3OkzaKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bPS-0005ub-MH; Tue, 27 Aug 2019 13:21:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bMt-0002cZ-4g
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:18:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BAE0F1570;
 Tue, 27 Aug 2019 06:18:38 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9490A3F246;
 Tue, 27 Aug 2019 06:18:37 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/6] arm64: tlb: Ensure we execute an ISB following walk cache
 invalidation
Date: Tue, 27 Aug 2019 14:18:14 +0100
Message-Id: <20190827131818.14724-3-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190827131818.14724-1-will@kernel.org>
References: <20190827131818.14724-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_061839_447756_7EF01297 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-arch@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, stable@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

05f2d2f83b5a ("arm64: tlbflush: Introduce __flush_tlb_kernel_pgtable")
added a new TLB invalidation helper which is used when freeing
intermediate levels of page table used for kernel mappings, but is
missing the required ISB instruction after completion of the TLBI
instruction.

Add the missing barrier.

Cc: <stable@vger.kernel.org>
Fixes: 05f2d2f83b5a ("arm64: tlbflush: Introduce __flush_tlb_kernel_pgtable")
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/tlbflush.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index 8af7a85f76bd..bc3949064725 100644
--- a/arch/arm64/include/asm/tlbflush.h
+++ b/arch/arm64/include/asm/tlbflush.h
@@ -251,6 +251,7 @@ static inline void __flush_tlb_kernel_pgtable(unsigned long kaddr)
 	dsb(ishst);
 	__tlbi(vaae1is, addr);
 	dsb(ish);
+	isb();
 }
 #endif
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
