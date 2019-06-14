Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 445F3461FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 17:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NNIHO1QPDPjpPD+cfAXKQzpauub1YhadPzEEzHCkZ+k=; b=IsiUGn7YyZ9GyB
	Z27Vnma58EXNL53uLh6r19jCXpgJpzIyVt9uHdQhmyqd01fQXaH/j8UTedgnPwzBvJONY+m6+U0mX
	ipebxMS2nXzp+A3CG1q2pyXnkbIftSoVKXtqZeNUJM+oxMncivCgcT2ayNMinbtA/s9ltaZwSZmzR
	SxyJPUyz1I+UYCpDE5CNPvlzKefD9dpC6xmMNVRgdDE4s0cYEjnSb6nPI8J7HeT1GMclwFQoku6q5
	DK9MmHevQnl8FhtgVt8f6UjI3olpw7o2LG1icmIo9OOjHbsO4h3uQxqv3N0Nmpc7A3AL+Cx6fC10f
	s3RbMqindGCCTWNtDZZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnjV-0003A0-Fy; Fri, 14 Jun 2019 15:03:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnjL-00039Y-Ml
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 15:03:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 72CD4346;
 Fri, 14 Jun 2019 08:03:02 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BFB093F246;
 Fri, 14 Jun 2019 08:03:01 -0700 (PDT)
Date: Fri, 14 Jun 2019 16:02:59 +0100
From: Will Deacon <will.deacon@arm.com>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64: fixes for -rc5
Message-ID: <20190614150259.GC29231@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_080303_787969_B7CE7EFB 
X-CRM114-Status: GOOD (  12.56  )
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Here are some arm64 fixes for -rc5. The only non-trivial change (in
terms of the diffstat) is fixing our SVE ptrace API for big-endian
machines, but the majority of this is actually the addition of
much-needed comments and updates to the documentation to try to avoid
this mess biting us again in future.

There are still a couple of small things on the horizon, but nothing
major at this point.

Please pull. Thanks,

Will

--->8

The following changes since commit ebcc5928c5d925b1c8d968d9c89cdb0d0186db17:

  arm64: Silence gcc warnings about arch ABI drift (2019-06-06 13:28:45 +0100)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to 41040cf7c5f0f26c368bc5d3016fed3a9ca6dba4:

  arm64/sve: Fix missing SVE/FPSIMD endianness conversions (2019-06-13 10:07:19 +0100)

----------------------------------------------------------------
arm64 fixes for -rc5

- Fix broken SVE ptrace API when running in a big-endian configuration

- Fix performance regression due to off-by-one in TLBI range checking

- Fix build regression when using Clang

----------------------------------------------------------------
Dave Martin (1):
      arm64/sve: Fix missing SVE/FPSIMD endianness conversions

Nathan Chancellor (1):
      arm64: Don't unconditionally add -Wno-psabi to KBUILD_CFLAGS

Will Deacon (1):
      arm64: tlbflush: Ensure start/end of address range are aligned to stride

 Documentation/arm64/sve.txt              | 16 ++++++++++++
 arch/arm64/Makefile                      |  2 +-
 arch/arm64/include/asm/tlbflush.h        |  3 +++
 arch/arm64/include/uapi/asm/kvm.h        |  7 ++++++
 arch/arm64/include/uapi/asm/ptrace.h     |  4 +++
 arch/arm64/include/uapi/asm/sigcontext.h | 14 +++++++++++
 arch/arm64/kernel/fpsimd.c               | 42 +++++++++++++++++++++++++-------
 7 files changed, 78 insertions(+), 10 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
