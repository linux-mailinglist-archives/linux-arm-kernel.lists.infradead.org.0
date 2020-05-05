Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A541C5384
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+LeMCwly+yOGwqPc9bU+7Q+WvDJesKXKuzx9M0P7U8=; b=GhcgRn4ra20d6o
	lpH6zRkbiQauuBICJo4sdM/mmOVecq9pGOB0W7BdCHBh/3NBCYX7eQvUoQfsIEe1oKboLKq9yj5Z0
	3z7MFwUzYkPsyPTS/g3tbQxATI7ci/wYkU2Vnupf9Q5hInN0QmqbVMtM1MwdTI6looSrf8wcDnOa8
	yBp1iaPS7AHwBlOUI2QRk75BhemUF58s2GIKiCOZuntQkOZebcZ8UxApLv/3lp7zkZMj6KXsD+Amx
	5b9e+gakbAaWlxq7TYhtyzXLhmGjv0MqUVS25XBJC4PDsrdGa8jxKcXrSQRTvkjPnMb4db6s6NUTO
	lp6gbVSqQzo/MLfRXJnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVv3g-0007Lu-4T; Tue, 05 May 2020 10:44:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVv3a-0007LS-6U
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:44:11 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5E07206A5;
 Tue,  5 May 2020 10:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588675449;
 bh=GEhF2tEU4XkWefXPE5udcRA2Y0YzSMAJ2YekTBmZRN8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=umfSfVmAzQRn1jZ3bKYhL7bz38WXiQuVIirVZy0mTX6WcttQ58u31IvMAtuwooHlI
 zAg67Rt+mmAcMu69MDpIYRff/zJipCTQzdMaBVWDy4jcVv2gFlg5jJGS3SGHf7E1rl
 7ZzUXD/6ZKX4GNHL37htRHoduxFXkj5zNfDqSsKA=
Date: Tue, 5 May 2020 11:44:06 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC PATCH] arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature
Message-ID: <20200505104404.GB19710@willie-the-truck>
References: <20200329141258.31172-1-ardb@kernel.org>
 <20200330135121.GD10633@willie-the-truck>
 <CAMj1kXEZARZ1FYZFt4CZ33b-A64zj1JswR0OAHw-eZdzkxiEOQ@mail.gmail.com>
 <20200330140441.GE10633@willie-the-truck>
 <CAMj1kXHJ5n-EZMgGSYm+ekO-e7XTp7fv-FZ2NJ1EttJ=-kc8fw@mail.gmail.com>
 <20200330142805.GA11312@willie-the-truck>
 <CAMj1kXFcvHcU2kzP=N4bHgSkw_eE7wvbPJ=7w1pNeCWHbcPvTQ@mail.gmail.com>
 <20200402113033.GD21087@mbp>
 <CAMj1kXGLMWqTHbWftoAq=WdVqyf+i=6SvsMogzWHh6SL3b=4sQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXGLMWqTHbWftoAq=WdVqyf+i=6SvsMogzWHh6SL3b=4sQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_034410_256670_7A286D0B 
X-CRM114-Status: GOOD (  16.63  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 kernel-hardening@lists.openwall.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 10:58:51AM +0200, Ard Biesheuvel wrote:
> On Thu, 2 Apr 2020 at 13:30, Catalin Marinas <catalin.marinas@arm.com> wrote:
> > On Mon, Mar 30, 2020 at 04:32:31PM +0200, Ard Biesheuvel wrote:
> > > On Mon, 30 Mar 2020 at 16:28, Will Deacon <will@kernel.org> wrote:
> > > > Fair enough, but I'd still like to see some numbers. If they're compelling,
> > > > then we could explore something like CONFIG_OF_DMA_DEFAULT_COHERENT, but
> > > > that doesn't really help the kconfig maze :(
> >
> > I'd prefer not to have a config option, we could easily break single
> > Image at some point.
> >
> > > Could we make this a runtime thing? E.g., remap the entire linear
> > > region down to pages under stop_machine() the first time we probe a
> > > device that uses non-coherent DMA?
> >
> > That could be pretty expensive at run-time. With the ARMv8.4-TTRem
> > feature, I wonder whether we could do this lazily when allocating
> > non-coherent DMA buffers.
> >
> > (I still hope there isn't a problem at all with this mismatch ;)).
> >
> 
> Now that we have the pieces to easily remap the linear region down to
> pages, and [apparently] some generic infrastructure to manage the
> linear aliases, the only downside is the alleged performance hit
> resulting from increased TLB pressure. This is obviously highly
> micro-architecture dependent, but with Xgene1 and ThunderX1 out of the
> picture, I wonder if the tradeoffs are different now. Maybe by now, we
> should just suck it up (Note that we had no complaints afaik regarding
> the fact that we map the linear map down to pages by default now)

I'd be in favour of that fwiw.

Catalin -- did you get anything back from the architects about the cache
hit behaviour?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
