Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB138DBA47
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 01:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/sAeJGn65YDSSeInanoR5YJz1iiCCd8zukh/KQFE82M=; b=Sx5W9TjhCKGGbl
	f45Ll+upJSQClL0+ypXxw+lvyT4cGgrVVD6yNN2bt6MFsi/VkgVZ+AeS7HDTU0Vc7po9cCO0oWPMY
	Bp2vDehKCU4Pbg3I14W8qpMu7xnV/CkIfFw1Qn/PRyq8zuZ3gMleuPl2qsCf1BNxuw6QcLM8Tv8+V
	MbHzCT0Y6u71KrFJqkMJLTVVLeDserpg6gRdoahpckpmzdd+AKGmcoWl6NNBN8hWDb3J0oVQc7Uaf
	fP/BGemejKySVTyNSc5TH86uB7BZiaIMeHG3lB55Mp0ujwtO6PKyNZeoVqvJ6lDgPKb+h8Z1YUr0a
	9F5H+lzgPVrwVSGDt53Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLFR6-0004q4-6F; Thu, 17 Oct 2019 23:44:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLFQx-0004pC-9x
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 23:43:57 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A94C21D7A;
 Thu, 17 Oct 2019 23:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571355833;
 bh=0EcaWaedR8Ckg+AhTfjvMemxm+9X5GNiQRm9Lmclzcw=;
 h=Date:From:To:Cc:Subject:From;
 b=oslJZmmo5xyVYMHQM/H+3KnxSZ2knfk1fGOUYQ2WjOPbi92IpUtaKxPApI0o8OjgJ
 TneDFARiK9K6jQfpHAnsGUvEdLOlIe9zNf/9cxYIq+nM67FXpKlsvvpgwc0Re0290h
 IeqwsyMj5gf4A79SIBcafOUpyk7sM9nM2n1p2Kxs=
Date: Fri, 18 Oct 2019 00:43:49 +0100
From: Will Deacon <will@kernel.org>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64: Fixes for -rc4
Message-ID: <20191017234348.wcbbo2njexn7ixpk@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_164355_387966_84994FC3 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Kernel Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull these arm64 fixes for -rc4. The main thing here is a
long-awaited workaround for a CPU erratum on ThunderX2 which we have
developed in conjunction with engineers from Cavium/Marvell. At the moment,
the workaround is unconditionally enabled for affected CPUs at runtime
but we may add a command-line option to disable it in future if performance
numbers show up indicating a significant cost for real workloads.

The other fixes are summarised in the tag.

Note that the workaround code ended up being based on -rc2, so I had a
bit of a faff trying to generate the right diffstat for this pull request
after merging that branch into our fixes branch based on -rc1. In the end
I had to emulate the pull locally because I couldn't figure out how to
drive request-pull correctly despite the shortlog being correct. I'd love
to know what I should've done instead.

Thanks,

Will

--->8

The following changes since commit 3e7c93bd04edfb0cae7dad1215544c9350254b8f:

  arm64: armv8_deprecated: Checking return value for memory allocation (2019-10-08 13:34:04 +0100)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to 777d062e5bee0e3c0751cdcbce116a76ee2310ec:

  Merge branch 'errata/tx2-219' into for-next/fixes (2019-10-17 13:42:42 -0700)

----------------------------------------------------------------
arm64 fixes for -rc4

- Work around Cavium/Marvell ThunderX2 erratum #219

- Fix regression in mlock() ABI caused by sign-extension of TTBR1 addresses

- More fixes to the spurious kernel fault detection logic

- Fix pathological preemption race when enabling some CPU features at boot

- Drop broken kcore macros in favour of generic implementations

- Fix userspace view of ID_AA64ZFR0_EL1 when SVE is disabled

- Avoid NULL dereference on allocation failure during hibernation

----------------------------------------------------------------
Chris von Recklinghausen (1):
      arm64: Fix kcore macros after 52-bit virtual addressing fallout

Julien Grall (1):
      arm64: cpufeature: Treat ID_AA64ZFR0_EL1 as RAZ when SVE is not enabled

Julien Thierry (1):
      arm64: entry.S: Do not preempt from IRQ before all cpufeatures are enabled

Marc Zyngier (4):
      arm64: KVM: Trap VM ops when ARM64_WORKAROUND_CAVIUM_TX2_219_TVM is set
      arm64: Enable workaround for Cavium TX2 erratum 219 when running SMT
      arm64: Avoid Cavium TX2 erratum 219 when switching TTBR
      arm64: Allow CAVIUM_TX2_ERRATUM_219 to be selected

Mark Rutland (1):
      arm64: mm: fix inverted PAR_EL1.F check

Pavel Tatashin (1):
      arm64: hibernate: check pgd table allocation

Will Deacon (2):
      arm64: tags: Preserve tags for addresses translated via TTBR1
      Merge branch 'errata/tx2-219' into for-next/fixes

Yang Yingliang (1):
      arm64: sysreg: fix incorrect definition of SYS_PAR_EL1_F

 Documentation/arm64/silicon-errata.rst |  2 +
 arch/arm64/Kconfig                     | 17 +++++++++
 arch/arm64/include/asm/asm-uaccess.h   |  7 ++--
 arch/arm64/include/asm/cpucaps.h       |  4 +-
 arch/arm64/include/asm/memory.h        | 10 ++++-
 arch/arm64/include/asm/pgtable.h       |  3 --
 arch/arm64/include/asm/sysreg.h        |  2 +-
 arch/arm64/kernel/cpu_errata.c         | 38 +++++++++++++++++++
 arch/arm64/kernel/cpufeature.c         | 15 +++++---
 arch/arm64/kernel/entry.S              |  8 ++--
 arch/arm64/kernel/hibernate.c          |  9 ++++-
 arch/arm64/kernel/process.c            | 18 +++++++++
 arch/arm64/kvm/hyp/switch.c            | 69 +++++++++++++++++++++++++++++++++-
 arch/arm64/mm/fault.c                  |  6 ++-
 include/linux/sched.h                  |  1 +
 15 files changed, 186 insertions(+), 23 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
