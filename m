Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5CF1BE9BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ude1Vruzh9K+ndDbllVqfdERwjaqAL5ihAdEjpE54fQ=; b=Wdt6keLRDUS5Sm
	SP2US53st1vOzOB+2STHuXrojNkOipPc3gI/mF4gG8e2OJm4rASVVqQ3U6FdYq4e76rVUQl9PetMF
	t7UzU1jB1/+SInIp7QME2l7HbZeOMgRqfd/cuvwZ6kCfOETqshGPsScIYqJhM3UcBhBVvxLDRlovn
	uNmcaZ5+oQxW2jO5bsFKoilC7zkHQwmIBd7COVWioFA33RElPUjX8X+n4MY38LlKuo1TvzjEjYsUc
	ZjGEk1kxkO+34PJ8KMPYcUwUUE/5IEN6i4ya2HIADzX+pStRqCHKfuJUlaVg9YtKO8SComPxvNGNy
	jre+4arCw/XXGmmHRHuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTu84-000641-Eh; Wed, 29 Apr 2020 21:20:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTu7V-00062c-UH
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:19:56 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F32F9214D8;
 Wed, 29 Apr 2020 21:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588195193;
 bh=4CIoiGNqOTwTHBI47pZWHxDUfaqgH5xE1G2Sj9VEPr0=;
 h=From:To:Cc:Subject:Date:From;
 b=ktAXTtbLfk1biwwNx9VCpJmmOsudz0S5Lo5GI0ZCuTC9LbewIioxFQ3EbcwUqPrwb
 A4BmNZBThTeDKrlkKzFd5xDX3UdE7MtCnCbOB8XwU32O4yJDyCLZ4tUKiGE23YZZG6
 1le2Spifs/4MxO6famZjKZ96f1CcMJA54hkukQSI=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v2 00/10] arm64: BTI kernel and vDSO support
Date: Wed, 29 Apr 2020 22:16:31 +0100
Message-Id: <20200429211641.9279-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_141954_138754_E4376760 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This patch series adds support for protecting the kernel and vDSO with
BTI including code compiled with the BPF JIT at runtime.

We build the kernel with annotations for BTI and then map the kernel
with GP based on the support on the boot CPU, rejecting secondaries that
don't have BTI support. If there is a need to handle big.LITTLE systems
with mismatched BTI support we will have to revisit this, currently no
such implementations exist.

I'm currently finalizing testing of the BPF support, the in-kernel
test_bpf tests run cleanly.

This series depends on:

 - for-next/bti in the arm64 tree
 - The series "arm64: Finish up assembler annotation modernisation"
 - The series "arm64: Make NOP handling a whitelist"

There is some discussion between Catalin and Will about the use of a
separate Kconfig option for this, I've left the separate option for now.

v2:
 - Enable support for building with GCC version 10 and later, a fix
   for BTI code generation is being backported to GCC 9 but is not yet
   available.
 - Add BPF support.
 - Remove some unused page attribute defines.
 - One assembler modernisation patch has been removed and sent
   separately.

Mark Brown (10):
  arm64: bti: Support building kernel C code using BTI
  arm64: asm: Override SYM_FUNC_START when building the kernel with BTI
  arm64: Set GP bit in kernel page tables to enable BTI for the kernel
  arm64: bpf: Annotate JITed code for BTI
  arm64: mm: Mark executable text as guarded pages
  arm64: bti: Provide Kconfig for kernel mode BTI
  arm64: asm: Provide a mechanism for generating ELF note for BTI
  arm64: vdso: Annotate for BTI
  arm64: vdso: Force the vDSO to be linked as BTI when built for BTI
  arm64: vdso: Map the vDSO text with guarded pages when built for BTI

 arch/arm64/Kconfig                    | 18 +++++++++++
 arch/arm64/Makefile                   |  4 +++
 arch/arm64/include/asm/assembler.h    | 41 ++++++++++++++++++++++++
 arch/arm64/include/asm/linkage.h      | 46 +++++++++++++++++++++++++++
 arch/arm64/include/asm/pgtable-prot.h |  3 ++
 arch/arm64/kernel/cpufeature.c        |  4 +++
 arch/arm64/kernel/vdso.c              |  6 +++-
 arch/arm64/kernel/vdso/Makefile       |  4 ++-
 arch/arm64/kernel/vdso/note.S         |  3 ++
 arch/arm64/kernel/vdso/sigreturn.S    |  3 ++
 arch/arm64/kernel/vdso/vdso.S         |  3 ++
 arch/arm64/mm/mmu.c                   | 24 ++++++++++++++
 arch/arm64/mm/pageattr.c              |  4 +--
 arch/arm64/net/bpf_jit.h              |  8 +++++
 arch/arm64/net/bpf_jit_comp.c         | 12 +++++++
 15 files changed, 179 insertions(+), 4 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
