Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 362191B39EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 10:19:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18GeD4D5B9GAJgJLmaAsJi7K5VUakjKu8qFbHuwo73o=; b=KXOU+/tNpOkl22
	DJLGayYucsenmqwOTTjEaPpLuYs0c1wDRz1CaR6Ga2ukHO6sY6xr7WnC09eIkv9PgcVaLcRn6c8Ra
	iEcHGnu8kDVLLvSBfAsv67rLZRXNJIj9SW245kk7wHbTJnaMIplB5q4dsGPIoaT4AgSX/Rw7JLKu4
	j+AJxUcWnZT7TJhdP//6H1RlPj7S7kUvdAWnKNXrzMBT+YvI8bcbNnvw0xGdQsZ/NgQKNwOuDIUxs
	1S/Qh/vuKkswff4EEHls92MvLp+5L5mU2esaTP0OlGPO/HmRRUr6VKFF/EV+WYekn7sV1vJpsMAOr
	F5dG5ew0P+73OUWFkQAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRAbX-0004pa-Il; Wed, 22 Apr 2020 08:19:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRAbI-0004kf-Qz
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 08:19:22 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 397DB20663;
 Wed, 22 Apr 2020 08:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587543560;
 bh=HbETMiCy9zGcZZ64OTbPFZJGb1/+hnLxp8Gs9mlAY3A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DQ7iQTI7LyLT5ewPJjUZNXToJjteghTh2w1VH+8J6xtfiOr0tcelpq6yqCNEGI7jT
 1Kv32eSod/2GSMV7SbO2KEn/5oRnW6/rCSm1SIPfcCFfVUHfRue9uc/7Qbg9/IeniT
 46KQsy2pm2LBhaE6sCZtLYzd/oR0vFQyHrXZtMnM=
Date: Wed, 22 Apr 2020 09:19:15 +0100
From: Will Deacon <will@kernel.org>
To: Jiping Ma <Jiping.Ma2@windriver.com>
Subject: Re: [PATCH] Perf: support to unwind userspace application stacks
 generated with thumb.
Message-ID: <20200422081914.GC29541@willie-the-truck>
References: <20200416053829.130395-1-jiping.ma2@windriver.com>
 <20200416071023.GB29742@willie-the-truck>
 <01029876-e167-a1ba-cb1a-d97adf23dde4@windriver.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <01029876-e167-a1ba-cb1a-d97adf23dde4@windriver.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_011920_895629_8A8DBA29 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, alexander.shishkin@linux.intel.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 acme@kernel.org, peterz@infradead.org, mingo@redhat.com, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 10:56:04AM +0800, Jiping Ma wrote:
> On 04/16/2020 03:10 PM, Will Deacon wrote:
> > On Thu, Apr 16, 2020 at 01:38:29PM +0800, Jiping Ma wrote:
> > > +void
> > > +user_backtrace_thumb(struct perf_callchain_entry_ctx *entry,
> > > +		     struct pt_regs *regs)
> > > +{
> > > +	u32 sp;
> > > +	u32 *sp_t;
> > > +	/*
> > > +	 * Only push sp, lr to stack.
> > > +	 */
> > > +	for (sp = regs->compat_sp; (sp < current->mm->start_stack) &&
> > > +		(entry->nr < entry->max_stack); sp += 4) {
> > > +		sp_t = (u32 *)(unsigned long)sp;
> > > +		if ((*sp_t > regs->compat_sp) &&
> > > +			(*sp_t < current->mm->start_stack)) {
> > > +			if (*(sp_t + 1) < current->mm->end_code &&
> > > +				*(sp_t + 1) > current->mm->start_code) {
> > > +				perf_callchain_store(entry,  *(sp_t + 1)-1);
> > > +				sp += 4;
> > > +			}
> > > +		}
> > > +	}
> > > +}
> > This looks like a pile of fragile heuristics to me. Why don't you just use
> > libunwind in userspace, the same way you'd have to if you compiled without
> > framepointers?
> 
> Could you share more details for libunwind in userspace? Following is our
> build command for test app.
> bt_perf.thumb: arm-wrs-linux-gnueabi-gcc -march=armv7ve -mthumb -mfpu=neon
> -mfloat-abi=softfp -mcpu=cortex-a15
> --sysroot=sysroots/cortexa15t2-neon-wrs-linux-gnueabi -O0 -g -ggdb -Wall
> -funwind-tables -fno-omit-frame-pointer -frecord-gcc-switches -mapcs-frame
> bt_perf.c -o bt_perf.thumb

You can build the perf tool with support for libunwind, and then it should
handle the unwinding in userspace. I haven't used it for ages, but you may
need to pass '--call-graph dwarf'. Have a play (and you can also read the
code in tools/perf/).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
