Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13019ADC25
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=plRR6A1Mm7oakPKs/lLi6z1CUxBirIDUS9CKkA+GP9Q=; b=ZG5mzwzpyr3RaO
	j+OyR5lUAZNZGggdjbpu5/aIQ35UvxLyvKuHpy/p5Tpn+S8fpMkri19xp4l6v7ArNnha0YVWsD/9N
	ApW/Zdzwh2YArW7n/hPlKJaM85CW9NT/904/hDNtKcvsOFvpP3kn4NlsNGR+Xt+H1XrJ1l97W94SC
	kWZ1SgbvZCCoG0HeunRqdhnpjvbQpR6RLOrBSSEwb5f3e5U7ZxudIyKd5QrnDD+VS/vJ7pOQh+9EM
	KFLKy/m0eFOfLuVaLns10+LHb39/S6m00/A6laO5dnYZHGVsr+uPKlazKyb7kTdU7gqfOcspdcjWB
	n7GD83d0j4nhit4Y3L4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Le6-00064i-JN; Mon, 09 Sep 2019 15:32:02 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Ldw-00063w-31
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 15:31:53 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 08:31:51 -0700
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; d="scan'208";a="359515642"
Received: from ahduyck-desk1.jf.intel.com ([10.7.198.76])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 08:31:51 -0700
Message-ID: <f9c1abd93b9546885eb10d0cd62ee7421b484ba2.camel@linux.intel.com>
Subject: Re: [PATCH v9 7/8] virtio-balloon: Pull page poisoning config out
 of free page hinting
From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
To: David Hildenbrand <david@redhat.com>, Alexander Duyck
 <alexander.duyck@gmail.com>, virtio-dev@lists.oasis-open.org, 
 kvm@vger.kernel.org, mst@redhat.com, catalin.marinas@arm.com, 
 dave.hansen@intel.com, linux-kernel@vger.kernel.org, willy@infradead.org, 
 mhocko@kernel.org, linux-mm@kvack.org, akpm@linux-foundation.org,
 will@kernel.org,  linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Date: Mon, 09 Sep 2019 08:31:51 -0700
In-Reply-To: <4dfcf372-97be-65ab-1349-75f24aa4f98a@redhat.com>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172601.10910.95355.stgit@localhost.localdomain>
 <4dfcf372-97be-65ab-1349-75f24aa4f98a@redhat.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_083152_168589_96E925F5 
X-CRM114-Status: GOOD (  21.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, riel@surriel.com,
 konrad.wilk@oracle.com, ying.huang@intel.com, lcapitulino@redhat.com,
 wei.w.wang@intel.com, aarcange@redhat.com, nitesh@redhat.com,
 pbonzini@redhat.com, dan.j.williams@intel.com, fengguang.wu@intel.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-09-09 at 10:59 +0200, David Hildenbrand wrote:
> On 07.09.19 19:26, Alexander Duyck wrote:
> > From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > 
> > Currently the page poisoning setting wasn't being enabled unless free page
> > hinting was enabled. However we will need the page poisoning tracking logic
> > as well for unused page reporting. As such pull it out and make it a
> > separate bit of config in the probe function.
> > 
> > In addition we can actually wrap the code in a check for NO_SANITY. If we
> > don't care what is actually in the page we can just default to 0 and leave
> > it there.
> > 
> > Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > ---
> >  drivers/virtio/virtio_balloon.c |   22 +++++++++++++++-------
> >  1 file changed, 15 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/virtio/virtio_balloon.c b/drivers/virtio/virtio_balloon.c
> > index 226fbb995fb0..d2547df7de93 100644
> > --- a/drivers/virtio/virtio_balloon.c
> > +++ b/drivers/virtio/virtio_balloon.c
> > @@ -842,7 +842,6 @@ static int virtio_balloon_register_shrinker(struct virtio_balloon *vb)
> >  static int virtballoon_probe(struct virtio_device *vdev)
> >  {
> >  	struct virtio_balloon *vb;
> > -	__u32 poison_val;
> >  	int err;
> >  
> >  	if (!vdev->config->get) {
> > @@ -909,11 +908,18 @@ static int virtballoon_probe(struct virtio_device *vdev)
> >  						  VIRTIO_BALLOON_CMD_ID_STOP);
> >  		spin_lock_init(&vb->free_page_list_lock);
> >  		INIT_LIST_HEAD(&vb->free_page_list);
> > -		if (virtio_has_feature(vdev, VIRTIO_BALLOON_F_PAGE_POISON)) {
> > -			memset(&poison_val, PAGE_POISON, sizeof(poison_val));
> > -			virtio_cwrite(vb->vdev, struct virtio_balloon_config,
> > -				      poison_val, &poison_val);
> > -		}
> > +	}
> > +	if (virtio_has_feature(vdev, VIRTIO_BALLOON_F_PAGE_POISON)) {
> > +		__u32 poison_val;
> > +
> > +		/*
> > +		 * Let hypervisor know that we are expecting a specific
> > +		 * value to be written back in unused pages.
> > +		 */
> 
> "Let the hypervisor know" ... ?
> 
> > +		memset(&poison_val, PAGE_POISON, sizeof(poison_val));
> > +
> > +		virtio_cwrite(vb->vdev, struct virtio_balloon_config,
> > +			      poison_val, &poison_val);
> >  	}
> >  	/*
> >  	 * We continue to use VIRTIO_BALLOON_F_DEFLATE_ON_OOM to decide if a
> > @@ -1014,7 +1020,9 @@ static int virtballoon_restore(struct virtio_device *vdev)
> >  
> >  static int virtballoon_validate(struct virtio_device *vdev)
> >  {
> > -	if (!page_poisoning_enabled())
> > +	/* Notify host if we care about poison value */
> 
> "Tell the host whether we care about poisoned pages." ?
> 
> > +	if (IS_ENABLED(CONFIG_PAGE_POISONING_NO_SANITY) ||
> > +	    !page_poisoning_enabled())
> >  		__virtio_clear_bit(vdev, VIRTIO_BALLOON_F_PAGE_POISON);
> >  
> >  	__virtio_clear_bit(vdev, VIRTIO_F_IOMMU_PLATFORM);
> > 
> 
> Reviewed-by: David Hildenbrand <david@redhat.com>
> 

Thanks. I will update the comments for v10.

- Alex


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
