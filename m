Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A22B1C3F68
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSODC/b1dxkpjwGqV2ftlk25KDbHLuaFNibx9xvxux0=; b=fx9NfVpGDVNVu+
	o83YSoFbVXzFzo1FPMqJJpC7hSNwzNrmdJvZxhXYAQ3r4sWz7XpEBWMVArORY01BPjqp7Xlv3TuWU
	klnomjVI3tPdf5gFCojqLVyyHMG9dZaVWOVgcCJpNDPNivvsjvlHRl+BX4c+S7P9GD8FYS/G0P527
	QTAi81Une+X8E17a/ISeQZGTt/cOWFMqfbT1H7F3nF9t6CBpVZebbsPHaCmh1c/Gej/OfXI1lelWe
	KxlByXULARD2j0BA3zTD+D7oFJ0mFSqYAGBI+RfV/BARGZ85bBgfdoXTKkwtvFKhNWJALN6kr2bTr
	42W9i92Errh5WNZn24iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVddM-00030V-Qo; Mon, 04 May 2020 16:07:56 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVddB-0002zp-No
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:07:47 +0000
Received: by mail-wm1-x341.google.com with SMTP id u127so108673wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 09:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nMl6SHOaMost3dT1wGRgIQNBlt6LwoX99r9Dd84bUXI=;
 b=tOa5oTLa/BSYByPuQ+26pv5RJej5b20cBe+rvpOGPI/KofVkXxxl26y2MJakqaW0FQ
 rZJEar4QOw/8Ea95uNmoZPskH+y3kSmV2qqvfj7xz7WuAu3apmEB/RRqtnxyMYZ1rwFV
 kt9KI3iTKOxkoNvLOTBuIDR0pT38dqKuazvuidA+F4t6y11UNBS8CQ764TRmaAXE6n7m
 q2Ud0IZOLQGVjWMbEwM4ap6Y19/3twFdisN9Kmfa5J4pXzqmJ6e1dcc/hcuI7bWLKgbg
 5Oqx76DnLKrP1ppU9XJcOJPcIjL1Te3iy2p8xs4JkrbmXrwXC2o4X+EqXTaqX6KHcXrS
 DrRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nMl6SHOaMost3dT1wGRgIQNBlt6LwoX99r9Dd84bUXI=;
 b=q64qk79/9Vk4o2yuLxCxALSZpOqL+DVyFuoKVa17qVM/M+c1lOdaDcto48msy5mEer
 fhsbEAFt8pQm24fIWdaDa6s1MidAg289fhceRqTzFYuM/DBxOQX69RFb5bMBEL0g7vf6
 eXcwNRKTyRv5+nDvt/tiile7tlxYLp2IiI219KQUE189OBR7cpN6LLiT0cD5uYiRjwZZ
 zbcKpcKqX8CwwMKt1ZbaZyEBiu2ttcks42QjYkSHjvFYprOWNHoZnWSMnO1kcY/D1gqT
 bR8JmjLe6oPfmFGWYgSZkJzjcH3FEyLDNa1hzuklrZpAJDuLOVyeBTxnWLFwOR7twNKx
 Epfw==
X-Gm-Message-State: AGi0PuaHbu43BLPrtO9YssXQeQYVJFuMb/Y7y/MtYmT9OIbopBIBTS53
 EJj5yMhLUEZjmrDZSuzmZ2odFw==
X-Google-Smtp-Source: APiQypLRnG6LvHqUIo2qBJAF7F6DJOi32Rx7XybV+rqHkWXfxFrCE9dU7PixYXhfr6u9mhKSarqUxQ==
X-Received: by 2002:a7b:cb0c:: with SMTP id u12mr16851030wmj.137.1588608464322; 
 Mon, 04 May 2020 09:07:44 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id l15sm13514230wmi.48.2020.05.04.09.07.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 09:07:43 -0700 (PDT)
Date: Mon, 4 May 2020 18:07:34 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH v6 17/25] iommu/arm-smmu-v3: Implement
 iommu_sva_bind/unbind()
Message-ID: <20200504160734.GE170104@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-18-jean-philippe@linaro.org>
 <20200501121552.GA6012@infradead.org>
 <20200501125513.GN26002@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501125513.GN26002@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_090745_775778_9E6644F7 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com, will@kernel.org,
 fenghua.yu@intel.com, linux-pci@vger.kernel.org, felix.kuehling@amd.com,
 Christoph Hellwig <hch@infradead.org>, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, robin.murphy@arm.com, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 09:55:13AM -0300, Jason Gunthorpe wrote:
> On Fri, May 01, 2020 at 05:15:52AM -0700, Christoph Hellwig wrote:
> > > @@ -432,6 +432,7 @@ config ARM_SMMU_V3
> > >  	tristate "ARM Ltd. System MMU Version 3 (SMMUv3) Support"
> > >  	depends on ARM64
> > >  	select IOMMU_API
> > > +	select IOMMU_SVA
> > >  	select IOMMU_IO_PGTABLE_LPAE
> > >  	select GENERIC_MSI_IRQ_DOMAIN
> > 
> > Doesn't this need to select MMU_NOTIFIER now?
> > 
> > > +	struct mmu_notifier_ops		mn_ops;
> > 
> > Note: not a pointer.
> > 
> > > +	/* If bind() was already called for this (dev, mm) pair, reuse it. */
> > > +	list_for_each_entry(bond, &master->bonds, list) {
> > > +		if (bond->mm == mm) {
> > > +			refcount_inc(&bond->refs);
> > > +			return &bond->sva;
> > > +		}
> > > +	}
> 
> I also would like it if searching for mms in linked lists was not
> necessary, this is kind of the point of 'get'
> 
> Is this a side effect of the earlier remark to get rid of the linked
> list inside the notifier?
> 
> > Or we could enhance the mmu_notifier_get to pass a private
> > oaque instance ID pointer, which is checked in addition to the ops,
> > and you could probably kill off the bonds list and lookup.
> 
> This might be the best option if it can absorb the above search..

It wouldn't, the above search is separate. I currently register the MMU
notifier on (IOMMU domain, mm). The (dev, mm) search above is to follow
the iommu_sva_bind_device() API doc, that states we should return the same
handle for a given (dev, mm) pair.

Thanks,
Jean


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
