Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7555A1B94E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 03:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8H9rVr6ujnHWf03zeMYGQPWYu66rxJFDejP3xvhwlk=; b=WlcaxjSwkX3Jiy
	W2nVPHnRTjH6NAdnApD9ERscgJ0Pfo6uxkydk/R4HMY1SBjb2HId1C3kqwK+emChWYxgjYpOljtkB
	TWkCtct3ZYISGkg8hsPVOOIZXdZeoSQB80i0biq0+PVgpAJn5NwXDkBEbpb1UiCL78Ng6YryHT1ln
	Y/STV1sZcCRnCKin8SekOuKmXo+7XmAS2sVnKdBKuDl9WAnvgHDMBxaN/0wSR2tVlaNXXx5VjdrYD
	SFXFMVi8jTmCkw1aGoXU0m66Rsu8y0sJ8P4AwpxnNsHBRHyqxJbjhwT3wf67vnvl2enr27/5l8Gcl
	d2XvTw0MSKJO1WooiHPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSsO4-000225-57; Mon, 27 Apr 2020 01:16:44 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSsNt-00021H-M7; Mon, 27 Apr 2020 01:16:34 +0000
IronPort-SDR: GtZnPIvnslehHayv/h2HVm0AS9fLTLiuRFwUwpifzSPmRD3onFg3I4Xeh8wVCfIBwwuWkebA4S
 x89JadaHrGbQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2020 18:16:31 -0700
IronPort-SDR: ZrrKsQ6Zur3/bE2CO6sc6Wdv34dqrhqrjSlpkUGUwoboNwAHWFqd68hpZ33zjqX/g7EQHldNW4
 L627f0bj0fUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,321,1583222400"; d="scan'208";a="336090274"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.147])
 by orsmga001.jf.intel.com with ESMTP; 26 Apr 2020 18:16:31 -0700
Date: Sun, 26 Apr 2020 18:16:30 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 4/5] arch/kmap_atomic: Consolidate duplicate code
Message-ID: <20200427011630.GC135929@iweiny-DESK2.sc.intel.com>
References: <20200426055406.134198-1-ira.weiny@intel.com>
 <20200426055406.134198-5-ira.weiny@intel.com>
 <20200426072642.GB22024@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200426072642.GB22024@infradead.org>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_181633_785144_5623C97F 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, linux-csky@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 26, 2020 at 12:26:42AM -0700, Christoph Hellwig wrote:
> > diff --git a/arch/arc/mm/highmem.c b/arch/arc/mm/highmem.c
> > index 4db13a6b9f3b..1cae4b911a33 100644
> > --- a/arch/arc/mm/highmem.c
> > +++ b/arch/arc/mm/highmem.c
> > @@ -53,11 +53,10 @@ void *kmap_atomic(struct page *page)
> >  {
> >  	int idx, cpu_idx;
> >  	unsigned long vaddr;
> > +	void *addr = kmap_atomic_fast(page);
> >  
> > -	preempt_disable();
> > -	pagefault_disable();
> > -	if (!PageHighMem(page))
> > -		return page_address(page);
> > +	if (addr)
> > +		return addr;
> 
> Wouldn't it make sense to just move kmap_atomic itelf to common code,
> and call out to a kmap_atomic_high for the highmem case, following the
> scheme in kmap?
>

Sure I do like that symmetry between the calls.

>
> Same for the unmap side.

FWIW that would simply be renaming  __kunmap_atomic() to kunmap_atomic_high()

>
> That might require to support
> kmap_atomic_prot everywhere first, which sounds like a really good
> idea anyway, and would avoid the need for strange workaround in drm.

Having a kmap_atomic_prot() seems like a good idea.  But I'm not exactly sure
why CONFIG_x86 is being called out specifically in the DRM code?

Ira


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
