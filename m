Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C55F0AD530
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 10:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNpkqEGN4/sqfV0Uf34g3AYTNgCtp4RlmjJxHBF8h9s=; b=nLTcbvcoF195jI
	u86JbcsQtujWvctI4iq1I+VOk6xTd2VXmYa7T4U//KR9mGx7+hZduWMTVXNHqrrt4O2lHaBBlCYMb
	LslIsC/a0pLnR8Ajp2iZZMKHrsOow8112rb/pH93hn7hBC6kNC4GzbuFHIeCDBrahfXnGXyqp/UlZ
	0Nlw5mc0Tq58+Vjvjqw3aKR3ZqY3KlTB3vc5aCtHHDLaFmIerHEVRVMGEPlW2tEeE1GVOh5HbWbsw
	e7Da6R5vVZo8dashZWh/gynu01p2qDrdcpkbgGNU2urDBi9e18uEfeFVobMUnV4uwd3n09cnw6dNd
	9jVXNAmgRidT5p5NetDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7FWQ-0005C7-Kr; Mon, 09 Sep 2019 08:59:42 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FWE-0005Bo-SA
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 08:59:32 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 686AA11A14;
 Mon,  9 Sep 2019 08:59:30 +0000 (UTC)
Received: from [10.36.116.173] (ovpn-116-173.ams2.redhat.com [10.36.116.173])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 450A85D9D6;
 Mon,  9 Sep 2019 08:59:09 +0000 (UTC)
Subject: Re: [PATCH v9 7/8] virtio-balloon: Pull page poisoning config out of
 free page hinting
To: Alexander Duyck <alexander.duyck@gmail.com>,
 virtio-dev@lists.oasis-open.org, kvm@vger.kernel.org, mst@redhat.com,
 catalin.marinas@arm.com, dave.hansen@intel.com,
 linux-kernel@vger.kernel.org, willy@infradead.org, mhocko@kernel.org,
 linux-mm@kvack.org, akpm@linux-foundation.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172601.10910.95355.stgit@localhost.localdomain>
From: David Hildenbrand <david@redhat.com>
Openpgp: preference=signencrypt
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
 SE+xAvmumFBY
Organization: Red Hat GmbH
Message-ID: <4dfcf372-97be-65ab-1349-75f24aa4f98a@redhat.com>
Date: Mon, 9 Sep 2019 10:59:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190907172601.10910.95355.stgit@localhost.localdomain>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Mon, 09 Sep 2019 08:59:30 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_015930_963983_CC1AE807 
X-CRM114-Status: GOOD (  24.93  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 alexander.h.duyck@linux.intel.com, kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07.09.19 19:26, Alexander Duyck wrote:
> From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> Currently the page poisoning setting wasn't being enabled unless free page
> hinting was enabled. However we will need the page poisoning tracking logic
> as well for unused page reporting. As such pull it out and make it a
> separate bit of config in the probe function.
> 
> In addition we can actually wrap the code in a check for NO_SANITY. If we
> don't care what is actually in the page we can just default to 0 and leave
> it there.
> 
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> ---
>  drivers/virtio/virtio_balloon.c |   22 +++++++++++++++-------
>  1 file changed, 15 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/virtio/virtio_balloon.c b/drivers/virtio/virtio_balloon.c
> index 226fbb995fb0..d2547df7de93 100644
> --- a/drivers/virtio/virtio_balloon.c
> +++ b/drivers/virtio/virtio_balloon.c
> @@ -842,7 +842,6 @@ static int virtio_balloon_register_shrinker(struct virtio_balloon *vb)
>  static int virtballoon_probe(struct virtio_device *vdev)
>  {
>  	struct virtio_balloon *vb;
> -	__u32 poison_val;
>  	int err;
>  
>  	if (!vdev->config->get) {
> @@ -909,11 +908,18 @@ static int virtballoon_probe(struct virtio_device *vdev)
>  						  VIRTIO_BALLOON_CMD_ID_STOP);
>  		spin_lock_init(&vb->free_page_list_lock);
>  		INIT_LIST_HEAD(&vb->free_page_list);
> -		if (virtio_has_feature(vdev, VIRTIO_BALLOON_F_PAGE_POISON)) {
> -			memset(&poison_val, PAGE_POISON, sizeof(poison_val));
> -			virtio_cwrite(vb->vdev, struct virtio_balloon_config,
> -				      poison_val, &poison_val);
> -		}
> +	}
> +	if (virtio_has_feature(vdev, VIRTIO_BALLOON_F_PAGE_POISON)) {
> +		__u32 poison_val;
> +
> +		/*
> +		 * Let hypervisor know that we are expecting a specific
> +		 * value to be written back in unused pages.
> +		 */

"Let the hypervisor know" ... ?

> +		memset(&poison_val, PAGE_POISON, sizeof(poison_val));
> +
> +		virtio_cwrite(vb->vdev, struct virtio_balloon_config,
> +			      poison_val, &poison_val);
>  	}
>  	/*
>  	 * We continue to use VIRTIO_BALLOON_F_DEFLATE_ON_OOM to decide if a
> @@ -1014,7 +1020,9 @@ static int virtballoon_restore(struct virtio_device *vdev)
>  
>  static int virtballoon_validate(struct virtio_device *vdev)
>  {
> -	if (!page_poisoning_enabled())
> +	/* Notify host if we care about poison value */

"Tell the host whether we care about poisoned pages." ?

> +	if (IS_ENABLED(CONFIG_PAGE_POISONING_NO_SANITY) ||
> +	    !page_poisoning_enabled())
>  		__virtio_clear_bit(vdev, VIRTIO_BALLOON_F_PAGE_POISON);
>  
>  	__virtio_clear_bit(vdev, VIRTIO_F_IOMMU_PLATFORM);
> 

Reviewed-by: David Hildenbrand <david@redhat.com>

-- 

Thanks,

David / dhildenb

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
