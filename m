Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D58CF4489
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 11:32:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iFv/oLYlRYEenVAatlJx46QfLhYsFd+nZN21LeVxSWI=; b=kMYX91Us3F8W6L
	K5UF8jTFuJ0jlJVYPxoLL09T0kL/4J6YTFDs83h/sntH7lrkpfJrydLTbnrnLekCRLCzhqZBIljko
	WySFLgjCZYKhJV//7Pr7h4Ow69V0Vkox9DBaIrFMjfRAWCjteUEUcCWyvwgrcF3kBeqSTwEcvvBW+
	IEEzNLU7Uf1kdqps4OLQC89e4b0ZNcUlJFW3oo8ftrKuZ5Ic9G0t3+zjwZmH8ELla5X12VUGa4u6M
	Rqr/R1aRgSI/hXFBbZ5NyrJioBH2X6oszZCio+jEnaSa/GYxOW44tUz1zDRUs2v40Pzr+e8rN6eCO
	XsEjKk8R/Mm0IcUqi6cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1ZN-0001VK-89; Fri, 08 Nov 2019 10:32:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1ZE-0001Us-PF
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 10:32:38 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2560221848;
 Fri,  8 Nov 2019 10:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573209156;
 bh=Zrz2muJg2Wi+GRQmY5YrG97htwFJeAI4OLuBB+7I9q8=;
 h=Date:From:To:Cc:Subject:From;
 b=VHgT/2EnB2SWziDwi5HEB34jb3w3+2Aq7SjBroebo0+uAw9zbBJ03g96pSSzC9sFK
 /c8qvBba/M45Qc4t7Kq1b6JhqeNY6yYVApR+hUWyCyKpWSqZFTjiXpx+2Yl5xdN5xn
 dQymNY83aVUX4OcEePulA5Y9b8AGI+V3S2HzOWSo=
Date: Fri, 8 Nov 2019 10:32:31 +0000
From: Will Deacon <will@kernel.org>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64: Fix for -rc7
Message-ID: <20191108103231.GA19153@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_023236_842530_E7FD3D4F 
X-CRM114-Status: GOOD (  10.96  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Kernel Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull this single arm64 fix for -rc7. It's a revert of 747a70e60b72
("arm64: Fix copy-on-write referencing in HugeTLB"), not because that
patch was wrong, but because it was broken by aa57157be69f ("arm64: Ensure
VM_WRITE|VM_SHARED ptes are clean by default") which we merged in -rc6.

We spotted the issue in Android (AOSP), where one of the JIT threads gets
stuck on a write fault during boot because the faulting pte is marked as
PTE_DIRTY | PTE_WRITE | PTE_RDONLY and the fault handler decides that
there's nothing to do thanks to pte_same() masking out PTE_RDONLY.

Thanks to John Stultz for reporting this and testing this so quickly, and
to Steve Capper for confirming that the HugeTLB tests continue to pass.

Cheers,

Will

--->8

The following changes since commit 1cf45b8fdbb87040e1d1bd793891089f4678aa41:

  arm64: apply ARM64_ERRATUM_843419 workaround for Brahma-B53 core (2019-11-01 10:47:37 +0000)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to 6767df245f4736d0cf0c6fb7cf9cf94b27414245:

  arm64: Do not mask out PTE_RDONLY in pte_same() (2019-11-06 19:31:56 +0000)

----------------------------------------------------------------
arm64 fix for -rc7

- Fix pte_same() to avoid getting stuck on write fault

----------------------------------------------------------------
Catalin Marinas (1):
      arm64: Do not mask out PTE_RDONLY in pte_same()

 arch/arm64/include/asm/pgtable.h | 17 -----------------
 1 file changed, 17 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
