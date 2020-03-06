Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A46B917BDCE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 14:09:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqFwKYUopJQs8c0cIv5qEdga9YDRXJVIrTsCde/iII4=; b=YGWl3ACtMznXNL
	mB9xmkteCxXSOXASr0Px+yEW7M9cpw+PZrFh5Bfnxb5/1dMys35raEMNCVhecVdooHcBFZDS6Ocgi
	bswcvQXp8C6NxAIKMHMQs02KedmoM2njMyOUduHncdWRbzOfHjPr7BCd8wsppQxdZPPJt1E8jN1yb
	sgNB1ZlYNuAc9JKbXEZ6gT96ga17I0vQZtn7wu7sCle0qbFF0zeMc2/Um1ippxzVzuqx6ir988fZ2
	Atpb+xJIuxFQizWCd5d5/wZiCuptjznA7yto3t1nZ1Yudx010MZNluZT7y4ZkgCMsjR0LJgeg8XuJ
	rvGWflIcXJ0Gyexo7EEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jACjL-0002qA-RE; Fri, 06 Mar 2020 13:09:31 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jACjD-0002on-QA
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 13:09:25 +0000
Received: by mail-qv1-xf43.google.com with SMTP id u17so868605qvv.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 05:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XKKq26i7LXXgJsW46mcbcSbPq8I/xYnL2HpEPyMqw1w=;
 b=foqmJvTUw2Rd/dJAzqjnhmFuMbsk1LtzLOifzjHgdZQbMzZ0fHXAAsUe/GdCO1ZYAj
 7Bn2iIOTlWGut2weejRp8AcX3VG/Qn4/y/RQG0WtfMqv+MReV5P5jcMiLxOXdqYalZiA
 /dVdSm1Sf6SyyIudvVIwFow4eMDAUcfiWaT/zF3cFXtW4JnKM0JErPEQqyhqPtB0Hhdr
 ol2bHUU9KfkJM+O1Bn3ayXm8dujSMw6pcJy7+pV2WuGXVVhtWpVQF3na2JpDadwaG7Lv
 FiGiNN5hAg+eY9U2557t7Y1y8aKkxx39cX6l7OgYqp4+v+dicxqKElU/9QEPZ5LM/fig
 63hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XKKq26i7LXXgJsW46mcbcSbPq8I/xYnL2HpEPyMqw1w=;
 b=q8HoGP4P8nfifXMVqux7v61rP/quFCduTRfZG5C7wME7WJNatQu4sugd+NHlzdS10c
 ygg3sEQwXVx9eGaQlORtrtmXg6g/Tb8TRVVc4DHWsj4TqmndI+p2oOrGoLsql3skOZjM
 Lrb0BevlNozz68XeS7trIff/3t6dmi0Q/sRlcA4bUe5K3i1IQ0wSo4dPOLORO7ZBH4Xt
 cGMiQ014kYQofMADXzqGJptmPr9QQ++MroOXMAQMal3lX/82lKvARrWvEmzHFSdPDREE
 VpdysI2hAf2qOWhsKGXRSfIOWBI/ZV0iYHkhEGwngxwskCWpq75zndxre3Iww1hYdKA5
 bI1g==
X-Gm-Message-State: ANhLgQ3wTv02PdQVd5EP5evB+F7R4zsv1AtRS79hYFamDWemF6Pqh95z
 1jvNntKjF11G+iUJgW2/aAWPgg==
X-Google-Smtp-Source: ADFU+vtl8tdBNaG32n8uRFCoIw2vjaXoLHT1yzW1F89T5e4eGpjKwith2OB8kDL1Ro6OTXnkI3ffpw==
X-Received: by 2002:a0c:f5ce:: with SMTP id q14mr2642141qvm.191.1583500160921; 
 Fri, 06 Mar 2020 05:09:20 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.57.212])
 by smtp.gmail.com with ESMTPSA id e7sm8754949qtp.0.2020.03.06.05.09.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 06 Mar 2020 05:09:20 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1jACj9-0002zi-Hm; Fri, 06 Mar 2020 09:09:19 -0400
Date: Fri, 6 Mar 2020 09:09:19 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200306130919.GJ31668@ziepe.ca>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-2-jean-philippe@linaro.org>
 <20200224190056.GT31668@ziepe.ca> <20200225092439.GB375953@myrica>
 <20200225140814.GW31668@ziepe.ca> <20200228143935.GA2156@myrica>
 <20200228144844.GQ31668@ziepe.ca> <20200228150427.GF2156@myrica>
 <20200228151339.GS31668@ziepe.ca> <20200306095614.GA50020@myrica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306095614.GA50020@myrica>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_050924_001376_CBB30801 
X-CRM114-Status: GOOD (  21.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kevin.tian@intel.com,
 Dimitri Sivanich <sivanich@sgi.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pci@vger.kernel.org,
 robin.murphy@arm.com, linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, catalin.marinas@arm.com, zhangfei.gao@linaro.org,
 Andrew Morton <akpm@linux-foundation.org>, will@kernel.org,
 christian.koenig@amd.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 10:56:14AM +0100, Jean-Philippe Brucker wrote:
> I tried to keep it simple like that: normally mmu_notifier_get() is called
> in bind(), and mmu_notifier_put() is called in unbind(). 
> 
> Multiple device drivers may call bind() with the same mm. Each bind()
> calls mmu_notifier_get(), obtains the same io_mm, and returns a new bond
> (a device<->mm link). Each bond is freed by calling unbind(), which calls
> mmu_notifier_put().
> 
> That's the most common case. Now if the process is killed and the mm
> disappears, we do need to avoid use-after-free caused by DMA of the
> mappings and the page tables. 

This is why release must do invalidate all - but it doesn't need to do
any more - as no SPTE can be established without a mmget() - and
mmget() is no longer possible past release.

> So the release() callback, before doing invalidate_all, stops DMA
> and clears the page table pointer on the IOMMU side. It detaches all
> bonds from the io_mm, calling mmu_notifier_put() for each of
> them. After release(), bond objects still exists and device drivers
> still need to free them with unbind(), but they don't point to an
> io_mm anymore.

Why is so much work needed in release? It really should just be
invalidate all, usually trying to sort out all the locking for the
more complicated stuff is not worthwhile.

If other stuff is implicitly relying on the mm being alive and release
to fence against that then it is already racy. If it doesn't, then why
bother doing complicated work in release?

> > Then you can never get a stale
> > pointer. Don't worry about exit_mmap().
> > 
> > release() is an unusual callback and I see alot of places using it
> > wrong. The purpose of release is to invalidate_all, that is it.
> > 
> > Also, confusingly release may be called multiple times in some
> > situations, so it shouldn't disturb anything that might impact a 2nd
> > call.
> 
> I hadn't realized that. The current implementation should be safe against
> it, as release() is a nop if the io_mm doesn't have bonds anymore. Do you
> have an example of such a situation?  I'm trying to write tests for this
> kind of corner cases.

Hmm, let me think. Ah, you have to be using mmu_notifier_unregister()
to get that race. This is one of the things that get/put don't suffer
from - but they conversely don't guarantee that release() will be
called, so it is up to the caller to ensure everything is fenced
before calling put.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
