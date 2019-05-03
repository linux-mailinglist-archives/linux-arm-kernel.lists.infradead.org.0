Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EB4132C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 19:03:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rzxNdXKEab8aJXHydSHLtCQgmBfmizrqFEgxSjNsXro=; b=UrS1M2aWOMISGv
	+vZOhREkitrMJzVjn/S77JRptOuEzW8sjofS9MTYP6pBKYnvDWNfPuAwZiz2Dq3fxtw08xPzAzoWf
	LPbW37I9hqnfjZjzUCsGP/znD6XlvuApDfVm+phs4pOcRl2GN8oQ6qgtWChzzUi6uLcWy0HFfkCjI
	xpe+erEgaIVuMwID5CA8S/s/1AuWPBfBXny0qdyfLpfLcL6XXGuEVDyV+yohUnkEP+BK0Sf7PFrm8
	yx7AyyUDMklaRCTOHl5PWUOjGyNKRWoIqM9p3KVwN5GHmfhx5imsey8iTt+XRHLtNB8MeFuJLhhN9
	fyq29chZKCIcuuoqss0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbap-0005F0-Vu; Fri, 03 May 2019 17:03:27 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbaj-0005EL-3B
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 17:03:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B389915A2;
 Fri,  3 May 2019 10:03:19 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 2A5D43F557; Fri,  3 May 2019 10:03:13 -0700 (PDT)
Date: Fri, 3 May 2019 18:03:10 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v14 13/17] IB/mlx4, arm64: untag user pointers in
 mlx4_get_umem_mr
Message-ID: <20190503170310.GL55449@arrakis.emea.arm.com>
References: <cover.1556630205.git.andreyknvl@google.com>
 <05c0c078b8b5984af4cc3b105a58c711dcd83342.1556630205.git.andreyknvl@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <05c0c078b8b5984af4cc3b105a58c711dcd83342.1556630205.git.andreyknvl@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_100321_149371_1B99B81A 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Koenig@google.com, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 linux-kselftest@vger.kernel.org, Chintan Pandya <cpandya@codeaurora.org>,
 Felix <Felix.Kuehling@amd.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>, Deucher@google.com,
 Leon Romanovsky <leonro@mellanox.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Dmitry Vyukov <dvyukov@google.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Kuehling@google.com, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 03:25:09PM +0200, Andrey Konovalov wrote:
> This patch is a part of a series that extends arm64 kernel ABI to allow to
> pass tagged user pointers (with the top byte set to something else other
> than 0x00) as syscall arguments.
> 
> mlx4_get_umem_mr() uses provided user pointers for vma lookups, which can
> only by done with untagged pointers.
> 
> Untag user pointers in this function.
> 
> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> Reviewed-by: Leon Romanovsky <leonro@mellanox.com>
> ---
>  drivers/infiniband/hw/mlx4/mr.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/infiniband/hw/mlx4/mr.c b/drivers/infiniband/hw/mlx4/mr.c
> index 395379a480cb..9a35ed2c6a6f 100644
> --- a/drivers/infiniband/hw/mlx4/mr.c
> +++ b/drivers/infiniband/hw/mlx4/mr.c
> @@ -378,6 +378,7 @@ static struct ib_umem *mlx4_get_umem_mr(struct ib_udata *udata, u64 start,
>  	 * again
>  	 */
>  	if (!ib_access_writable(access_flags)) {
> +		unsigned long untagged_start = untagged_addr(start);
>  		struct vm_area_struct *vma;
>  
>  		down_read(&current->mm->mmap_sem);
> @@ -386,9 +387,9 @@ static struct ib_umem *mlx4_get_umem_mr(struct ib_udata *udata, u64 start,
>  		 * cover the memory, but for now it requires a single vma to
>  		 * entirely cover the MR to support RO mappings.
>  		 */
> -		vma = find_vma(current->mm, start);
> -		if (vma && vma->vm_end >= start + length &&
> -		    vma->vm_start <= start) {
> +		vma = find_vma(current->mm, untagged_start);
> +		if (vma && vma->vm_end >= untagged_start + length &&
> +		    vma->vm_start <= untagged_start) {
>  			if (vma->vm_flags & VM_WRITE)
>  				access_flags |= IB_ACCESS_LOCAL_WRITE;
>  		} else {

Discussion ongoing on the previous version of the patch but I'm more
inclined to do this in ib_uverbs_(re)reg_mr() on cmd.start.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
