Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF25A3C64
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oD/KZKkgATy1JDAxiyop5u3ROr2lPAoWtMd3/QJ32w8=; b=f+K
	/+yyw0MIZZxYJlsCBVyYv6OCNnTUcaOE0IdpDw2ygg9avdgwyS+qqpY8L7xfPCFOHrlsdu/GqjUt2
	3rfAZUHZ49VIGmjxQUtUPQ34w5hVxJvu8/aZxG4NlzDz4YDmI0OcmhVEj+HT9BjJN19G4gnQU9fSh
	SJWug2drrdmA6WpTsulfDrcwKJkxHrUys0ZryJUx708Yb8XdKiOW+hkhrZNqm5dLt3UoX5JeB4O5p
	OM39SN+nhMi4S1lDqIJ0Io9QAi8lhxCAmjSeHkFSBcbunSWQ6BzAPFWDxovcMFQ99L0yq/prcns8E
	draBO4O9ecdKxrB98ZCC2V6EaKubF1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3k0G-00039t-Q2; Fri, 30 Aug 2019 16:44:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3jzq-0002wl-GF
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:43:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1F576344;
 Fri, 30 Aug 2019 09:43:34 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 365D93F718;
 Fri, 30 Aug 2019 09:43:33 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v4 00/11] Add arm64/signal initial kselftest support
Date: Fri, 30 Aug 2019 17:42:37 +0100
Message-Id: <20190830164248.16238-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_094334_628807_EC2EF55A 
X-CRM114-Status: GOOD (  13.04  )
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
A common internal test-case layout is proposed which then it is anyway
wired-up to the toplevel kselftest Makefile, so that it should be possible
at the end to run it on an arm64 target in the usual way with KSFT.

~/linux# make TARGETS=arm64 kselftest

New KSFT arm64 testcases live inside tools/testing/selftests/arm64 grouped by
family inside subdirectories: arm64/signal is the first family proposed with
this series. arm64/signal tests can be run via KSFT or standalone.

Thanks

Cristian


Notes:
-----
- further details in the included READMEs

- more tests still to be written (current strategy is going through the related
  Kernel signal-handling code and write a test for each possible and sensible code-path)
  A few ideas for more TODO testcases:
	- fake_sigreturn_unmapped_sp: SP into unmapped addrs
	- fake_sigreturn_kernelspace_sp: SP into kernel addrs
	- fake_sigreturn_sve_bad_extra_context: SVE extra context badly formed
	- mangle_sve_invalid_extra_context: SVE extra_context invalid

- SVE signal testcases and special handling will be part of an additional patch
  still to be released


Changes:
--------

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
 - splitted mangle_pstate_invalid_mode_el h/t
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
- common support code splitted into more chunks, each one introduced when
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


*** BLURB HERE ***

Cristian Marussi (11):
  kselftest: arm64: add skeleton Makefile
  kselftest: arm64: add common utils and one testcase
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
 tools/testing/selftests/arm64/Makefile        |  51 +++
 tools/testing/selftests/arm64/README          |  20 +
 tools/testing/selftests/arm64/signal/Makefile |  50 +++
 tools/testing/selftests/arm64/signal/README   |  59 +++
 .../testing/selftests/arm64/signal/signals.S  |  62 +++
 .../selftests/arm64/signal/test_signals.c     |  29 ++
 .../selftests/arm64/signal/test_signals.h     | 123 ++++++
 .../arm64/signal/test_signals_utils.c         | 367 ++++++++++++++++++
 .../arm64/signal/test_signals_utils.h         |  16 +
 .../arm64/signal/testcases/.gitignore         |   3 +
 .../testcases/fake_sigreturn_bad_magic.c      |  54 +++
 .../testcases/fake_sigreturn_bad_size.c       |  77 ++++
 .../fake_sigreturn_bad_size_for_magic0.c      |  49 +++
 .../fake_sigreturn_duplicated_fpsimd.c        |  52 +++
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
 .../testcases/mangle_pstate_ssbs_regs.c       |  69 ++++
 .../arm64/signal/testcases/testcases.c        | 179 +++++++++
 .../arm64/signal/testcases/testcases.h        |  90 +++++
 29 files changed, 1622 insertions(+)
 create mode 100644 tools/testing/selftests/arm64/Makefile
 create mode 100644 tools/testing/selftests/arm64/README
 create mode 100644 tools/testing/selftests/arm64/signal/Makefile
 create mode 100644 tools/testing/selftests/arm64/signal/README
 create mode 100644 tools/testing/selftests/arm64/signal/signals.S
 create mode 100644 tools/testing/selftests/arm64/signal/test_signals.c
 create mode 100644 tools/testing/selftests/arm64/signal/test_signals.h
 create mode 100644 tools/testing/selftests/arm64/signal/test_signals_utils.c
 create mode 100644 tools/testing/selftests/arm64/signal/test_signals_utils.h
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/.gitignore
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

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
