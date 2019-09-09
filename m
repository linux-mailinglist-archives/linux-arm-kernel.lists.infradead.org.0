Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE975ADD55
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 18:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpdzMLbGJ/HXn9Yna8Oph3VoSU56r5GAXNjRgyMIrtw=; b=Tn6sbYAa5RmYBn
	3T5pRpA07JCKWXNUrv2YivE6pdGIfAZ/S99cfoLd837eyG4pWM1oHiSYr+DX5kl8cMLLdZBaOkDz/
	cU1IUZzqE40eMSwDkbvkGgIZGyyNjbVWb1XkoKr1Xrp2zeXnWXqJMRzg9Y619UfHAUa2Gco5GyiYZ
	NZmKkajzMIxfVFbb8gqrCFsZ9ASr6Bg+EqRpZAKhIXI5uSKTQFpQRYygxtknonULP5OK+DPm4Dvs/
	RtakOhSyRsrJqe0eUu09RojZtqnTKL21E8+FNYs+kgKHbuWuTsrNWCaHz+ivlhje36DkPGue4yZIz
	0f0QPPXGzoJwYmleuXjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7McE-0003tW-Td; Mon, 09 Sep 2019 16:34:11 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Mc4-0003sg-4n
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 16:34:01 +0000
Received: by mail-ed1-x542.google.com with SMTP id f2so7194485edw.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 09:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QxM9mJktlH2b9W/UrzlsSXilA2r8zVDwLuT+VMLdcm4=;
 b=qXurPKBeQ/50vkdVpdFd3RSFI5atfLR6gPp0JjnuECbcNWDtU74AipRoFJSjkAcOy3
 FfBcaM9GRBg8SD2T1Q6QoVjNV5wloxgkJnhSSmsRUEKZNf8DGRghZRRByKpks6ejiozo
 IBd+bYzG5nzJgRXFlAjDxtSmKg1yemVBjKrqzFuH6AOe4YDZR0qX81XGVRy28dB7ixl1
 n3WhCeqgxzfaUFtdBqVH7E1BzdRpmPnLzzsoVL0ITc9UsIUeivBdItfSqWIxJiTo1tiH
 5M7XG+THkq7pCgQAk0LidvkGLut7VIK/flw5PVz0tWv6WktP5+8smPwLaz/8iyvR625A
 zoNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QxM9mJktlH2b9W/UrzlsSXilA2r8zVDwLuT+VMLdcm4=;
 b=ICfiF+ezzi8H6yOMRA+mRxB30bkIfZCI6ciEnktd+IQe1pwncmlUWFhiQHWJXUUfGx
 GnSyNU3OlnNJ8krvYpIeL2FyVwwSUftOPpuTyXcefIUvz++PTbHWXBFNiA/KmolGuBW2
 Q2sk9ZydklaH6cNFsxVxfUlmJnkqmyuKwfe3Tf/2tmGrvygA0usubTqG2lHV35ljfny0
 YWKyJage93dKBpsb6wvg+FciLVK0f9Z2z9+X70ZzstMnrZY7LMmfR6Suyh6PmRsfPUVl
 HtNYGgvZw9t3tDddcxdkLeqcQm8pbCnIfLVOeLV8SD4IYpA1nM0EHpmHrTNmuyqQuhx1
 /0VQ==
X-Gm-Message-State: APjAAAV0dq7a3fZIlLpPC7pbK1ouyrgAr2Vdu1RZl6TPApX3fjr9To+F
 +Tg1gUNB4lf37Tr5nQeoMLoeJw==
X-Google-Smtp-Source: APXvYqzchdFdfE1hclnLKzl1/sGN9sqBpqJacSjdc7si3DfczRfamQmuNJFhSHuWNQ94FDn9AyIfeg==
X-Received: by 2002:a17:906:3485:: with SMTP id
 g5mr19264541ejb.76.1568046837302; 
 Mon, 09 Sep 2019 09:33:57 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id w11sm1781938eju.9.2019.09.09.09.33.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Sep 2019 09:33:56 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 56B881029C4; Mon,  9 Sep 2019 19:33:55 +0300 (+03)
Date: Mon, 9 Sep 2019 19:33:55 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Subject: Re: [PATCH v9 6/8] mm: Introduce Reported pages
Message-ID: <20190909163355.zueprine5zqwexi4@box>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172553.10910.72962.stgit@localhost.localdomain>
 <20190909144209.jcrx6o3ntecdaqmh@box>
 <acfe9744deaede8f8c4fa4f40a04514d9f843259.camel@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acfe9744deaede8f8c4fa4f40a04514d9f843259.camel@linux.intel.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_093400_191265_E0B5AABF 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, kvm@vger.kernel.org,
 david@redhat.com, catalin.marinas@arm.com,
 Alexander Duyck <alexander.duyck@gmail.com>, mhocko@kernel.org,
 linux-mm@kvack.org, will@kernel.org, aarcange@redhat.com,
 virtio-dev@lists.oasis-open.org, mst@redhat.com, willy@infradead.org,
 wei.w.wang@intel.com, ying.huang@intel.com, riel@surriel.com,
 dan.j.williams@intel.com, lcapitulino@redhat.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, nitesh@redhat.com,
 konrad.wilk@oracle.com, dave.hansen@intel.com, linux-kernel@vger.kernel.org,
 pbonzini@redhat.com, akpm@linux-foundation.org, fengguang.wu@intel.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 09, 2019 at 09:25:04AM -0700, Alexander Duyck wrote:
> > Proper description for the config option?
> 
> I can add one. However the feature doesn't do anything without a caller
> that makes use of it. I guess it would make sense to enable this for
> something such as an out-of-tree module to later use.

Description under 'help' section will not make the option user selectable
if you leave 'bool' without description.

> > > +	mutex_lock(&page_reporting_mutex);
> > > +
> > > +	/* nothing to do if already in use */
> > > +	if (rcu_access_pointer(ph_dev_info)) {
> > > +		err = -EBUSY;
> > > +		goto err_out;
> > > +	}
> > 
> > Again, it's from "something went horribly wrong" category.
> > Maybe WARN_ON()?
> 
> That one I am not so sure about. Right now we only have one user for the
> page reporting interface. My concern is if we ever have more than one we
> may experience collisions. The device driver requesting this should
> display an error message if it is not able tor register the interface.

Fair enough.

> > > +	boundary = kcalloc(MAX_ORDER - PAGE_REPORTING_MIN_ORDER,
> > > +			   sizeof(struct list_head *) * MIGRATE_TYPES,
> > > +			   GFP_KERNEL);
> > 
> > Could you comment here on why this size of array is allocated?
> > The calculation is not obvious to a reader.
> 
> Would something like the following work for you?
>         /*
>          * Allocate space to store the boundaries for the zone we are
>          * actively reporting on. We will need to store one boundary
>          * pointer per migratetype, and then we need to have one of these
>          * arrays per order for orders greater than or equal to
>          * PAGE_REPORTING_MIN_ORDER.
>          */

Ack.

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
