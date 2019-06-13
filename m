Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A3D43560
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 13:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OByYnXyDAUmOKgWTaIccoLON4uVov1TlFrxeeLnqP8E=; b=hQE
	CRuyjh/SyKF0DjDx+PVeLrrsbjuEwd7o5/5O+K9Ubbnw+6IeIvsqZsbcpsZP0ofBP1dfOdSLADS/B
	tcprFYQPM9T8Klpuk2N4cFUZAHAFvoUvbfoEURKEztEbfcjsct0P6kCY+ASl8t56JPVc3xLjda7kw
	2tlAkw0RBSU09l0nx36yQNqLfL52nbttXTvOuNvlNoy781D7hmYzw17x1RPXTWtaU99eJwoPrygsw
	Owms1YMJ7Izv28Bb9SCnPt0/pMm3xSpeHE+UKu5DZRUQM2NDbOTMT48D47uokESO0rKk4Lc68Obiv
	Jh31xZh5dD6IalKHDQSeotxud7gDDoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbNgc-0007QD-FA; Thu, 13 Jun 2019 11:14:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbNgN-0007Pi-RA
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 11:14:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28B34367;
 Thu, 13 Jun 2019 04:14:12 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A45D73F694;
 Thu, 13 Jun 2019 04:15:54 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH 00/13] Add arm64/signal initial kselftest support
Date: Thu, 13 Jun 2019 12:13:22 +0100
Message-Id: <20190613111335.7645-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_041416_374767_22F08F34 
X-CRM114-Status: GOOD (  11.59  )
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

this patch aims to add the initial arch-specific arm64 support to
kselftest starting with signals-related test-cases.
A common internal test-case layout is proposed which then it is
anyway wired-up to the toplevel kselftest Makefile, so that it
should be possible at the end to run it on an arm64 target in the
usual way with KSFT.

~/linux# make TARGETS=arm64 kselftest

Notes:
-----
- further details in the included READMEs

- more tests still to be written (current strategy is going through the related
  Kernel signal-handling code and write a test for each possible and sensible code-path)

- a bit of overlap around KSFT arm64/ Makefiles is expected with this recently
  proposed patch-series:
  http://lists.infradead.org/pipermail/linux-arm-kernel/2019-June/659432.html


Cristian Marussi (13):
  kselftest: arm64: introduce new boilerplate code
  kselftest: arm64: adds arm64/signal support code
  kselftest: arm64: mangle_sp_misaligned
  kselftest: arm64: mangle_pc_invalid
  kselftest: arm64: mangle_pstate_invalid_daif_bits
  kselftest: arm64: mangle_pstate_invalid_state_toggle
  kselftest: arm64: mangle_pstate_invalid_mode_el?
  kselftest: arm64: mangle_pstate_ssbs_regs
  kselftest: arm64: fake_sigreturn_misaligned
  kselftest: arm64: fake_sigreturn_bad_magic
  kselftest: arm64: fake_sigreturn_bad_size
  kselftest: arm64: fake_sigreturn_bad_size_for_magic0
  kselftest: arm64: fake_sigreturn_overflow_reserved

 tools/testing/selftests/Makefile              |   1 +
 tools/testing/selftests/arm64/Makefile        |  51 ++++
 tools/testing/selftests/arm64/README          |  44 +++
 .../testing/selftests/arm64/signal/.gitignore |   5 +
 tools/testing/selftests/arm64/signal/Makefile |  86 ++++++
 tools/testing/selftests/arm64/signal/README   |  56 ++++
 .../testing/selftests/arm64/signal/signals.S  |  64 +++++
 .../arm64/signal/test_arm64_signals.sh        |  44 +++
 .../selftests/arm64/signal/test_signals.c     |  30 ++
 .../selftests/arm64/signal/test_signals.h     | 136 ++++++++++
 .../arm64/signal/test_signals_utils.c         | 256 ++++++++++++++++++
 .../arm64/signal/test_signals_utils.h         | 110 ++++++++
 .../arm64/signal/testcases/.gitignore         |  13 +
 .../testcases/fake_sigreturn_bad_magic.c      |  42 +++
 .../testcases/fake_sigreturn_bad_size.c       |  40 +++
 .../fake_sigreturn_bad_size_for_magic0.c      |  44 +++
 .../testcases/fake_sigreturn_misaligned.c     |  30 ++
 .../fake_sigreturn_overflow_reserved.c        |  48 ++++
 .../signal/testcases/mangle_pc_invalid.c      |  24 ++
 .../mangle_pstate_invalid_daif_bits.c         |  25 ++
 .../mangle_pstate_invalid_mode_el1.c          |  25 ++
 .../mangle_pstate_invalid_mode_el2.c          |  25 ++
 .../mangle_pstate_invalid_mode_el3.c          |  25 ++
 .../mangle_pstate_invalid_state_toggle.c      |  25 ++
 .../testcases/mangle_pstate_ssbs_regs.c       |  41 +++
 .../signal/testcases/mangle_sp_misaligned.c   |  24 ++
 .../arm64/signal/testcases/testcases.c        | 123 +++++++++
 .../arm64/signal/testcases/testcases.h        |  85 ++++++
 28 files changed, 1522 insertions(+)
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
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_overflow_reserved.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pc_invalid.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_daif_bits.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_state_toggle.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_sp_misaligned.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/testcases.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/testcases.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
