Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C913F1054C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 15:44:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2XG6Kbltqo47CBmDW0uZtexV1msvyY9vxwZIWCAq+Fs=; b=dz7fKVnlIw7Wla
	B/saiJCUzXPuj0eKSkuVxaMek3axqmfwtq56WKxTvIoGtsvyJJ1rVw59phdrfHacj9OnNbVta3WZp
	94ZizJ1+29bDFYol8nq1LKp2FpdCzRSRywveKSpKBeYwpmsAr9L/boUofhKZWAf28K7a0rxHuunBM
	D35CMv2uFsZEDpCMU2G3IlojYYjtyIW209ArC4BTeHpzEESalv1T6mqh2N5/DqN3kJaddtIWMv6ce
	VLHqr4JtRtfcwJwQyNbCgTdhDtlyGXZVEA7lf801cjsqOkqWvM8VB8DERRGBVwBoBw15vO3uGgJSM
	rY0d4DAXLDTS/2koqiTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXnh2-0006AU-9w; Thu, 21 Nov 2019 14:44:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXngs-00069i-1L
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 14:44:16 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0AA80206B6;
 Thu, 21 Nov 2019 14:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574347453;
 bh=1Qk5HeJMxRAqIMfETtKX9MkDQlQjopSGtDl5zCocUT8=;
 h=Date:From:To:Cc:Subject:From;
 b=PfWCmFp5fy5zWJFIF3HdDpyRz/FwjHFC2Bm6yqOOrhcVXjiZXGslTVG5IppnOemXD
 2hWwaxLgFjuvf3FXd2tgl35gUoZF4cgqAyw3eS1JD8qEk7EczZ4hE0Cu1+Xsk8PwE2
 svwg3VP2o+HeZBc0dyWaRZy3m0pt7Hk7IaD1cVZI=
Date: Thu, 21 Nov 2019 14:44:08 +0000
From: Will Deacon <will@kernel.org>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64: Another fix for 5.4
Message-ID: <20191121144408.GA3751@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_064414_695158_FBE49A37 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Kernel Mailing List <linux-arm-kernel@lists.infradead.org>,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

After I thought we were done for 5.4, we had a report this week of a nasty
issue that has been shown to leak data between different user address spaces
thanks to corruption of entries in the TLB. In hindsight, we should have
spotted this in review when the PAN code was merged back in v4.3, but
hindsight is 20/20 and I'm trying not to beat myself up too much about it
despite being fairly miserable.

Anyway, the fix is "obvious" but the actual failure is more more subtle,
and is described in the commit message. I've included a fairly mechanical
follow-up patch here as well, which moves this checking out into the C
wrappers which is what we do for {get,put}_user() already and allows us
to remove these bloody assembly macros entirely. The patches have passed
kernelci [1] [2] [3] and CKI [4] tests over night, as well as some
targetted testing [5] for this particular issue.

The first patch is tagged for stable and should be applied to 4.14, 4.19
and 5.3. I have separate backports for 4.4 and 4.9, which I'll send out
once this has landed in your tree (although the original patch applies
cleanly, it won't build for those two trees).

Thanks to Pavel Tatashin for reporting this and Mark Rutland for helping
to diagnose the issue and review/test the solution. Please pull.

Will

[1] https://lore.kernel.org/lkml/5dd5f064.1c69fb81.5e209.59cf@mx.google.com
[2] https://lore.kernel.org/lkml/5dd5faae.1c69fb81.9bfcb.6f62@mx.google.com
[3] https://lore.kernel.org/lkml/5dd5fab1.1c69fb81.22bb5.755e@mx.google.com
[4] https://lore.kernel.org/lkml/cki.1CBC43ABCD.523Q7TUX64@redhat.com
[5] https://lore.kernel.org/lkml/CA+CK2bCX+QGMPzhjj-UmVNb1jG8Z6WNW=L0GiVsTpGrhyqb9tA@mail.gmail.com

--->8

The following changes since commit 65e1f38d9a2f07d4b81f369864c105880e47bd5a:

  scripts/tools-support-relr.sh: un-quote variables (2019-11-13 10:52:05 +0000)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to e50be648aaa3da196d4f4ed49d1c5d4ec105fa4a:

  arm64: uaccess: Remove uaccess_*_not_uao asm macros (2019-11-20 18:51:54 +0000)

----------------------------------------------------------------
arm64 fix for 5.4

- Ensure PAN is re-enabled following user fault in uaccess routines

----------------------------------------------------------------
Pavel Tatashin (2):
      arm64: uaccess: Ensure PAN is re-enabled after unhandled uaccess fault
      arm64: uaccess: Remove uaccess_*_not_uao asm macros

 arch/arm64/include/asm/asm-uaccess.h | 17 -----------------
 arch/arm64/include/asm/uaccess.h     | 27 ++++++++++++++++++++++-----
 arch/arm64/lib/clear_user.S          |  2 --
 arch/arm64/lib/copy_from_user.S      |  2 --
 arch/arm64/lib/copy_in_user.S        |  2 --
 arch/arm64/lib/copy_to_user.S        |  2 --
 arch/arm64/lib/uaccess_flushcache.c  |  6 +++++-
 7 files changed, 27 insertions(+), 31 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
