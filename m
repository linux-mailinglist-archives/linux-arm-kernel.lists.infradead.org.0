Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDF315C930
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 18:10:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W+pEV8XK6gsfTyYClOU9dXR8XGOuPuJExPO65zyYCJs=; b=lhPYjee+MnV5zX
	CyEFYzjRl6f2yZgv9CUrbqLII8nKdf1tSoSvi0rrgxKsimYwgcgVWx1JUsshgqWRlTiqv1EApBmhu
	WJixJ0rrsL4LJTeXqhGJJldDroYvHiHLf7xq8MKgnRAU3LTyaIHn+u/tjvhe+hkpbicGQqiYad29G
	fZx9sTSRNcaH9sUBKWlxwo8PVkVDX2nDR19AyJrk9ZmJ8ZE0I/tCyt8c/coIOynS+yq9Yqr54hDsv
	dY5rM8XQZKiRJCFWMP05WiBNR5CU1dPtPpwsV6gsRgas9VtD1FnLuqGduelWQXSIEDRTVfa+Hn0BM
	27gsRxSelSt+n+x+tx1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2I0G-0008Gm-V1; Thu, 13 Feb 2020 17:10:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2I07-0007wM-A6
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 17:10:08 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09E91206DB;
 Thu, 13 Feb 2020 17:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581613807;
 bh=VpkWJb4isxHvmOg1Hu6QcydGX0DlgRZPbNjqdx6Ddug=;
 h=Date:From:To:Cc:Subject:From;
 b=MHQKhHNxZDfm29u+C1w5r5D1GRNZK5aog7ONSslDSc3VVxe/iOPrJSR2V2Es1Uq8s
 AjdknZzRYqYRN236MJM3oR1mjy8Ub25czZbUVjmhoWZ3jKnp2wzjSA4s/ZHjhup2gt
 2uMiqC2KzIxwfvfNGqq43hQadHA9LmePB73SRuko=
Date: Thu, 13 Feb 2020 17:10:02 +0000
From: Will Deacon <will@kernel.org>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64 fixes for -rc2
Message-ID: <20200213171002.GA8807@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_091007_378035_FB8B4DFF 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Please pull these arm64 fixes for -rc2. Summary in the tag, but it's all
reasonably straightforward. There are some more fixes on the horizon,
but nothing disastrous yet.

Cheers,

Will

--->8

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to d91771848f0ae2eec250a9345926a1a3558fa943:

  arm64: time: Replace <linux/clk-provider.h> by <linux/of_clk.h> (2020-02-12 17:26:38 +0000)

----------------------------------------------------------------
arm64 fixes for -rc2

- Fix build when KASLR is enabled but CONFIG_ARCH_RANDOM is not set

- Fix context-switching of SSBS state on systems that implement it

- Fix spinlock compiler warning introduced during the merge window

- Fix incorrect header inclusion (linux/clk-provider.h)

- Use SYSCTL_{ZERO,ONE} instead of rolling our own static variables

- Don't scream if optional SMMUv3 PMU irq is missing

- Remove some unused function prototypes

----------------------------------------------------------------
Anshuman Khandual (1):
      arm64: Drop do_el0_ia_bp_hardening() & do_sp_pc_abort() declarations

Geert Uytterhoeven (1):
      arm64: time: Replace <linux/clk-provider.h> by <linux/of_clk.h>

John Garry (1):
      perf/smmuv3: Use platform_get_irq_optional() for wired interrupt

Matteo Croce (1):
      arm64: use shared sysctl constants

Qian Cai (1):
      arm64/spinlock: fix a -Wunused-function warning

Robin Murphy (1):
      arm64: Fix CONFIG_ARCH_RANDOM=n build

Will Deacon (1):
      arm64: ssbs: Fix context-switch when SSBS is present on all CPUs

 arch/arm64/include/asm/exception.h |  4 ----
 arch/arm64/include/asm/spinlock.h  |  6 +++++-
 arch/arm64/kernel/kaslr.c          |  1 +
 arch/arm64/kernel/process.c        | 13 +++++++++----
 arch/arm64/kernel/time.c           |  2 +-
 drivers/perf/arm_smmuv3_pmu.c      |  2 +-
 6 files changed, 17 insertions(+), 11 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
