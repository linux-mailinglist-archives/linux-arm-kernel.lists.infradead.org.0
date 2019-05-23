Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF3C27A62
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:24:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GNPnzrhdoEtXYe3ZKk2kOFUR4xx/8DxKrYE9+hwOIPI=; b=Uz4
	8i8q3vfjZn8GgoMdynlN6VKAl0bA1ekk1nZ211BrbZwwKeIH6Q0ML5DnUKuMgtc369bPA6qVmdZ1Q
	Um9vVAyJeOv0tNyENjrMERaVlOnqBhm25vOJDs7+Wl+T6HrIV4Q71mISfVQjpyToUI7APzrHxZQLO
	86BPVUqb4z3aV2QkdXZMOxO3SurKCj1hantGfrbQGwn7WEOusT/8bGJbcj68t/V2PrzQzB8Oezx3b
	xzDGhsbKS4RPqq8IAiKUuZkHKi1lzpBOeOOotF3ylMrH3lOC58E60zyzV+U3op0y/omZV+8j7xZPW
	KW9XlMRs7kaSXdqmllrQ1RT13MeKm2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTku2-0002zI-Kf; Thu, 23 May 2019 10:24:50 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTkth-0002iN-Pj
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:24:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA97AA78;
 Thu, 23 May 2019 03:24:28 -0700 (PDT)
Received: from e111045-lin.cambridge.arm.com (unknown [10.1.39.23])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A4DE43F718;
 Thu, 23 May 2019 03:24:26 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/4] arm64: wire up VM_FLUSH_RESET_PERMS
Date: Thu, 23 May 2019 11:22:52 +0100
Message-Id: <20190523102256.29168-1-ard.biesheuvel@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_032429_833966_6D330FEE 
X-CRM114-Status: GOOD (  12.04  )
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

Wire up the code introduced in v5.2 to manage the permissions
of executable vmalloc regions (and their linear aliases) more
strictly.

One of the things that came up in the internal discussion is
whether non-x86 architectures have any benefit at all from the
lazy vunmap feature, and whether it would perhaps be better to
implement eager vunmap instead.

Cc: Nadav Amit <namit@vmware.com>
Cc: Rick Edgecombe <rick.p.edgecombe@intel.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Masami Hiramatsu <mhiramat@kernel.org>
Cc: James Morse <james.morse@arm.com>

Ard Biesheuvel (4):
  arm64: module: create module allocations without exec permissions
  arm64/mm: wire up CONFIG_ARCH_HAS_SET_DIRECT_MAP
  arm64/kprobes: set VM_FLUSH_RESET_PERMS on kprobe instruction pages
  arm64: bpf: do not allocate executable memory

 arch/arm64/Kconfig                  |  1 +
 arch/arm64/include/asm/cacheflush.h |  3 ++
 arch/arm64/kernel/module.c          |  4 +-
 arch/arm64/kernel/probes/kprobes.c  |  4 +-
 arch/arm64/mm/pageattr.c            | 48 ++++++++++++++++----
 arch/arm64/net/bpf_jit_comp.c       |  2 +-
 mm/vmalloc.c                        | 11 -----
 7 files changed, 50 insertions(+), 23 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
