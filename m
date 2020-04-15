Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 073411AA391
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:12:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8WZIuhfGdmf75n7kqx/1SWmm8iAdk2yx41mTdRGsCeY=; b=CAjx4a1I882zp9
	VSnbPzq/9TLsVp2xhoVqlyBcG6XSVT3xsb8SD12opQ6DeHbxgXitCBI28G+TRshMsuzLsXJ/Q6DVI
	UWzYsq2kbqupKqf4FtF6c/csX/Xdv1QeZfB6W9iJArM2KrfOkxN5n4Tqc4C4yD0MAKit/DApgV4/a
	WQ3Eb3aGPsYXc1eAA+3DOiGabRVZ+pxu0mJ84yeWP5LC2KVIJFML+/adRAFIgWFJd6g2I4twmvvTT
	+qjFizvrx+bXzjmnzcIOU/3U4SO4Rf+C7vH0Xo/cwPjkHSeTtmWCp+t+DSpzSJv6ieoYKYOD7ezHS
	Y57n4HRNw6DkUUKihsTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhpi-0000kL-8r; Wed, 15 Apr 2020 13:12:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhpW-0000hC-5A
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:11:51 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 21A0D2076D;
 Wed, 15 Apr 2020 13:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586956309;
 bh=YAVq84F2Sibfviu5tSsgkZLta3+EbDDcemBKh/sLASA=;
 h=From:To:Cc:Subject:Date:From;
 b=zYrd11fVH8KyEpRqk+3o7VZ1J4p7PcofGNVqYyB+Z+Dwtzt/Zehgn/ywjSNJayZWF
 ekknproPGZf0XCe3oSui4S8xjYPPKyQNelUIO85t8prCzqQnFCpUEXNCF+YtvpCOnj
 FAe/UkfHOyIqf1oDYSiNWp7mpCgebXBj8FhFwQBI=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 00/10] arm64: BTI kernel and vDSO support
Date: Wed, 15 Apr 2020 14:07:39 +0100
Message-Id: <20200415130750.18645-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_061150_215575_E2FBD337 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Brown <broonie@kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series builds on top of a merge of for-next/bti in the arm64
tree and v5.7-rc1 to add support for protecting the kernel and vDSO with
BTI.  It does not currently handle BPF, that will be added in a future
update.

We build the kernel with annotations for BTI and then map the kernel
with GP based on the support on the boot CPU, rejecting secondaries that
don't have BTI support.  If there is a need to handle big.LITTLE systems
with mismatched BTI support we will have to revisit this, currently no
such implementations exist.

Due to code generation issues with current versions of GCC we currently
disable this support when building with GCC, these issues are under
active investigation and once fixes are understood we can add suitable
dependencies.

Mark Brown (10):
  arm64: kernel: Convert to modern annotations for assembly functions
  arm64: bti: Support building kernel C code using BTI
  arm64: asm: Override SYM_FUNC_START when building the kernel with BTI
  arm64: Set GP bit in kernel page tables to enable BTI for the kernel
  arm64: mm: Mark module text as guarded pages
  arm64: bti: Provide Kconfig for kernel mode BTI
  arm64: asm: Provide a mechanism for generating ELF note for BTI
  arm64: vdso: Annotate for BTI
  arm64: vdso: Force the vDSO to be linked as BTI when built for BTI
  arm64: vdso: Map the vDSO text with guarded pages when built for BTI

 arch/arm64/Kconfig                            | 18 ++++++++
 arch/arm64/Makefile                           |  4 ++
 arch/arm64/include/asm/assembler.h            | 41 +++++++++++++++++
 arch/arm64/include/asm/linkage.h              | 46 +++++++++++++++++++
 arch/arm64/include/asm/pgtable-prot.h         |  5 ++
 arch/arm64/kernel/cpu-reset.S                 |  4 +-
 arch/arm64/kernel/cpufeature.c                |  4 ++
 arch/arm64/kernel/efi-rt-wrapper.S            |  4 +-
 arch/arm64/kernel/entry-fpsimd.S              | 20 ++++----
 arch/arm64/kernel/entry.S                     |  7 +--
 arch/arm64/kernel/hibernate-asm.S             | 16 +++----
 arch/arm64/kernel/hyp-stub.S                  | 20 ++++----
 arch/arm64/kernel/probes/kprobes_trampoline.S |  4 +-
 arch/arm64/kernel/reloc_test_syms.S           | 44 +++++++++---------
 arch/arm64/kernel/relocate_kernel.S           |  4 +-
 arch/arm64/kernel/sleep.S                     | 12 ++---
 arch/arm64/kernel/smccc-call.S                |  8 ++--
 arch/arm64/kernel/vdso.c                      |  6 ++-
 arch/arm64/kernel/vdso/Makefile               |  4 +-
 arch/arm64/kernel/vdso/note.S                 |  3 ++
 arch/arm64/kernel/vdso/sigreturn.S            |  3 ++
 arch/arm64/kernel/vdso/vdso.S                 |  3 ++
 arch/arm64/mm/mmu.c                           | 24 ++++++++++
 arch/arm64/mm/pageattr.c                      |  4 +-
 24 files changed, 233 insertions(+), 75 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
