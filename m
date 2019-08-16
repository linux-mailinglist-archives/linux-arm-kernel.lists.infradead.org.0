Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9D7906C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 19:24:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x/9w7TKhZS1NMdR1FgmQ2zN1C/jLrVJbHr1k95O1UPo=; b=IKxAR6hluhpq2k
	Xz5+gwhM//0Dq+d2RC9XZAcfSVySvjYSD7X6PXjhUNBLUiY5vv2nZl3zigdy9iXs1HZOj64kafzXn
	lIAm2WOEOAeiWjr93VEP7Aubg4VkJuBury4SPQhPEj754HcClzvfNJ2yDNTFC3Es5SQyZZJFC70YG
	CYxW1XuUD1DZfKFcDvXxTQR/YX8GL0ZzKS2DKwSIR31lidUA1KKInHspO4cxc/HZZvEsxITiTYwwE
	cJgOllxBTjWKA+64vyCQ7UcqXcMycXvqGUwMQoGzM5HDRpBYd1J8/drcU6yunFilC2HkE5OZhiLgD
	CLgaeSmZ4Zfax8V8RS+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyfy0-000640-2C; Fri, 16 Aug 2019 17:24:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyfxZ-0005rX-Qp
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 17:24:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 30E2D28;
 Fri, 16 Aug 2019 10:24:16 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 7EE173F694; Fri, 16 Aug 2019 10:24:15 -0700 (PDT)
Date: Fri, 16 Aug 2019 18:24:13 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] arm64 fixes for 5.3-rc5
Message-ID: <20190816172411.GA36979@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_102417_940029_3E40A6E8 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull the arm64 fixes below. Thanks.

The following changes since commit 30e235389faadb9e3d918887b1f126155d7d761d:

  arm64: mm: add missing PTE_SPECIAL in pte_mkdevmap on arm64 (2019-08-08 18:38:20 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

for you to fetch changes up to b6143d10d23ebb4a77af311e8b8b7f019d0163e6:

  arm64: ftrace: Ensure module ftrace trampoline is coherent with I-side (2019-08-16 17:40:03 +0100)

----------------------------------------------------------------
arm64 fixes:

- Don't taint the kernel if CPUs have different sets of page sizes
  supported (other than the one in use).

- Issue I-cache maintenance for module ftrace trampoline.

----------------------------------------------------------------
Will Deacon (2):
      arm64: cpufeature: Don't treat granule sizes as strict
      arm64: ftrace: Ensure module ftrace trampoline is coherent with I-side

 arch/arm64/kernel/cpufeature.c | 14 +++++++++++---
 arch/arm64/kernel/ftrace.c     | 22 +++++++++++++---------
 2 files changed, 24 insertions(+), 12 deletions(-)

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
