Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CAE01B7C58
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 19:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i6Wk/hl3GoF4X4xwIFS9la/s8htLtIbumV0zLcwhVHY=; b=fMJjw6ePmUuVql
	Jdr8DSc35od2dx8Jkla2eGNVeHfP4IobKp+iz3V0tqU2qBle+BkhjGL9+KVQkGoRvMaDzz0P3etcJ
	VYKZZpRXkxo1J2jGTB+62CEDEB+wlawjHkvkMfKihUg8RYNN2nFUXd3g1a02PrQUmnpeALk305aOR
	j14fnsIr7iDAht2A5lIMQSQ9q9EmDEv6TZF/7dShidsoaONiVOQ437t1k9l2zuqOVxqyoeUOyn3Oz
	lWKM4fScKlo80cGVMmyvfiihGshMdGu6Q+IK2T9QvOpgmLyM0Aw6J1ax/O7uzaUvSgqu06//JB5+a
	A2wEq9zT3hMoTR1KFtGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1l8-0006Bj-5u; Fri, 24 Apr 2020 17:05:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1kz-0006AJ-Pg
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 17:04:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7BFF431B;
 Fri, 24 Apr 2020 10:04:50 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C01033F6CF;
 Fri, 24 Apr 2020 10:04:49 -0700 (PDT)
Date: Fri, 24 Apr 2020 18:04:43 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] arm64 fixes for 5.7-rc3
Message-ID: <20200424170440.GA29363@gaia>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_100453_876188_1FEFA25A 
X-CRM114-Status: GOOD (  10.27  )
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

Please pull the arm64 fixes below. Thanks.

The following changes since commit ae83d0b416db002fe95601e7f97f64b59514d936:

  Linux 5.7-rc2 (2020-04-19 14:35:30 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

for you to fetch changes up to 59bff30ad6cec6b5babc8132eb8dcb48f1c82be0:

  Documentation: arm64: fix amu.rst doc warnings (2020-04-23 17:05:22 +0100)

----------------------------------------------------------------
- Ensure context synchronisation after a write to APIAKey.

- Fix bullet list formatting in Documentation/arm64/amu.rst to eliminate
  doc warnings.

----------------------------------------------------------------
Mark Rutland (1):
      arm64: sync kernel APIAKey when installing

Randy Dunlap (1):
      Documentation: arm64: fix amu.rst doc warnings

 Documentation/arm64/amu.rst           | 47 +++++++++++++++++++----------------
 arch/arm64/include/asm/pointer_auth.h |  9 ++++---
 2 files changed, 32 insertions(+), 24 deletions(-)

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
