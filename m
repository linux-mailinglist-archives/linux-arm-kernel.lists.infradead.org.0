Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FBFEC4C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 15:33:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qYG7m9saJKIuzr04qtpXlVEbwatZLm16WJFb1VqORwY=; b=l2HjNmZUcaKAGl
	qLAb/A+LnyOjYrX2lwU6DRzU7PskCL2bUyU1ngrv+HBJXTjrGCv+T+rm/CBPzp1ewgaTs3QaYPpB9
	M3VjXRvwrbQ6Bq9Mg1N/UtOZ/FGwfIXPNyYfp5PNU+ScLKfFwqcAOCjsU91/voqoASv0IIvckzOY9
	WpToqY6fza+B24VaXRpS5X6DF+DIj6jDHPLwtR7bM66jnWUDPnTJuHAuyQFoVs8qZOF660bZm7Jch
	JVHgrGV7StDomBkh8tfu+biz/Zn6gAQxa15VYRqJKpk/8v21jU2Mx//rH6aXvaooxCzL9c+JJvYr0
	JwcfSLndIu2Zh+BiGhBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXz1-0006c7-I2; Fri, 01 Nov 2019 14:32:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXyq-0006VU-QH
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 14:32:50 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7153120862;
 Fri,  1 Nov 2019 14:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572618765;
 bh=awMAnw9Qq2gBQEeEgcYC7CS6pz44jp0V0kf6PkvwF+c=;
 h=Date:From:To:Cc:Subject:From;
 b=ry9apcOW3hjwZVKiKAmkcHGbORCoYyIuehNaDmc/LW5REQPkKsJObcxnWHdyYbg/f
 vt2KQcCJU/bGqsctJdzBipw1NzQ56ctc2kuHWYdehk12LpkkBK/W4aqMCFwA1witTG
 FjGBtkfEZE2I/sGiS4Uzui1t4iN7dkfwLL741jqc=
Date: Fri, 1 Nov 2019 14:32:40 +0000
From: Will Deacon <will@kernel.org>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64: Fixes for -rc6
Message-ID: <20191101143240.GA3287@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_073248_877605_AA98FD5B 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: peterz@infradead.org, catalin.marinas@arm.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Kernel Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull these arm64 fixes for -rc6. They're almost exclusively
related to CPU errata in CPUs from Broadcom and Qualcomm where the
workarounds were either not being enabled when they should have been or
enabled when they shouldn't have been. The only "interesting" fix is
ensuring that writeable, shared mappings are initially mapped as clean
since we inadvertently broke the logic back in v4.14 and then noticed
the problem via code inspection the other day.

The only critical issue we have outstanding is a sporadic NULL
dereference in the scheduler, which doesn't appear to be arm64-specific
and PeterZ is tearing his hair out over it at the moment.

Cheers,

Will

--->8

The following changes since commit 777d062e5bee0e3c0751cdcbce116a76ee2310ec:

  Merge branch 'errata/tx2-219' into for-next/fixes (2019-10-17 13:42:42 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to 1cf45b8fdbb87040e1d1bd793891089f4678aa41:

  arm64: apply ARM64_ERRATUM_843419 workaround for Brahma-B53 core (2019-11-01 10:47:37 +0000)

----------------------------------------------------------------
arm64 fixes for -rc6

- Enable CPU errata workarounds for Broadcom Brahma-B53

- Enable CPU errata workarounds for Qualcomm Hydra/Kryo CPUs

- Fix initial dirty status of writeable, shared mappings

----------------------------------------------------------------
Bjorn Andersson (2):
      arm64: cpufeature: Enable Qualcomm Falkor/Kryo errata 1003
      arm64: cpufeature: Enable Qualcomm Falkor errata 1009 for Kryo

Catalin Marinas (1):
      arm64: Ensure VM_WRITE|VM_SHARED ptes are clean by default

Doug Berger (1):
      arm64: apply ARM64_ERRATUM_845719 workaround for Brahma-B53 core

Florian Fainelli (2):
      arm64: Brahma-B53 is SSB and spectre v2 safe
      arm64: apply ARM64_ERRATUM_843419 workaround for Brahma-B53 core

 Documentation/arm64/silicon-errata.rst |  7 +++-
 arch/arm64/include/asm/cputype.h       |  2 ++
 arch/arm64/include/asm/pgtable-prot.h  | 15 +++++----
 arch/arm64/kernel/cpu_errata.c         | 59 +++++++++++++++++++++++++++-------
 4 files changed, 64 insertions(+), 19 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
