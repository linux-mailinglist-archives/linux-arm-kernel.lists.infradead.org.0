Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D5F1F695D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FoG/WNHGUcoNvHiWKLOcqOeP4YI1guBkYVmcZ866np0=; b=JITSzl40YyBlk5
	9awiwTNk0+44tDDhCl9qc8jb2t5zeIy//Bi+f4a0Wa2DMD51aB/2XmBcKkIGtrGCB/HTAzXZVJMbs
	LR8L0Z//SovWY2iEECGa88zAZ9OF8hSHhVp58suJPKUQfyyTsXOtczF+WDDkLwkuuSdTIkMI5qSV+
	7YCPgWAwsJLtv+LC+hjz3e5M8aSj8b33Np3QjxxLn0r71ThHC91Drznw4xzeBUdqPopcGIzvmHY6d
	qgu5tMWsEEVnh+qk+1+aBPbLV3nYVHol1LjBEQjzE/P6sHAv0ECqzO8EbNieBkSJs1yfS+tG+AqCy
	6EJ/KcViG+BvOmK1yKzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNas-0003dd-As; Thu, 11 Jun 2020 13:50:10 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNaH-0003Tv-58
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 13:49:35 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 5B747FF802;
 Thu, 11 Jun 2020 13:49:28 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Russell King <linux@armlinux.org.uk>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 0/6] ARM: Add support for large kernel page (from 8K to 64K)
Date: Thu, 11 Jun 2020 15:49:08 +0200
Message-Id: <20200611134914.765827-1-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_064933_330359_AB39A122 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
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
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On ARM based NAS it is possible to have storage volume larger than
16TB, especially with the use of LVM. However, on 32-bit architectures,
the page cache index is stored on 32 bits, which means that given a
page size of 4 KB, we can only address volumes of up to 16 TB.

Therefore, one option to use such large volumes and filesystems on 32
bits architecture is to increase the page size.

This series allows to support 8K, 16K, 32K and 64K kernel pages. On
ARM the size of the page can be either 4K or 64K, so for the other
size a "software emulation" is used, here Linux thinks it is using
pages of 8 KB, 16 KB or 32 KB, while underneath the MMU still uses 4
KB pages.

For ARM there is already a difference between the kernel page and the
hardware page in the way they are managed. In the same 4K space the
Linux kernel deals with 2 PTE tables at the beginning, while the
hardware deals with 2 other hardware PTE tables.

This series takes advantage of it and pushes further the difference
between hardware and Linux version by using larger page size at Linux
kernel level.

This series is inspired from fa0ca2726ea9 ("DSMP 64K support") and
4ef803e12baf ("mmu: large-page: Added support for multiple kernel page
sizes") from
https://github.com/MarvellEmbeddedProcessors/linux-marvell.git. This
feature was used since many years and intensively on real product.

The first 4 patches are preparation to make distinction between kernel
page size and hardware page size. For 4K kernel page they won't modify
anything.

The fifth patch is the one actually adding the support for the large
page kernel. This feature was restricted for ARM v7 and non LPAE
architecture. It could maybe be extended to support them, but until
now it has only been tested on ARMv7.

The last patch allows to use the hardware 64K large page.

Gregory

Gregory CLEMENT (6):
  ARM: Use PAGE_SIZE for ELF_EXEC_PAGESIZE
  ARM: pagetable: prepare hardware page table to use large page
  ARM: Make the number of fix bitmap depend on the page size
  ARM: mm: Aligned pte allocation to one page
  ARM: Add large kernel page support
  ARM: Add 64K page support at MMU level

 arch/arm/include/asm/elf.h                  |  2 +-
 arch/arm/include/asm/fixmap.h               |  3 +-
 arch/arm/include/asm/page.h                 | 12 ++++
 arch/arm/include/asm/pgtable-2level-hwdef.h |  8 +++
 arch/arm/include/asm/pgtable-2level.h       |  6 +-
 arch/arm/include/asm/pgtable.h              |  4 ++
 arch/arm/include/asm/shmparam.h             |  4 ++
 arch/arm/include/asm/tlbflush.h             | 21 +++++-
 arch/arm/kernel/entry-common.S              | 13 ++++
 arch/arm/kernel/traps.c                     | 10 +++
 arch/arm/mm/Kconfig                         | 72 +++++++++++++++++++++
 arch/arm/mm/fault.c                         | 19 ++++++
 arch/arm/mm/mmu.c                           | 22 ++++++-
 arch/arm/mm/pgd.c                           |  2 +
 arch/arm/mm/proc-v7-2level.S                | 72 ++++++++++++++++++++-
 arch/arm/mm/tlb-v7.S                        | 14 +++-
 16 files changed, 271 insertions(+), 13 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
