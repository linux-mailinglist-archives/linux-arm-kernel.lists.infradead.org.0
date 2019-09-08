Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24430ACC50
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Sep 2019 13:05:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDj8gCn2tO1tXbyZCTmjyjfvSRWIJcKT/k+gwdHDF6M=; b=CogmFwiNG22tk5
	ECoAAh9bvVbAj+VXGrM/DgWqqlBVqxJxZdk548U8YHwR6cmXTzpiBENLtaEXUumRqQtU8wflV1Oec
	PPA3zLquP4+FMdevdCmyfpqqLJj/zH9NEfIk3gvjb/H8gY6l07eFwyDR77++V59DUfd4CGLuArqzB
	5e5QuSJ8hyw1hWq9DiaTmXiWLj70R2o/W7JGLNZs84Oeu0kEkgUphXI4DjoiV0H5+D+fVO2ZmyVm7
	ugI6j7LgDdVQ+d6zZfhDV9u1B7mBSAZZNCCIldF0F7skaS6kH5drlAI6ZAiNVoNHgJCAls7Pt2iQF
	fS63okYM1eZGlyPssvLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6v0l-0005ND-BE; Sun, 08 Sep 2019 11:05:39 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6v0d-0005MC-6B
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Sep 2019 11:05:34 +0000
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 534BDC04D936
 for <linux-arm-kernel@lists.infradead.org>;
 Sun,  8 Sep 2019 11:05:28 +0000 (UTC)
Received: by mail-qt1-f200.google.com with SMTP id n59so12210543qtd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Sep 2019 04:05:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9tfRGdmeUE/Z9Y2EhkmlMZJGk466+lOf2D0bDCWPav8=;
 b=rynvVj34bTysfh55lMbie0LcyxB3qY90m5nR0dDQZdqxpkfH/uVH940+ngyI9r7cac
 g4YQk8zZIIOQY2Oz5m8xmTcN2nAlJP/7wCEBDo4Qn6xn843bQuYv8GpuWLvSe2YZD+gZ
 XMCJOFYcUI3T4ZRfMC4QnOKAhj41jC907R4gdJj2Q7A7uxwLUW+ZU5J8fLM6CNKZ/qBL
 1wWtB8Rvfd6RY7CCw1byrs/vh1an6r4LVwH6+ozHQAW/fZS/bb/N1buuMW34wTVRjJ2T
 OsU7ldjwo7NMHWyjoehra0+TWhpe+RxL6kNYrTlhi9UNgMIngRBOTwPzsmEkO6mlo8+V
 v2Ug==
X-Gm-Message-State: APjAAAWsIF73rcIqlJju56P2F5tXPYUuhX4r09Aqu5brErQj7cdiUEr9
 8F5CVMzfcD3cgCyY7HUnr2N0NZduQcztZvZLv+e+VASVHCiScA6hEmkw6xj26GrhZt8zxPzfX5m
 uxb/ipvavU7Xk/fOZt8WOZbp8IP1D64Mxv74=
X-Received: by 2002:a37:a790:: with SMTP id q138mr442126qke.383.1567940727543; 
 Sun, 08 Sep 2019 04:05:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzAac3CfwW+m/WznjGjBaoUehVNd2ZscyL59hTHqw9xy3Gtv4jUYWgQmNbqJAyQNOSE9w/+sg==
X-Received: by 2002:a37:a790:: with SMTP id q138mr442094qke.383.1567940727212; 
 Sun, 08 Sep 2019 04:05:27 -0700 (PDT)
Received: from redhat.com ([212.92.124.241])
 by smtp.gmail.com with ESMTPSA id k46sm567847qtc.96.2019.09.08.04.05.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Sep 2019 04:05:26 -0700 (PDT)
Date: Sun, 8 Sep 2019 07:05:19 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: [PATCH 2/2] vhost: re-introducing metadata acceleration through
 kernel virtual address
Message-ID: <20190908063618-mutt-send-email-mst@kernel.org>
References: <20190905122736.19768-1-jasowang@redhat.com>
 <20190905122736.19768-3-jasowang@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905122736.19768-3-jasowang@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_040531_282770_54622C9A 
X-CRM114-Status: GOOD (  37.52  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: aarcange@redhat.com, Christoph Hellwig <hch@infradead.org>,
 linux-parisc@vger.kernel.org, kvm@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>, linux-mm@kvack.org,
 jglisse@redhat.com, jgg@mellanox.com, David Miller <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 08:27:36PM +0800, Jason Wang wrote:
> This is a rework on the commit 7f466032dc9e ("vhost: access vq
> metadata through kernel virtual address").
> 
> It was noticed that the copy_to/from_user() friends that was used to
> access virtqueue metdata tends to be very expensive for dataplane
> implementation like vhost since it involves lots of software checks,
> speculation barriers,

So if we drop speculation barrier,
there's a problem here in access will now be speculated.
This effectively disables the defence in depth effect of
b3bbfb3fb5d25776b8e3f361d2eedaabb0b496cd
    x86: Introduce __uaccess_begin_nospec() and uaccess_try_nospec


So now we need to sprinkle array_index_nospec or barrier_nospec over the
code whenever we use an index we got from userspace.
See below for some examples.


> hardware feature toggling (e.g SMAP). The
> extra cost will be more obvious when transferring small packets since
> the time spent on metadata accessing become more significant.
> 
> This patch tries to eliminate those overheads by accessing them
> through direct mapping of those pages. Invalidation callbacks is
> implemented for co-operation with general VM management (swap, KSM,
> THP or NUMA balancing). We will try to get the direct mapping of vq
> metadata before each round of packet processing if it doesn't
> exist. If we fail, we will simplely fallback to copy_to/from_user()
> friends.
> 
> This invalidation, direct mapping access and set are synchronized
> through spinlock. This takes a step back from the original commit
> 7f466032dc9e ("vhost: access vq metadata through kernel virtual
> address") which tries to RCU which is suspicious and hard to be
> reviewed. This won't perform as well as RCU because of the atomic,
> this could be addressed by the future optimization.
> 
> This method might does not work for high mem page which requires
> temporary mapping so we just fallback to normal
> copy_to/from_user() and may not for arch that has virtual tagged cache
> since extra cache flushing is needed to eliminate the alias. This will
> result complex logic and bad performance. For those archs, this patch
> simply go for copy_to/from_user() friends. This is done by ruling out
> kernel mapping codes through ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE.
> 
> Note that this is only done when device IOTLB is not enabled. We
> could use similar method to optimize IOTLB in the future.
> 
> Tests shows at most about 22% improvement on TX PPS when using
> virtio-user + vhost_net + xdp1 + TAP on 4.0GHz Kaby Lake.
> 
>         SMAP on | SMAP off
> Before: 4.9Mpps | 6.9Mpps
> After:  6.0Mpps | 7.5Mpps
> 
> On a elder CPU Sandy Bridge without SMAP support. TX PPS doesn't see
> any difference.

Why is not Kaby Lake with SMAP off the same as Sandy Bridge?


> Cc: Andrea Arcangeli <aarcange@redhat.com>
> Cc: James Bottomley <James.Bottomley@hansenpartnership.com>
> Cc: Christoph Hellwig <hch@infradead.org>
> Cc: David Miller <davem@davemloft.net>
> Cc: Jerome Glisse <jglisse@redhat.com>
> Cc: Jason Gunthorpe <jgg@mellanox.com>
> Cc: linux-mm@kvack.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-parisc@vger.kernel.org
> Signed-off-by: Jason Wang <jasowang@redhat.com>
> Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
> ---
>  drivers/vhost/vhost.c | 551 +++++++++++++++++++++++++++++++++++++++++-
>  drivers/vhost/vhost.h |  41 ++++
>  2 files changed, 589 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/vhost/vhost.c b/drivers/vhost/vhost.c
> index 791562e03fe0..f98155f28f02 100644
> --- a/drivers/vhost/vhost.c
> +++ b/drivers/vhost/vhost.c
> @@ -298,6 +298,182 @@ static void vhost_vq_meta_reset(struct vhost_dev *d)
>  		__vhost_vq_meta_reset(d->vqs[i]);
>  }
>  
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +static void vhost_map_unprefetch(struct vhost_map *map)
> +{
> +	kfree(map->pages);
> +	kfree(map);
> +}
> +
> +static void vhost_set_map_dirty(struct vhost_virtqueue *vq,
> +				struct vhost_map *map, int index)
> +{
> +	struct vhost_uaddr *uaddr = &vq->uaddrs[index];
> +	int i;
> +
> +	if (uaddr->write) {
> +		for (i = 0; i < map->npages; i++)
> +			set_page_dirty(map->pages[i]);
> +	}
> +}
> +
> +static void vhost_uninit_vq_maps(struct vhost_virtqueue *vq)
> +{
> +	struct vhost_map *map[VHOST_NUM_ADDRS];
> +	int i;
> +
> +	spin_lock(&vq->mmu_lock);
> +	for (i = 0; i < VHOST_NUM_ADDRS; i++) {
> +		map[i] = vq->maps[i];
> +		if (map[i]) {
> +			vhost_set_map_dirty(vq, map[i], i);
> +			vq->maps[i] = NULL;
> +		}
> +	}
> +	spin_unlock(&vq->mmu_lock);
> +
> +	/* No need for synchronization since we are serialized with
> +	 * memory accessors (e.g vq mutex held).
> +	 */
> +
> +	for (i = 0; i < VHOST_NUM_ADDRS; i++)
> +		if (map[i])
> +			vhost_map_unprefetch(map[i]);
> +
> +}
> +
> +static void vhost_reset_vq_maps(struct vhost_virtqueue *vq)
> +{
> +	int i;
> +
> +	vhost_uninit_vq_maps(vq);
> +	for (i = 0; i < VHOST_NUM_ADDRS; i++)
> +		vq->uaddrs[i].size = 0;
> +}
> +
> +static bool vhost_map_range_overlap(struct vhost_uaddr *uaddr,
> +				     unsigned long start,
> +				     unsigned long end)
> +{
> +	if (unlikely(!uaddr->size))
> +		return false;
> +
> +	return !(end < uaddr->uaddr || start > uaddr->uaddr - 1 + uaddr->size);
> +}
> +
> +static void inline vhost_vq_access_map_begin(struct vhost_virtqueue *vq)
> +{
> +	spin_lock(&vq->mmu_lock);
> +}
> +
> +static void inline vhost_vq_access_map_end(struct vhost_virtqueue *vq)
> +{
> +	spin_unlock(&vq->mmu_lock);
> +}
> +
> +static int vhost_invalidate_vq_start(struct vhost_virtqueue *vq,
> +				     int index,
> +				     unsigned long start,
> +				     unsigned long end,
> +				     bool blockable)
> +{
> +	struct vhost_uaddr *uaddr = &vq->uaddrs[index];
> +	struct vhost_map *map;
> +
> +	if (!vhost_map_range_overlap(uaddr, start, end))
> +		return 0;
> +	else if (!blockable)
> +		return -EAGAIN;
> +
> +	spin_lock(&vq->mmu_lock);
> +	++vq->invalidate_count;
> +
> +	map = vq->maps[index];
> +	if (map)
> +		vq->maps[index] = NULL;
> +	spin_unlock(&vq->mmu_lock);
> +
> +	if (map) {
> +		vhost_set_map_dirty(vq, map, index);
> +		vhost_map_unprefetch(map);
> +	}
> +
> +	return 0;
> +}
> +
> +static void vhost_invalidate_vq_end(struct vhost_virtqueue *vq,
> +				    int index,
> +				    unsigned long start,
> +				    unsigned long end)
> +{
> +	if (!vhost_map_range_overlap(&vq->uaddrs[index], start, end))
> +		return;
> +
> +	spin_lock(&vq->mmu_lock);
> +	--vq->invalidate_count;
> +	spin_unlock(&vq->mmu_lock);
> +}
> +
> +static int vhost_invalidate_range_start(struct mmu_notifier *mn,
> +					const struct mmu_notifier_range *range)
> +{
> +	struct vhost_dev *dev = container_of(mn, struct vhost_dev,
> +					     mmu_notifier);
> +	bool blockable = mmu_notifier_range_blockable(range);
> +	int i, j, ret;
> +
> +	for (i = 0; i < dev->nvqs; i++) {
> +		struct vhost_virtqueue *vq = dev->vqs[i];
> +
> +		for (j = 0; j < VHOST_NUM_ADDRS; j++) {
> +			ret = vhost_invalidate_vq_start(vq, j,
> +							range->start,
> +							range->end, blockable);
> +			if (ret)
> +				return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static void vhost_invalidate_range_end(struct mmu_notifier *mn,
> +				       const struct mmu_notifier_range *range)
> +{
> +	struct vhost_dev *dev = container_of(mn, struct vhost_dev,
> +					     mmu_notifier);
> +	int i, j;
> +
> +	for (i = 0; i < dev->nvqs; i++) {
> +		struct vhost_virtqueue *vq = dev->vqs[i];
> +
> +		for (j = 0; j < VHOST_NUM_ADDRS; j++)
> +			vhost_invalidate_vq_end(vq, j,
> +						range->start,
> +						range->end);
> +	}
> +}
> +
> +static const struct mmu_notifier_ops vhost_mmu_notifier_ops = {
> +	.invalidate_range_start = vhost_invalidate_range_start,
> +	.invalidate_range_end = vhost_invalidate_range_end,
> +};
> +
> +static void vhost_init_maps(struct vhost_dev *dev)
> +{
> +	struct vhost_virtqueue *vq;
> +	int i, j;
> +
> +	dev->mmu_notifier.ops = &vhost_mmu_notifier_ops;
> +
> +	for (i = 0; i < dev->nvqs; ++i) {
> +		vq = dev->vqs[i];
> +		for (j = 0; j < VHOST_NUM_ADDRS; j++)
> +			vq->maps[j] = NULL;
> +	}
> +}
> +#endif
> +
>  static void vhost_vq_reset(struct vhost_dev *dev,
>  			   struct vhost_virtqueue *vq)
>  {
> @@ -326,7 +502,11 @@ static void vhost_vq_reset(struct vhost_dev *dev,
>  	vq->busyloop_timeout = 0;
>  	vq->umem = NULL;
>  	vq->iotlb = NULL;
> +	vq->invalidate_count = 0;
>  	__vhost_vq_meta_reset(vq);
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +	vhost_reset_vq_maps(vq);
> +#endif
>  }
>  
>  static int vhost_worker(void *data)
> @@ -471,12 +651,15 @@ void vhost_dev_init(struct vhost_dev *dev,
>  	dev->iov_limit = iov_limit;
>  	dev->weight = weight;
>  	dev->byte_weight = byte_weight;
> +	dev->has_notifier = false;
>  	init_llist_head(&dev->work_list);
>  	init_waitqueue_head(&dev->wait);
>  	INIT_LIST_HEAD(&dev->read_list);
>  	INIT_LIST_HEAD(&dev->pending_list);
>  	spin_lock_init(&dev->iotlb_lock);
> -
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +	vhost_init_maps(dev);
> +#endif
>  
>  	for (i = 0; i < dev->nvqs; ++i) {
>  		vq = dev->vqs[i];
> @@ -485,6 +668,7 @@ void vhost_dev_init(struct vhost_dev *dev,
>  		vq->heads = NULL;
>  		vq->dev = dev;
>  		mutex_init(&vq->mutex);
> +		spin_lock_init(&vq->mmu_lock);
>  		vhost_vq_reset(dev, vq);
>  		if (vq->handle_kick)
>  			vhost_poll_init(&vq->poll, vq->handle_kick,
> @@ -564,7 +748,19 @@ long vhost_dev_set_owner(struct vhost_dev *dev)
>  	if (err)
>  		goto err_cgroup;
>  
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +	err = mmu_notifier_register(&dev->mmu_notifier, dev->mm);
> +	if (err)
> +		goto err_mmu_notifier;
> +#endif
> +	dev->has_notifier = true;
> +
>  	return 0;
> +
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +err_mmu_notifier:
> +	vhost_dev_free_iovecs(dev);
> +#endif
>  err_cgroup:
>  	kthread_stop(worker);
>  	dev->worker = NULL;
> @@ -655,6 +851,107 @@ static void vhost_clear_msg(struct vhost_dev *dev)
>  	spin_unlock(&dev->iotlb_lock);
>  }
>  
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +static void vhost_setup_uaddr(struct vhost_virtqueue *vq,
> +			      int index, unsigned long uaddr,
> +			      size_t size, bool write)
> +{
> +	struct vhost_uaddr *addr = &vq->uaddrs[index];
> +
> +	addr->uaddr = uaddr;
> +	addr->size = size;
> +	addr->write = write;
> +}
> +
> +static void vhost_setup_vq_uaddr(struct vhost_virtqueue *vq)
> +{
> +	vhost_setup_uaddr(vq, VHOST_ADDR_DESC,
> +			  (unsigned long)vq->desc,
> +			  vhost_get_desc_size(vq, vq->num),
> +			  false);
> +	vhost_setup_uaddr(vq, VHOST_ADDR_AVAIL,
> +			  (unsigned long)vq->avail,
> +			  vhost_get_avail_size(vq, vq->num),
> +			  false);
> +	vhost_setup_uaddr(vq, VHOST_ADDR_USED,
> +			  (unsigned long)vq->used,
> +			  vhost_get_used_size(vq, vq->num),
> +			  true);
> +}
> +
> +static int vhost_map_prefetch(struct vhost_virtqueue *vq,
> +			       int index)
> +{
> +	struct vhost_map *map;
> +	struct vhost_uaddr *uaddr = &vq->uaddrs[index];
> +	struct page **pages;
> +	int npages = DIV_ROUND_UP(uaddr->size, PAGE_SIZE);
> +	int npinned;
> +	void *vaddr, *v;
> +	int err;
> +	int i;
> +
> +	spin_lock(&vq->mmu_lock);
> +
> +	err = -EFAULT;
> +	if (vq->invalidate_count)
> +		goto err;
> +
> +	err = -ENOMEM;
> +	map = kmalloc(sizeof(*map), GFP_ATOMIC);
> +	if (!map)
> +		goto err;
> +
> +	pages = kmalloc_array(npages, sizeof(struct page *), GFP_ATOMIC);
> +	if (!pages)
> +		goto err_pages;
> +
> +	err = EFAULT;
> +	npinned = __get_user_pages_fast(uaddr->uaddr, npages,
> +					uaddr->write, pages);
> +	if (npinned > 0)
> +		release_pages(pages, npinned);
> +	if (npinned != npages)
> +		goto err_gup;
> +
> +	for (i = 0; i < npinned; i++)
> +		if (PageHighMem(pages[i]))
> +			goto err_gup;
> +
> +	vaddr = v = page_address(pages[0]);
> +
> +	/* For simplicity, fallback to userspace address if VA is not
> +	 * contigious.
> +	 */
> +	for (i = 1; i < npinned; i++) {
> +		v += PAGE_SIZE;
> +		if (v != page_address(pages[i]))
> +			goto err_gup;
> +	}
> +
> +	map->addr = vaddr + (uaddr->uaddr & (PAGE_SIZE - 1));
> +	map->npages = npages;
> +	map->pages = pages;
> +
> +	vq->maps[index] = map;
> +	/* No need for a synchronize_rcu(). This function should be
> +	 * called by dev->worker so we are serialized with all
> +	 * readers.
> +	 */
> +	spin_unlock(&vq->mmu_lock);
> +
> +	return 0;
> +
> +err_gup:
> +	kfree(pages);
> +err_pages:
> +	kfree(map);
> +err:
> +	spin_unlock(&vq->mmu_lock);
> +	return err;
> +}
> +#endif
> +
>  void vhost_dev_cleanup(struct vhost_dev *dev)
>  {
>  	int i;
> @@ -684,8 +981,20 @@ void vhost_dev_cleanup(struct vhost_dev *dev)
>  		kthread_stop(dev->worker);
>  		dev->worker = NULL;
>  	}
> -	if (dev->mm)
> +	if (dev->mm) {
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +		if (dev->has_notifier) {
> +			mmu_notifier_unregister(&dev->mmu_notifier,
> +						dev->mm);
> +			dev->has_notifier = false;
> +		}
> +#endif
>  		mmput(dev->mm);
> +	}
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +	for (i = 0; i < dev->nvqs; i++)
> +		vhost_uninit_vq_maps(dev->vqs[i]);
> +#endif
>  	dev->mm = NULL;
>  }
>  EXPORT_SYMBOL_GPL(vhost_dev_cleanup);
> @@ -914,6 +1223,26 @@ static inline void __user *__vhost_get_user(struct vhost_virtqueue *vq,
>  
>  static inline int vhost_put_avail_event(struct vhost_virtqueue *vq)
>  {
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +	struct vhost_map *map;
> +	struct vring_used *used;
> +
> +	if (!vq->iotlb) {
> +		vhost_vq_access_map_begin(vq);
> +
> +		map = vq->maps[VHOST_ADDR_USED];
> +		if (likely(map)) {
> +			used = map->addr;
> +			*((__virtio16 *)&used->ring[vq->num]) =
> +				cpu_to_vhost16(vq, vq->avail_idx);
> +			vhost_vq_access_map_end(vq);
> +			return 0;
> +		}
> +
> +		vhost_vq_access_map_end(vq);
> +	}
> +#endif
> +
>  	return vhost_put_user(vq, cpu_to_vhost16(vq, vq->avail_idx),
>  			      vhost_avail_event(vq));
>  }
> @@ -922,6 +1251,27 @@ static inline int vhost_put_used(struct vhost_virtqueue *vq,
>  				 struct vring_used_elem *head, int idx,
>  				 int count)
>  {
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +	struct vhost_map *map;
> +	struct vring_used *used;
> +	size_t size;
> +
> +	if (!vq->iotlb) {
> +		vhost_vq_access_map_begin(vq);
> +
> +		map = vq->maps[VHOST_ADDR_USED];
> +		if (likely(map)) {
> +			used = map->addr;
> +			size = count * sizeof(*head);
> +			memcpy(used->ring + idx, head, size);
> +			vhost_vq_access_map_end(vq);
> +			return 0;
> +		}
> +
> +		vhost_vq_access_map_end(vq);
> +	}
> +#endif
> +
>  	return vhost_copy_to_user(vq, vq->used->ring + idx, head,
>  				  count * sizeof(*head));
>  }
> @@ -929,6 +1279,25 @@ static inline int vhost_put_used(struct vhost_virtqueue *vq,
>  static inline int vhost_put_used_flags(struct vhost_virtqueue *vq)
>  
>  {
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +	struct vhost_map *map;
> +	struct vring_used *used;
> +
> +	if (!vq->iotlb) {
> +		vhost_vq_access_map_begin(vq);
> +
> +		map = vq->maps[VHOST_ADDR_USED];
> +		if (likely(map)) {
> +			used = map->addr;
> +			used->flags = cpu_to_vhost16(vq, vq->used_flags);
> +			vhost_vq_access_map_end(vq);
> +			return 0;
> +		}
> +
> +		vhost_vq_access_map_end(vq);
> +	}
> +#endif
> +
>  	return vhost_put_user(vq, cpu_to_vhost16(vq, vq->used_flags),
>  			      &vq->used->flags);
>  }
> @@ -936,6 +1305,25 @@ static inline int vhost_put_used_flags(struct vhost_virtqueue *vq)
>  static inline int vhost_put_used_idx(struct vhost_virtqueue *vq)
>  
>  {
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +	struct vhost_map *map;
> +	struct vring_used *used;
> +
> +	if (!vq->iotlb) {
> +		vhost_vq_access_map_begin(vq);
> +
> +		map = vq->maps[VHOST_ADDR_USED];
> +		if (likely(map)) {
> +			used = map->addr;
> +			used->idx = cpu_to_vhost16(vq, vq->last_used_idx);
> +			vhost_vq_access_map_end(vq);
> +			return 0;
> +		}
> +
> +		vhost_vq_access_map_end(vq);
> +	}
> +#endif
> +
>  	return vhost_put_user(vq, cpu_to_vhost16(vq, vq->last_used_idx),
>  			      &vq->used->idx);
>  }
> @@ -981,12 +1369,50 @@ static void vhost_dev_unlock_vqs(struct vhost_dev *d)
>  static inline int vhost_get_avail_idx(struct vhost_virtqueue *vq,
>  				      __virtio16 *idx)
>  {
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +	struct vhost_map *map;
> +	struct vring_avail *avail;
> +
> +	if (!vq->iotlb) {
> +		vhost_vq_access_map_begin(vq);
> +
> +		map = vq->maps[VHOST_ADDR_AVAIL];
> +		if (likely(map)) {
> +			avail = map->addr;
> +			*idx = avail->idx;

index can now be speculated.

> +			vhost_vq_access_map_end(vq);
> +			return 0;
> +		}
> +
> +		vhost_vq_access_map_end(vq);
> +	}
> +#endif
> +
>  	return vhost_get_avail(vq, *idx, &vq->avail->idx);
>  }
>  
>  static inline int vhost_get_avail_head(struct vhost_virtqueue *vq,
>  				       __virtio16 *head, int idx)
>  {
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +	struct vhost_map *map;
> +	struct vring_avail *avail;
> +
> +	if (!vq->iotlb) {
> +		vhost_vq_access_map_begin(vq);
> +
> +		map = vq->maps[VHOST_ADDR_AVAIL];
> +		if (likely(map)) {
> +			avail = map->addr;
> +			*head = avail->ring[idx & (vq->num - 1)];


Since idx can be speculated, I guess we need array_index_nospec here?


> +			vhost_vq_access_map_end(vq);
> +			return 0;
> +		}
> +
> +		vhost_vq_access_map_end(vq);
> +	}
> +#endif
> +
>  	return vhost_get_avail(vq, *head,
>  			       &vq->avail->ring[idx & (vq->num - 1)]);
>  }
> @@ -994,24 +1420,98 @@ static inline int vhost_get_avail_head(struct vhost_virtqueue *vq,
>  static inline int vhost_get_avail_flags(struct vhost_virtqueue *vq,
>  					__virtio16 *flags)
>  {
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +	struct vhost_map *map;
> +	struct vring_avail *avail;
> +
> +	if (!vq->iotlb) {
> +		vhost_vq_access_map_begin(vq);
> +
> +		map = vq->maps[VHOST_ADDR_AVAIL];
> +		if (likely(map)) {
> +			avail = map->addr;
> +			*flags = avail->flags;
> +			vhost_vq_access_map_end(vq);
> +			return 0;
> +		}
> +
> +		vhost_vq_access_map_end(vq);
> +	}
> +#endif
> +
>  	return vhost_get_avail(vq, *flags, &vq->avail->flags);
>  }
>  
>  static inline int vhost_get_used_event(struct vhost_virtqueue *vq,
>  				       __virtio16 *event)
>  {
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +	struct vhost_map *map;
> +	struct vring_avail *avail;
> +
> +	if (!vq->iotlb) {
> +		vhost_vq_access_map_begin(vq);
> +		map = vq->maps[VHOST_ADDR_AVAIL];
> +		if (likely(map)) {
> +			avail = map->addr;
> +			*event = (__virtio16)avail->ring[vq->num];
> +			vhost_vq_access_map_end(vq);
> +			return 0;
> +		}
> +		vhost_vq_access_map_end(vq);
> +	}
> +#endif
> +
>  	return vhost_get_avail(vq, *event, vhost_used_event(vq));
>  }
>  
>  static inline int vhost_get_used_idx(struct vhost_virtqueue *vq,
>  				     __virtio16 *idx)
>  {
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +	struct vhost_map *map;
> +	struct vring_used *used;
> +
> +	if (!vq->iotlb) {
> +		vhost_vq_access_map_begin(vq);
> +
> +		map = vq->maps[VHOST_ADDR_USED];
> +		if (likely(map)) {
> +			used = map->addr;
> +			*idx = used->idx;
> +			vhost_vq_access_map_end(vq);
> +			return 0;
> +		}
> +
> +		vhost_vq_access_map_end(vq);
> +	}
> +#endif
> +
>  	return vhost_get_used(vq, *idx, &vq->used->idx);
>  }


This seems to be used during init. Why do we bother
accelerating this?


>  
>  static inline int vhost_get_desc(struct vhost_virtqueue *vq,
>  				 struct vring_desc *desc, int idx)
>  {
> +#if VHOST_ARCH_CAN_ACCEL_UACCESS
> +	struct vhost_map *map;
> +	struct vring_desc *d;
> +
> +	if (!vq->iotlb) {
> +		vhost_vq_access_map_begin(vq);
> +
> +		map = vq->maps[VHOST_ADDR_DESC];
> +		if (likely(map)) {
> +			d = map->addr;
> +			*desc = *(d + idx);


Since idx can be speculated, I guess we need array_index_nospec here?


> +			vhost_vq_access_map_end(vq);
> +			return 0;
> +		}
> +
> +		vhost_vq_access_map_end(vq);
> +	}
> +#endif
> +
>  	return vhost_copy_from_user(vq, desc, vq->desc + idx, sizeof(*desc));
>  }
>  

I also wonder about the userspace address we get eventualy.
It would seem that we need to prevent that from speculating -
and that seems like a good idea even if this patch isn't
applied. As you are playing with micro-benchmarks, maybe
you could the below patch?
It's unfortunately untested.
Thanks a lot in advance!

===>
vhost: block speculation of translated descriptors

iovec addresses coming from vhost are assumed to be
pre-validated, but in fact can be speculated to a value
out of range.

Userspace address are later validated with array_index_nospec so we can
be sure kernel info does not leak through these addresses, but vhost
must also not leak userspace info outside the allowed memory table to
guests.

Following the defence in depth principle, make sure
the address is not validated out of node range.

Signed-off-by: Michael S. Tsirkin <mst@redhat.com>

---


diff --git a/drivers/vhost/vhost.c b/drivers/vhost/vhost.c
index 5dc174ac8cac..863e25011ef6 100644
--- a/drivers/vhost/vhost.c
+++ b/drivers/vhost/vhost.c
@@ -2072,7 +2076,9 @@ static int translate_desc(struct vhost_virtqueue *vq, u64 addr, u32 len,
 		size = node->size - addr + node->start;
 		_iov->iov_len = min((u64)len - s, size);
 		_iov->iov_base = (void __user *)(unsigned long)
-			(node->userspace_addr + addr - node->start);
+			(node->userspace_addr +
+			 array_index_nospec(addr - node->start,
+					    node->size));
 		s += size;
 		addr += size;
 		++ret;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
