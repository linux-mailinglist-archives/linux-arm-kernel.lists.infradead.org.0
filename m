Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 735031C7B5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 22:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldFY2XuQoFSsJGbabXWQd42lDMMJgILZJ8aEhQOjYIU=; b=UabWrgLiBd6HYo
	1oU1aXFq9bnPvHWo7FYDKO5vDQpsohCZciKNrqlB/Cnd1BShM/o/9emqzaknPMkzUuaEqRA3J7y9g
	KIpzdGyLWNXemGq54FdMm7IToLlTPP1NLXg3gr5VHH2+PEftQctI9mUB4Vz5Tx1cGpVffVss2iL2H
	TwtqrFy5oQ1DNhgmju4Bsl40wclz37cugpGU6/uC5E8/V5RpDhfxRtwFIbV1Vv6fagZawkJRWOgrT
	N3c+6oahPiwtPjm6PI7k8bR3EZogDna89hb4R/tRDFfHd6I4pLfu9RK1T/5I79Cb8EbaQ6Uxv582x
	A2AlPEXWywzfxY8mo6Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWQjv-0000ah-7o; Wed, 06 May 2020 20:33:59 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWQjj-0000Zb-EJ; Wed, 06 May 2020 20:33:48 +0000
IronPort-SDR: xGs7hiTdXdSnk30Wiy03s/a3kZ7xwkBKprzg8Gw4knxpju13W7LuLWhOwRlNf/bfykfFgGzSyo
 KQQZq1UsxHPw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 13:33:46 -0700
IronPort-SDR: M/8biaEifOtf/KVemcKvoXhaN/dNTMq07DSDleAl9z1EKDvsLY2Gj1/J5kQQSyza0fRBg4vIeY
 Ynf/+fytsXZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,360,1583222400"; d="scan'208";a="435017008"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.147])
 by orsmga005.jf.intel.com with ESMTP; 06 May 2020 13:33:40 -0700
Date: Wed, 6 May 2020 13:33:39 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH V2 08/11] arch/kmap: Ensure kmap_prot visibility
Message-ID: <20200506203339.GG1084880@iweiny-DESK2.sc.intel.com>
References: <20200504010912.982044-1-ira.weiny@intel.com>
 <20200504010912.982044-9-ira.weiny@intel.com>
 <20200506061326.GD5192@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506061326.GD5192@infradead.org>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_133347_491355_C766BB82 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Tue, May 05, 2020 at 11:13:26PM -0700, Christoph Hellwig wrote:
> On Sun, May 03, 2020 at 06:09:09PM -0700, ira.weiny@intel.com wrote:
> > From: Ira Weiny <ira.weiny@intel.com>
> > 
> > We want to support kmap_atomic_prot() on all architectures and it makes
> > sense to define kmap_atomic() to use the default kmap_prot.
> > 
> > So we ensure all arch's have a globally available kmap_prot either as a
> > define or exported symbol.
> 
> FYI, I still think a
> 
> #ifndef kmap_prot
> #define kmap_prot PAGE_KERNEL
> #endif
> 
> in linux/highmem.h would be nicer.  Then only xtensa and sparc need
> to override it and clearly stand out.

That would be nice...  But...  in this particular patch kmap_prot needs to be
in arch/microblaze/include/asm/highmem.h to preserve bisect-ability.

So there would be an inversion with this define and the core #ifndef...

I like the change but I'm going to add this change as a follow on patch because
at the end of the series microblaze no longer needs this.

If this is reasonable could I get a review on this patch to add to the next
series?

Ira


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
