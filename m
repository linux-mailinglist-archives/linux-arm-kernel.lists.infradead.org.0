Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8F12008ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 14:43:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=082yjmipA4BKJkfsf4B17Y63RX7yZNuU20H6+7T6NaI=; b=In/GSOOB4FNVyp
	D2Yw3UaQ8GAYiOdSJ+4j3b73lxLfYcNp4QajYHe6UUFJIcD+0qg+N17/wZbtSCXg+qUImKS2nDy+i
	ts0oMwQ9P+xtzIS8872ivG40dxHFFE6YGhLSvNO3Mc7qcleXBG6nyEBT6GjTwrBhGRfVgBof950uB
	cJnHecU35sS8fLb4xiSGUseDC6imVHYYgOVjspY16QQJuzHn7lJqmz9Femx6UrTlpbLlydi3p/NV6
	VLxA/9Tb2ndGWijlOVFfNDZGJHG5R2SIyaQJ6bkbMseYTqQj1/WY2CkCmNiM1EICrXI5o8o+xSFMc
	kkBFd7uuLmqNiS1VgYfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmGMm-00069d-36; Fri, 19 Jun 2020 12:43:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmGMd-00069K-T2
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 12:43:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 363EC207E8;
 Fri, 19 Jun 2020 12:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592570603;
 bh=yShNM0K+JKgCUomMvzFARdYyLeLf+SbVL45AMI9mrf4=;
 h=Date:From:To:Cc:Subject:From;
 b=YBTWoDZrVnqLmMfBX4qNgSyMX0wTWJ03UHeUMb/y5/pbI8t0by3WtlngCEL8vAxXJ
 2tOYpLeYMUcywa4Yv/rHG3piCWRTl6iDLPhDAFpTTfOMxy+e1GS/oQpezALGPZnqGu
 +1DcN4Zog7klZO9Slkh7BaYjt84NPkFKKmeHbUYc=
Date: Fri, 19 Jun 2020 13:43:18 +0100
From: Will Deacon <will@kernel.org>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64 fixes for -rc2
Message-ID: <20200619124318.GA6925@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_054323_954971_553E9CCE 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, kernel-team@android.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull these arm64 fixes for -rc2. Unfortunately, we still have a
number of outstanding issues so there will be more fixes to come, but
this lot are a good start.

Summary in the tag.

Cheers,

Will

--->8

The following changes since commit b3a9e3b9622ae10064826dccb4f7a52bd88c7407:

  Linux 5.8-rc1 (2020-06-14 12:45:04 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to 24ebec25fb270100e252b19c288e21bd7d8cc7f7:

  arm64: hw_breakpoint: Don't invoke overflow handler on uaccess watchpoints (2020-06-18 11:10:00 +0100)

----------------------------------------------------------------
arm64 fixes for -rc2

- Fix handling of watchpoints triggered by uaccess routines

- Fix initialisation of gigantic pages for CMA buffers

- Raise minimum clang version for BTI to avoid miscompilation

- Fix data race in SVE vector length configuration code

- Ensure address tags are ignored in kern_addr_valid()

- Dump register state on fatal BTI exception

- kexec_file() cleanup to use struct_size() macro

----------------------------------------------------------------
Ard Biesheuvel (1):
      arm64: remove TEXT_OFFSET randomization

Barry Song (1):
      arm64: mm: reserve hugetlb CMA after numa_init

Dave Martin (2):
      docs/arm64: Fix typo'd #define in sve.rst
      arm64/sve: Eliminate data races on sve_default_vl

Gustavo A. R. Silva (1):
      arm64: kexec_file: Use struct_size() in kmalloc()

Shyam Thombre (1):
      arm64: mm: reset address tag set by kasan sw tagging

Will Deacon (5):
      arm64: traps: Dump registers prior to panic() in bad_mode()
      arm64: pgtable: Clear the GP bit for non-executable kernel pages
      arm64: sve: Fix build failure when ARM64_SVE=y and SYSCTL=n
      arm64: bti: Require clang >= 10.0.1 for in-kernel BTI support
      arm64: hw_breakpoint: Don't invoke overflow handler on uaccess watchpoints

 Documentation/arm64/sve.rst            |  6 ++---
 arch/arm64/Kconfig                     |  2 ++
 arch/arm64/Kconfig.debug               | 15 ------------
 arch/arm64/Makefile                    |  6 -----
 arch/arm64/include/asm/pgtable.h       |  2 +-
 arch/arm64/kernel/fpsimd.c             | 31 ++++++++++++++++--------
 arch/arm64/kernel/hw_breakpoint.c      | 44 ++++++++++++++++++++--------------
 arch/arm64/kernel/machine_kexec_file.c |  3 +--
 arch/arm64/kernel/traps.c              |  1 +
 arch/arm64/mm/init.c                   | 15 ++++++++----
 arch/arm64/mm/mmu.c                    |  1 +
 11 files changed, 66 insertions(+), 60 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
