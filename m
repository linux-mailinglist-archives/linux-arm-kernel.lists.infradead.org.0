Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E72F544
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 13:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psMQMwDHSFreANIhY3h4c3j4JuLgpsVZAIcMJD3Tu3w=; b=FO6hTlNlPcUVxq
	PP9E2Z1EE6U/Qz46VAIC6lUeyVCG/tVw9tjdMYJq+LzgEvG/5nT2VbQOX/zj8idIIRX3ON0yh6IxJ
	Vvu5DeZG/4xg+5utoFqfkH3gVykVEARK7p5AVTGnmE6PxXxQ45uN7z5NsGQMF0+xrc15zqU9gYgwA
	AtCWsGhYpPCnhcGmqDvDKgnmeGv4zMbTv0FW6ug9qI07eD9dwAY3LrGX7IcQTtXoT19XcDnA1auri
	QGrnbN/zzpxlFINVrgvTUqbIbwZE2vDjNB3puGU54PLJ63JZ7onoLO+PIO9KpXDhJUNq1zUA3Fx53
	z1cNuI+Vk7wB++5lxlkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLQka-0007hQ-Qp; Tue, 30 Apr 2019 11:16:40 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQkS-0007gf-Ps
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 11:16:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C20380D;
 Tue, 30 Apr 2019 04:16:32 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 E981E3F5C1; Tue, 30 Apr 2019 04:16:27 -0700 (PDT)
Date: Tue, 30 Apr 2019 12:16:25 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Leon Romanovsky <leon@kernel.org>
Subject: Re: [PATCH v13 16/20] IB/mlx4, arm64: untag user pointers in
 mlx4_get_umem_mr
Message-ID: <20190430111625.GD29799@arrakis.emea.arm.com>
References: <cover.1553093420.git.andreyknvl@google.com>
 <1e2824fd77e8eeb351c6c6246f384d0d89fd2d58.1553093421.git.andreyknvl@google.com>
 <20190429180915.GZ6705@mtr-leonro.mtl.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429180915.GZ6705@mtr-leonro.mtl.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_041632_848415_9E086E94 
X-CRM114-Status: GOOD (  25.60  )
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

(trimmed down the cc list slightly as the message bounces)

On Mon, Apr 29, 2019 at 09:09:15PM +0300, Leon Romanovsky wrote:
> On Wed, Mar 20, 2019 at 03:51:30PM +0100, Andrey Konovalov wrote:
> > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > pass tagged user pointers (with the top byte set to something else other
> > than 0x00) as syscall arguments.
> >
> > mlx4_get_umem_mr() uses provided user pointers for vma lookups, which can
> > only by done with untagged pointers.
> >
> > Untag user pointers in this function.
> >
> > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > ---
> >  drivers/infiniband/hw/mlx4/mr.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/infiniband/hw/mlx4/mr.c b/drivers/infiniband/hw/mlx4/mr.c
> > index 395379a480cb..9a35ed2c6a6f 100644
> > --- a/drivers/infiniband/hw/mlx4/mr.c
> > +++ b/drivers/infiniband/hw/mlx4/mr.c
> > @@ -378,6 +378,7 @@ static struct ib_umem *mlx4_get_umem_mr(struct ib_udata *udata, u64 start,
> >  	 * again
> >  	 */
> >  	if (!ib_access_writable(access_flags)) {
> > +		unsigned long untagged_start = untagged_addr(start);
> >  		struct vm_area_struct *vma;
> >
> >  		down_read(&current->mm->mmap_sem);
> > @@ -386,9 +387,9 @@ static struct ib_umem *mlx4_get_umem_mr(struct ib_udata *udata, u64 start,
> >  		 * cover the memory, but for now it requires a single vma to
> >  		 * entirely cover the MR to support RO mappings.
> >  		 */
> > -		vma = find_vma(current->mm, start);
> > -		if (vma && vma->vm_end >= start + length &&
> > -		    vma->vm_start <= start) {
> > +		vma = find_vma(current->mm, untagged_start);
> > +		if (vma && vma->vm_end >= untagged_start + length &&
> > +		    vma->vm_start <= untagged_start) {
> >  			if (vma->vm_flags & VM_WRITE)
> >  				access_flags |= IB_ACCESS_LOCAL_WRITE;
> >  		} else {
> > --
> 
> Thanks,
> Reviewed-by: Leon Romanovsky <leonro@mellanox.com>

Thanks for the review.

> Interesting, the followup question is why mlx4 is only one driver in IB which
> needs such code in umem_mr. I'll take a look on it.

I don't know. Just using the light heuristics of find_vma() shows some
other places. For example, ib_umem_odp_get() gets the umem->address via
ib_umem_start(). This was previously set in ib_umem_get() as called from
mlx4_get_umem_mr(). Should the above patch have just untagged "start" on
entry?

BTW, what's the provenience of such "start" address here? Is it
something that the user would have malloc()'ed? We try to impose some
restrictions one what is allowed to be tagged in user so that we don't
have to untag the addresses in the kernel. For example, if it was the
result of an mmap() on the device file, we don't allow tagging.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
