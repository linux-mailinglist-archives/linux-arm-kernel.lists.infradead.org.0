Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC281D7A24
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 15:38:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPuPft1FNdcpA4AnQR25z569z96SbZR/IaYedsWBuAU=; b=UCM+J/Rr+Z0U7w
	JMrr9ezvV2S7Xvsw6xDj7GRRePA5Dd1FmwrhthLNfDoiXgzPMxMy+/tJZqsybJ1mXwfoyPf214ZtD
	uzrCZ8BigSZ4SQk51PCnPil40Ep/J9qyr3M9BV4nDjftMwiwooy2L6wmBm6Pfp00OHs212WkLpyky
	CLeMFYQ9zbaPmXVnQav+/P83N/dAVwcshyWdpvrnHzM4lvCf/GP0yC62VeTPsH8stgqMCjsG7WgaS
	bYKoRCizUZ6Hb8kWRolp3d70F/54RAup9UhUnulTDfjraFQZznep9HvGLlzPvmXvREbsuQJ0Mt+UD
	BPRQqt1g5k30ZVHvtBBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafy6-00023t-HL; Mon, 18 May 2020 13:38:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafxs-00022r-2a
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 13:37:57 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D4079206D4;
 Mon, 18 May 2020 13:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589809075;
 bh=qWLypqUxpjq+PWGqvdA08FUoyMUiPmK0wN1hOQJH8Kw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B9UkcbY2jDAacUffVg4mgBVmOKNJgjBIi9QGO696HJhKqFVyxDCAnTe5VWZVmqFQA
 6j/W5aBaup71jjp72bsEitt3GUeKjV7zBGm4M0D5NoERvarSIdTMvuih9Et4m+G9DE
 pNf9ckZXrxfozI/DNEFAo41VOq8rV7P52/nvKMkg=
Date: Mon, 18 May 2020 14:37:50 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/6] arm64: scs: Store absolute SCS stack pointer value
 in thread_info
Message-ID: <20200518133750.GF32394@willie-the-truck>
References: <20200515172756.27185-1-will@kernel.org>
 <20200515172756.27185-2-will@kernel.org>
 <20200518113710.GA1957@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518113710.GA1957@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_063756_132164_CA643FD5 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Rutland <mark.rutland@am.com>, Sami Tolvanen <samitolvanen@google.com>,
 kernel-team@android.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 12:37:10PM +0100, Mark Rutland wrote:
> On Fri, May 15, 2020 at 06:27:51PM +0100, Will Deacon wrote:
> > Storing the SCS information in thread_info as a {base,offset} pair
> > introduces an additional load instruction on the ret-to-user path,
> > since the SCS stack pointer in x18 has to be converted back to an offset
> > by subtracting the base.
> > 
> > Replace the offset with the absolute SCS stack pointer value instead
> > and avoid the redundant load.
> > 
> > Signed-off-by: Will Deacon <will@kernel.org>
> 
> One trivial nit below, but regardless this looks sound to me, and I
> certainly prefer having the absolute address rather than an offset, so:
> 
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> 
> > diff --git a/kernel/scs.c b/kernel/scs.c
> > index 9389c28f0853..5ff8663e4a67 100644
> > --- a/kernel/scs.c
> > +++ b/kernel/scs.c
> > @@ -60,8 +60,7 @@ int scs_prepare(struct task_struct *tsk, int node)
> >  	if (!s)
> >  		return -ENOMEM;
> >  
> > -	task_scs(tsk) = s;
> > -	task_scs_offset(tsk) = 0;
> > +	task_scs(tsk) = task_scs_sp(tsk) = s;
> 
> I think this would be more legible as two statements:
> 
> |	task_sys(tsk) = s;
> |	task_scs_sp(tsk) = s;

I think it's nice to be able to say:

	task_scs(tsk) = task_scs_sp(tsk);

because it makes it very clear that they are initialised to the same thing.
Having it as two statements means somebody will update one and forget to
update the other one.

> ... as we usually save `foo = bar = baz` stuff for the start of a
> function or within loop conditions.

Hmm, I can't really find anything consistent in that regard, to be honest
with you. Did I miss something in the coding style doc?

I'll leave it as-is for now.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
