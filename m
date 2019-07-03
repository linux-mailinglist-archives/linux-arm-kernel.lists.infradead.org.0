Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1B55E952
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 18:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ne+/lDrkyP3RswBzOY+q6bt1IhNVukHDHJCb2EOT8mM=; b=cuK
	z/kuAS0u+PRTTui4mzc8ZrJZtRa5rJxPYYCgQO+bNIk2lsTZK/KhwwdUWDLf/4wAT43XyX/QKsJas
	LARazSaOqa/OZUmOqAyaVHgG2QKXhwaXcziOvlUU2BlbxcjyK1L37YHSk1YZCEFm0Fh2C6Oxpk3ds
	/e5deSvY0B6YMDZZO87YU5rHhKV7KopWwtv/OIEAgaTxnDA9vbYYW1bv+4UpJAOmKqY2vpABUxGd6
	4lFI/nNhvjTTXjxLBcwU+xQR31yWqrdC8IkN+a4QWiE8kw4AnAaCrnTdSuRduCGQrUc4gf0sYJwWt
	JolCvu8xZ5Rix6k7zPWTkRMq4Q72o3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiiG7-0003nV-7W; Wed, 03 Jul 2019 16:37:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiiF0-00035v-9d
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 16:36:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D702344;
 Wed,  3 Jul 2019 09:36:13 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F2F23F718;
 Wed,  3 Jul 2019 09:36:12 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v2 00/10] Add arm64/signal initial kselftest support
Date: Wed,  3 Jul 2019 17:35:22 +0100
Message-Id: <20190703163532.7485-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_093618_448961_EA6FDA5F 
X-CRM114-Status: GOOD (  13.39  )
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
Cc: andreyknvl@google.com, dave.martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

this patchset aims to add the initial arch-specific arm64 support to
kselftest starting with signals-related test-cases.
A common internal test-case layout is proposed which then it is
anyway wired-up to the toplevel kselftest Makefile, so that it
should be possible at the end to run it on an arm64 target in the
usual way with KSFT.

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

- a bit of overlap around KSFT arm64/ Makefiles is expected with this recently
  proposed patch-series:
  http://lists.infradead.org/pipermail/linux-arm-kernel/2019-June/659432.html


Changes:
--------

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


Cristian Marussi (10):
  kselftest: arm64: introduce new boilerplate code
  kselftest: arm64: adds first test and common utils
  kselftest: arm64: mangle_pstate_invalid_daif_bits
  kselftest: arm64: mangle_pstate_invalid_mode_el
  kselftest: arm64: mangle_pstate_ssbs_regs
  kselftest: arm64: fake_sigreturn_bad_magic
  kselftest: arm64: fake_sigreturn_bad_size_for_magic0
  kselftest: arm64: fake_sigreturn_missing_fpsimd
  kselftest: arm64: fake_sigreturn_duplicated_fpsimd
  kselftest: arm64: fake_sigreturn_bad_size

 tools/testing/selftests/Makefile              |   1 +
 tools/testing/selftests/arm64/Makefile        |  51 +++
 tools/testing/selftests/arm64/README          |  43 +++
 .../testing/selftests/arm64/signal/.gitignore |   5 +
 tools/testing/selftests/arm64/signal/Makefile |  86 +++++
 tools/testing/selftests/arm64/signal/README   |  59 ++++
 .../testing/selftests/arm64/signal/signals.S  |  64 ++++
 .../arm64/signal/test_arm64_signals.sh        |  55 +++
 .../selftests/arm64/signal/test_signals.c     |  26 ++
 .../selftests/arm64/signal/test_signals.h     | 141 ++++++++
 .../arm64/signal/test_signals_utils.c         | 331 ++++++++++++++++++
 .../arm64/signal/test_signals_utils.h         |  31 ++
 .../arm64/signal/testcases/.gitignore         |  11 +
 .../testcases/fake_sigreturn_bad_magic.c      |  63 ++++
 .../testcases/fake_sigreturn_bad_size.c       |  85 +++++
 .../fake_sigreturn_bad_size_for_magic0.c      |  57 +++
 .../fake_sigreturn_duplicated_fpsimd.c        |  62 ++++
 .../testcases/fake_sigreturn_missing_fpsimd.c |  44 +++
 .../mangle_pstate_invalid_compat_toggle.c     |  25 ++
 .../mangle_pstate_invalid_daif_bits.c         |  28 ++
 .../mangle_pstate_invalid_mode_el1.c          |  29 ++
 .../mangle_pstate_invalid_mode_el2.c          |  29 ++
 .../mangle_pstate_invalid_mode_el3.c          |  29 ++
 .../testcases/mangle_pstate_ssbs_regs.c       |  56 +++
 .../arm64/signal/testcases/testcases.c        | 150 ++++++++
 .../arm64/signal/testcases/testcases.h        |  83 +++++
 26 files changed, 1644 insertions(+)
 create mode 100644 tools/testing/selftests/arm64/Makefile
 create mode 100644 tools/testing/selftests/arm64/README
 create mode 100644 tools/testing/selftests/arm64/signal/.gitignore
 create mode 100644 tools/testing/selftests/arm64/signal/Makefile
 create mode 100644 tools/testing/selftests/arm64/signal/README
 create mode 100644 tools/testing/selftests/arm64/signal/signals.S
 create mode 100755 tools/testing/selftests/arm64/signal/test_arm64_signals.sh
 create mode 100644 tools/testing/selftests/arm64/signal/test_signals.c
 create mode 100644 tools/testing/selftests/arm64/signal/test_signals.h
 create mode 100644 tools/testing/selftests/arm64/signal/test_signals_utils.c
 create mode 100644 tools/testing/selftests/arm64/signal/test_signals_utils.h
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/.gitignore
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size_for_magic0.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_missing_fpsimd.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_compat_toggle.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_daif_bits.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/testcases.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/testcases.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
