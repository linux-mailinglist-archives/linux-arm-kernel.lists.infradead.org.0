Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DB21F6CDC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 19:34:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BdvP5IhJWjaxGqyGlVasund9dGvWAXTV2//3oZ5nw7o=; b=YO6+gE0Ae8fBpi
	Exu44TAuHJ+fIkGuKgDwKs+bB+iVJnKjHoYpFwIpYCAVj+EOHYcTnToF4j9on92hFLyE4g/NsVFwO
	8mSCSxxm+YQKrUEv1Xs5MaBW50VVtiCbpLlRcNszGulK02qsIcUi82pEbTBGHcloDsbPnJVZjpTNw
	a45x5IQtBKFWkV8HRXHBYF4EE8pNXVatyX37Z4Wm8MrvnKtpoP+0Gsm5Siuoqzk+gYWUfoeUoUx9L
	EL7LOCP18Yvz08v3tyJ/9sqpnm3hox2opFKYxmODcjljzklIL3y+Cs5A39R6pO+jiy2hTUrf2WOEy
	9BD1nUxfuGYIxPxj7ByA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjR5t-0004ju-G0; Thu, 11 Jun 2020 17:34:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjR5l-0004ja-W4
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 17:34:19 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD0AB206DC;
 Thu, 11 Jun 2020 17:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591896856;
 bh=lRxzRoRx1R56qcKxTnghzBRhR4dShjejgWX5UzFaEn4=;
 h=Date:From:To:Cc:Subject:From;
 b=0C3UzX+gJ9FwLRBsHwAl75kNB74VEqgUz3rv37qAoV4Y5XVSxIilem/0fIxR2pb1m
 0lfAh3WQRuEXyYnqrFEv9aUaDbnS1euTWJiUMWJs8Z4OSoBi183iTfopa83zwcHp0F
 4wvUV9fR5OS+7TgEhi1k8NFxqwih52D2qFkWLbE0=
Date: Thu, 11 Jun 2020 18:34:12 +0100
From: Will Deacon <will@kernel.org>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64 merge window fixes for -rc1
Message-ID: <20200611173412.GA9575@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_103418_052566_C7C6A232 
X-CRM114-Status: GOOD (  13.16  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, kernel-team@android.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull these arm64 fixes that came in during the merge window. They'll
probably be more to come, but it doesn't seem like it's worth me sitting
on these in the meantime.

Summary in the tag.

Cheers,

Will

--->8

The following changes since commit 082af5ec5080b028f7d0846a6c27cbb87f288205:

  Merge branch 'for-next/scs' into for-next/core (2020-05-28 18:03:40 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-upstream

for you to fetch changes up to dd4bc60765873445893037ae73a5f75398a8cd19:

  arm64: warn on incorrect placement of the kernel by the bootloader (2020-06-11 14:13:13 +0100)

----------------------------------------------------------------
arm64 merge window fixes for -rc1

- Fix SCS debug check to report max stack usage in bytes as advertised
- Fix typo: CONFIG_FTRACE_WITH_REGS => CONFIG_DYNAMIC_FTRACE_WITH_REGS
- Fix incorrect mask in HiSilicon L3C perf PMU driver
- Fix compat vDSO compilation under some toolchain configurations
- Fix false UBSAN warning from ACPI IORT parsing code
- Fix booting under bootloaders that ignore TEXT_OFFSET
- Annotate debug initcall function with '__init'

----------------------------------------------------------------
Ard Biesheuvel (1):
      arm64: warn on incorrect placement of the kernel by the bootloader

Christophe JAILLET (1):
      arm64: debug: mark a function as __init to save some memory

Joe Perches (1):
      arm64: ftrace: Change CONFIG_FTRACE_WITH_REGS to CONFIG_DYNAMIC_FTRACE_WITH_REGS

Nick Desaulniers (2):
      arm64: vdso32: add CONFIG_THUMB2_COMPAT_VDSO
      arm64: acpi: fix UBSAN warning

Shaokun Zhang (1):
      drivers/perf: hisi: Fix wrong value for all counters enable

Will Deacon (1):
      scs: Report SCS usage in bytes rather than number of entries

 arch/arm64/Kconfig                           | 11 ++++++++++-
 arch/arm64/include/asm/acpi.h                |  5 +++--
 arch/arm64/kernel/debug-monitors.c           |  2 +-
 arch/arm64/kernel/ftrace.c                   |  3 ++-
 arch/arm64/kernel/setup.c                    |  4 ++++
 arch/arm64/kernel/vdso32/Makefile            |  8 ++++++++
 drivers/perf/hisilicon/hisi_uncore_l3c_pmu.c |  2 +-
 kernel/scs.c                                 |  2 +-
 8 files changed, 30 insertions(+), 7 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
