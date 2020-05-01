Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B33851C19AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:36:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vNT3otesOn0e71lNs1xZlH+im5UbeLzi0zKRXryCrNA=; b=sTZaCHi3xlEOXL
	ryihqzXKvxMjHKK+GCk38z6+9+GtnVdm4Va3s1WC4nRco7Z+fgMGZoUJRM/VPaeFS+N06z+gaf3eA
	BF3PQFaHiCwYxIeTV+DtWTCmLmV3FrCjS8wRCcAd0+AoEdA0JMYrj3N3fppsD55OlR5SkkbXQhILK
	FETfR1c2Gy/ye/GVALbkaUtvAOmU45axX0FUkNcN7LvzRuKZQ0HlLrAkw0ldL0Z6tA5iu6OoIvl3Q
	OM62r9DAPv/baTz9p9gGWS8nmheMFg5av90Z7+qFdCveAUSSi3vlYbQcQnrHjHlHySLSB56SCydHg
	REUqXjVj/YQXByaph2lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXhs-0006h8-I9; Fri, 01 May 2020 15:36:04 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXhi-0006e9-4p; Fri, 01 May 2020 15:35:55 +0000
IronPort-SDR: yOd3a9LxZxyXr+FBnH7fP0+GBno2+UKwwNsJcMy7vKv0kGvNbuu8mTHYmuAZbyV7TkS2oQvTAI
 dQJnFSpcVY5w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 08:35:52 -0700
IronPort-SDR: eiOWyZIKI7vO19DR7OCFr64BqstCK2TpjbIFtfZ8MAqSSlMpCoVlOTcj7hUJ1GBJabMYzWffE+
 Y8JGzvryIPoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,339,1583222400"; d="scan'208";a="460295055"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.147])
 by fmsmga006.fm.intel.com with ESMTP; 01 May 2020 08:35:52 -0700
Date: Fri, 1 May 2020 08:35:52 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: sparc-related comment, to Re: [PATCH V1 07/10] arch/kmap: Ensure
 kmap_prot visibility
Message-ID: <20200501153551.GA673107@iweiny-DESK2.sc.intel.com>
References: <20200430203845.582900-1-ira.weiny@intel.com>
 <20200430203845.582900-8-ira.weiny@intel.com>
 <20200501084446.GG27858@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501084446.GG27858@infradead.org>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_083554_236639_EE4DBC54 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [134.134.136.100 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Christian Koenig <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 01:44:46AM -0700, Christoph Hellwig wrote:
> > --- a/arch/sparc/mm/highmem.c
> > +++ b/arch/sparc/mm/highmem.c
> > @@ -33,6 +33,7 @@
> >  #include <asm/vaddrs.h>
> >  
> >  pgprot_t kmap_prot;
> > +EXPORT_SYMBOL(kmap_prot);
> 
> Btw, I don't see why sparc needs this as a variable, as there is just
> a single assignment to it.

Because sparc uses non-standard defines which I'm not familiar with.

        kmap_prot = __pgprot(SRMMU_ET_PTE | SRMMU_PRIV | SRMMU_CACHE);

SRMMU_ET_PTE and friends are defined in 

arch/sparc/include/asm/pgtsrmmu.h

Since I can't readily test sparc this was easier to put out than let 0-day
crank on the entire series checking if including that header in the common
header chain would be an issue.

> 
> If sparc is sorted out we can always make it a define, and use a define
> for kmap_prot that defaults to PAGE_KERNEL, avoiding a little
> more duplication.

Agreed.  But it seems easier as a follow up (for me with 0-day).  Perhaps
someone from sparc can weigh in on the specifics of those defines and why they
are different from the normal ones?  Or even provide a follow on patch?

Ira


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
