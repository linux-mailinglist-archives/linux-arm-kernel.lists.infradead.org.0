Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 952841C9EB4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 00:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OCo3MtE25P284HRLKv20HIPJe70VIdOUxxbwaxY55z8=; b=P0FfycDGQAow+D
	KvvbPnCmx9JvDM9w5/AHXIQMpoZ4VwRnfFUQ6H60nkqGqybVr+OmbtS/Fb2AxYHTKeHmF/Q6h+mZT
	ugFZjFYVXAcL1T7gUehTpbfX9n+3DASUykQvlAQtoDkpqXTNwSRvU3D+lu3myeiWNZzZJRV3ZGnPb
	tWpV+xo++1BWk2X8PCiQB/aFNNMz1UKlh7RrkTsyWB469UIjjbUVVAzUW5h6j4T7SPtPhGfQGlvSW
	SXeD03GPyx0nAoVca1V9K9JQoVwhLpbLcGNZcZNIlBTqRDgtZkWFcVwQYH4bmzbc0XOJV8TzH7Pcy
	mW/OTMlekptjFvJ0TEOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWpLy-0006Va-DJ; Thu, 07 May 2020 22:50:54 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWpLq-0006Td-Iv; Thu, 07 May 2020 22:50:47 +0000
IronPort-SDR: i9H0+9svt0VH/bF4iwLqq5qgM+Y+JqQw0VhMmzu6o4KmboXGySKCbIojqJMpzUfRojSUcFItFC
 9d+zsiuSQSUA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 15:50:41 -0700
IronPort-SDR: A94YOimG+GBTCtRnotihIHXo/4uYOm9rsXy8xtuLX5Aw2+CVkRWX3diLimU1sfCOXtFd1OcX1r
 bTWfMT7evkVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,365,1583222400"; d="scan'208";a="278753786"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.147])
 by orsmga002.jf.intel.com with ESMTP; 07 May 2020 15:50:40 -0700
Date: Thu, 7 May 2020 15:50:40 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH V3 13/15] parisc/kmap: Remove duplicate kmap code
Message-ID: <20200507225039.GA1428632@iweiny-DESK2.sc.intel.com>
References: <20200507150004.1423069-1-ira.weiny@intel.com>
 <20200507150004.1423069-14-ira.weiny@intel.com>
 <20200507135258.f430182578c0d63b7488916e@linux-foundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507135258.f430182578c0d63b7488916e@linux-foundation.org>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_155046_633903_1EDA0A2B 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
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
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, linux-csky@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Koenig <christian.koenig@amd.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 01:52:58PM -0700, Andrew Morton wrote:
> On Thu,  7 May 2020 08:00:01 -0700 ira.weiny@intel.com wrote:
> 
> > parisc reimplements the kmap calls except to flush it's dcache.  This is
> > arguably an abuse of kmap but regardless it is messy and confusing.
> > 
> > Remove the duplicate code and have parisc define
> > ARCH_HAS_FLUSH_ON_KUNMAP for a kunmap_flush_on_unmap() architecture
> > specific call to flush the cache.
> 
> checkpatch says:
> 
> ERROR: #define of 'ARCH_HAS_FLUSH_ON_KUNMAP' is wrong - use Kconfig variables or standard guards instead
> #69: FILE: arch/parisc/include/asm/cacheflush.h:103:
> +#define ARCH_HAS_FLUSH_ON_KUNMAP
> 
> which is fair enough, I guess.  More conventional would be
> 
> arch/parisc/include/asm/cacheflush.h:
> 
> static inline void kunmap_flush_on_unmap(void *addr)
> {
> 	...
> }
> #define kunmap_flush_on_unmap kunmap_flush_on_unmap
> 
> 
> include/linux/highmem.h:
> 
> #ifndef kunmap_flush_on_unmap
> static inline void kunmap_flush_on_unmap(void *addr)
> {
> }
> #define kunmap_flush_on_unmap kunmap_flush_on_unmap
> #endif
> 
> 
> static inline void kunmap_atomic_high(void *addr)
> {
> 	/* Mostly nothing to do in the CONFIG_HIGHMEM=n case as kunmap_atomic()
> 	 * handles re-enabling faults + preemption */
> 	kunmap_flush_on_unmap(addr);
> }
> 
> 
> but I don't really think it's worth bothering changing it.	
> 
> (Ditto patch 3/15)

Yes I was following the pattern already there.

I'll fix up the last patch now.
Ira


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
