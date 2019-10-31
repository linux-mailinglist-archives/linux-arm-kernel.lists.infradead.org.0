Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB78EAF1C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 12:42:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vcXr3Ua1x5pQMO47gESsMjRXmkvvihzw9lEBocCjoII=; b=YYLQ+FIBAaRIEl
	pfABR4bQqJAq5JOhaT0HaSt+yPLRTLCQsP88MY/0XVKGjVTvkBwLyW0OyWGZVxycY4nUFiux9gyfp
	iu0RQgbWqxZ8kzuIkc3AcRCKsf/OiNE0NQw3GInpooeRuUcQPLkSiLYTvBzwWHCuCGFtxSKmRbjRN
	C7WRyJ9HSfoFkdOejDO6nj0iCA1SbvHA/kSz90W/hKyA3FMUfkNm7K3FKhR+Ledo0WzIcCvVYTEWD
	I+rR9y1PWzIiw8gHu7w3AhfD3ODGM8hnot5Pc8lDmrTgAwFx+cbvzlQwJu1mXTPlZofOfiH9WDWv4
	ECNgP3NSoimzsZbjwcfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ8qZ-000635-Oo; Thu, 31 Oct 2019 11:42:35 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ8qR-00062N-LK
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 11:42:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 83BABAF7A;
 Thu, 31 Oct 2019 11:42:25 +0000 (UTC)
Date: Thu, 31 Oct 2019 12:42:23 +0100
From: Torsten Duwe <duwe@suse.de>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCHv2 2/8] module/ftrace: handle patchable-function-entry
Message-ID: <20191031114223.GA11684@suse.de>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-3-mark.rutland@arm.com>
 <20191030150302.GA965@suse.de> <20191031090231.GA3340@blommer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031090231.GA3340@blommer>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_044227_841366_4BC12B0D 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, Helge Deller <deller@gmx.de>, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 takahiro.akashi@linaro.org, will@kernel.org, mingo@redhat.com,
 james.morse@arm.com, Jessica Yu <jeyu@kernel.org>, amit.kachhap@arm.com,
 svens@stackframe.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 09:02:32AM +0000, Mark Rutland wrote:
> On Wed, Oct 30, 2019 at 04:03:02PM +0100, Torsten Duwe wrote:
> > On Tue, Oct 29, 2019 at 04:58:26PM +0000, Mark Rutland wrote:
> > > 
> > > I built parisc generic-{32,64}bit_defconfig with DYNAMIC_FTRACE enabled,
> > > and verified that the section made it into the .ko files for modules.
> > 
> > This is because of remaining #ifdeffery in include/asm-generic/vmlinux.lds.h:
> > 
> > #ifdef CC_USING_PATCHABLE_FUNCTION_ENTRY
> > #define MCOUNT_REC()    . = ALIGN(8);                           \
> >                         __start_mcount_loc = .;                 \
> >                         KEEP(*(__patchable_function_entries))   \
> >                         __stop_mcount_loc = .;
> > #else
> > #define MCOUNT_REC()    . = ALIGN(8);                           \
> >                         __start_mcount_loc = .;                 \
> >                         KEEP(*(__mcount_loc))                   \
> >                         __stop_mcount_loc = .;
> > #endif
> 
> For modules we use a combination of scripts/module-common.lds and an
> architecture's own module.lds, not vmlinux.lds.h. So I don't think the above is
> relevant for modules.

Sure, this is only loosely related,...

> I agree that the CC_USING_PATCHABLE_FUNCTION_ENTRY ifdeffery could be
> simplified, and that it would be nice to consistently use
> FTRACE_CALLSITE_SECTION if we can. However, the generic linker script doesn't
> include anything, and I don't see a good location for that to live.
> 
> What I could do is add an explicit comment:
> 
> /*
>  * The ftrace call sites are logged to a section whose name depends on the
>  * compiler option used. A given kernel image will only use one, AKA
>  * FTRACE_CALLSITE_SECTION. We capture all of them here to avoid header
>  * dependencies.
>  */
> #define MCOUNT_REC()						\
> 			. = ALIGN(8);				\
> 			__start_mcount_loc = .;			\
> 			KEEP(*(__patchable_function_entries))   \
> 			KEEP(*(__mcount_loc))                   \
> 			__stop_mcount_loc = .;			
> 
> ... which should make the dependency clear. Does that sound good to you?

Beautiful. I just didn't want to miss the opportunity to have this cleaned
up as well, and deemed this patch "closest" because of the definition of 
FTRACE_CALLSITE_SECTION. Put it where you see it fit best.

Thanks,

	Torsten

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
