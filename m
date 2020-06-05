Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 889211EF7FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 14:33:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UgH+Q9huikIfdoASgof3sJwhM/n3tDQn+uqsKrimms8=; b=krH/OPWoW/wUyb
	FRBni9OGWD47Ei7rmC8omsYQLIEd7wS220Yya0QsnqRvkyJPiN9HHQgOpzjb4azPWna7DKGNcoByS
	HOapMvJzMuX/Dx2cgEcV7gLqgwWC40KDlBP9vbhhNYwlMeT90KMDp9fV+3WeQo4ewxVLCuzYPzOYT
	lT+oGatH5180McQcnFUt+UxGFTQMogos208PoNFhvTVnC0Ry2zm2XIPpaFBl7xKdQnRShP4R3E7qy
	YWeeNTwOjozvR/ccexv2cu3yfI+S7pGCHZ9gpz8QGPrvhwNc0SlJnbrZSuMbk8Fg0uSBVanM1g+7O
	Tqx06HRugCDrTqhHRsKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhBX9-0003oB-L5; Fri, 05 Jun 2020 12:33:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhBX2-0003nY-1i
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 12:33:09 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B3512070B;
 Fri,  5 Jun 2020 12:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591360387;
 bh=fTr0sSYh7Hc07ktzO/6Or179HCQ8lKzraRQaQhXE8Wg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pie1bS2elTbUGrWm8eSC8WLLSAUTmcNBqa0+/qVE8K/6XcNU/EnyQwDVOnC6ZCYH7
 i5T3bWJHXjZgm3g1CGa09bkxxL0TU6PYgtRUTBTrV65eJGG69ADOSXV4zmyyPz1GL4
 i6kRtRd+ErupS634w251226PjPBlhNXb8yzY5+fo=
Date: Fri, 5 Jun 2020 13:33:03 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: Please help to confirm the risk if using TPIDRRO_EL0 to save CPU
 number, thanks.
Message-ID: <20200605123302.GA19936@willie-the-truck>
References: <1D289F1E6D91D2489524BBB0B8880A7DA1A39219@dggeml509-mbx.china.huawei.com>
 <20200601070311.GA8601@willie-the-truck>
 <20200605121029.GE5413@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605121029.GE5413@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_053308_130402_B3A1922E 
X-CRM114-Status: GOOD (  22.31  )
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
Cc: "fujun \(F\)" <oliver.fu@hisilicon.com>,
 Wuxuecheng <wuxuecheng@hisilicon.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Lixin \(Victor, Kirin\)" <victor.lixin@hisilicon.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 05, 2020 at 01:10:29PM +0100, Mark Brown wrote:
> On Mon, Jun 01, 2020 at 08:03:12AM +0100, Will Deacon wrote:
> > On Fri, May 29, 2020 at 09:03:37AM +0000, Lixin (Victor, Kirin) wrote:
> =

> > >    Intel optimized getcpu syscall on Linux/Android system by using vD=
SO, but
> > >    ARM doesn't do any optimizations for getcpu syscall.
> =

> > >    In Apple open source, TPIDRRO_EL0/TPIDRURO is used to save the CPU=
 number,
> > >    [1]https://opensource.apple.com/source/xnu/xnu-4570.1.46/osfmk/arm=
/cswitch.s.auto.html
> =

> > >    =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0Is there any risk if using TPIDRR=
O_EL0/TPIDRURO to implement
> > >    the vDSO for getcpu? Is there any possible to break any ARM ABI? C=
an you
> > >    help us to confirm the considerations?
> =

> > Do you have a use-case for high-performance getcpu() that isn't better
> > suited to rseq()?
> =

> I actually have an implementation of this that I'd been waiting for the
> end of the merge window to post, largely because I first heard of the
> use of restartable sequences for this after I'd already implemented the
> vDSO version - this stuff is not as discoverable as one might desire.
> It doesn't store the CPU ID directly in TPIDRRO but rather uses TPIDDRRO
> to store the offset of a per-CPU struct in the vDSO data in order to
> allow for the addition of further data in the future.  I'll post it
> today for discussion.
> =

> The latest version of the Mathieu's glibc integration patches is:
> =

>     https://lore.kernel.org/lkml/20200527185130.5604-3-mathieu.desnoyers@=
efficios.com/
> =

> The only things I can see where the vDSO does better are support for the
> node parameter of getcpu() and the ease of implementation for the users,
> the restartable sequences code was merged all the way back in v4.18 and
> it's still not used by any of the libcs as far as I can see.  The node
> to CPU mapping is static so I'm not sure how exciting that is, it could
> be looked up separately when processing data if it's important, but the =

> ease of use feels like something.
> =

> One important caveat with using TPIDRRO is that if KPTI is active then
> the KPTI trampoline uses TPIDRRO as a scratch register so unless we can
> find another register for scratch usage the user would need to give up
> the protections offered by KPTI or run on future hardware which can use
> E0PD instead.  This severely limits the usefulness on current systems.

We only trash TPIDRRO on entry, so I think you could repopulate it on every
exception from userspace and it *should* work with KPTI (famous last words!)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
