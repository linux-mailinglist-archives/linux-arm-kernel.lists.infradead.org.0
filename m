Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EFB11B57E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:54:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6/INMDnLw96wmi/9oSphush6/U7NXsQMMJWOG8kdlk=; b=mtvS3H164S2gUG
	EBYPVvZk5A4QtrCVyvC46k/oZaKnjr5wApIKpTaFyZ9NuHfBa6webz8KmEHV+gBkMI12LDFtqQhWA
	HF1KTd+wkvO2bJvqBw5QGOue7hqSJUa1PCzAQLxU9J4mIbqIBH2z3ahbubFJTYt+el2RriU4d1G8b
	9g67T5HJ5DK3YRY9fO51tbVbiami3BMEhGFg2KFGoDxqpOvcGHIOQlakMUwh7WbP9p32lPFKiN7pf
	Mf+9IDH0NdUb73i0vE+qwEnR4RzNXG5WQMvebT7elnt265SevntDkJ0m3ZYc/tai4+u5jRCcQjRak
	hbnAIhPmQ41TjUbKAcCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4Jk-0002PG-FF; Wed, 11 Dec 2019 15:54:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if4Jb-0002MV-JO
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:54:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A2A2B31B;
 Wed, 11 Dec 2019 07:54:11 -0800 (PST)
Received: from [10.1.194.43] (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 88EAD3F52E;
 Wed, 11 Dec 2019 07:54:08 -0800 (PST)
Subject: Re: [PATCH v16 13/25] mm: pagewalk: Don't lock PTEs for
 walk_page_range_novma()
To: kbuild test robot <lkp@intel.com>
References: <20191206135316.47703-14-steven.price@arm.com>
 <201912101842.KIXI4yCg%lkp@intel.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <e0fd5594-fb4e-9ead-e582-544f47cb1f8b@arm.com>
Date: Wed, 11 Dec 2019 15:54:06 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <201912101842.KIXI4yCg%lkp@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_075415_726531_E44150C1 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 kbuild-all@lists.01.org, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/12/2019 11:23, kbuild test robot wrote:
> Hi Steven,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on linus/master]
> [also build test WARNING on v5.5-rc1 next-20191209]
> [cannot apply to arm64/for-next/core tip/x86/mm]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Steven-Price/Generic-page-walk-and-ptdump/20191208-035831
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git ad910e36da4ca3a1bd436989f632d062dda0c921
> reproduce:
>         # apt-get install sparse
>         # sparse version: v0.6.1-101-g82dee2e-dirty
>         make ARCH=x86_64 allmodconfig
>         make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> 
> sparse warnings: (new ones prefixed by >>)
> 
>>> include/linux/spinlock.h:378:9: sparse: sparse: context imbalance in 'walk_pte_range' - unexpected unlock

I believe this is a false positive (although the trace here is useless).
This patch adds a conditional lock/unlock:

pte = walk->no_vma ? pte_offset_map(pmd, addr) :
		     pte_offset_map_lock(walk->mm, pmd, addr, &ptl);
...
if (!walk->no_vma)
	spin_unlock(ptl);
pte_unmap(pte);

I'm not sure how to match sparse happy about that. Is the only option to
have two versions of the walk_pte_range() function? One which takes the
lock and one which doesn't.

Steve

> vim +/walk_pte_range +378 include/linux/spinlock.h
> 
> c2f21ce2e31286 Thomas Gleixner 2009-12-02  375  
> 3490565b633c70 Denys Vlasenko  2015-07-13  376  static __always_inline void spin_unlock(spinlock_t *lock)
> c2f21ce2e31286 Thomas Gleixner 2009-12-02  377  {
> c2f21ce2e31286 Thomas Gleixner 2009-12-02 @378  	raw_spin_unlock(&lock->rlock);
> c2f21ce2e31286 Thomas Gleixner 2009-12-02  379  }
> c2f21ce2e31286 Thomas Gleixner 2009-12-02  380  
> 
> :::::: The code at line 378 was first introduced by commit
> :::::: c2f21ce2e31286a0a32f8da0a7856e9ca1122ef3 locking: Implement new raw_spinlock
> 
> :::::: TO: Thomas Gleixner <tglx@linutronix.de>
> :::::: CC: Thomas Gleixner <tglx@linutronix.de>
> 
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
