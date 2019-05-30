Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A268E2FFF5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 18:11:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DjhdlOyTi6yx2f7YP9CrCZeU9aA9rzMB8ckXtqTbVak=; b=c4ARUAeyAGxdql
	b/KO9nci95qMxborcG0lZXk8pX4yb69jDQLP4jjvLDaptlr2Ef7R163xhByAngqF8ZhOara2OKIYQ
	Q815LNiTKmzgUEYpMOCQt6X11nkTB7xd//ZVNuPVRgLXeb06k+wyPtcpUXk7T1yT+F0hvI5N3ESV7
	757QMAJ9+7DS+++zz4I+4iJKe02TawVFnizUPkY5kqMuPeiHqYtzGQolCKIX9X+4WAUU0ORDZyybF
	CfS9rHsjEumqoLD89Irs5JUze8qjygYNbnO1IrJezvKAuSAgZz56mMBFlmzVHcDun83bawaA9cuqZ
	4DnHxpUmM6W7AGooGS5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWNeT-0007yl-M7; Thu, 30 May 2019 16:11:37 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWNeM-0007yF-LG
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 16:11:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4FF9341;
 Thu, 30 May 2019 09:11:29 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 94B503F5AF;
 Thu, 30 May 2019 09:11:28 -0700 (PDT)
Date: Thu, 30 May 2019 17:11:26 +0100
From: Will Deacon <will.deacon@arm.com>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64: fixes for -rc3
Message-ID: <20190530161126.GB16230@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_091130_713408_A7B5FC26 
X-CRM114-Status: GOOD (  12.52  )
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ebiederm@xmission.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

The fixes are still trickling in for arm64, but the only really significant
one here is actually fixing a regression in the botched module relocation
range checking merged for -rc2. Hopefully we've nailed it this time.

Please pull.

Thanks,

Will

--->8

The following changes since commit edbcf50eb8aea5f81ae6d83bb969cb0bc02805a1:

  arm64: insn: Add BUILD_BUG_ON() for invalid masks (2019-05-24 14:58:30 +0100)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to 1e29ab3186e33c77dbb2d7566172a205b59fa390:

  arm64: use the correct function type for __arm64_sys_ni_syscall (2019-05-29 13:46:00 +0100)

----------------------------------------------------------------
arm64 fixes for -rc3

- Fix implementation of our set_personality() system call, which wasn't
  being wrapped properly

- Fix system call function types to keep CFI happy

- Fix siginfo layout when delivering SIGKILL after a kernel fault

- Really fix module relocation range checking

----------------------------------------------------------------
Ard Biesheuvel (1):
      arm64/module: revert to unsigned interpretation of ABS16/32 relocations

Catalin Marinas (1):
      arm64: Fix the arm64_personality() syscall wrapper redirection

Eric W. Biederman (1):
      signal/arm64: Use force_sig not force_sig_fault for SIGKILL

Sami Tolvanen (3):
      arm64: fix syscall_fn_t type
      arm64: use the correct function type in SYSCALL_DEFINE0
      arm64: use the correct function type for __arm64_sys_ni_syscall

 arch/arm64/include/asm/syscall.h         |  2 +-
 arch/arm64/include/asm/syscall_wrapper.h | 18 +++++++--------
 arch/arm64/kernel/module.c               | 38 +++++++++++++++++++++++++-------
 arch/arm64/kernel/sys.c                  | 16 +++++++++-----
 arch/arm64/kernel/sys32.c                |  7 ++----
 arch/arm64/kernel/traps.c                |  5 ++++-
 6 files changed, 56 insertions(+), 30 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
