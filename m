Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6321C3124
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 03:36:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5KhjaaQp8DguZx9jqtFnLFxKsswhAUETAIkJOUN7nY=; b=fgzebOeaIczMea
	HdznTicT82D/N270be0pBmo3+Kua8MJYjilaM8jkUvo5PIlb5j31uxI1/xcM6XAxIUdQNgd+C4X7L
	cgwAMNPc7enfKcwptGXnYCXaBGPfdPmt98ZGC6rJZJqth8giLQrnYQGS4Tupsvh9V4BsjAHCv306B
	bRoK/OLAR0sxfxMlbu7zPPzG3buZy6b91aleFl+YuTpw1iPIMlfEqExvTQ/jvzFfxxa0OgIV6Z5MS
	yAjLgyuRmoZwqCtSvwYHrNm1Ieyevw6q7C0pBvx78qMaj5MGXSIthL24Ag8s5qPWrV7xvbCZP83Cg
	0bgr1fAh+nZY5qdwoq5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVQ1b-0000n6-PE; Mon, 04 May 2020 01:36:03 +0000
Received: from [2002:c35c:fd02::1] (helo=ZenIV.linux.org.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVQ1R-0000lr-Ix; Mon, 04 May 2020 01:35:56 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jVQ0j-000SR4-3a; Mon, 04 May 2020 01:35:09 +0000
Date: Mon, 4 May 2020 02:35:09 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: ira.weiny@intel.com
Subject: Re: [PATCH V2 00/11] Subject: Remove duplicated kmap code
Message-ID: <20200504013509.GU23230@ZenIV.linux.org.uk>
References: <20200504010912.982044-1-ira.weiny@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504010912.982044-1-ira.weiny@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_183553_622329_4D363A26 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [2002:c35c:fd02:0:0:0:0:1 listed in] [wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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

On Sun, May 03, 2020 at 06:09:01PM -0700, ira.weiny@intel.com wrote:
> From: Ira Weiny <ira.weiny@intel.com>
> 
> The kmap infrastructure has been copied almost verbatim to every architecture.
> This series consolidates obvious duplicated code by defining core functions
> which call into the architectures only when needed.
> 
> Some of the k[un]map_atomic() implementations have some similarities but the
> similarities were not sufficient to warrant further changes.
> 
> In addition we remove a duplicate implementation of kmap() in DRM.
> 
> Testing was done by 0day to cover all the architectures I can't readily
> build/test.

OK...  Looking through my old notes on kmap unification (this winter, never
went anywhere),

* arch/mips/mm/cache.c ought to use linux/highmem.h, not asm/highmem.h
I suspect that your series doesn't build on some configs there.  Hadn't
verified that, though.

* kmap_atomic_to_page() is dead, but not quite gone - csky and nds32 brought
the damn thing back (nds32 - only an extern).  It needs killin'...

* parisc is (arguably) abusing kunmap()/kunmap_atomic() for cache flushing.
Replace the bulk of its highmem.h with
#define ARCH_HAS_FLUSH_ON_KUNMAP
#define arch_before_kunmap flush_kernel_dcache_page_addr
and have default kunmap()/kunmap_atomic() do
#ifdef ARCH_HAS_FLUSH_ON_KUNMAP
	arch_before_kunmap(page_address(page));
#endif
and
#ifdef ARCH_HAS_FLUSH_ON_KUNMAP
	arch_before_kunmap(addr);
#endif
resp.  Kills ARCH_HAS_KMAP along with ifdefs on it, makes parisc use somewhat
less hacky.

I'd suggest checking various configs on mips - that's likely to cause headache.
Said that, my analysis of include chains back then is pretty much worthless
by now - I really hate the amount of indirect include chains leading to that
sucker on some, but not all configs ;-/  IIRC, the proof that everything
using kmap*/kunmap* would pull linux/highmem.h regardless of config took several
hours of digging, ran for several pages and had been hopelessly brittle.
arch/mips/mm/cache.c was the only exception caught by it, but these days
there might be more.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
