Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C4912E91A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 18:08:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJpLH+ii4KKG+dtFvWTpzBlneEU8fVNoD+3E5fjAK+Q=; b=Lf5pg+sfIqX5sM
	xX+q6t45LMB7ISR1Q+SSOdgAIMh51NWW3sQBqdktG3QMFzsTTVavQU6ZkPUgdpmHgzOlCHwB8bacM
	R3Jp1p4YEg1nRIr73EcQ5XhYtQjTTXmefX4g3k4xZKNitOqwh0J+9AtGLIS0ZgNYtcxXpVlRKuLqb
	+zWXZgV/cYZJ5JzARX3G6nMIsiV75aEam07wDEtjlHMg13wdemz4zNb4oP3Y1xBqQhlvA/tm9CoRv
	1o73QaHe26SQ5ZFOv19UEuNBw73l6p+h8GKFpWE8TgwjmtVjrmhDhJg9Gfk04yi2v+kqWAzx8luIe
	TolfKLqpBabNbgqdPX7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in3x7-0000Iw-5D; Thu, 02 Jan 2020 17:08:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in3x0-0000IH-Hh
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 17:08:01 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 90FD92085B;
 Thu,  2 Jan 2020 17:07:56 +0000 (UTC)
Date: Thu, 2 Jan 2020 12:07:52 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] char/random: silence a lockdep splat with printk()
Message-ID: <20200102120752.7b893b1e@gandalf.local.home>
In-Reply-To: <1CA39814-DE67-4112-8F97-D62B9F47FF9D@lca.pw>
References: <20191205010055.GO93017@google.com>
 <4F9E9335-334B-4600-8BC3-4AF91510D113@lca.pw>
 <1CA39814-DE67-4112-8F97-D62B9F47FF9D@lca.pw>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_090758_609309_2EF79454 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: pmladek@suse.com, tytso@mit.edu,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 gregkh@linuxfoundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, longman@redhat.com,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2 Jan 2020 10:42:51 -0500
Qian Cai <cai@lca.pw> wrote:

> > On Dec 16, 2019, at 8:52 PM, Qian Cai <cai@lca.pw> wrote:
> > 
> > 
> >   
> >> On Dec 4, 2019, at 8:00 PM, Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:
> >> 
> >> A 'Reviewed-by' will suffice.
> >> 
> >> Reviewed-by: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>  
> > 
> > Ted, could you take a look at this trivial patch?  
> 
> Not sure if Ted is still interested in maintaining this file as he had no feedback for more
> than a month. The problem is that this will render the lockdep useless for a general
> debugging tool as it will disable the lockdep early in the process.
> 

How would this disable lockdep early in the process? The patch is just
changing pr_notice() to printk_deferred() correct?

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
