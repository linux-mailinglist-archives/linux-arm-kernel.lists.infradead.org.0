Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DACB1C61B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 22:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8iqxOxOEapY0ySnbznLNr7GGbMvEu++nMuac/YtmK6c=; b=dY4DmjBJuJ8Qu6
	2u5+S+9f/WOjD61Imr0e376qoAGgVC3+YSU3vs3SMDcH2kQjtqcx6REHGnGbd9kJ9vJDD5+Q5pexY
	YjiIIrFAvbMDZoePJfG5n0h7QN3i5hD6g+ZD62f9x+l57i2S4qRmlWGS+sX5njg7Zm+2ags6DKUvB
	NHq9ekS8SFg1dd/cW7zqD/gMPHZZBOPSYQA8lYTWtbEngh6Io1ASt3H59IHQibCIbgbsHLnS6IYNL
	pLELCL6I3FQpyFr/0YHeTryUVWOsWQfb1wY1z+U+AgWSYMphdWBIQLa30du6SmV2DdbrXefaCu6jX
	/50K/sXsjnW0Bnem/cCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW3vM-0003Qs-Te; Tue, 05 May 2020 20:12:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW3vF-0003Pj-Gg; Tue, 05 May 2020 20:12:10 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 619D920721;
 Tue,  5 May 2020 20:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588709528;
 bh=iCXbhk1z7F/kDs/nVraqaeYgCyIHXWPhAh8/VhmA1Xc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Pqbqjcp4PnFOmgqIDXj+8Bjl6/5/ohqBUkYxBuWzwlincpqWy3FQ0xkMGyVHwccvX
 WM2WCc/TBYfgYOWauIGtOhNuO3kK/yFKTFM/3sVIa4qR6GQIMPYaJ7YCqa0w6CoXwz
 sir6b1/N/Bs7N2CIGHNBpBp9fd/ysavQ6VdHSk/Y=
Date: Tue, 5 May 2020 13:12:06 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 3/3] mm/hugetlb: Introduce HAVE_ARCH_CLEAR_HUGEPAGE_FLAGS
Message-Id: <20200505131206.bee7b103431bff077c2ca0cf@linux-foundation.org>
In-Reply-To: <21460cbc-8e9a-b956-5797-57b2e1df9fb1@arm.com>
References: <1586864670-21799-1-git-send-email-anshuman.khandual@arm.com>
 <1586864670-21799-4-git-send-email-anshuman.khandual@arm.com>
 <20200425175511.7a68efb5e2f4436fe0328c1d@linux-foundation.org>
 <87d37591-caa2-b82b-392a-3a29b2c7e9a6@arm.com>
 <20200425200124.20d0c75fcaef05d062d3667c@linux-foundation.org>
 <21460cbc-8e9a-b956-5797-57b2e1df9fb1@arm.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_131209_572223_4B962DDD 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Fenghua Yu <fenghua.yu@intel.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 5 May 2020 08:21:34 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:

> >>> static inline void arch_clear_hugepage_flags(struct page *page)
> >>> {
> >>> 	<some implementation>
> >>> }
> >>> #define arch_clear_hugepage_flags arch_clear_hugepage_flags
> >>>
> >>> It's a small difference - mainly to avoid adding two variables to the
> >>> overall namespace where one would do.
> >>
> >> Understood, will change and resend.
> > 
> > That's OK - I've queued up that fix.
> >
> 
> Hello Andrew,
> 
> I might not have searched all the relevant trees or might have just searched
> earlier than required. But I dont see these patches (or your proposed fixes)
> either in mmotm (2020-04-29-23-04) or in next-20200504. Wondering if you are
> waiting on a V2 for this series accommodating the changes you had proposed.

hm.  I think I must have got confused and thought you were referring to
a different patch.  Yes please, let's have v2.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
