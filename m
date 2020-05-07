Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D23FE1C968F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 18:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8G6GUHltkodQavuYhm6DZjEZB09ZLjFoJ3EJTbG2nv0=; b=aaVBywL+LwqMK0
	btjBA6qhJc6mxXMVXHuGs8z3iOXWozMb2VcvEq2cgYqLDsbI5HxW3FEd53no8V5h67NgPvLgNoV2b
	EF9fodS5X/oHh1GJngfTXMJI5+3tcJp28SmuY8oGWLFpdEFs9p8kT7/TNatCYcGP5Tpar0KisTDZr
	wg9b6hCGcZq1ClsP2ZOD/F6Hvp6ivhJZvBUVE1U+Y+vQSOSFVtG0sx0y4fZHguP1U1ejjTgLSdGc3
	YTQ6xEeC+btUGBXXSkdarG/3wfK3ci40NGZJpwURJO9O7034wPLwRbnfiVTHSU2JLC5oEkDT6NWBi
	19gCD48a+2ROeIs4Itpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjQi-0000Z3-Ow; Thu, 07 May 2020 16:31:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjQY-0000Xk-T2
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 16:31:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C07111FB;
 Thu,  7 May 2020 09:31:13 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E19BF3F71F;
 Thu,  7 May 2020 09:31:12 -0700 (PDT)
Date: Thu, 7 May 2020 17:31:10 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] arm64 fixes for 5.7-rc5
Message-ID: <20200507163108.GA17399@gaia>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_093114_977548_1FB1CE86 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull the arm64 fix below. Thanks.

The following changes since commit 1578e5d03112e3e9d37e1c4d95b6dfb734c73955:

  arm64: vdso: Add -fasynchronous-unwind-tables to cflags (2020-04-30 18:35:32 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

for you to fetch changes up to 027d0c7101f50cf03aeea9eebf484afd4920c8d3:

  arm64: hugetlb: avoid potential NULL dereference (2020-05-07 09:24:15 +0100)

----------------------------------------------------------------
- Avoid potential NULL dereference in huge_pte_alloc() on pmd_alloc()
  failure

----------------------------------------------------------------
Mark Rutland (1):
      arm64: hugetlb: avoid potential NULL dereference

 arch/arm64/mm/hugetlbpage.c | 2 ++
 1 file changed, 2 insertions(+)

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
