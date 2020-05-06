Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 990621C754E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vjakshwxm+q3qHmaVO/PTqSJX2pBrU3o94vpo6RyXEU=; b=IGY612pETdH4pI
	VopyvQABE/hfKTMkdcrsOQdYWgXrB0LvHVbUypMl201jRb8A1IvPP/lcwrd2gVZjUJjW+5hXh/E3J
	2BvZJqWOKpc8rx18UjMrzw9OvWgnEnkOe5mAGBPvEHnMX5+K5sn2gJ2GU6xlggF4rSVZ/K8PDb5BW
	OYdlc7wnh2BKAKaPfyHg1hJkYHU/c/pyHsNQXB0cRq0cYjgXEtYgrpKCqwRKqPEW+VJhZht5vVfnY
	XtG23EWyeLnuwfY8V1kcOgpGqjn6Ds5fbOzZVXy1Fx0sEA5af/l+Wqv5+GhIO4O/3jT3pBF51OR+N
	7xLbv3PI+/yyVcpEXLVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWMHM-0000nn-KY; Wed, 06 May 2020 15:48:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWMHF-0000mp-RX
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 15:48:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CFAD72080D;
 Wed,  6 May 2020 15:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588780084;
 bh=9ZCITufG3hqiru0D/g4S8eWreL/QSqpdaMvT4QBUMOI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GUCfNddZCk3orAHyUEaalk3vkyQ3h/TbCgiAKxnL58f9HNFH7QgL28bE8A+rXFoho
 mecAOpZ23JpxjT0D+s3L7uTin/jsSrLu9MZU8VnogBWoGm3ECoQmQ8xLHY4eZzFA2M
 DOYF4rabDywogzGCcDrh15hKOZbp1sku/2Q+QH/A=
Date: Wed, 6 May 2020 16:48:00 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 02/10] arm64: asm: Override SYM_FUNC_START when
 building the kernel with BTI
Message-ID: <20200506154759.GC12919@willie-the-truck>
References: <20200505145642.GA24239@willie-the-truck>
 <20200505151806.GG5377@sirena.org.uk>
 <20200505160852.GF24239@willie-the-truck>
 <20200505172100.GI5377@sirena.org.uk>
 <20200506071025.GA7021@willie-the-truck>
 <20200506104152.GA5299@sirena.org.uk>
 <20200506105006.GC8043@willie-the-truck>
 <20200506134021.GU30377@arm.com>
 <20200506144543.GB12919@willie-the-truck>
 <20200506152552.GE5299@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506152552.GE5299@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_084805_911018_7CDB5460 
X-CRM114-Status: GOOD (  22.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 04:25:52PM +0100, Mark Brown wrote:
> On Wed, May 06, 2020 at 03:45:44PM +0100, Will Deacon wrote:
> > On Wed, May 06, 2020 at 02:40:21PM +0100, Dave Martin wrote:
> 
> > > I really don't think we should fudge this: if the linker doesn't think
> > > the inputs are BTI-enabled then the compiler or linker is broken, or
> > > there's a bug in the kernel source tree.
> 
> > > The checking done by the toolchain is important -- if we want to
> > > suppress it, we should have an override option than depends on BROKEN
> > > (because yes, you're explicitly risking a broken kernel if you do this).
> 
> > > The fact that all gcc and clang both screwed this up in various ways at
> > > some point is not our fault, or our problem, providing that fixes are
> > > available...
> 
> > > Am I being too paranoid?
> 
> That's my position too, we want the warning - I think if we're going to
> do any handling it should either be to prevent use of kernel BTI
> entirely or to do what Will was originally suggesting and print some
> explanatory text somewhere.  My inclination is that the former is safer
> and fits more with the general architecture approach to this sort of
> thing.
> 
> > I don't think so, but I'm just looking for an answer to "What do we do if
> > people start running into this warning?". As it stands, it sounds like it's
> > unlikely that they will, but if they do then we're going to have to hack
> > something to make it go away.
> 
> It's possible that this e-mail thread showing up in searches might well
> answer people's questions anyway (it is going to be one of the few hits
> for the warning ATM).  How about we deal with this when we get to it, or
> at least as a followup?

Yes, I don't think it's worth writing patches for this now, just wanted
to get a vague idea of our options if people start complaining.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
