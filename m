Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC05C1A0B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 03:58:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uRM6o5q7SmOFEgtlvxEl9Rr+X0G0iZE3b9+gX9EqxGA=; b=pb8
	2SSCSUggkHjkOkG9guFC+1Q5wfQ+0v3+P1qDQc1ghqoEeuQpxrT5hlMEqv+pyNKlA3UKwxFCam5eH
	lfi2qmpz7FpH72vrTUMMQGAtU5n7RMCzPDvP9c8BqpCZcIT+nP57l6R9u1TMIDkTeblZ7M2hBvr7N
	Ff6Viva5qGB9BZm7ALdMGClfQvOdjvecVpm+fNkLsSFf9mpLyZcnmbwi87ms2f9r035dAJmw99B9e
	17edyKkXnRndybTPhFQZXDx8T0cXzQybdfpwju0OSxXDAr4FV+iMF4h8Vx3vK472Rse8bmmG6VhjU
	nMYlSn/t1thD/CxINR5xQGxhiGqJRoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEkx7-0001qx-6J; Mon, 30 Sep 2019 01:58:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEkwv-0001nu-Ij
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 01:58:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3ECE828;
 Sun, 29 Sep 2019 18:57:53 -0700 (PDT)
Received: from localhost.localdomain (entos-thunderx2-02.shanghai.arm.com
 [10.169.40.54])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6F8103F706;
 Sun, 29 Sep 2019 18:57:49 -0700 (PDT)
From: Jia He <justin.he@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>,
 Marc Zyngier <maz@kernel.org>, Matthew Wilcox <willy@infradead.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v10 0/3] fix double page fault on arm64
Date: Mon, 30 Sep 2019 09:57:37 +0800
Message-Id: <20190930015740.84362-1-justin.he@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_185805_660799_12F8C24D 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jia He <justin.he@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 Punit Agrawal <punitagrawal@gmail.com>, hejianet@gmail.com,
 Thomas Gleixner <tglx@linutronix.de>,
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

Jia He (3):
  arm64: cpufeature: introduce helper cpu_has_hw_af()
  arm64: mm: implement arch_faults_on_old_pte() on arm64
  mm: fix double page fault on arm64 if PTE_AF is cleared

 arch/arm64/include/asm/cpufeature.h | 10 +++
 arch/arm64/include/asm/pgtable.h    | 14 ++++
 mm/memory.c                         | 99 ++++++++++++++++++++++++-----
 3 files changed, 108 insertions(+), 15 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
