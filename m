Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6549A1EDD73
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 08:44:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0owEbqispvQ2MH6zCVDUXYgO3POB0Y5Mg5s/1KVlWc=; b=RCIPI5J3t1nDjg
	ZpLpIvr7S0xejzu5PYFoDsnbpZSXD6uEFPBSFmEzWnzYzCeRG+boS3lLFJWqwMBLT/LEa+fNXKwl/
	k62hm9pVw9TBZClIefh0iO7Mgoh9Ywi75ChGFecpM9m8ruGSyLghEneDhfYS5xe+CFJc4RZ9XRVp7
	zFV8VvDEQQbgpu5Bv0VJ8Vu0hUfwkGgH9RYM3TVILUr9RaAlC+UkO5hEzZPi+bBwRbiNbxCACRMzX
	J9fe5RreyBblHNygiu+jbv3fdVonhWoc+39W9ezJj5BNXZ4FPQW2zbLYzNP8jGCkBZ2OnaE05nT4i
	qZAp/PVrNC1XH8fQ7u3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgjcS-00016t-Vd; Thu, 04 Jun 2020 06:44:52 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgjcM-00016U-J7; Thu, 04 Jun 2020 06:44:48 +0000
IronPort-SDR: rTU7DOtLmIRCjGCq2Bx2hMH/DbzrSQSbcY0udzJ9eQUni8Qxd0crhSlpxctJDQBG4yFv0+m4lw
 GSfthN3qrceg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 23:44:45 -0700
IronPort-SDR: Hi+ARyh48YSb32/Pt8vOy4p7zx/cFnMDyZyMrnGYxWixi6a4PkX1oDrgQ4wPYlujYL2xH3fTes
 IcRlwA5YSB6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,471,1583222400"; d="scan'208";a="445398016"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.147])
 by orsmga005.jf.intel.com with ESMTP; 03 Jun 2020 23:44:44 -0700
Date: Wed, 3 Jun 2020 23:44:44 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH] arch/{mips,sparc,microblaze,powerpc}: Don't enable
 pagefault/preempt twice
Message-ID: <20200604064444.GD1740285@iweiny-DESK2.sc.intel.com>
References: <20200519184031.GB3356843@iweiny-DESK2.sc.intel.com>
 <20200519194215.GA71941@roeck-us.net>
 <20200520051315.GA3660833@iweiny-DESK2.sc.intel.com>
 <d86dba19-4f4b-061e-a2c7-4f037e9e2de2@roeck-us.net>
 <20200521174250.GB176262@iweiny-DESK2.sc.intel.com>
 <20200603135736.e7b5ded0082a81ae6d9067a0@linux-foundation.org>
 <20200603211416.GA1740285@iweiny-DESK2.sc.intel.com>
 <3538c8ad-674e-d310-d870-4ef6888092ed@roeck-us.net>
 <20200604062226.GA1740345@iweiny-DESK2.sc.intel.com>
 <20200604063745.GB202650@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604063745.GB202650@kernel.org>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_234446_672628_72E229B8 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, linux-csky@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 Guenter Roeck <linux@roeck-us.net>, linux-xtensa@linux-xtensa.org,
 Borislav Petkov <bp@alien8.de>, Al Viro <viro@zeniv.linux.org.uk>,
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

On Thu, Jun 04, 2020 at 09:37:45AM +0300, Mike Rapoport wrote:
> On Wed, Jun 03, 2020 at 11:22:26PM -0700, Ira Weiny wrote:
> > On Wed, Jun 03, 2020 at 04:44:17PM -0700, Guenter Roeck wrote:
> > 
> > With linux-next on sparc I too see the spinlock issue; something like:
> > 
> > ...
> > Starting syslogd: BUG: spinlock recursion on CPU#0, S01syslogd/139
> >  lock: 0xf53ef350, .magic: dead4ead, .owner: S01syslogd/139, .owner_cpu: 0
> > CPU: 0 PID: 139 Comm: S01syslogd Not tainted 5.7.0-next-20200603 #1
> > [f0067d00 : 
> > do_raw_spin_lock+0xa8/0xd8 ] 
> > [f00d598c : 
> > copy_page_range+0x328/0x804 ] 
> > [f0025c34 : 
> > dup_mm+0x334/0x434 ] 
> > [f0027198 : 
> > copy_process+0x1248/0x12d4 ] 
> > [f00273b8 : 
> > _do_fork+0x54/0x30c ] 
> > [f00276e4 : 
> > do_fork+0x5c/0x6c ] 
> > [f000de44 : 
> > sparc_do_fork+0x18/0x38 ] 
> > [f000b7f4 : 
> > do_syscall+0x34/0x40 ] 
> > [5010cd4c : 
> > 0x5010cd4c ] 
> > 
> > 
> > I'm going to bisect between there and HEAD.
> 
> The sparc issue should be fixed by 
> 
> https://lore.kernel.org/lkml/20200526173302.377-1-will@kernel.org

Saw your other email.  And yes they are!

Thanks!
Ira

>  
> > Ira
> 
> -- 
> Sincerely yours,
> Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
