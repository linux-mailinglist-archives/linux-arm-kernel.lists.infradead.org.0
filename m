Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 767C3B90C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 15:37:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1ZuL6s9NxLnE6c8y4ITz+4s1IeTm4Mqn07BvhF4s/QM=; b=k72gHX8lzzFi3K
	od1j3shsyDkqU0k4On3DBH6P4p6+HvKRdG3QNC7g/iD5fmtuO5pwtdeJtbQX4UIhvt274lyt9vckF
	H9qDXNfhMJM7s+klF8ApdyspAjvq94wI3qq95JLQXOVckw41scoDYVg1dIPA74+/5G2coVZ5PAAqH
	sUBieoD950HIDPX3E9iF+7/lma3QYHTHcVxMMTVrCegp0K8sZvXUIpwG6W921aa9BNIY43L1dWG2f
	PQKhzMedczhJXFmjf9k2BLdzUW4Bu70e+OyA/As7DeAIxDze5VdNjrZLseZAWyZ23PIMbdKG6I5Up
	0PUGEnTOhyTSE5OVRM/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBJ65-0001mQ-91; Fri, 20 Sep 2019 13:37:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBJ5y-0001li-Lb
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 13:37:11 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75FF7206B6;
 Fri, 20 Sep 2019 13:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568986628;
 bh=Z1REnwlO8OtVXuKZT9ND6aimkzzs7Sq8R8i6J4CB3do=;
 h=Date:From:To:Cc:Subject:From;
 b=O3UKzfCC+TsLfehnXsoSMjdrm95806SCnnPQu7FbHexkWf7npPeViwvI2yvjeSZrI
 X6O4ywvwe3mqFkzfcHDWtWmZJ3rws3x6j9KD9acoLODQY8BcNaGbVFOg5ZB5gm+hTF
 Yz5NSUnLVv9GI/zhNx95kZhgXtS1VS6jT3exvSCA=
Date: Fri, 20 Sep 2019 14:37:04 +0100
From: Will Deacon <will@kernel.org>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64: Fixes for -rc1
Message-ID: <20190920133703.zor3t4dvwam6uyqj@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_063710_730010_644C4A7F 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

We've had a few arm64 fixes trickle in this week, so please can you pick
them up for -rc1? Nothing catastophic, but all things that should be
addressed.

Cheers,

Will

--->8

The following changes since commit e376897f424a1c807779a2635f62eb02d7e382f9:

  arm64: remove __iounmap (2019-09-04 13:12:26 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to 799c85105233514309b201a2d2d7a7934458c999:

  arm64: Fix reference to docs for ARM64_TAGGED_ADDR_ABI (2019-09-18 11:33:20 +0100)

----------------------------------------------------------------
arm64 fixes for -rc1

- Fix clang build breakage with CONFIG_OPTIMIZE_INLINING=y

- Fix compilation of pointer tagging selftest

- Fix COND_SYSCALL definitions to work with CFI checks

- Fix stale documentation reference in our Kconfig

----------------------------------------------------------------
Andrey Konovalov (1):
      selftests, arm64: add kernel headers path for tags_test

Arnd Bergmann (1):
      arm64: fix unreachable code issue with cmpxchg

Jeremy Cline (1):
      arm64: Fix reference to docs for ARM64_TAGGED_ADDR_ABI

Sami Tolvanen (1):
      arm64: fix function types in COND_SYSCALL

 arch/arm64/Kconfig                       |  2 +-
 arch/arm64/include/asm/cmpxchg.h         |  6 +++---
 arch/arm64/include/asm/syscall_wrapper.h | 15 ++++++++++++---
 tools/testing/selftests/arm64/Makefile   |  1 +
 4 files changed, 17 insertions(+), 7 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
