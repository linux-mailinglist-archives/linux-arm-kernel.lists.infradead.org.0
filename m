Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 566947E082
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 18:47:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0M7dLzlHh310tqypyWWPAUvJaHshCCvnukwiHs1CqfU=; b=B4GMzPjhz3X/0S
	LpsGRYemYXI7KFJ2DzUyQu+RtEXm7TxeR3RlzCKDGobFU8wBk1/HakZJhc/oDW2cNRgonQJtcXBF3
	6B6DcNbIsJo+8/9Rq9ygzWGEaQeAh3y/R1FmVsqt9WzLxqHD6pQ5UMn6qWZ7aLvcnPBfOT3L/bspC
	LiCVSR8dcstfImOlbJb7/Ymt+VzmPRrhPNwp0qrk4KNJ3milVq601xvfJjKWamDc84bFJOCRruAeS
	/4PCptRcZ126Lz0E0doOSac+Em1i/xKRQ54GtHZvr+0YKUE5Sa/2ds/cGOP1Qbz3hQsrP95v26BsX
	fEFGY4ASmrq75UuOPqSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htEEa-00008B-L2; Thu, 01 Aug 2019 16:47:20 +0000
Received: from [195.167.85.94] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1htEER-00007z-TL; Thu, 01 Aug 2019 16:47:12 +0000
Date: Thu, 1 Aug 2019 19:47:02 +0300
From: Christoph Hellwig <hch@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Russell King <linux@armlinux.org.uk>
Subject: [GIT PULL] arm highmem block I/O regression fix for 5.3
Message-ID: <20190801164702.GA26365@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

And here is another somewhat unusual pull request, mostly because it
touches almost entirely arch/arm, but to fix a block regression.

I would have preferred to feed this through the arm tree, but after
the original thread in reply to the bug report I haven't heard anything
back from Russell.


The following changes since commit 06532750010e06dd4b6d69983773677df7fc5291:

  dma-mapping: use dma_get_mask in dma_addressing_limited (2019-07-23 17:43:58 +0200)

are available in the Git repository at:

  git://git.infradead.org/users/hch/dma-mapping.git tags/arm-swiotlb-5.3

for you to fetch changes up to ad3c7b18c5b362be5dbd0f2c0bcf1fd5fd659315:

  arm: use swiotlb for bounce buffering on LPAE configs (2019-07-24 17:29:01 +0200)

----------------------------------------------------------------
add swiotlb support to arm

This fixes a cascade of regressions that originally started with
the addition of the ia64 port, but only got fatal once we removed
most uses of block layer bounce buffering in Linux 4.18.

The reason is that while the original i386/PAE code that was the first
architecture that supported > 4GB of memory without an iommu decided to
leave bounce buffering to the subsystems, which in those days just mean
block and networking as no one else consumer arbitrary userspace memory.

Later with ia64, x86_64 and other ports we assumed that either an iommu
or something that fakes it up ("software IOTLB" in beautiful Intel
speak) is present and that subsystems can rely on that for dealing with
addressing limitations in devices.   Except that the ARM LPAE scheme
that added larger physical address to 32-bit ARM did not follow that
scheme and thus only worked by chance and only for block and networking
I/O directly to highmem.

Long story, short fix - add swiotlb support to arm when build for LPAE
platforms, which actuallys turns out to be pretty trivial with the
modern dma-direct / swiotlb code to fix the Linux 4.18-ish regression.

----------------------------------------------------------------
Christoph Hellwig (2):
      dma-mapping: check pfn validity in dma_common_{mmap,get_sgtable}
      arm: use swiotlb for bounce buffering on LPAE configs

 arch/arm/include/asm/dma-mapping.h |  4 ++-
 arch/arm/mm/Kconfig                |  5 ++++
 arch/arm/mm/dma-mapping.c          | 61 ++++++++++++++++++++++++++++++++++++++
 arch/arm/mm/init.c                 |  5 ++++
 kernel/dma/mapping.c               | 13 ++++++--
 5 files changed, 85 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
