Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B0C16828A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:01:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r0Z1UnLf4ep84pO3wgEkWdUKOsAzMM2lSNoEW2cvoVo=; b=qy6555g2QKd7YL
	ypa2R5nFknjCNHWsvRkYBA9sJcurY7HLN3H9BLC3htoXqdo6q9EM3af1WDegnA3EZJkm4Sz9o/fjs
	zg+HFrOBTzYwwWQS0rU1wArExQG6o+KJ8seZjeC0OpF1e0M60EySN63q03cXls9gNkGsxd0NlRLeG
	k/8j25bmcF60DFVmLBH/OhlWOTBu5W2d/zYFsfAJZWplEgWVMuUloJ/rTpFuee/337Kk6oNAclPFz
	JcyueH8XQMAHxxFzmBA9TnCMGS4du2A6rxA1+MixWsurrXXivQbZSz/tgiicBK6IQQYquSjX71+r3
	YE/zNMM16aqzLQwqiAUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5AkG-0000LL-PV; Fri, 21 Feb 2020 16:01:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Ak7-0000JD-5V
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:01:32 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DFB522067D;
 Fri, 21 Feb 2020 16:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582300890;
 bh=BEciPzHo8CuryHbvE/f20uJHph4MuYVHw/4AtR5NS6Y=;
 h=Date:From:To:Cc:Subject:From;
 b=zRPNlg7ZZCCwC9ptj3GpudDZKoPg1f9V2n2HZeKl9vgYeepePq5DIXqB73FhrYWwN
 YiF/OSuRz9WVxGVhbrToyAkJm3HpDI3KrayiuJ0U/dPL7O/NWcME7JlAjmS/OybVXw
 1u3gsYqp4h8gZC+LJxp6AYEvrxmsyjJKubdcZhs4=
Date: Fri, 21 Feb 2020 16:01:26 +0000
From: Will Deacon <will@kernel.org>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64 fixes for -rc3
Message-ID: <20200221160126.GB19330@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_080131_230431_7A429801 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Please pull these arm64 fixes for -rc3.

It's all straightforward apart from the changes to mmap()/mremap() in
relation to their handling of address arguments from userspace with
non-zero tag bits in the upper byte. The change to brk() is necessary
to fix a nasty user-visible regression in malloc(), but we tightened up
mmap() and mremap() at the same time because they also allow the user to
create virtual aliases by accident. It's much less likely than brk() to
matter in practice, but enforcing the principle of "don't permit the
creation of mappings using tagged addresses" leads to a straightforward
ABI without having to worry about the "but what if a crazy program did
foo?" aspect of things.

That said, this is core code and I know you'd prefer to limit the change
to brk(), so the patch is sitting on top of the branch in case you prefer
not to include it. If you decide to tweak it manually, please can you
update the docs at the same time?

Cheers,

Will

--->8

The following changes since commit d91771848f0ae2eec250a9345926a1a3558fa943:

  arm64: time: Replace <linux/clk-provider.h> by <linux/of_clk.h> (2020-02-12 17:26:38 +0000)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to dcde237319e626d1ec3c9d8b7613032f0fd4663a:

  mm: Avoid creating virtual address aliases in brk()/mmap()/mremap() (2020-02-20 10:03:14 +0000)

----------------------------------------------------------------
arm64 fixes for -rc3

- Fix regression in malloc() caused by ignored address tags in brk()

- Add missing brackets around argument to untagged_addr() macro

- Fix clang build when using binutils assembler

- Fix silly typo in virtual memory map documentation

----------------------------------------------------------------
Catalin Marinas (1):
      mm: Avoid creating virtual address aliases in brk()/mmap()/mremap()

Scott Branden (1):
      docs: arm64: fix trivial spelling enought to enough in memory.rst

Vincenzo Frascino (1):
      arm64: lse: Fix LSE atomics with LLVM

Will Deacon (1):
      arm64: memory: Add missing brackets to untagged_addr() macro

 Documentation/arm64/memory.rst             |  2 +-
 Documentation/arm64/tagged-address-abi.rst | 11 +++++++++--
 arch/arm64/include/asm/lse.h               |  2 +-
 arch/arm64/include/asm/memory.h            |  2 +-
 mm/mmap.c                                  |  4 ----
 mm/mremap.c                                |  1 -
 6 files changed, 12 insertions(+), 10 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
