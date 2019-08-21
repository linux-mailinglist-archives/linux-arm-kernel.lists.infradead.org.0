Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0EF98032
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 18:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdEPETRgbo2p3kYKLttZrKQfrWVL8/yaQnQND231OH4=; b=HySSAHsbBJWW9Z
	yWVPbmwYD4Ipq8dPe3nCCuPB1FuiZx5vX8oMLsfUITxE2VfKsYH8DmnilIbrhhWVrq9Rt6JJXi44a
	XkR/pWBm7R12zWrx8UWe0Ry/6rdZcgd0EWmhDoGrZ1khEXZ8ESZTmB3SStPedrzBrXMtBUXxmw0ea
	2EPfAvIKzH/pOSj1mz/39gDG4W9MbtmYX+yEbHISX2Gnv8LRX/27/DS4egDP5ImLyuhrWlweH5ret
	slETgOkd8EE6LcppXpq+9Y6k4ey3Exn1nqFsW/LmOlyXnyff5duVXKI9l2FMXKi+FIZmvbXQ4gvwc
	6o64/Y2LX9m0+TX52HZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0TZG-0001r4-KQ; Wed, 21 Aug 2019 16:34:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0TZ9-0001qj-Am
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 16:34:32 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 341A4216F4;
 Wed, 21 Aug 2019 16:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566405270;
 bh=5Wgi6CnBitr8ACVrtl4JVmT0TPh0c47DtZIL3lbp9vU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PrkJUu0etYaUGZS+v8/uAltPsgcPd9gxnCWBiNdyLS5S1qhXPBBVz3rpEtQM+aBsC
 Vi8RarU3iehaMSrpbMB4Bhl9++Ge014SO+azWllZkJaMBTpMG62XQp2xWyZbjNL4LX
 DLh5DKpl+roNAw2AHV6bYv4FTlRnhyu1T9ymt9+k=
Date: Wed, 21 Aug 2019 17:34:26 +0100
From: Will Deacon <will@kernel.org>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH] mm: consolidate pgtable_cache_init() and pgd_cache_init()
Message-ID: <20190821163425.6jwxbvspjzqxysxc@willie-the-truck>
References: <1566400018-15607-1-git-send-email-rppt@linux.ibm.com>
 <20190821154942.js4u466rolnekwmq@willie-the-truck>
 <20190821160159.GG26713@rapoport-lnx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821160159.GG26713@rapoport-lnx>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_093431_388222_DAFEDF69 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 07:01:59PM +0300, Mike Rapoport wrote:
> On Wed, Aug 21, 2019 at 04:49:42PM +0100, Will Deacon wrote:
> > On Wed, Aug 21, 2019 at 06:06:58PM +0300, Mike Rapoport wrote:
> > > diff --git a/init/main.c b/init/main.c
> > > index b90cb5f..2fa8038 100644
> > > --- a/init/main.c
> > > +++ b/init/main.c
> > > @@ -507,7 +507,7 @@ void __init __weak mem_encrypt_init(void) { }
> > >  
> > >  void __init __weak poking_init(void) { }
> > >  
> > > -void __init __weak pgd_cache_init(void) { }
> > > +void __init __weak pgtable_cache_init(void) { }
> > >  
> > >  bool initcall_debug;
> > >  core_param(initcall_debug, initcall_debug, bool, 0644);
> > > @@ -565,7 +565,6 @@ static void __init mm_init(void)
> > >  	init_espfix_bsp();
> > >  	/* Should be run after espfix64 is set up. */
> > >  	pti_init();
> > > -	pgd_cache_init();
> > >  }
> > 
> > AFAICT, this change means we now initialise our pgd cache before
> > debug_objects_mem_init() has run.
> 
> Right.
> 
> > Is that going to cause fireworks with CONFIG_DEBUG_OBJECTS when we later
> > free a pgd?
> 
> We don't allocate a pgd at that time, we only create the kmem cache for the
> future allocations. And that cache is never destroyed anyway.

Thanks for the explanation. In which case, for arm64:

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
