Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D85621C9CBD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 22:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+OemnayASUzl4Py8uqlwkxwwRsD/srCqDJ4WMsmjnE8=; b=g3z9LiAJA5ggxA
	SDp27xkWc/RwLE8biPGJOXSAThglFGRsIL9gFHK412EZlZqVA62Vroo0R/LGNY3feEIczi0Zpyr6J
	pv6xgtSYByD0mG35YLcOB99eJEvTxdgjM0SekX7YQjxbxVx3kAgqQsOveG8sJ+S7f/G6Xf6kSFeBu
	2fmAVBc/ZI+/HcH/Rt5JvZ9IczA+33CT5CxoayQfkxVavlLnnxVOU16Z5mvNjGt7ssLe3RUM0O+BB
	DQgk+Mk16SAd18rM6VbLX7sshlpAMMbm9evEMO2TWvj7exbTQtX6gbcIb/CMuXoGKgoZJwj3X8e7x
	sBkHuqGeGKJR6G02rWew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWnW0-0008Kt-PM; Thu, 07 May 2020 20:53:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWnVt-0008KV-2u; Thu, 07 May 2020 20:53:02 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2E7920735;
 Thu,  7 May 2020 20:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588884780;
 bh=TyVMubmSwnb6HspI26I671gs2+xz/BioghUujIiqGH8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pLECSGx/bjY/e6dPZHg/pogKtFknD7CQxEbYnTijPvo31G65TH5qkje/0482SYoYN
 DUxu9XSArBxL1RHMChRsQBx2Ke74CL6dm6TMRGPJJfX7xkDXTBpZl44fWyvfgMqhU0
 epsvy3zKnV8VlRwcWKCyI4E8L4mB8LcbloZDf/RA=
Date: Thu, 7 May 2020 13:52:58 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: ira.weiny@intel.com
Subject: Re: [PATCH V3 13/15] parisc/kmap: Remove duplicate kmap code
Message-Id: <20200507135258.f430182578c0d63b7488916e@linux-foundation.org>
In-Reply-To: <20200507150004.1423069-14-ira.weiny@intel.com>
References: <20200507150004.1423069-1-ira.weiny@intel.com>
 <20200507150004.1423069-14-ira.weiny@intel.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_135301_148862_F402C428 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Thu,  7 May 2020 08:00:01 -0700 ira.weiny@intel.com wrote:

> parisc reimplements the kmap calls except to flush it's dcache.  This is
> arguably an abuse of kmap but regardless it is messy and confusing.
> 
> Remove the duplicate code and have parisc define
> ARCH_HAS_FLUSH_ON_KUNMAP for a kunmap_flush_on_unmap() architecture
> specific call to flush the cache.

checkpatch says:

ERROR: #define of 'ARCH_HAS_FLUSH_ON_KUNMAP' is wrong - use Kconfig variables or standard guards instead
#69: FILE: arch/parisc/include/asm/cacheflush.h:103:
+#define ARCH_HAS_FLUSH_ON_KUNMAP

which is fair enough, I guess.  More conventional would be

arch/parisc/include/asm/cacheflush.h:

static inline void kunmap_flush_on_unmap(void *addr)
{
	...
}
#define kunmap_flush_on_unmap kunmap_flush_on_unmap


include/linux/highmem.h:

#ifndef kunmap_flush_on_unmap
static inline void kunmap_flush_on_unmap(void *addr)
{
}
#define kunmap_flush_on_unmap kunmap_flush_on_unmap
#endif


static inline void kunmap_atomic_high(void *addr)
{
	/* Mostly nothing to do in the CONFIG_HIGHMEM=n case as kunmap_atomic()
	 * handles re-enabling faults + preemption */
	kunmap_flush_on_unmap(addr);
}


but I don't really think it's worth bothering changing it.	

(Ditto patch 3/15)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
