Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 459A213D11
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 06:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Cb+XPMvY46Rzx1ohgw3Oa0JeNfykoXT5OMmwIVfhLcI=; b=tQy
	Umg5UjFExTclhekveucLOZOZm7POv6xIGfcyVw1J9uGp5CHkbOHUN9HPD8wQpwfl3/PSOxTPDZx7z
	mZGs8hoYUEYTFPj5GnS1Eij5ZxgPbPv56BIMYJH9ZROSW6apnslurGs2isUmCWwzPWjf8Gz588W6N
	ztOjuPlkt3PUIkmaXq5z6ny+X9CVXkK9Hi4v8iLtOXd8Kxl1twUQBkGFLQ6fCM2NN6B0t6wWxJ+ij
	kkgFNKbwVddz5fso2FTjvC8GB9SLdjLgb1z9XU4tZ7jXbBbUnQBHd5UFPvlz6AHmlN7OoZ8HLQs7Z
	K2eL6CY/JI5VUXQRFQ2NamuBvPIaC8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN8Ys-0002ZU-9l; Sun, 05 May 2019 04:15:38 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN8Yg-0002Z7-Hd
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 04:15:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 22FBB374;
 Sat,  4 May 2019 21:15:21 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (usa-sjc-mx-foss1.foss.arm.com
 [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 14C673F5C1;
 Sat,  4 May 2019 21:15:17 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/mm: Identify user instruction aborts
Date: Sun,  5 May 2019 09:45:12 +0530
Message-Id: <1557029712-3237-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_211526_591910_1C07C5E9 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We don't currently set the FAULT_FLAG_INSTRUCTION mm flag for EL0
instruction aborts. This has no functional impact, as we don't override
arch_vma_access_permitted(), and the default implementation always returns
true. However, it would be helpful to provide the flag so that it can be
consumed by tracepoints such as dax_pmd_fault.

This patch sets the FAULT_FLAG_INSTRUCTION flag for EL0 instruction aborts.

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/mm/fault.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 1a7e92a..b641449 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -463,6 +463,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 
 	if (is_el0_instruction_abort(esr)) {
 		vm_flags = VM_EXEC;
+		mm_flags |= FAULT_FLAG_INSTRUCTION;
 	} else if ((esr & ESR_ELx_WNR) && !(esr & ESR_ELx_CM)) {
 		vm_flags = VM_WRITE;
 		mm_flags |= FAULT_FLAG_WRITE;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
