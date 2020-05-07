Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5D31C9502
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IULcUF4VBxWDo5YIGkmD2DyyMJADIrhNOJf+mpb8bUw=; b=D5ZXyd0yaRgkru
	HSa4uOJ0VDprSbcVTEYZnYYT8+hx+D8JrMT0M3UWKQVf5cKMoTWPWNEgox7UFXeV9i70mtHUuOrPy
	Sw3+E1dsICM/+qKGQTVmPKIrdUvHPKoCSwkEkRTWKGV5Xfge0HbotVOETz2OnCUsxmyrkmmG2HpyA
	X+LkUBIDsL1Zx+NgaDH6vkfnRNxpJ+izEvKruTOJvoOVKFLp3IOa25XMBpFjccAGvG6FjjMaklFqm
	HCtxtK5JZZWROP57MTZH7NfC2X7YEl/QDD87kcDT5G181Y6GOTrK0OxOZX9bzbp7kBwVCgD/r3Uv9
	v9i1nI5OC31gUtL/kpew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiPl-0004L6-E1; Thu, 07 May 2020 15:26:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiPa-0004KI-Sw
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:26:12 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EB4F6207DD;
 Thu,  7 May 2020 15:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588865170;
 bh=q0FLiHWvF6MdHvah6LHVOKT9bqgC/iVTuu0DTZO2NUw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1lingzFi9Aq5ieh2Mdk6ckr14SOAYY4BZWzAEdI5vz2eDQ6OTso6FIkiBXD4EL/p2
 DmdP9gdDUTvjs+3jlOXEdcUP4jK42/zSfU1GET0KwDB6g0HI2qaj1koW9sJx1wDXxM
 4VaBzTA+CqU3tb4KOOndd4lpvzskCKpVnNf0NlpI=
Date: Thu, 7 May 2020 16:26:05 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 00/11] arm64: BTI kernel and vDSO support
Message-ID: <20200507152605.GA2648@willie-the-truck>
References: <20200506195138.22086-1-broonie@kernel.org>
 <20200507143332.GB1422@willie-the-truck>
 <20200507143547.GC1422@willie-the-truck>
 <20200507150713.GA6183@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507150713.GA6183@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_082610_952708_5D7D4130 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 04:07:13PM +0100, Mark Brown wrote:
> On Thu, May 07, 2020 at 03:35:47PM +0100, Will Deacon wrote:
> > On Thu, May 07, 2020 at 03:33:32PM +0100, Will Deacon wrote:
> 
> > > Bugger, I'm still getting warnings (clang 11.0.1), but from an allmodconfig
> > > build now:
> 
> > >   warning: some functions compiled with BTI and some compiled without BTI
> > >   warning: not setting BTI in feature flags
> 
> > > (repeated many, many times).
> 
> > > I'll try to get you some more info.
> 
> Where are you getting this clang from?  When I test using clang 11 from
> the LLVM apt repos right now it seems fine, and clang 11 doesn't seem to
> have been released yet so I'm guessing this is some kind of snapshot.

I'm using a build of:

https://android.googlesource.com/toolchain/llvm-project/+/b397f81060ce6d701042b782172ed13bee898b79

> > Quick look at the log suggests that these are caused by HDRTEST, whatever
> > that is.
> 
> AFAICT that's something that's supposed to be checking for include
> guards and not doing anything fancy...  I can't think what could cause
> this on a per-function basis.

Indeed, sorry for jumping the gun on that diagnosis.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
