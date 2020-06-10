Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F63A1F5ABA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 19:42:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOiDR14Djh7HzOy0VlpZ4Sdoix13ZkCoPokuAoegugk=; b=Ekjs2l0RIIPwqd
	BCqo7YVlRMQ+FZ+/2xvueiEJnr5GhETpBOEXGAAFS90W7A8eIbgzjhHN42mtctvxCjg+VHUjFjrxB
	b5K8ZcYMD7VDExQGEz3xI6hIk6/7fZGEVfP8m82uOAgfwd1zBAlxofzzg1DxGiG5w4iPqVoWqM8dN
	+7NtS+jkiYs0mEnDjrOFmKTzQKo4BGHdSXKFHuIb4zZYzPUo2rNKAeu3rXCn7H3DX5K96QhJe7xA3
	YYMDGbzsCGbVFyxqTHXdQAlCcVLZeplx+AjJHoQ0dZU+G5E8uoqZCaJTWDeTY65nfa0HK0NPJSMII
	g2kiFy9FxLURiNILpoLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4k5-0007KQ-UR; Wed, 10 Jun 2020 17:42:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4jx-0007JP-8W
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 17:42:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 008B91FB;
 Wed, 10 Jun 2020 10:42:14 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E487E3F6CF;
 Wed, 10 Jun 2020 10:42:12 -0700 (PDT)
Date: Wed, 10 Jun 2020 18:42:05 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [RFC PATCH v2 6/6] prctl.2: Add tagged address ABI control
 prctls (arm64)
Message-ID: <20200610174205.GL26099@gaia>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-7-git-send-email-Dave.Martin@arm.com>
 <20200609172232.GA63286@C02TF0J2HF1T.local>
 <20200610100641.GF25945@arm.com> <20200610152634.GJ26099@gaia>
 <20200610164209.GH25945@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610164209.GH25945@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_104217_342599_559206B4 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 05:42:09PM +0100, Dave P Martin wrote:
> On Wed, Jun 10, 2020 at 04:26:34PM +0100, Catalin Marinas wrote:
> > On Wed, Jun 10, 2020 at 11:06:42AM +0100, Dave P Martin wrote:
> > > On Tue, Jun 09, 2020 at 06:22:32PM +0100, Catalin Marinas wrote:
> > > > On Wed, May 27, 2020 at 10:17:38PM +0100, Dave P Martin wrote:
> > > > > +.IP
> > > > > +The level of support is selected by
> > > > > +.IR "(unsigned int) arg2" ,
> > > > 
> > > > We use (unsigned long) for arg2.
> > > 
> > > Hmmm, not quite sure how I came up with unsigned int here.  I'll just
> > > drop this: the type in the prctl() prototype is unsigned long anyway.
> > > 
> > > The type is actually moot in this case, since the valid values all fit
> > > in an unsigned int.
> > 
> > Passing an int doesn't require that the top 32-bit of the long are
> > zeroed (in case anyone writes the low-level SVC by hand).
> 
> Fair point, I was forgetting that wrinkle.  Anyway, the convention in
> this page seems to be that if the type is unsigned long, we don't
> mention it, because the prctl() prototype says that already.
> 
> Question: the glibc prototype for prctl is variadic, so surely any
> calls that don't explicitly cast the args to unsigned long are already
> theoretically broken?  The #defines (and 0) are all implicitly int.
> This probably affects lots of prctls.
> 
> We may get away with it because the compiler is almost certainly going
> to favour a mov over a ldr for getting small integers into regs, and mov
> <Wd> fortunately zeroes the top bits for us anyway.

So does LDR Wd.

Anyway, I think glibc (or my reading of it) has something like like:

  register long _x1 asm ("x1") = _x1tmp;

before invoking the SVC. I assume this would do the right conversion to
long. I can't tell about other libraries but I'd say it's their
responsibility to convert the args to long before calling the kernel's
prctl().

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
