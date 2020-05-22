Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B06971DED3F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 18:28:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E+ZJmVRNWrxg4GMt6AJ/JKsVhX7sJ9MwqVvxYqaloyg=; b=Z1uPuddwdoVlr7
	/JzkWFR+OKH4cY5MbtI5cQEAO2ver2pz/z84WBLB48g+tT5V5XV/avNrQzxzV2lQjD79eefcq2xIm
	FVXpF8MU8e4wnsb6BD5Rv1PWzP61MFA4L6nU3eolOdaur1OcwlREjaphPadJ9C5F5ivrto/Bu69J3
	kwbXX0qlQz2MdfMUhlLpcB6LJ70p8zZnWWrTs5Hm+9ZMleR5QswkQVRrm4OH7QdE/Y6rSB9nKdX9J
	Q/QyjeEMnhqS5FbsgO03RArse+y8L+4phHqK2CUbOTEHeGnyFxkcVbDag5usTvlXDRTURNxpERTSD
	X3k6P2T56otKIQOjEY2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcAX8-0007O7-Kr; Fri, 22 May 2020 16:28:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcAWz-0007NN-7g
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 16:28:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6D9D055D;
 Fri, 22 May 2020 09:28:20 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B12B93F305;
 Fri, 22 May 2020 09:28:19 -0700 (PDT)
Date: Fri, 22 May 2020 17:28:17 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] arm64 fixes for 5.7-rc7
Message-ID: <20200522162815.GA20565@gaia>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_092821_323544_4132BF09 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull the arm64 fixes below. Thanks.

The following changes since commit d51c214541c5154dda3037289ee895ea3ded5ebd:

  arm64: fix the flush_icache_range arguments in machine_kexec (2020-05-11 12:02:14 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

for you to fetch changes up to 8cfb347ad0cffdbfc69c82506fb3be9429563211:

  arm64: Add get_user() type annotation on the !access_ok() path (2020-05-22 16:59:49 +0100)

----------------------------------------------------------------
- Bring the PTRACE_SYSEMU semantics in line with the man page.
- Annotate variable assignment in get_user() with the type to avoid
  sparse warnings.

----------------------------------------------------------------
Al Viro (1):
      arm64: Add get_user() type annotation on the !access_ok() path

Keno Fischer (1):
      arm64: Fix PTRACE_SYSEMU semantics

 arch/arm64/include/asm/uaccess.h | 2 +-
 arch/arm64/kernel/ptrace.c       | 7 ++++---
 2 files changed, 5 insertions(+), 4 deletions(-)

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
