Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5C41F9AE1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:51:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPp6yU+jbu5ii7HZMaRseHnLTAS9Qn9BV86CvdhGmds=; b=isYx6FP5M7PvG4
	UXH2nuubKKhp3DqNFKyd2s6LjHBcI+OoIilnoscmam7qrWQReQWbKAF48Eu2XKGA65xkDZxPDV8bS
	Z5s0p/HFCu2RqeSB8lZ2SaJojeyP5JlUJWLlo0A2h7piBXndNAEVrzFVrEZTD3GjdzYqHI4zJS2jm
	+Nc+uoTXS/x3gUKhy8wKMtoqN8ugZ5qVVSzEOZO4c5erA+7OEQGOg7KrRXIbgw+b4+4YkZ0E35u9P
	wQ2SXMYLwQ8S+OgJRRqScIu+hTQc6J/WlM5L5zxHaLwFrJZA6n/+mxm0kulCwZLBjDZHhvnAZeEmR
	lHcU2oBhwXGxIc7SLPzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqSg-0000D9-BM; Mon, 15 Jun 2020 14:51:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqSF-0008W2-QD
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 14:51:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 11A7E31B;
 Mon, 15 Jun 2020 07:51:19 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 11A833F6CF;
 Mon, 15 Jun 2020 07:51:17 -0700 (PDT)
Date: Mon, 15 Jun 2020 15:51:16 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [RFC PATCH v2 6/6] prctl.2: Add tagged address ABI control
 prctls (arm64)
Message-ID: <20200615145115.GL25945@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-7-git-send-email-Dave.Martin@arm.com>
 <20200609172232.GA63286@C02TF0J2HF1T.local>
 <20200610100641.GF25945@arm.com> <20200610152634.GJ26099@gaia>
 <20200610164209.GH25945@arm.com> <20200610174205.GL26099@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610174205.GL26099@gaia>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_075119_933454_7AC7C953 
X-CRM114-Status: GOOD (  19.66  )
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

On Wed, Jun 10, 2020 at 06:42:05PM +0100, Catalin Marinas wrote:
> On Wed, Jun 10, 2020 at 05:42:09PM +0100, Dave P Martin wrote:
> > On Wed, Jun 10, 2020 at 04:26:34PM +0100, Catalin Marinas wrote:
> > > On Wed, Jun 10, 2020 at 11:06:42AM +0100, Dave P Martin wrote:
> > > > On Tue, Jun 09, 2020 at 06:22:32PM +0100, Catalin Marinas wrote:
> > > > > On Wed, May 27, 2020 at 10:17:38PM +0100, Dave P Martin wrote:
> > > > > > +.IP
> > > > > > +The level of support is selected by
> > > > > > +.IR "(unsigned int) arg2" ,
> > > > > 
> > > > > We use (unsigned long) for arg2.
> > > > 
> > > > Hmmm, not quite sure how I came up with unsigned int here.  I'll just
> > > > drop this: the type in the prctl() prototype is unsigned long anyway.
> > > > 
> > > > The type is actually moot in this case, since the valid values all fit
> > > > in an unsigned int.
> > > 
> > > Passing an int doesn't require that the top 32-bit of the long are
> > > zeroed (in case anyone writes the low-level SVC by hand).
> > 
> > Fair point, I was forgetting that wrinkle.  Anyway, the convention in
> > this page seems to be that if the type is unsigned long, we don't
> > mention it, because the prctl() prototype says that already.
> > 
> > Question: the glibc prototype for prctl is variadic, so surely any
> > calls that don't explicitly cast the args to unsigned long are already
> > theoretically broken?  The #defines (and 0) are all implicitly int.
> > This probably affects lots of prctls.
> > 
> > We may get away with it because the compiler is almost certainly going
> > to favour a mov over a ldr for getting small integers into regs, and mov
> > <Wd> fortunately zeroes the top bits for us anyway.
> 
> So does LDR Wd.
> 
> Anyway, I think glibc (or my reading of it) has something like like:
> 
>   register long _x1 asm ("x1") = _x1tmp;
> 
> before invoking the SVC. I assume this would do the right conversion to
> long. I can't tell about other libraries but I'd say it's their
> responsibility to convert the args to long before calling the kernel's
> prctl().

Ignore me.  I was worrying that glibc would propagate junk in the high
bits of int arguments, due to treating them as longs.  Actually, it
will, but it doesn't matter where we explicitly cast the argument to int
inside the kernel (thanks as usual to -fno-strict-overflow).

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
