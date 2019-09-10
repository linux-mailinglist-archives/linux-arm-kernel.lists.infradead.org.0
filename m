Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C04AEA6F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 14:32:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+/uiNI6K9ukMoRa6T9KHbX7AQ8XpuqmkuhgGs4AAy8w=; b=AES
	5vMkMdeu9dm0ARwmjDMmnFQ0OUCHuAhXQvLzJ9i7blTrykEfCrzDaXJsRg9Wii92EQj2szIXJIaSl
	qmclxcq0oue9G4aOADPRui3NZi3kDHtC3cwl27DYen2EK8XSh8DzFNnSsV7UcmHWovPZZz/bVTY4C
	SfU3jPxy6DgAA/UcDoA+GDKvaTctcUPVafXZsbgqiJoVZ3Pr/xIjJ/4a1zVjrUj0xAnAfDEp4a6W2
	jkzk0Lsbyi7faVIgiKzoF8JlPTkZkybmVC/MbeFNkUSDlBn97jmvSQilzFDYGpmH5HeOcZV+JNE0X
	KxlxnAl7/4/4JCxgVQjM+ojqCjv9PjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7fJh-0008NC-AZ; Tue, 10 Sep 2019 12:32:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7fJ5-00088U-Ba
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 12:31:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CDAAA1000;
 Tue, 10 Sep 2019 05:31:37 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CAE7D3F59C;
 Tue, 10 Sep 2019 05:31:36 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v6 00/11] Add arm64/signal initial kselftest support
Date: Tue, 10 Sep 2019 13:31:00 +0100
Message-Id: <20190910123111.33478-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_053139_488410_B41005D0 
X-CRM114-Status: GOOD (  15.56  )
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, dave.martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

this patchset aims to add the initial arch-specific arm64 support to
kselftest starting with signals-related test-cases.

This series is based on arm64/for-next/core [1]:

commit 9ce1263033cd ("selftests, arm64: add a selftest for passing
		       tagged pointers to kernel")

A common internal test-case layout is proposed for signal tests and it is
wired-up to the toplevel kselftest Makefile, so that it should be possible
at the end to run it on an arm64 target in the usual way with KSFT.

~/linux# make TARGETS=arm64 kselftest

New KSFT arm64 testcases live inside tools/testing/selftests/arm64 grouped
by family inside subdirectories: arm64/signal is the first family proposed
with this series.

This series converts also to this subdirectory scheme the pre-existing
(already queued on arm64/for-next/core) KSFT arm64 tags tests, moving them
into arm64/tags.

Thanks

Cristian

[1] git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/core

Notes:
-----
- further details in the included READMEs

- more tests still to be written (current strategy is going through the related
  Kernel signal-handling code and write a test for each possible and sensible code-path)
  A few ideas for more TODO testcases:
	- fake_sigreturn_unmapped_sp: SP into unmapped addrs
	- fake_sigreturn_kernelspace_sp: SP into kernel addrs
	- fake_sigreturn_sve_bad_extra_context: SVE extra context badly formed
	- fake_sigreturn_misaligned_sp_4: misaligned SP by 4 (i.e., __alignof__(struct _aarch64_ctx))
	- fake_sigreturn_misaligned_sp_8: misaligned SP by 8 (i.e., sizeof(struct _aarch64_ctx))
	- fake_sigreturn_bad_size_non_aligned: a size that doesn't overflow __reserved[], but is not a multiple of 16
	- fake_sigreturn_bad_size_tiny: a size that is less than 16
	- fake_sigreturn_bad_size_overflow_tiny: a size that does overflow __reserved[], but by less than 16 bytes?
	- mangle_sve_invalid_extra_context: SVE extra_context invalid

- SVE signal testcases and special handling will be part of an additional patch
  still to be released

- KSFT arm64 tags test patch
  https://lore.kernel.org/linux-arm-kernel/c1e6aad230658bc175b42d92daeff2e30050302a.1563904656.git.andreyknvl@google.com/
  is relocated into its own directory under tools/testing/selftests/arm64/tags


Changes:
--------
 v5-->v6:
 - added arm64 toplevel Makefile SUBTARGETS env var to be able to selectively
   build only some arm64/ tests subdirectories
 - removed unneed toplevel Makefile exports and fixed Copyright
 - better checks for supported features and features names helpers
 - converted some run-time critical assert() to abort() to avoid
   issues when -NDEBUG is set
 - default_handler() signal handler refactored and split
 - using SIGTRAP for get_current_context()
 - use volatile where proper
 - refactor and relocate test_init() invocation
 - review usage of MRS SSBS instructions depending on HW_SSBS
 - cleanup fake_sigreturn trampoline
 - cleanup get_starting_header helper
 - avoiding timeout test failures wherever possible (fail immediately
   if possible)

 v4-->v5:
 - rebased on arm64/for-next-core merging 01/11 with KSFT tags tests:
   commit 9ce1263033cd ("selftests, arm64: add a selftest for passing tagged pointers to kernel")
 - moved .gitignore up on elevel
 - moved kernel header search mechanism into KSFT arm64 toplevel Makefile
   so that it can be used easily also by each arm64 KSFT subsystem inside
   subdirs of arm64

 v3-->v4:
 - rebased on v5.3-rc6
 - added test descriptions
 - fixed commit messages (imperative mood)
 - added missing includes and removed unneeded ones
 - added/used new get_starting_head() helper
 - fixed/simplified signal.S::fakke_sigreturn()
 - added set_regval() macro and .init initialization func
 - better synchonization in get_current_context()
 - macroization of mangle_pstate_invalid_mode_el
 - split mangle_pstate_invalid_mode_el h/t
 - removed standalone mode
 - simplified CPU features checks
 - fixed/refactored get_header() and validation routines
 - simplfied docs


 v2-->v3:
 - rebased on v5.3-rc2
 - better test result characterization looking for
   SEGV_ACCERR in si_code on SIGSEGV
 - using KSFT Framework macros for retvalues
 - removed SAFE_WRITE()/dump_uc: buggy, un-needed and unused
 - reviewed generation process of test_arm64_signals.sh runner script
 - re-added a fixed fake_sigreturn_misaligned_sp testcase and a properly
   extended fake_sigreturn() helper
 - added tests' TODO notes


 v1-->v2:
- rebased on 5.2-rc7
- various makefile's cleanups
- mixed READMEs fixes
- fixed test_arm64_signals.sh runner script
- cleaned up assembly code in signal.S
- improved get_current_context() logic
- fixed SAFE_WRITE()
- common support code split into more chunks, each one introduced when
  needed by some new testcases
- fixed some headers validation routines in testcases.c
- removed some still broken/immature tests:
  + fake_sigreturn_misaligned
  + fake_sigreturn_overflow_reserved
  + mangle_pc_invalid
  + mangle_sp_misaligned
- fixed some other testcases:
  + mangle_pstate_ssbs_regs: better checks of SSBS bit when feature unsupported
  + mangle_pstate_invalid_compat_toggle: name fix
  + mangle_pstate_invalid_mode_el[1-3]: precautionary zeroing PSTATE.MODE
  + fake_sigreturn_bad_magic, fake_sigreturn_bad_size,
    fake_sigreturn_bad_size_for_magic0:
    - accounting for available space...dropping extra when needed
    - keeping alignent
- new testcases on FPSMID context:
  + fake_sigreturn_missing_fpsimd
  + fake_sigreturn_duplicated_fpsimd


Cristian Marussi (11):
  kselftest: arm64: extend toplevel skeleton Makefile
  kselftest: arm64: mangle_pstate_invalid_compat_toggle and common utils
  kselftest: arm64: mangle_pstate_invalid_daif_bits
  kselftest: arm64: mangle_pstate_invalid_mode_el[123][ht]
  kselftest: arm64: mangle_pstate_ssbs_regs
  kselftest: arm64: fake_sigreturn_bad_magic
  kselftest: arm64: fake_sigreturn_bad_size_for_magic0
  kselftest: arm64: fake_sigreturn_missing_fpsimd
  kselftest: arm64: fake_sigreturn_duplicated_fpsimd
  kselftest: arm64: fake_sigreturn_bad_size
  kselftest: arm64: fake_sigreturn_misaligned_sp

 tools/testing/selftests/Makefile              |   1 +
 tools/testing/selftests/arm64/Makefile        |  63 +++-
 tools/testing/selftests/arm64/README          |  25 ++
 .../testing/selftests/arm64/signal/.gitignore |   3 +
 tools/testing/selftests/arm64/signal/Makefile |  32 ++
 tools/testing/selftests/arm64/signal/README   |  59 ++++
 .../testing/selftests/arm64/signal/signals.S  |  64 ++++
 .../selftests/arm64/signal/test_signals.c     |  29 ++
 .../selftests/arm64/signal/test_signals.h     | 125 +++++++
 .../arm64/signal/test_signals_utils.c         | 331 ++++++++++++++++++
 .../arm64/signal/test_signals_utils.h         | 120 +++++++
 .../testcases/fake_sigreturn_bad_magic.c      |  52 +++
 .../testcases/fake_sigreturn_bad_size.c       |  77 ++++
 .../fake_sigreturn_bad_size_for_magic0.c      |  46 +++
 .../fake_sigreturn_duplicated_fpsimd.c        |  50 +++
 .../testcases/fake_sigreturn_misaligned_sp.c  |  37 ++
 .../testcases/fake_sigreturn_missing_fpsimd.c |  50 +++
 .../mangle_pstate_invalid_compat_toggle.c     |  31 ++
 .../mangle_pstate_invalid_daif_bits.c         |  35 ++
 .../mangle_pstate_invalid_mode_el1h.c         |  15 +
 .../mangle_pstate_invalid_mode_el1t.c         |  15 +
 .../mangle_pstate_invalid_mode_el2h.c         |  15 +
 .../mangle_pstate_invalid_mode_el2t.c         |  15 +
 .../mangle_pstate_invalid_mode_el3h.c         |  15 +
 .../mangle_pstate_invalid_mode_el3t.c         |  15 +
 .../mangle_pstate_invalid_mode_template.h     |  28 ++
 .../testcases/mangle_pstate_ssbs_regs.c       |  88 +++++
 .../arm64/signal/testcases/testcases.c        | 196 +++++++++++
 .../arm64/signal/testcases/testcases.h        | 104 ++++++
 tools/testing/selftests/arm64/tags/Makefile   |   6 +
 .../arm64/{ => tags}/run_tags_test.sh         |   0
 .../selftests/arm64/{ => tags}/tags_test.c    |   0
 32 files changed, 1738 insertions(+), 4 deletions(-)
 create mode 100644 tools/testing/selftests/arm64/README
 create mode 100644 tools/testing/selftests/arm64/signal/.gitignore
 create mode 100644 tools/testing/selftests/arm64/signal/Makefile
 create mode 100644 tools/testing/selftests/arm64/signal/README
 create mode 100644 tools/testing/selftests/arm64/signal/signals.S
 create mode 100644 tools/testing/selftests/arm64/signal/test_signals.c
 create mode 100644 tools/testing/selftests/arm64/signal/test_signals.h
 create mode 100644 tools/testing/selftests/arm64/signal/test_signals_utils.c
 create mode 100644 tools/testing/selftests/arm64/signal/test_signals_utils.h
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size_for_magic0.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned_sp.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_missing_fpsimd.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_compat_toggle.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_daif_bits.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1h.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1t.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2h.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2t.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3h.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3t.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_template.h
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/testcases.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/testcases.h
 create mode 100644 tools/testing/selftests/arm64/tags/Makefile
 rename tools/testing/selftests/arm64/{ => tags}/run_tags_test.sh (100%)
 rename tools/testing/selftests/arm64/{ => tags}/tags_test.c (100%)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
