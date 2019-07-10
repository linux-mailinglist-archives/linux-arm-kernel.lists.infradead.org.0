Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A08A64431
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 11:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K5NLlf5xHRrzvW8MkutD0CACCUpG07hiXvTpwY1pzME=; b=kD/AdhYiwQTcLK
	CpFM0IMw2leM0G+OXcItBcBbaUNsrYLQtQE7xqyPbyjsRZTkqK5Ze1QfXwPcgr1hh68nMPyiHVuz0
	5pMT3AVGZ19wSXCNCNzYRVfbOYadLqVuYpnB12P+gq2kRHLrIy6zV1SRMBvZOuMn2OM8WSHdvbh6S
	VBXMyNRdcmE54uSmr0F6p1BT0B+I9Wu63A6yla61zN0R08RukQbPljFhDQs560NDmVEsBvTNAjj2j
	Vd35lf3nxIybXvfZqsN6RAr79Gu0KtdfDENQVes2zpA8NwACG62vb9jOzbwIVbPpm2PUtfeCT6zgF
	qdBcX9HFLxCSLlsp31Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl8gD-0003ok-Go; Wed, 10 Jul 2019 09:14:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl8ei-0003N6-Ps
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 09:13:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 830AE20665;
 Wed, 10 Jul 2019 09:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562749972;
 bh=rS1FXWun4tnZthZjP5gvCnsRMWjJHRs43/TtJSmyduM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1z2JsBfvr21gQUt5iPDz7NT2dAXcWemQ9w/74bx4HfLPPC6I7yVg06g5XX0Wfju1i
 A7YbWtlN91d+sVk5jnXkMYO7rltvml6cCoFWpUmywj+Czo+7nwKBl+DzPN77JGNAsg
 PKclIs28Fbusl8l9KEjTRFoEXRXj2I6/SdInl9L4=
Date: Wed, 10 Jul 2019 10:12:45 +0100
From: Will Deacon <will@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v7 10/25] arm64: compat: Add vDSO
Message-ID: <20190710091245.zztm6cpbix4objlq@willie-the-truck>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-11-vincenzo.frascino@arm.com>
 <CALAqxLXxE5B+vVLj7NcW8S05nhDQ+XSKVn=_MNDci667JDFEhA@mail.gmail.com>
 <20190710082750.mvm3e6myzpqsurga@willie-the-truck>
 <alpine.DEB.2.21.1907101057190.1758@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1907101057190.1758@nanos.tec.linutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_021254_456616_F162EBB5 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shuah Khan <shuah@kernel.org>,
 linux-arch@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Andre Przywara <andre.przywara@arm.com>, John Stultz <john.stultz@linaro.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Huw Davies <huw@codeweavers.com>, lkml <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Shijith Thotton <sthotton@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 10:58:25AM +0200, Thomas Gleixner wrote:
> On Wed, 10 Jul 2019, Will Deacon wrote:
> > On Tue, Jul 09, 2019 at 09:02:54PM -0700, John Stultz wrote:
> > > I tried to bisect things down a bit, but as some later fixes are
> > > required (at one point, date was returning the start epoch and never
> > > increasing), this hasn't worked too well. But I'm guessing since I
> > > see: "CROSS_COMPILE_COMPAT not defined or empty, the compat vDSO will
> > > not be built", and the system is half working, I'm guessing this is an
> > > issue with just the 32bit code failing.  While I can try to sort out
> > > the proper CROSS_COMPILE_COMPAT in my build environment, I assume
> > > userland shouldn't be crashing if that value isn't set.
> > > 
> > > Any chance this issue has already been raised?
> > 
> > First I've seen of it, although Vincenzo is likely to know better than me.
> > In the meantime, please can you share your .config?
> 
> I think the key is: CROSS_COMPILE_COMPAT not defined or empty. And then run
> 32bit userspace.

The part I was wondering about is whether the vectors page has been disabled
at the same time, since I'm fairly sure I've already been running with the
above (but I can easily double-check).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
