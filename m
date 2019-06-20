Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC474D462
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 18:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NhCKJws8NKU9cbQZFVz/q7CNzWVzq69Bel7Wrqp25FM=; b=MtkbdDkLBT0j9K
	BFbDz5aGeowHR3ewmUHYS5iBegpRbo0WkkvXcSun8clVOgCPdboTJNOw4CczbLUPY0fkiPtLCZ76D
	Iu9ZXYRNsPzdm1AxWM9lvLRWbkH9vpqXAWxpOJORNEnFwrMkV9YeORG46x0BoaiRrU6ZsTwZGPJEY
	dj/pJ98pwVHaDU1LJtYI2FvpH72wvcZ6LwLiUB8Jc9TB4iDIB8XPtiXBgS0Bf26aE3vcf1OQfhaIp
	hhKlgFNI/F+n/1p4G4AIoZGSQQGdn4/THBdmLhpTsFMnmZ7c0tBRXYZTTsgy2hCrrhsme/DVwLFHZ
	5EPdg2TvsHaPSBEhyxlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0PT-0005iR-PT; Thu, 20 Jun 2019 16:59:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1he0PG-0005i8-DW
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 16:59:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6A70C2B;
 Thu, 20 Jun 2019 09:59:19 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B56013F246;
 Thu, 20 Jun 2019 09:59:18 -0700 (PDT)
Date: Thu, 20 Jun 2019 17:59:16 +0100
From: Will Deacon <will.deacon@arm.com>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64: fixes for -rc6
Message-ID: <20190620165916.GB24650@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_095926_504928_6E932674 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Please pull these arm64 fixes for -rc6. It's mainly a couple of email
address updates to MAINTAINERS, but we've also fixed a UAPI build issue
with musl libc and an accidental double-initialisation of our pgd_cache
due to a naming conflict with a weak symbol.

There are a couple of outstanding issues that have been reported, but
it doesn't look like they're new and we're still a long way off from
fully debugging them.

Cheers,

Will

--->8


The following changes since commit 41040cf7c5f0f26c368bc5d3016fed3a9ca6dba4:

  arm64/sve: Fix missing SVE/FPSIMD endianness conversions (2019-06-13 10:07:19 +0100)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to 615c48ad8f4275b4d39fa57df68d4015078be201:

  arm64/mm: don't initialize pgd_cache twice (2019-06-18 14:37:28 +0100)

----------------------------------------------------------------
arm64 fixes for -rc6

- Fix use of #include in UAPI headers for compatability with musl libc

- Update email addresses in MAINTAINERS

- Fix initialisation of pgd_cache due to name collision with weak symbol

----------------------------------------------------------------
Anisse Astier (2):
      arm64: ssbd: explicitly depend on <linux/prctl.h>
      arm64/sve: <uapi/asm/ptrace.h> should not depend on <uapi/linux/prctl.h>

Hanjun Guo (1):
      MAINTAINERS: Update my email address

Mike Rapoport (1):
      arm64/mm: don't initialize pgd_cache twice

Will Deacon (1):
      MAINTAINERS: Update my email address to use @kernel.org

 .mailmap                             |  2 ++
 MAINTAINERS                          | 18 +++++++++---------
 arch/arm64/include/asm/pgtable.h     |  3 +--
 arch/arm64/include/uapi/asm/ptrace.h |  8 +++-----
 arch/arm64/kernel/ssbd.c             |  1 +
 5 files changed, 16 insertions(+), 16 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
