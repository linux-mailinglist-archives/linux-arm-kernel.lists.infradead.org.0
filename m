Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520EDB6A1E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 19:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KEIt6fpA+StyqJT/gcTmULiZw1wjDQoWU75yX5kT6aY=; b=IuaPrztJqNcsWa
	FO2TKlKTKI0LyTRMg9mU9yHGxxdjWoVKWLEUfOuwbEvmvX7SpE/jTqKnEYEoq7ZlNpsXRGOLIHY2y
	cBBJlgE306buE6cvwTT7vMGgJMGtweTBqMvmrTb2rsW3FO7YA88pCyrk2lYA6cE/052/k56tVpkV3
	zFFVqu0GBLmzulcBl0aimNunt3rmBT4WYzzQ6hP4KHAl3SPeGNY0P10Ni5UEDvP0Crdl7bfDa88Oh
	uOt35T9ajR7UnmMrt1sUQ+kiWJF8DAINzqS454pXROaQQI7+OQCit7qVWrsiiGUez93MNb1q0Yi9y
	3ayISDHBkOzho/WmTvzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAeEX-00024Q-Qi; Wed, 18 Sep 2019 17:59:17 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAeEN-00023U-8e
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 17:59:08 +0000
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 077853A206
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 17:59:06 +0000 (UTC)
Received: by mail-qt1-f200.google.com with SMTP id x25so957769qtq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 10:59:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=95uHNXLpbAw8Te8P7uq0ffZGCmMKa4Edsq7nRG4mv4c=;
 b=UiwnxIkFwFJ+dB3rZK/y08Vov3QbvliWvUsOjYpRXHbeX3PGoDlZiD1X9lj6ATNnHt
 Cm6iPPQoBd1DjfP8dSUqbFL+nlzH4VYJYIYc7AOvfISyck8+S9XRh7RP9zzKrR+zf0pr
 hG493HZkqoErJhDoa2CjfJV2PDST7iKz0RVvSd09vfjMShYIVKR8n0mll2ZFDjOw5S9y
 5+7LUL9tf1z4VC3Xv5z5MEk1kQ6lD3PoH0ye9AA7aTWjM87zJUsswzgPAYmq7DyiE85I
 5tZc4Za3e96yY2JokGTjLy2+QzXFyYfafoBdWIX81MiU68lN4vhA/X95dllfdaUbGuTB
 klSA==
X-Gm-Message-State: APjAAAU+Ov9htqgYL5n6okuoNeCVkAMbFk1advtLTf4C5OTDHxlhkcI4
 0SNIiYgeoFT26KW7SrdKNvPnfNms1LefqKznxYzQBeXPokIO6yeZnJTR9PEY20wBbmgBxwHwR5F
 zVuQA7VA4Y2G1zA5bDIB7ufO5QVBf322d8HY=
X-Received: by 2002:ac8:7b2a:: with SMTP id l10mr5571350qtu.115.1568829545307; 
 Wed, 18 Sep 2019 10:59:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwp4kWwOScH3+FsPGYP96mLuwlTyG0LsIAHV0yLqSSN4DKzmnPp2MGayN7dp76k/rTEPpJp8A==
X-Received: by 2002:ac8:7b2a:: with SMTP id l10mr5571319qtu.115.1568829545135; 
 Wed, 18 Sep 2019 10:59:05 -0700 (PDT)
Received: from redhat.com (bzq-79-176-40-226.red.bezeqint.net. [79.176.40.226])
 by smtp.gmail.com with ESMTPSA id q126sm3855323qkf.47.2019.09.18.10.58.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 10:59:04 -0700 (PDT)
Date: Wed, 18 Sep 2019 13:58:55 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [PATCH v10 5/6] virtio-balloon: Pull page poisoning config out
 of free page hinting
Message-ID: <20190918135833-mutt-send-email-mst@kernel.org>
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
 <20190918175305.23474.34783.stgit@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918175305.23474.34783.stgit@localhost.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_105907_352030_BDDF7EA4 
X-CRM114-Status: GOOD (  24.81  )
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, kvm@vger.kernel.org,
 david@redhat.com, mhocko@kernel.org, linux-mm@kvack.org,
 alexander.h.duyck@linux.intel.com, aarcange@redhat.com,
 virtio-dev@lists.oasis-open.org, konrad.wilk@oracle.com, willy@infradead.org,
 wei.w.wang@intel.com, vbabka@suse.cz, riel@surriel.com,
 dan.j.williams@intel.com, lcapitulino@redhat.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, nitesh@redhat.com,
 dave.hansen@intel.com, linux-kernel@vger.kernel.org, pbonzini@redhat.com,
 akpm@linux-foundation.org, mgorman@techsingularity.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 10:53:05AM -0700, Alexander Duyck wrote:
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
> Reviewed-by: David Hildenbrand <david@redhat.com>
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>

I think this one can go in directly. Do you want me to merge it now?

> ---
>  drivers/virtio/virtio_balloon.c |   22 +++++++++++++++-------
>  1 file changed, 15 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/virtio/virtio_balloon.c b/drivers/virtio/virtio_balloon.c
> index 226fbb995fb0..501a8d0ebf86 100644
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
> +		 * Let the hypervisor know that we are expecting a
> +		 * specific value to be written back in unused pages.
> +		 */
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
> +	/* Tell the host whether we care about poisoned pages. */
> +	if (IS_ENABLED(CONFIG_PAGE_POISONING_NO_SANITY) ||
> +	    !page_poisoning_enabled())
>  		__virtio_clear_bit(vdev, VIRTIO_BALLOON_F_PAGE_POISON);
>  
>  	__virtio_clear_bit(vdev, VIRTIO_F_IOMMU_PLATFORM);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
