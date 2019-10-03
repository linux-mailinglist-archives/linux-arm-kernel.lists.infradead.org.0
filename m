Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C18CACB08A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 22:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HIZcZ8te+GobOOe2judpiLsyBCps+WUUvRcxXjOldFI=; b=Wekrrl/MXhXo+K
	ljuO7e3nWt0r9PMowlTT4QBHQfNZV71eat/gLugMHhpkLOILkbqKDdCDdYv/9GEB7S6RxH3ITF34/
	ku6kFJ0103b0qde6zrnEGU9G/uv2uVADSguGdG5xlWL9c+W1q7EecdQhv8jQ4RVTZOEz4oGAH2gGp
	qzKsk2r8sHZIIkBqsGmUuZtHnFVVSLTdwYFg209rymzl9QHSR48lOhbcSLqM81VJA574b7ctgDQjy
	3Qpiy1xdcptlhP9IQNntH60q643sfQ0+IzhRAAo2MDXHarBOyBtJ3f8wHKlrcrMhuUDCZq1vw2YpB
	CmNM71mQqaE9MFmSi+3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG86A-0007Lk-Tk; Thu, 03 Oct 2019 20:53:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG860-0007LK-TL
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 20:53:10 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F35BE2086A;
 Thu,  3 Oct 2019 20:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570135988;
 bh=yowsqFgBN3g03tzI8bPhnB/eqX3mSgB7OHNH/n5OKLM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j0CtLPiZsYBXJAfAy5axgjtYgZQEXimPqPJ9Wcq1cQq7n2Hp9Ppx2pvFhAudYxfKj
 8HQV7EL8Pwi+3TY44pJYiMZ5oV+ZE9hJ4Sx1KK30AsmuLRM9iSHcAnY6ceHjhVzPC/
 jQAGPuL9KLyHhPPbZ1PJcsKYMKH8v913FLee/p+U=
Date: Thu, 3 Oct 2019 21:53:04 +0100
From: Will Deacon <will@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] panic: Ensure preemption is disabled during panic()
Message-ID: <20191003205303.ge324uspaaocfxq4@willie-the-truck>
References: <20191002123538.22609-1-will@kernel.org>
 <20191002144558.87531ea9f68b535453fedd3e@linux-foundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002144558.87531ea9f68b535453fedd3e@linux-foundation.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_135308_967760_C8E64153 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, contact@xogium.me,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

Thanks for having a look.

On Wed, Oct 02, 2019 at 02:45:58PM -0700, Andrew Morton wrote:
> On Wed,  2 Oct 2019 13:35:38 +0100 Will Deacon <will@kernel.org> wrote:
> > Disable preemption in 'panic()' before re-enabling interrupts.
> > 
> > ...
> >
> > --- a/kernel/panic.c
> > +++ b/kernel/panic.c
> > @@ -180,6 +180,7 @@ void panic(const char *fmt, ...)
> >  	 * after setting panic_cpu) from invoking panic() again.
> >  	 */
> >  	local_irq_disable();
> > +	preempt_disable_notrace();
> >  
> >  	/*
> >  	 * It's possible to come here directly from a panic-assertion and
> 
> We still do a lot of stuff (kexec, kgdb, etc) after this
> preempt_disable() and I worry that something in there will now trigger
> a might_sleep() warning as a result?

Given that interrupts are already disabled at this point, I don't think
we'll get any additional warnings here by disabling preemption as well.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
