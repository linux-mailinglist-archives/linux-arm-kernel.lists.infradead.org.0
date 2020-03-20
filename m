Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 167C918D300
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 16:35:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HLMZau3MmdaDaOCrFs48NZswMM72VWy75evvFMgjfxs=; b=AtIdWmE8OIny6H
	GoRrOq140NpifVWesCu/vbX6UCZSyJDEZB/2dUD4LUP0g41TtB0CaeRbWi8KHCBvmt3LSyeCvco3i
	pLu9fsOPi8SaPzD6g+lug0ArvREp2KRK4t2e5DSAxxIpt5Ymo8JaP00NNTc+KqAHWlw9nvwda0RPT
	KGn/UtLTjm/vGEquL71gEhhhdm6+bIquVJG7OSyrbcCqhw8RCtEIccB2n6O/TKUI0M8Pp1tNeV2WG
	LFgozIS4bk7CP0jzNDa/u1xKCeJLGfMopkg6yrhtEEB59KeOXHQ3QFTkN/QcPBy4cOGrF6uu8r0sp
	LQNzonHwh7PY08TyNtKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFJgA-0005XL-6E; Fri, 20 Mar 2020 15:35:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFJg1-0005Wx-TV
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 15:35:15 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 426E92070A;
 Fri, 20 Mar 2020 15:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584718513;
 bh=vokPQstkXgxFr5sGvZb+kbRNuePjovDVn9LKFBHtdTU=;
 h=Date:From:To:Cc:Subject:From;
 b=vMrRyUwZhI0GQyf9cX14oERx/4NHSInVqyycNzifFRO5h2V0OM2y3AndeLrPB7FWm
 L7Zp6bzwXnwRJVAZNST4hxltuPzShB9u6TZUOf9xEFmw1JYNTqXcSReZrR4KliM7fT
 e5qIlOOraCDg2qFeCDEqaqgyMxOjL4yDDi3QAUIY=
Date: Fri, 20 Mar 2020 15:35:09 +0000
From: Will Deacon <will@kernel.org>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64 fixes for -rc7
Message-ID: <20200320153508.GA6815@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_083513_973170_46628415 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Please pull these four arm64 fixes for -rc7. Summary in the tag.

Cheers,

Will

--->8

The following changes since commit 9abd515a6e4a5c58c6eb4d04110430325eb5f5ac:

  arm64: context: Fix ASID limit in boot messages (2020-03-02 12:10:38 +0000)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to 3568b88944fef28db3ee989b957da49ffc627ede:

  arm64: compat: Fix syscall number of compat_clock_getres (2020-03-19 19:23:46 +0000)

----------------------------------------------------------------
arm64 fixes for -rc7

- Fix panic() when it occurs during secondary CPU startup

- Fix "kpti=off" when KASLR is enabled

- Fix howler in compat syscall table for vDSO clock_getres() fallback

----------------------------------------------------------------
Cristian Marussi (2):
      arm64: smp: fix smp_send_stop() behaviour
      arm64: smp: fix crash_smp_send_stop() behaviour

Vincenzo Frascino (1):
      arm64: compat: Fix syscall number of compat_clock_getres

Will Deacon (1):
      arm64: kpti: Fix "kpti=off" when KASLR is enabled

 arch/arm64/include/asm/mmu.h          |  4 +---
 arch/arm64/include/asm/pgtable-prot.h |  6 ++++--
 arch/arm64/include/asm/unistd.h       |  2 +-
 arch/arm64/kernel/smp.c               | 25 ++++++++++++++++++++-----
 4 files changed, 26 insertions(+), 11 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
