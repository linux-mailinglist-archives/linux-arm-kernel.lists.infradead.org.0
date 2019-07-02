Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 541EB5CDE1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 12:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGSSeDC3Y1y9no4uZXwgiTM9HAPshffqQ1nZZkRfX2o=; b=ipxQ9bUpCcoEL8
	MNpKTmOEwg9Gb0WqTmQ9kG/oU/8vtJ7xvZQb+C9LyVOqNcHNXmSWR9hmbJ8oTPGHJigJGHTWyp/KJ
	bAI7WZsVxqT5/OLW0ZDpLEc8fitjw2y2oL+q8lantfkXwf7BwbMajEAjtCWlMVZy2iPSSkSsdOxad
	gm2wkOqfA2GbfEwgjikOCg1dQsdBYmLklzpYN9ZjtAJhWnRJI4st0tPFGFUvhKvI+PvLZ7UlNswGA
	3vOEd61lVP0HsFl2vNCmj+eKmzYHIhMaNN+38VkftMeMelW139+NCfh0cKdFSVPODNTkgIyHyIDfc
	+0ql0JB4Ikfr2Btqszrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGNJ-0003in-DI; Tue, 02 Jul 2019 10:51:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiGN5-0003iF-PU
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 10:50:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C8D45344;
 Tue,  2 Jul 2019 03:50:44 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF86D3F246;
 Tue,  2 Jul 2019 03:50:43 -0700 (PDT)
Date: Tue, 2 Jul 2019 11:50:32 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCHv2 3/3] arm64: stacktrace: better handle corrupted stacks
Message-ID: <20190702105032.GA34718@lakrids.cambridge.arm.com>
References: <20190628154639.5308-1-mark.rutland@arm.com>
 <20190628154639.5308-4-mark.rutland@arm.com>
 <caffff42-3a37-bb28-25a4-c0c79289e15f@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <caffff42-3a37-bb28-25a4-c0c79289e15f@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_035047_868780_D3D7235B 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: catalin.marinas@arm.com, tengfeif@codeaurora.org, will.deacon@arm.com,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 10:33:51AM +0100, James Morse wrote:
> On 28/06/2019 16:46, Mark Rutland wrote:
> > +struct stackframe {
> > +	unsigned long fp;
> > +	unsigned long pc;
> 
> > +#ifdef CONFIG_FUNCTION_GRAPH_TRACER
> > +	int graph;
> > +#endif
> 
> (Could we get rid of this #ifdef? It just prevents us using IS_ENABLED() elsewhere)

I think we could, but I think that would be a separate patch.

I can look at that as a followup.

> > @@ -50,11 +51,23 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
> >  	if (!tsk)
> >  		tsk = current;
> >  
> > -	if (!on_accessible_stack(tsk, fp, NULL))
> > +	if (!on_accessible_stack(tsk, fp, &info))
> >  		return -EINVAL;
> >  
> > +	if (test_bit(info.type, frame->stacks_done))
> > +		return -EINVAL;
> > +
> > +	if (info.type == frame->prev_type) {
> > +		if (fp <= frame->prev_fp)
> > +			return -EINVAL;
> > +	} else {
> 
> > +		set_bit(prev_info.type, frame->stacks_done);
> 
> What is prev_info for? This looks like we're setting $uninitialised_stack bit.

Ugh -- that's a leftover from before I added stack_info::prev_type, when
I always derived the type from prev_fp. Having prev_type ends up much
simpler.

> > +	}
> > +
> >  	frame->fp = READ_ONCE_NOCHECK(*(unsigned long *)(fp));
> >  	frame->pc = READ_ONCE_NOCHECK(*(unsigned long *)(fp + 8));
> > +	frame->prev_fp = fp;
> > +	frame->prev_type = info.type;
> 
> 
> With prev_info, this doesn't boot when lockdep is enabled. The pre-linear-map stacktrace
> calls generate bad addresses and we panic() before earlycon.
> 
> With that set_bit() line changed to read:
> |		set_bit(frame->prev_type, frame->stacks_done);
> 
> this works with perf and ftrace, and stepping off the sdei stack.

Thanks, I'll fold that in

> Reviewed-by: James Morse <james.morse@arm.com>
> Tested-by: James Morse <james.morse@arm.com>

Cheers!

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
