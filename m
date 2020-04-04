Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C9F19E323
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 08:59:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rlXWlOyiMPIBP/5QHUn52FuFUqBJFWvhYwDAvYB5q+s=; b=QT6Swg1VwlfKLD
	of3RtROkgvGJMXU3H/lWH8NT8/3aYgVwR3F/A5OB5LBtlGBDscRILZe2B6dPStS+OAvUDokombwZV
	ACAzuMsNK0mM6K0c6hK1PNuekT8B1nJ+EyNgzuiXO+zShfD+qMDkOSb0LjXxl2AqGH4zyIIe21v54
	rcu4gvRcMXJrtdHrjYWQP0RlCRWwYzabeM1TEFIsHmDtdLpsmYmYGkhsogYxRPSqJ7A1Sn7rLz5fy
	5NrBUfRa+RYlFYrBu5tHS2w0eZEZ3LvNOML5bP3vEb6O2s1Ke3VnziYzF+LQeVa8JDMeKTDbk7tIZ
	zmPwoq4bh3c9WdTuGnQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKcli-0001Z9-5J; Sat, 04 Apr 2020 06:59:02 +0000
Received: from [2001:4bb8:180:7914:2ca6:9476:bbfa:a4d0] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKclc-0001Yy-Tu; Sat, 04 Apr 2020 06:58:57 +0000
Date: Sat, 4 Apr 2020 08:58:55 +0200
From: Christoph Hellwig <hch@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] dma-mapping updates for 5.7
Message-ID: <20200404065855.GA656254@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 11a48a5a18c63fd7621bb050228cebf13566e4d8:

  Linux 5.6-rc2 (2020-02-16 13:16:59 -0800)

are available in the Git repository at:

  git://git.infradead.org/users/hch/dma-mapping.git tags/dma-mapping-5.7

for you to fetch changes up to fd27a526bb381f43dded6db30b3b016468ab0e6c:

  ARM/dma-mapping: merge __dma_supported into arm_dma_supported (2020-03-20 11:43:21 +0100)

----------------------------------------------------------------
dma-mapping updates for 5.7

 - fix an integer overflow in the coherent pool (Kevin Grandemange)
 - provide support for in-place uncached remapping and use that
   for openrisc
 - fix the arm coherent allocator to take the bus limit into account

----------------------------------------------------------------
Christoph Hellwig (8):
      dma-direct: remove the cached_kernel_address hook
      dma-direct: consolidate the error handling in dma_direct_alloc_pages
      dma-direct: make uncached_kernel_address more general
      dma-direct: provide a arch_dma_clear_uncached hook
      openrisc: use the generic in-place uncached DMA allocator
      ARM/dma-mapping: remove get_coherent_dma_mask
      ARM/dma-mapping: take the bus limit into account in __dma_alloc
      ARM/dma-mapping: merge __dma_supported into arm_dma_supported

Kevin Grandemange (1):
      dma-coherent: fix integer overflow in the reserved-memory dma allocation

 arch/Kconfig                     | 15 +++++---
 arch/arm/include/asm/dma-iommu.h |  2 --
 arch/arm/mm/dma-mapping.c        | 76 ++++++++++------------------------------
 arch/microblaze/Kconfig          |  2 +-
 arch/microblaze/mm/consistent.c  |  9 +----
 arch/mips/Kconfig                |  3 +-
 arch/mips/mm/dma-noncoherent.c   |  7 +---
 arch/nios2/Kconfig               |  3 +-
 arch/nios2/mm/dma-mapping.c      | 12 +------
 arch/openrisc/Kconfig            |  2 ++
 arch/openrisc/kernel/dma.c       | 55 ++++++-----------------------
 arch/xtensa/Kconfig              |  2 +-
 arch/xtensa/kernel/pci-dma.c     | 12 ++-----
 include/linux/dma-noncoherent.h  |  4 +--
 kernel/dma/coherent.c            | 13 +++----
 kernel/dma/direct.c              | 25 +++++++------
 16 files changed, 76 insertions(+), 166 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
