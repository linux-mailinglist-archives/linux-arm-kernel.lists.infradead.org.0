Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1214C1EEC6F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 22:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9uEDrTwr74kmpdOtU7Osd5CElP2ZgSOzg0f4jCX8CUQ=; b=Adhl4sR1nwgSy3
	qcAGDy/mH2CmHJpFKoXRkoadIJqJfKfCbFwsqMFRZIo9Z/gZ6VMXqON8m6mIVqeGgRRePWgLVPtXK
	hjpI6VHEYIqi7YP5BKsA2dkt3iX63GnWdssAthxW4tn9qsSegFClkSes+Q1WMDQtqHMFtLjg7yU1q
	GTcE9140HtA9L7iJ/vuSNor5laSp2yiXCKRMWOEC5k0c7tOgYAFozjYtAaBVDXadnbaWgZsQ64ZLG
	d8iV5JpjtJOBfS2mZAKPF5CVd8eibRVYBsLe1/UYqeTPvJHihqQgvFNhvwWwhZPU++fyWs+RhXE5y
	CujZZ/RiMjBQombZuj0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwqD-0001la-Ej; Thu, 04 Jun 2020 20:51:57 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwpy-0001kY-Bj; Thu, 04 Jun 2020 20:51:46 +0000
IronPort-SDR: W2Mftt0tXYw/rUv//BR5uZuRr/RbsV5EXPbqRjrQyIE7X/k1Lv3ByBie/LGr+l2H0nHtnY55HK
 KRNjctDlX7pg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 13:51:41 -0700
IronPort-SDR: zs+MMvxWw13sjlZ9Bw72P4E7fjGK2DTGpjrAZCIfDuEufJrPSBND+RoMuQFrepsdDPuoy+96Bf
 +AJaXGZ7wG6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="348215104"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.147])
 by orsmga001.jf.intel.com with ESMTP; 04 Jun 2020 13:51:40 -0700
Date: Thu, 4 Jun 2020 13:51:40 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH] arch/{mips,sparc,microblaze,powerpc}: Don't enable
 pagefault/preempt twice
Message-ID: <20200604205140.GN1505637@iweiny-DESK2.sc.intel.com>
References: <20200519165422.GA5838@roeck-us.net>
 <20200519184031.GB3356843@iweiny-DESK2.sc.intel.com>
 <20200519194215.GA71941@roeck-us.net>
 <20200520051315.GA3660833@iweiny-DESK2.sc.intel.com>
 <d86dba19-4f4b-061e-a2c7-4f037e9e2de2@roeck-us.net>
 <20200521174250.GB176262@iweiny-DESK2.sc.intel.com>
 <20200603135736.e7b5ded0082a81ae6d9067a0@linux-foundation.org>
 <20200603211416.GA1740285@iweiny-DESK2.sc.intel.com>
 <3538c8ad-674e-d310-d870-4ef6888092ed@roeck-us.net>
 <20200604094133.GC202650@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604094133.GC202650@kernel.org>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_135142_411244_282C25B2 
X-CRM114-Status: GOOD (  21.20  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Thu, Jun 04, 2020 at 12:41:33PM +0300, Mike Rapoport wrote:
> On Wed, Jun 03, 2020 at 04:44:17PM -0700, Guenter Roeck wrote:
> > 
> > sparc32 smp images in next-20200603 still crash for me with a spinlock
> > recursion. s390 images hang early in boot. Several others (alpha, arm64,
> > various ppc) don't even compile. I can run some more bisects over time,
> > but this is becoming a full-time job :-(.
> 
> I've been able to bisect s390 hang to commit b614345f52bc ("x86/entry:
> Clarify irq_{enter,exit}_rcu()").
> 
> After this commit, lockdep_hardirq_exit() is called twice on s390 (and
> others) - one time in irq_exit_rcu() and another one in irq_exit():
> 
> /**
>  * irq_exit_rcu() - Exit an interrupt context without updating RCU
>  *
>  * Also processes softirqs if needed and possible.
>  */
> void irq_exit_rcu(void)
> {
> 	__irq_exit_rcu();
> 	 /* must be last! */
> 	lockdep_hardirq_exit();
> }
> 
> /**
>  * irq_exit - Exit an interrupt context, update RCU and lockdep
>  *
>  * Also processes softirqs if needed and possible.
>  */
> void irq_exit(void)
> {
> 	irq_exit_rcu();
> 	rcu_irq_exit();
> 	 /* must be last! */
> 	lockdep_hardirq_exit();
> }
> 
> Removing the call in irq_exit() make s390 boot again, and judgung by the
> x86 entry code, the comment /* must be last! */ is stale...

FWIW I got s390 to compile and this patch fixes s390 booting for me as well.

13:05:25 > /home/iweiny/dev/linux-build-test/rootfs/s390/run-qemu-s390.sh 
Build reference: next-20200603-4-g840714292d8c

Building s390:defconfig:initrd ... running ........... passed
Building s390:defconfig:virtio-blk-ccw:rootfs ... running ........... passed
Building s390:defconfig:scsi[virtio-ccw]:rootfs ... running ..............  passed
Building s390:defconfig:virtio-pci:rootfs ... running ........... passed
Building s390:defconfig:scsi[virtio-pci]:rootfs ... running ........... passed

Ira

> 
> @Peter, @Thomas, can you comment please?
> 
> From e51d50ee6f4d1f446decf91c2c67230da14ff82c Mon Sep 17 00:00:00 2001
> From: Mike Rapoport <rppt@linux.ibm.com>
> Date: Thu, 4 Jun 2020 12:37:03 +0300
> Subject: [PATCH] softirq: don't call lockdep_hardirq_exit() twice
> 
> After commit b614345f52bc ("x86/entry: Clarify irq_{enter,exit}_rcu()")
> lockdep_hardirq_exit() is called twice on every architecture that uses
> irq_exit(): one time in irq_exit_rcu() and another one in irq_exit().
> 
> Remove the extra call in irq_exit().
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  kernel/softirq.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/kernel/softirq.c b/kernel/softirq.c
> index a3eb6eba8c41..7523f4ce4c1d 100644
> --- a/kernel/softirq.c
> +++ b/kernel/softirq.c
> @@ -427,7 +427,6 @@ static inline void __irq_exit_rcu(void)
>  void irq_exit_rcu(void)
>  {
>  	__irq_exit_rcu();
> -	 /* must be last! */
>  	lockdep_hardirq_exit();
>  }
>  
> @@ -440,8 +439,6 @@ void irq_exit(void)
>  {
>  	irq_exit_rcu();
>  	rcu_irq_exit();
> -	 /* must be last! */
> -	lockdep_hardirq_exit();
>  }
>  
>  /*
> -- 
> 2.26.2
> 
> 
> 
> > Guenter
> 
> -- 
> Sincerely yours,
> Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
