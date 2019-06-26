Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C597856F78
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 19:18:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YsvTb22V2BjATEqJf+17lTahvz7juu+v0AKReD1GpwY=; b=UQNPpCCdRKjivT
	qXmaw24cglo42mewsi5UBKLmGnfecgkyKEraZCRPm/fohUgxZnsvqvVx7BBMiAGD+MjYB7+35tLbN
	g+5edNeqECu9DNi9xqaiwC0oj/QKXksZWhJzzgFsY2r06Z2M71e0DAVkdzCg/UEsWRGUBtZOABX3S
	lLhiihMzPnQQQJElJvnMPG4NpEzR9X/NxwsDeEGafvnqEVk6q7fxYXW2jTj5KuBIhBmvHCC4oOz43
	GK3BOeALdsQd2WbR2Rp8YJxIi+TYjdNB8NKOkWseKzyoEJrGj4LpbM8Q+aorX4UOmJlnL0xRNlpUY
	/dxiuawk0qoO9WZNoLnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgBZD-0008Gp-HQ; Wed, 26 Jun 2019 17:18:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgBYx-0008Fq-CL
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 17:18:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3BC85360;
 Wed, 26 Jun 2019 10:18:26 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 876353F718; Wed, 26 Jun 2019 10:18:21 -0700 (PDT)
Date: Wed, 26 Jun 2019 18:18:19 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v18 00/15] arm64: untag user pointers passed to the kernel
Message-ID: <20190626171819.GG29672@arrakis.emea.arm.com>
References: <cover.1561386715.git.andreyknvl@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1561386715.git.andreyknvl@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_101827_514892_06EEDD66 
X-CRM114-Status: GOOD (  14.15  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Khalid Aziz <khalid.aziz@oracle.com>, linux-kselftest@vger.kernel.org,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Mon, Jun 24, 2019 at 04:32:45PM +0200, Andrey Konovalov wrote:
> Andrey Konovalov (14):
>   arm64: untag user pointers in access_ok and __uaccess_mask_ptr
>   lib: untag user pointers in strn*_user
>   mm: untag user pointers passed to memory syscalls
>   mm: untag user pointers in mm/gup.c
>   mm: untag user pointers in get_vaddr_frames
>   fs/namespace: untag user pointers in copy_mount_options
>   userfaultfd: untag user pointers
>   drm/amdgpu: untag user pointers
>   drm/radeon: untag user pointers in radeon_gem_userptr_ioctl
>   IB/mlx4: untag user pointers in mlx4_get_umem_mr
>   media/v4l2-core: untag user pointers in videobuf_dma_contig_user_get
>   tee/shm: untag user pointers in tee_shm_register
>   vfio/type1: untag user pointers in vaddr_get_pfn
>   selftests, arm64: add a selftest for passing tagged pointers to kernel
> 
> Catalin Marinas (1):
>   arm64: Introduce prctl() options to control the tagged user addresses
>     ABI
> 
>  arch/arm64/Kconfig                            |  9 +++
>  arch/arm64/include/asm/processor.h            |  8 +++
>  arch/arm64/include/asm/thread_info.h          |  1 +
>  arch/arm64/include/asm/uaccess.h              | 12 +++-
>  arch/arm64/kernel/process.c                   | 72 +++++++++++++++++++
>  .../gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c  |  2 +-
>  drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c       |  2 +
>  drivers/gpu/drm/radeon/radeon_gem.c           |  2 +
>  drivers/infiniband/hw/mlx4/mr.c               |  7 +-
>  drivers/media/v4l2-core/videobuf-dma-contig.c |  9 +--
>  drivers/tee/tee_shm.c                         |  1 +
>  drivers/vfio/vfio_iommu_type1.c               |  2 +
>  fs/namespace.c                                |  2 +-
>  fs/userfaultfd.c                              | 22 +++---
>  include/uapi/linux/prctl.h                    |  5 ++
>  kernel/sys.c                                  | 12 ++++
>  lib/strncpy_from_user.c                       |  3 +-
>  lib/strnlen_user.c                            |  3 +-
>  mm/frame_vector.c                             |  2 +
>  mm/gup.c                                      |  4 ++
>  mm/madvise.c                                  |  2 +
>  mm/mempolicy.c                                |  3 +
>  mm/migrate.c                                  |  2 +-
>  mm/mincore.c                                  |  2 +
>  mm/mlock.c                                    |  4 ++
>  mm/mprotect.c                                 |  2 +
>  mm/mremap.c                                   |  7 ++
>  mm/msync.c                                    |  2 +
>  tools/testing/selftests/arm64/.gitignore      |  1 +
>  tools/testing/selftests/arm64/Makefile        | 11 +++
>  .../testing/selftests/arm64/run_tags_test.sh  | 12 ++++
>  tools/testing/selftests/arm64/tags_test.c     | 29 ++++++++
>  32 files changed, 232 insertions(+), 25 deletions(-)

It looks like we got to an agreement on how to deal with tagged user
addresses between SPARC ADI and ARM Memory Tagging. If there are no
other objections, what's your preferred way of getting this series into
-next first and then mainline? Are you ok to merge them into the mm
tree?

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
