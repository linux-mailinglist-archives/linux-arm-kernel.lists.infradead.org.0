Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8539D0A10
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gP5b7ftToRncLGUPupvt3sHuOazbsB8Rg7V5XhdWr9w=; b=pNL
	WL11kNCtJbIqEGkrccnWlRUcaMDgULTJBSo4vVWAqx8LDMwWBJMaoC8v12vhoiTzYxJZhX2hdckec
	JGYgC8UbMuU0eKptGjeqDpHjSeXxNSMsCH0IhPC3oT22tOo863Wc18WL1ejdp7Y4K0y3+lNmeQSF/
	dOETj8dbDNGmxSzfW3+D651m/wpafBJQPOMzYHdHSN933w02W7AFcHiSL7/ayjcCSWQbYNYyjmIel
	sKsMIDKCWZEzcVf6moz0swznnRlqA9jNuddrrR+2B0YBy46NYjmfWtLPsaGVevjgcNmDO1e8ObifG
	9kIFhnInOTgsyj9DmCR+e66G1Arwiig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7ZD-0004VF-LB; Wed, 09 Oct 2019 08:43:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7Yt-0004Ua-HA
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:43:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 67EC6337;
 Wed,  9 Oct 2019 01:43:09 -0700 (PDT)
Received: from localhost.localdomain (entos-thunderx2-02.shanghai.arm.com
 [10.169.40.54])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B69F03F68E;
 Wed,  9 Oct 2019 01:43:04 -0700 (PDT)
From: Jia He <justin.he@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>,
 Marc Zyngier <maz@kernel.org>, Matthew Wilcox <willy@infradead.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Suzuki Poulose <Suzuki.Poulose@arm.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 x86@kernel.org
Subject: [PATCH v11 0/4] fix double page fault in cow_user_page for pfn mapping
Date: Wed,  9 Oct 2019 16:42:42 +0800
Message-Id: <20191009084246.123354-1-justin.he@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_014311_617012_CB77B281 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Jia He <justin.he@arm.com>, Kaly Xin <Kaly.Xin@arm.com>, hejianet@gmail.com,
 Thomas Gleixner <tglx@linutronix.de>, nd@arm.com,
 Andrew Morton <akpm@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When we tested pmdk unit test vmmalloc_fork TEST1 in arm64 guest, there
will be a double page fault in __copy_from_user_inatomic of cow_user_page.

As told by Catalin: "On arm64 without hardware Access Flag, copying from
user will fail because the pte is old and cannot be marked young. So we
always end up with zeroed page after fork() + CoW for pfn mappings. we
don't always have a hardware-managed access flag on arm64."

Changes
v11:
    refine cpu_has_hw_af in PATCH 01(Will Deacon, Suzuki)
    change the default return value to true in arch_faults_on_old_pte
    add PATCH 03 for overriding arch_faults_on_old_pte(false) on x86
v10:
    add r-b from Catalin and a-b from Kirill in PATCH 03
    remoe Reported-by in PATCH 01
v9: refactor cow_user_page for indention optimization (Catalin)
    hold the ptl longer (Catalin)
v8: change cow_user_page's return type (Matthew)
v7: s/pte_spinlock/pte_offset_map_lock (Kirill)
v6: fix error case of returning with spinlock taken (Catalin)
    move kmap_atomic to avoid handling kunmap_atomic
v5: handle the case correctly when !pte_same
    fix kbuild test failed
v4: introduce cpu_has_hw_af (Suzuki)
    bail out if !pte_same (Kirill)
v3: add vmf->ptl lock/unlock (Kirill A. Shutemov)
    add arch_faults_on_old_pte (Matthew, Catalin)
v2: remove FAULT_FLAG_WRITE when setting pte access flag (Catalin)

Jia He (4):
  arm64: cpufeature: introduce helper cpu_has_hw_af()
  arm64: mm: implement arch_faults_on_old_pte() on arm64
  x86/mm: implement arch_faults_on_old_pte() stub on x86
  mm: fix double page fault on arm64 if PTE_AF is cleared

 arch/arm64/include/asm/cpufeature.h |  14 ++++
 arch/arm64/include/asm/pgtable.h    |  14 ++++
 arch/x86/include/asm/pgtable.h      |   6 ++
 mm/memory.c                         | 104 ++++++++++++++++++++++++----
 4 files changed, 123 insertions(+), 15 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
