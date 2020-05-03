Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0C91C297B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 05:11:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1st2skWOln0VJtjjMQindhx7Q7bmoPWDJG85erYtDGc=; b=Bh4AbOfiKDvGJT
	K+UwSyVc4VzANh+0drXOqHadrnduroYSb+SVrbtgTKKE+QqqS9gyHi/8C/QJpzPWsBwh4uKD4KZua
	55GEHhakXwYFvQz/cwk9hbm2KXoZk6rylrm/YGAJ26YqrFWucPtubpw3TPGyka4UqA3PN4gm+x+Fv
	tP9S2W7Z67Dyty+mrCYTVvQdQWWKIjF6F0nbXj+U0hNNk35vngnDeubtkHsZbUjsBRT63pUihwrVn
	i9iWYp99IwrmmkpaLppfsUGrJkJYRX//pPPVCsrBfrPXZqIL+0RB7f6+dE/RP8TYzKPRvfM2/ZCUl
	l06nR7FVON9TxHACtA/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jV52a-0007Eo-QU; Sun, 03 May 2020 03:11:40 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jV52V-0007Do-8f; Sun, 03 May 2020 03:11:36 +0000
IronPort-SDR: EJCt76eWZ5nPKHX/2krFIouUdX3O7LR7d1hthLJTYZGFngCRkMjrOrVCvgc7a1q4jkJVtHZSf6
 HBVZ29ScU2zA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2020 20:11:29 -0700
IronPort-SDR: BDCSOhfLrIbfj7Y5Tw0emibzPffaFEcH6uyQOaSnsa+CYyRQvgFcoRzXLtMv2aSaIMshzi3s7v
 wmHP1NS0G8+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,346,1583222400"; d="scan'208";a="262468221"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.147])
 by orsmga006.jf.intel.com with ESMTP; 02 May 2020 20:11:28 -0700
Date: Sat, 2 May 2020 20:11:28 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH V1 09/10] arch/kmap: Define kmap_atomic_prot() for all
 arch's
Message-ID: <20200503031127.GA685597@iweiny-DESK2.sc.intel.com>
References: <20200430203845.582900-1-ira.weiny@intel.com>
 <20200430203845.582900-10-ira.weiny@intel.com>
 <20200501023734.GF23230@ZenIV.linux.org.uk>
 <20200501032020.GG23230@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501032020.GG23230@ZenIV.linux.org.uk>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_201135_323574_92531046 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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

On Fri, May 01, 2020 at 04:20:20AM +0100, Al Viro wrote:
> On Fri, May 01, 2020 at 03:37:34AM +0100, Al Viro wrote:
> > On Thu, Apr 30, 2020 at 01:38:44PM -0700, ira.weiny@intel.com wrote:
> > 
> > > -static inline void *kmap_atomic(struct page *page)
> > > +static inline void *kmap_atomic_prot(struct page *page, pgprot_t prot)
> > >  {
> > >  	preempt_disable();
> > >  	pagefault_disable();
> > >  	if (!PageHighMem(page))
> > >  		return page_address(page);
> > > -	return kmap_atomic_high(page);
> > > +	return kmap_atomic_high_prot(page, prot);
> > >  }
> > > +#define kmap_atomic(page)	kmap_atomic_prot(page, kmap_prot)
> > 
> > OK, so it *was* just a bisect hazard - you return to original semantics
> > wrt preempt_disable()...
> 
> FWIW, how about doing the following: just before #5/10 have a patch
> that would touch only microblaze, ppc and x86 splitting their
> kmap_atomic_prot() into an inline helper + kmap_atomic_high_prot().
> Then your #5 would leave their kmap_atomic_prot() as-is (it would
> use kmap_atomic_prot_high() instead).  The rest of the series plays
> out pretty much the same way it does now, and wrappers on those
> 3 architectures would go away when an identical generic one is
> introduced in this commit (#9/10).
> 
> AFAICS, that would avoid the bisect hazard and might even end
> up with less noise in the patches...

This works.  V2 coming out shortly.

Thanks for catching this,
Ira


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
