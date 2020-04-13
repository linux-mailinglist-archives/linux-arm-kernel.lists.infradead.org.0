Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFFC1A693E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 17:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zZh6XrRAkt/sPBeUOBdS/w/LBrQBlma6O7HzNiVBuTc=; b=UgS
	dLUiEVSBxGC52Mn67zfccxO+8LrDZbc4GxWLB+MmgRj7gzq2qM+iXn3iTanaIYPddzCPlXdc+9uoM
	5kQpdrlLtl3YHI1aWawS1KWYDOY6PDURAczRRtINzp9EuFoXvdrRZtT5kZAycLuYTVHqBvkYslO9f
	5bWrYfYiNV+3MB9Ep/+QeY3y8Bkuu9fp0UHD9Qh7yDjVsdMSJqgxjb6OYxGlLH+UP3iNxz+rBuAtG
	vrj79oV/ChJfB7EcHqcmNo/lCDWaI4SQrQm79K5M6o1PgijfuzR3s2EbOivX6s4ZuU3mmOnahRjAx
	Yxoobn3WVoF/z1q99id05qSqHYCTfIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO1Qw-00073R-9v; Mon, 13 Apr 2020 15:55:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO1Qn-00071W-Al
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 15:55:30 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94EFF20656;
 Mon, 13 Apr 2020 15:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586793328;
 bh=KTk9cwV2T7FyWit4wXThuE2JxgSVPpcA0ysORxgBS4A=;
 h=From:To:Cc:Subject:Date:From;
 b=ourQLy0Pu50wfyvmPf0GEFw6SRXfymR7uwYQ6s5a0bKlQDWia3uriewvRTq9fm0C6
 r2I9mTKQxpfeWX+DRLGVIcFkgydSJmh6AFNqKWoWIPFTO1D7sIkt9F7d8H3aimkvIV
 kCbo25zAlrlaefFHeNSkWR+iKDNJbrH2GQMxl3dI=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2 0/8] efi/libstub: simplify arm64 kernel image loading
Date: Mon, 13 Apr 2020 17:55:13 +0200
Message-Id: <20200413155521.24698-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_085529_403249_97568F37 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, nivedita@alum.mit.edu,
 Jonathan.Cameron@huawei.com, will@kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On arm64, the kernel image used to be virtually mapped via the linear
region, making the two mappings correlated in a way that required the
kernel to be located at the start of the linear region, or the memory
below would not be accessible. For this reason, the EFI stub loader
code for arm64 has the notion of a 'preferred offset' for the physical
placement of the kernel image, and tries to put the kernel there, or
at least as low as possible in physical memory (unless KASLR is active,
in which case the placement is randomized)

When KASLR was introduced, the virtual mapping of the kernel was moved
into the vmalloc region, and now, regardless of whether KASLR support
is built in or active, the kernel can be placed anywhere in physical
memory without any detrimental side effects on the linear region.

This means that we can drop the notion of 'preferred offset' entirely,
and invoke the kernel in place if the PE/COFF loader loaded it at the
right offset. If not, we can invoke the ordinary UEFI top down page
allocator to reallocate it elsewhere in memory. By updating the PE/COFF
metadata, we can inform the PE/COFF loader about the desired alignment,
making it less likely that we need to move the kernel image in the first
place.

Ard Biesheuvel (8):
  efi/libstub/random: align allocate size to EFI_ALLOC_ALIGN
  efi/libstub/random: increase random alloc granularity
  efi/libstub/arm64: replace 'preferred' offset with alignment check
  efi/libstub/arm64: simplify randomized loading of kernel image
  efi/libstub/arm64: align PE/COFF sections to segment alignment
  efi/libstub: add API function to allocate aligned memory
  efi/libstub/arm64: switch to ordinary page allocator for kernel image
  efi/libstub: move efi_relocate_kernel() into separate source file

 arch/arm64/kernel/efi-header.S             |   2 +-
 arch/arm64/kernel/vmlinux.lds.S            |   3 +-
 drivers/firmware/efi/libstub/Makefile      |   3 +-
 drivers/firmware/efi/libstub/alignedmem.c  |  57 ++++++
 drivers/firmware/efi/libstub/arm64-stub.c  |  92 +++-------
 drivers/firmware/efi/libstub/efistub.h     |  18 +-
 drivers/firmware/efi/libstub/mem.c         | 191 +-------------------
 drivers/firmware/efi/libstub/randomalloc.c |   6 +-
 drivers/firmware/efi/libstub/relocate.c    | 174 ++++++++++++++++++
 9 files changed, 280 insertions(+), 266 deletions(-)
 create mode 100644 drivers/firmware/efi/libstub/alignedmem.c
 create mode 100644 drivers/firmware/efi/libstub/relocate.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
