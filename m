Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 049D41C7B33
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 22:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cl+qHOVCsbvPo6Hld5BSFgsN2JRxXa3Js6567Rpanec=; b=ekltZ7NA78S2Or
	vc5UVdETmYSUXtdLKtkNpnT/oLNZTed66gmxLdTGAVplAK8OvugYcYZlZbwhZ0ZacoansnRENv/PV
	YPbPmw6zlRfzL2hVW+yyyLIdYdzLnOjEf2gw0Z0WzcD/LLrLk7qSfHLCgKpgu38IANzY8+NasM9eR
	PzPO5eyaDy7lwm5N3SFI1AvpDcONPm2UGMaPOxeW/XO3HyPrEAR529XVVg+YjCCLK7gUPe6A/w3rh
	GRHnF9R9/LtQyYhpIOwC9K4qIdzKM/3tEJQLtkxBrPlXgVGyvkipym4+sWaCPJqQmtYSQ6ocoKLnS
	PZcsdH4+Vmxx2eBk1LmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWQbg-0004zN-Lk; Wed, 06 May 2020 20:25:28 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWQbY-0004yO-Jj; Wed, 06 May 2020 20:25:21 +0000
IronPort-SDR: Hm3NO3ouWzZWPSakzKJ4flhSDgbyHFOXKHh9wOZ9zZT1O0uJ4HcHZyNJEkoAJoUm6+de1hhvPu
 CvPtxTiI7aJg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 13:25:15 -0700
IronPort-SDR: xSrhp4VCcSvP5bv2WtfYo6vFeSsnnsv3N44sSopWfpFOgIk9uc/zRJt3WrQM/g5MZyK9rPCoAV
 JVwDj2vxz4ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,360,1583222400"; d="scan'208";a="461881349"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.147])
 by fmsmga006.fm.intel.com with ESMTP; 06 May 2020 13:25:14 -0700
Date: Wed, 6 May 2020 13:25:14 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH V2 05/11] {x86,powerpc,microblaze}/kmap: Move preempt
 disable
Message-ID: <20200506202514.GF1084880@iweiny-DESK2.sc.intel.com>
References: <20200504010912.982044-1-ira.weiny@intel.com>
 <20200504010912.982044-6-ira.weiny@intel.com>
 <20200506061113.GA5192@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506061113.GA5192@infradead.org>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_132520_691903_F9649326 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Huang Rui <ray.huang@amd.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 Helge Deller <deller@gmx.de>, x86@kernel.org, linux-csky@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Koenig <christian.koenig@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 11:11:13PM -0700, Christoph Hellwig wrote:
> On Sun, May 03, 2020 at 06:09:06PM -0700, ira.weiny@intel.com wrote:
> > From: Ira Weiny <ira.weiny@intel.com>
> > 
> > During this kmap() conversion series we must maintain bisect-ability.
> > To do this, kmap_atomic_prot() in x86, powerpc, and microblaze need to
> > remain functional.
> > 
> > Create a temporary inline version of kmap_atomic_prot within these
> > architectures so we can rework their kmap_atomic() calls and then lift
> > kmap_atomic_prot() to the core.
> > 
> > Signed-off-by: Ira Weiny <ira.weiny@intel.com>
> > 
> > ---
> > Changes from V1:
> > 	New patch
> > ---
> >  arch/microblaze/include/asm/highmem.h | 11 ++++++++++-
> >  arch/microblaze/mm/highmem.c          | 10 ++--------
> >  arch/powerpc/include/asm/highmem.h    | 11 ++++++++++-
> >  arch/powerpc/mm/highmem.c             |  9 ++-------
> >  arch/x86/include/asm/highmem.h        | 11 ++++++++++-
> >  arch/x86/mm/highmem_32.c              | 10 ++--------
> >  6 files changed, 36 insertions(+), 26 deletions(-)
> > 
> > diff --git a/arch/microblaze/include/asm/highmem.h b/arch/microblaze/include/asm/highmem.h
> > index 0c94046f2d58..ec9954b091e1 100644
> > --- a/arch/microblaze/include/asm/highmem.h
> > +++ b/arch/microblaze/include/asm/highmem.h
> > @@ -51,7 +51,16 @@ extern pte_t *pkmap_page_table;
> >  #define PKMAP_NR(virt)  ((virt - PKMAP_BASE) >> PAGE_SHIFT)
> >  #define PKMAP_ADDR(nr)  (PKMAP_BASE + ((nr) << PAGE_SHIFT))
> >  
> > -extern void *kmap_atomic_prot(struct page *page, pgprot_t prot);
> > +extern void *kmap_atomic_high_prot(struct page *page, pgprot_t prot);
> > +void *kmap_atomic_prot(struct page *page, pgprot_t prot)
> 
> Shouldn't this be marked inline?

Yes Thanks.  Done.

> 
> The rest looks fine:
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks,
Ira


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
