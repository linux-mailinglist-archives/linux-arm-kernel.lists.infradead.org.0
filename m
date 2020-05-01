Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF561C1276
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 14:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXOf7O/EA2RZosx4a9qtAxDuuTXwatip11a3sD+JKVM=; b=ifoKTKbzCVcZ5p
	vn4TRUhoabobTWtdhbf1/NeQcnc69TXVyl0CRZJvKvolJUYrUxNNkfB3u5E2QX8c2hDywuUhebzlg
	tso/1EYqTdUWUjyiHaC5a/B9WBbFZsz/BNm40c6dw2RHGaXlZ/WKuIgpozX9ztL43BVsGZbMLdux6
	l7WUpSO85n85VQxDBL/8WGCCXUZxmFpUViOWzW8NAR5wGZ73o89iYt5vRiAN4xTvYA84eBDjvaJgU
	+0mzkH/LJGrlk8mdZDYHhjtsqBRDuYz9fxHqqtvhKTNTQFMAjl23nIDIZOW5SAIBPV5PTV7om5Jd0
	aHLDYccoAfdkQ1+SVJZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUVCN-0007G9-JF; Fri, 01 May 2020 12:55:23 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUVCG-0007Fg-VJ
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 12:55:18 +0000
Received: by mail-qv1-xf41.google.com with SMTP id p13so4642357qvt.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 05:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=P0z8kBnXrlZIDie1dLQeqogN9MwmVy7z4o7SA4TqzwU=;
 b=Nq8HOg9n7Z+VdnITQnbqqVABmWu3/6twaYJ7q1ZG6DqOfwLX2pqDKfEDSh+EIm/he8
 8XxNujX7EOvHA+Z3U42zDC/h9oN+aKWNxlISO0Rq2tTCVZNWNCIrJWk7sh2DWdjcVwvU
 wCvE4KNEgpOv+mKqLqLC6erVH6iCBHZ3nggeOEQIkaDvn7IPj2tAyOj9O8z6V4Qx2f1V
 20zcGw/GN8o0n+NfO/8kyZsltT7TcTtCKSej9x25s7Vy8ZXZSAEGpL08aolIMnLihAqM
 O4lVQbo50EUAWIw62edP+hXhKTif6IJbYSGaALf2LAPuTPfJPTwd2r2FjwrGZ5t7qGNY
 ydVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=P0z8kBnXrlZIDie1dLQeqogN9MwmVy7z4o7SA4TqzwU=;
 b=AyEfODbSnlOI5BdFpO7jGRW+LMZ9e52sZghn8eqn0LdD7oQ4gv/x/FvnmcpeI26iYD
 TuGKYnLg+fTcuObtn4brPw2wwkqt/CN6mdd3URH6yKHs03ASl9eGTrvqHJihILQrkNk5
 RVwklaINka/QP2dFgJn6JOKuJr3Jpn+kvlhQfKS85zLh6J2VV0TpLNx00bdGkcUEYnaa
 4djGNTZKC2H+ZBsmU8E/7Fo82JYCVmIVWdNeLzX+4W/wDL6Ew63E/b6Py1u3zU5UedU0
 wcHgrPtcpZK7xnUlpRha2vxiAfqqz7NHMlNFT64YC06kvJxNWo24V6Im3O8ViAUkkRVs
 DZvw==
X-Gm-Message-State: AGi0PuYJ8oWOjgTVPstl4QCk0SCkmMcHmOaQEp//crl30swkvmFX3bZF
 SJMZQOg9VwdgUqd8wsoma8uqAg==
X-Google-Smtp-Source: APiQypJcH2wlws52fFFXitF6KkzvvmTMs6scpT5jXa1TBx4TcLMsA/h0u5FOFpvXuuZfcR/nYumjiA==
X-Received: by 2002:a05:6214:a4e:: with SMTP id
 ee14mr3877158qvb.121.1588337715542; 
 Fri, 01 May 2020 05:55:15 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.57.212])
 by smtp.gmail.com with ESMTPSA id 28sm2645211qkp.10.2020.05.01.05.55.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 May 2020 05:55:14 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1jUVCD-0007LO-33; Fri, 01 May 2020 09:55:13 -0300
Date: Fri, 1 May 2020 09:55:13 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v6 17/25] iommu/arm-smmu-v3: Implement
 iommu_sva_bind/unbind()
Message-ID: <20200501125513.GN26002@ziepe.ca>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-18-jean-philippe@linaro.org>
 <20200501121552.GA6012@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501121552.GA6012@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_055517_081065_CDE8D48D 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, kevin.tian@intel.com,
 will@kernel.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 felix.kuehling@amd.com, fenghua.yu@intel.com, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, robin.murphy@arm.com, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 05:15:52AM -0700, Christoph Hellwig wrote:
> > @@ -432,6 +432,7 @@ config ARM_SMMU_V3
> >  	tristate "ARM Ltd. System MMU Version 3 (SMMUv3) Support"
> >  	depends on ARM64
> >  	select IOMMU_API
> > +	select IOMMU_SVA
> >  	select IOMMU_IO_PGTABLE_LPAE
> >  	select GENERIC_MSI_IRQ_DOMAIN
> 
> Doesn't this need to select MMU_NOTIFIER now?
> 
> > +	struct mmu_notifier_ops		mn_ops;
> 
> Note: not a pointer.
> 
> > +	/* If bind() was already called for this (dev, mm) pair, reuse it. */
> > +	list_for_each_entry(bond, &master->bonds, list) {
> > +		if (bond->mm == mm) {
> > +			refcount_inc(&bond->refs);
> > +			return &bond->sva;
> > +		}
> > +	}

I also would like it if searching for mms in linked lists was not
necessary, this is kind of the point of 'get'

Is this a side effect of the earlier remark to get rid of the linked
list inside the notifier?

> Or we could enhance the mmu_notifier_get to pass a private
> oaque instance ID pointer, which is checked in addition to the ops,
> and you could probably kill off the bonds list and lookup.

This might be the best option if it can absorb the above search..

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
