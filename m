Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4423627A70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:25:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4lDSYDgUOGRVjMPUXLc/AUr/t6hX3vLnMHUaNr7lUxA=; b=mT1IIa52QJ3xbBJnY3JbWUrgDa
	Nk1HnSD+i6GKJvfZS9GWNL4lnryIQpwmD1nN8l2LuX+XgJd+ZqMdILtl1p6fdWsqbIqdGLVxzJFVE
	rdy5/JlKNEtcD3/a2ZrHOE5SIBeoLXx2zRXI5IB4pJ6plnmm5a7wvbGKYgG6tK5zdBI2Fpb/VmmsC
	Q3CNmZm0nQwnruK92GgHk6GziO1Qj01ZZrvoB1IpBsXqjyyfAmkhmO7Pj6Y4QIA+sa9LopDwhX4gM
	Yp2AqnjbcnB4euuJDk/YGFPopad/ddkwWfaC9/uZs0SEWwwyWTOhTcnfZq/tGfhkKG6fkuEdEucHA
	lQdpthew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTkuc-0004aR-6V; Thu, 23 May 2019 10:25:26 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTkto-0002qN-Dv
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:24:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 15B3BA78;
 Thu, 23 May 2019 03:24:36 -0700 (PDT)
Received: from e111045-lin.cambridge.arm.com (unknown [10.1.39.23])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E8F623F718;
 Thu, 23 May 2019 03:24:33 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/4] arm64/kprobes: set VM_FLUSH_RESET_PERMS on kprobe
 instruction pages
Date: Thu, 23 May 2019 11:22:55 +0100
Message-Id: <20190523102256.29168-4-ard.biesheuvel@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190523102256.29168-1-ard.biesheuvel@arm.com>
References: <20190523102256.29168-1-ard.biesheuvel@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_032437_146688_28466A2B 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, marc.zyngier@arm.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Nadav Amit <namit@vmware.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to avoid transient inconsistencies where freed code pages
are remapped writable while stale TLB entries still exist on other
cores, mark the kprobes text pages with the VM_FLUSH_RESET_PERMS
attribute. This instructs the core vmalloc code not to defer the
TLB flush when this region is unmapped and returned to the page
allocator.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@arm.com>
---
 arch/arm64/kernel/probes/kprobes.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index 2509fcb6d404..036cfbf9682a 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -131,8 +131,10 @@ void *alloc_insn_page(void)
 	void *page;
 
 	page = vmalloc_exec(PAGE_SIZE);
-	if (page)
+	if (page) {
 		set_memory_ro((unsigned long)page, 1);
+		set_vm_flush_reset_perms(page);
+	}
 
 	return page;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
