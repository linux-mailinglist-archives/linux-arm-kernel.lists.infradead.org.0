Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF0029D66
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:44:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7WGvafUqr54te9dd2sLCC1DR8a1EoYNVTexUusq0PaY=; b=qTgCYoybfJ/4Ad
	AIvxT79ehO4bzu0Qdda3cZfg3utkgPAQwiO5duYYcplNo6cXF7e0CW6LHwOlYEAyKRFjsxa7WGe1u
	6DzU12K2J/o0ZdJxh0k204YVLrPn5fMY9r27MHuDXghr6pMPrkV40f2c50F4UMut33g/8vHJqiYii
	0RSMKHxYQysF5e/l/vhmffw/Km0j8KDtpAuPbaGueVbW97uCMpQOpkkL60biCSnx7yexh/LH9KoKl
	EurOIS3gNlNC0dSJ2Za6d7fBnnr22HSPDZKQ/c8zgBlB2Iw2Vtd5Hb2M8f6ugPfADqqVCy61S7nen
	oyvQOUU8yzoXcxktX8cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUEEi-0007by-Ae; Fri, 24 May 2019 17:44:08 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUEEc-0007bH-7E
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:44:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49D1EA78;
 Fri, 24 May 2019 10:44:01 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 389A73F703;
 Fri, 24 May 2019 10:44:00 -0700 (PDT)
Date: Fri, 24 May 2019 18:43:57 +0100
From: Will Deacon <will.deacon@arm.com>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64: Second round of fixes for -rc2
Message-ID: <20190524174357.GC9120@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_104402_273633_9109D523 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: catalin.marinas@arm.com, lorenzo.pieralisi@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

As promised, here's the second round of arm64 fixes for -rc2, based on
-rc1. Details in the tag. The ACPI/IORT build fix is pretty big in the
diffstat, but it's really just the result of code movement to ensure
that the functions are guarded correctly when !CONFIG_IOMMU_SUPPORT.

Please pull.

Cheers,

Will

--->8

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to edbcf50eb8aea5f81ae6d83bb969cb0bc02805a1:

  arm64: insn: Add BUILD_BUG_ON() for invalid masks (2019-05-24 14:58:30 +0100)

----------------------------------------------------------------
Second round of arm64 fixes for -rc2

- Fix incorrect LDADD instruction encoding in our disassembly macros

- Disable the broken ARM64_PSEUDO_NMI support for now

- Add workaround for Cortex-A76 CPU erratum #1463225

- Handle Cortex-A76/Neoverse-N1 erratum #1418040 w/ existing workaround

- Fix IORT build failure if IOMMU_SUPPORT=n

- Fix place-relative module relocation range checking and its
  interaction with KASLR

----------------------------------------------------------------
Ard Biesheuvel (2):
      arm64/kernel: kaslr: reduce module randomization range to 2 GB
      arm64/module: deal with ambiguity in PRELxx relocation ranges

Jean-Philippe Brucker (2):
      arm64: insn: Fix ldadd instruction encoding
      arm64: insn: Add BUILD_BUG_ON() for invalid masks

Lorenzo Pieralisi (1):
      ACPI/IORT: Fix build error when IOMMU_SUPPORT is disabled

Marc Zyngier (1):
      arm64: Handle erratum 1418040 as a superset of erratum 1188873

Will Deacon (3):
      arm64: Remove useless message during oops
      arm64: errata: Add workaround for Cortex-A76 erratum #1463225
      arm64: Kconfig: Make ARM64_PSEUDO_NMI depend on BROKEN for now

 Documentation/arm64/silicon-errata.txt |   9 +-
 arch/arm64/Kconfig                     |  26 +++-
 arch/arm64/include/asm/cpucaps.h       |   5 +-
 arch/arm64/include/asm/insn.h          |  18 ++-
 arch/arm64/kernel/cpu_errata.c         |  48 +++++--
 arch/arm64/kernel/entry.S              |   4 +-
 arch/arm64/kernel/kaslr.c              |   6 +-
 arch/arm64/kernel/module.c             |  18 ++-
 arch/arm64/kernel/syscall.c            |  31 +++++
 arch/arm64/kernel/traps.c              |   4 -
 arch/arm64/mm/fault.c                  |  33 +++++
 drivers/acpi/arm64/iort.c              | 238 +++++++++++++++++----------------
 12 files changed, 284 insertions(+), 156 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
