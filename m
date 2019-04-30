Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0820DF7D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 14:03:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sPvds3f/P/T6p7bZXqQh7jW3C//rD4iSF6a6TPyeKDQ=; b=lhTMZv48+L8Phx
	3KT5BvDuvienIwQzuloKqsBfMyaHlMQztJMXN25WChsdKfgwh0m2Kn6MtTT0dyynyU/yB7FN7LMWZ
	8TCsXnNFEE6/+2kuEyDfLtDZ7ENBNEy+dFTRvgtme1GVnNnUeBeRBB9oKzi+fU2hf+p9pNps7OIYs
	ZJjjridLU8iTmSSS8lcCNtwlqhBO4TTIvfX2Gl89i4DXdQ0vheGxZQoD7BKWiwRxY4k8O/KYosVRp
	79ECmuc/5/WQcIlrVjeeM/9Srwue0DYYofhd31YAzsUPzz+R5VSTGOe7cyZq1tgwkkXQP/Kfw596O
	W4GFWnElNA5k9/Q7uATA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLRTy-0002wa-GP; Tue, 30 Apr 2019 12:03:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLRTr-0002w7-1K
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 12:03:29 +0000
Received: from localhost (unknown [193.47.165.251])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5781F20835;
 Tue, 30 Apr 2019 12:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556625806;
 bh=vfCr04KFuWTnfRIx5YFbzxFml3k6X036yCo56FLgZHw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JV95ZyezEgr2kzNrEuLil5pkzkqEL+QJXmM8eMx0gozO8Hty8hRwiQUnvITXu+MNW
 /TO4ACMbTIsFza+bLXSh33ZElmvqbbD2Lu+SHn0q83lDt9L5/3rVYfbjuNqGQUI9S+
 h66Nn25wjDLCBFUhOOXOrUusqUqAiBXR0jRxXwpM=
Date: Tue, 30 Apr 2019 15:03:21 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v13 16/20] IB/mlx4, arm64: untag user pointers in
 mlx4_get_umem_mr
Message-ID: <20190430120321.GF6705@mtr-leonro.mtl.com>
References: <cover.1553093420.git.andreyknvl@google.com>
 <1e2824fd77e8eeb351c6c6246f384d0d89fd2d58.1553093421.git.andreyknvl@google.com>
 <20190429180915.GZ6705@mtr-leonro.mtl.com>
 <20190430111625.GD29799@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430111625.GD29799@arrakis.emea.arm.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_050327_115163_546F1D87 
X-CRM114-Status: GOOD (  29.42  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Eric Dumazet <edumazet@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Dmitry Vyukov <dvyukov@google.com>,
 linux-mm@kvack.org, netdev@vger.kernel.org,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 "David S. Miller" <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 12:16:25PM +0100, Catalin Marinas wrote:
> (trimmed down the cc list slightly as the message bounces)
>
> On Mon, Apr 29, 2019 at 09:09:15PM +0300, Leon Romanovsky wrote:
> > On Wed, Mar 20, 2019 at 03:51:30PM +0100, Andrey Konovalov wrote:
> > > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > > pass tagged user pointers (with the top byte set to something else other
> > > than 0x00) as syscall arguments.
> > >
> > > mlx4_get_umem_mr() uses provided user pointers for vma lookups, which can
> > > only by done with untagged pointers.
> > >
> > > Untag user pointers in this function.
> > >
> > > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > > ---
> > >  drivers/infiniband/hw/mlx4/mr.c | 7 ++++---
> > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/infiniband/hw/mlx4/mr.c b/drivers/infiniband/hw/mlx4/mr.c
> > > index 395379a480cb..9a35ed2c6a6f 100644
> > > --- a/drivers/infiniband/hw/mlx4/mr.c
> > > +++ b/drivers/infiniband/hw/mlx4/mr.c
> > > @@ -378,6 +378,7 @@ static struct ib_umem *mlx4_get_umem_mr(struct ib_udata *udata, u64 start,
> > >  	 * again
> > >  	 */
> > >  	if (!ib_access_writable(access_flags)) {
> > > +		unsigned long untagged_start = untagged_addr(start);
> > >  		struct vm_area_struct *vma;
> > >
> > >  		down_read(&current->mm->mmap_sem);
> > > @@ -386,9 +387,9 @@ static struct ib_umem *mlx4_get_umem_mr(struct ib_udata *udata, u64 start,
> > >  		 * cover the memory, but for now it requires a single vma to
> > >  		 * entirely cover the MR to support RO mappings.
> > >  		 */
> > > -		vma = find_vma(current->mm, start);
> > > -		if (vma && vma->vm_end >= start + length &&
> > > -		    vma->vm_start <= start) {
> > > +		vma = find_vma(current->mm, untagged_start);
> > > +		if (vma && vma->vm_end >= untagged_start + length &&
> > > +		    vma->vm_start <= untagged_start) {
> > >  			if (vma->vm_flags & VM_WRITE)
> > >  				access_flags |= IB_ACCESS_LOCAL_WRITE;
> > >  		} else {
> > > --
> >
> > Thanks,
> > Reviewed-by: Leon Romanovsky <leonro@mellanox.com>
>
> Thanks for the review.
>
> > Interesting, the followup question is why mlx4 is only one driver in IB which
> > needs such code in umem_mr. I'll take a look on it.
>
> I don't know. Just using the light heuristics of find_vma() shows some
> other places. For example, ib_umem_odp_get() gets the umem->address via
> ib_umem_start(). This was previously set in ib_umem_get() as called from
> mlx4_get_umem_mr(). Should the above patch have just untagged "start" on
> entry?

ODP flows are not applicable to any driver except mlx5.
According to commit message of d8f9cc328c88 ("IB/mlx4: Mark user
MR as writable if actual virtual memory is writable"), the code in its
current form needed to deal with different mappings between RDMA memory
requested and VMA memory underlined.

>
> BTW, what's the provenience of such "start" address here? Is it
> something that the user would have malloc()'ed? We try to impose some
> restrictions one what is allowed to be tagged in user so that we don't
> have to untag the addresses in the kernel. For example, if it was the
> result of an mmap() on the device file, we don't allow tagging.

The *_reg_user_mr() is called from userspace through ibv_reg_mr() call [1]
and this is how "address" and access flags are provided.

Right now, the address should point to memory accessible by
get_user_pages(), however mmap-ed memory uses remap_pfn_range()
to provide such pages which makes them unusable for get_user_pages().

I would be glad to see this is a current limitation of RDMA stack and
not as a final design decision.

[1] https://linux.die.net/man/3/ibv_reg_mr

>
> Thanks.
>
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
