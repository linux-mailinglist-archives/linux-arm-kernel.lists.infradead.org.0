Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38819163114
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:59:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VEo6bQytQCO4j7QW8jSrwNCKU6J7yi4WMchs53smxqc=; b=NG9fcIEssex2vp
	JhQ1J0RFJ2msOsz4lIe/EnupBP+9TdMS+KaXSfVrAvOU3f/qf3rAj+oyM3YgDcfAj4Sjf+PGvU3c+
	eVBydheFjLo9hr+/3GH/uG/IdROpkVbgivqpuqlw2v1SDEd0q/YPno6tRXFRGFBViRBEvV8uahYRl
	xsz8xR6DHcKTT9HufLmGB+vp306dgnAjkq8rqCu83FEpx0W1Bpc63uq03S2pQQ3+gYILnzx4jvR8k
	CzxFxvdX8o6PZ8nB7xNL8QtkHTBihKISyH3vHF9vMMV0HFvXz4z5i66A72xSzlmodgQgbpUT2HTff
	yU6XabZIgkLec9bMK5ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j491W-0005TN-89; Tue, 18 Feb 2020 19:59:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j491F-0005Q7-53
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:58:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF38631B;
 Tue, 18 Feb 2020 11:58:53 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 60BA93F68F;
 Tue, 18 Feb 2020 11:58:53 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH 00/18] arm64: Modernize assembly annotations
Date: Tue, 18 Feb 2020 19:58:24 +0000
Message-Id: <20200218195842.34156-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_115857_282883_0480657C 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to clarify and simplify the annotation of assembly functions
in the kernel new macros have been introduced. These replace ENTRY and
ENDPROC and also add a new annotation for static functions which previously
had no ENTRY equivalent.

This series collects together all the currently pending patches relating
updating the arm64 architecture code to use the modern macros.

Mark Brown (18):
  arm64: crypto: Modernize some extra assembly annotations
  arm64: crypto: Modernize names for AES function macros
  arm64: entry: Annotate vector table and handlers as code
  arm64: entry: Annotate ret_from_fork as code
  arm64: entry: Additional annotation conversions for entry.S
  arm64: entry-ftrace.S: Convert to modern annotations for assembly
    functions
  arm64: ftrace: Correct annotation of ftrace_caller assembly
  arm64: ftrace: Modernise annotation of return_to_handler
  arm64: head.S: Convert to modern annotations for assembly functions
  arm64: head: Annotate stext and preserve_boot_args as code
  arm64: kernel: Convert to modern annotations for assembly data
  arm64: kernel: Convert to modern annotations for assembly functions
  arm64: kvm: Annotate assembly using modern annoations
  arm64: kvm: Modernize annotation for __bp_harden_hyp_vecs
  arm64: kvm: Modernize __smccc_workaround_1_smc_start annotations
  arm64: sdei: Annotate SDEI entry points using new style annotations
  arm64: vdso: Convert to modern assembler annotations
  arm64: vdso32: Convert to modern assembler annotations

 arch/arm64/crypto/aes-ce.S                    |   4 +-
 arch/arm64/crypto/aes-modes.S                 |  48 ++++----
 arch/arm64/crypto/aes-neon.S                  |   4 +-
 arch/arm64/crypto/ghash-ce-core.S             |  16 +--
 arch/arm64/include/asm/kvm_asm.h              |   4 +
 arch/arm64/include/asm/kvm_mmu.h              |   9 +-
 arch/arm64/include/asm/mmu.h                  |   4 +-
 arch/arm64/kernel/cpu-reset.S                 |   4 +-
 arch/arm64/kernel/cpu_errata.c                |  16 ++-
 arch/arm64/kernel/efi-entry.S                 |   4 +-
 arch/arm64/kernel/efi-rt-wrapper.S            |   4 +-
 arch/arm64/kernel/entry-fpsimd.S              |  20 +--
 arch/arm64/kernel/entry-ftrace.S              |  48 ++++----
 arch/arm64/kernel/entry.S                     | 115 +++++++++---------
 arch/arm64/kernel/head.S                      |  73 +++++------
 arch/arm64/kernel/hibernate-asm.S             |  16 +--
 arch/arm64/kernel/hyp-stub.S                  |  20 +--
 arch/arm64/kernel/probes/kprobes_trampoline.S |   4 +-
 arch/arm64/kernel/reloc_test_syms.S           |  44 +++----
 arch/arm64/kernel/relocate_kernel.S           |   4 +-
 arch/arm64/kernel/sleep.S                     |  12 +-
 arch/arm64/kernel/smccc-call.S                |   8 +-
 arch/arm64/kernel/vdso/sigreturn.S            |   4 +-
 arch/arm64/kernel/vdso32/sigreturn.S          |  23 ++--
 arch/arm64/kvm/hyp-init.S                     |   8 +-
 arch/arm64/kvm/hyp.S                          |   4 +-
 arch/arm64/kvm/hyp/fpsimd.S                   |   8 +-
 arch/arm64/kvm/hyp/hyp-entry.S                |  27 ++--
 28 files changed, 280 insertions(+), 275 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
