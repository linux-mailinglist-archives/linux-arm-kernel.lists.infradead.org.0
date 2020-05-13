Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 988EF1D1B91
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 18:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOxQXg5IsOMLdn8hf+jZxnuLMPT22jT2QX7b2SvdALI=; b=jP8IZ1Wpa8nUcg
	XU6/YPSZcVDNxunhVTuP12yl5/b5awUlbmS74zbYCbX/QCL5BOFoW3a7stgV7WEa4LrtwjGiFDQLt
	1BhCpA1DYuTX59JCMvRtb7xvgI0xO8V9Uq4vvUa+ABhRqKuEN8Pk1QJDGh8WeSoT6EXOCDrCmx2VK
	1mgTt0vCw3xdSJadeYPslBwqLbbNVuJLu/qecgdVLwykximlxcTXOup2qqKHx4LsUGjAu2iK8EOYy
	fr+oQi55EKiZuWLat5stR7VOZkeHlYEKfNMsWhUz3cyXyY4KXsi6VdvZ5k9MOfqzZ/5uBAPszc00i
	XkwyHaOrhp2AsLkYWW/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYuZq-0002Bj-CL; Wed, 13 May 2020 16:49:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYuZh-0002BJ-Jv
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 16:49:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DED6531B;
 Wed, 13 May 2020 09:49:40 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3B3913F305;
 Wed, 13 May 2020 09:49:40 -0700 (PDT)
Date: Wed, 13 May 2020 17:49:38 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: bti: Fix support for userspace only BTI
Message-ID: <20200513164937.GW21779@arm.com>
References: <20200512092155.56931-1-broonie@kernel.org>
 <20200512103908.GB3021@willie-the-truck>
 <20200512110502.GC5110@sirena.org.uk>
 <20200513144624.GR21779@arm.com>
 <20200513150822.GK4803@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513150822.GK4803@sirena.org.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_094941_696968_9B2F83D5 
X-CRM114-Status: GOOD (  24.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 04:08:22PM +0100, Mark Brown wrote:
> On Wed, May 13, 2020 at 03:46:25PM +0100, Dave Martin wrote:
> > On Tue, May 12, 2020 at 12:05:02PM +0100, Mark Brown wrote:
> 
> > > To enable BTI for the vDSO we need the vDSO to be built with BTI
> > > annotations.  Currently the CFLAGS are the same for the vDSO and the
> > > kernel, we could arrange to allow them to differ but since the most
> > > likely reason why the user has userspace but not kernel BTI is that
> > > their compiler isn't suitable it seemed like disproportionate effort
> > > for a most likely small audience.
> 
> > The situation where the user is stuck on a binary vendor kernel built
> > using obsolete or wrongly configured tools doesn't sound that unlikely
> > to me.
> 
> They'd need to be stuck on a binary vendor kernel which is sufficiently
> new to have BTI support but using toolchains that are sufficiently old
> to be unable to BTI the kernel (if their vendor went out of their way to
> disable BTI then that's another issue).  My guess is that people will
> tend to update major versions of these at relatively similar times, and
> hopefully if people are going to the trouble of backporting BTI they'll
> also grab the toolchain bits since it's substantially more useful if you
> can compile userspace.

Yeah, just playing devil's advocate.

> > When the vdso was all asm, we could easily have solved this by manually
> > annotating it ... I guess that's the price of progress, unless anyone
> > has a bright idea :/
> 
> Which is the other bit - if we don't trust the toolchain to build the
> kernel then we probably ought to have concerns about the C bits of the
> vDSO as well.  Even if they're fine now some future vDSO change could
> cause this to explode.

Exactly.  So I guess you're right: no kernel BTI, no vDSO BTI.  It's
a bit annoying, but there it is.

I can't argue that the best fix for broken tools isn't to fix the
tools ;)

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
