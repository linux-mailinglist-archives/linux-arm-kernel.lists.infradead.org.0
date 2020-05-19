Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1FC1D9B13
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 17:25:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6MVYulAzplN5PK2itWeAxLFoWpVzcCcG7SSp7SAZJ0=; b=gJKXprUXokGuLi
	uhpQtVV4ndpIcZgqlZ7dOC1rbb/M84urbIZ4gUSjsqrCNSToGcs5LSWfqyG488snqpybCkkvLrP4J
	b/6pXNFO9u/QAmdsSHCQ6qeIcy30135LHhhowbFaatLWVekPX7AMV+L8cJ4JkBSf+GbSZDHAjtfGm
	KkWlITupmhLTgMz1hyYP9dZj4AIjxDUH84LKR9b8ispWEUCcELeYcV9ygSo8AmaG0tlNvffGN4WdL
	vqSmW2OgQ5GJ0MnBha9TBODSuQXbY9G5FeBOxX5B/Ibnormq35NBCmW215V068lSvIyKefNHISuxM
	966fgVaN4yupJEw7js2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb47H-0007z3-WF; Tue, 19 May 2020 15:25:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb471-0007x3-1V
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 15:25:00 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8944D20809;
 Tue, 19 May 2020 15:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589901898;
 bh=xxCBLEEH+HqeK9UH/0I5OXKpHOOHU2mAFVzgfdcSb10=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J835dLu9cjmPyCm+3/QLdU2WB+ZGYKYQTA5u/GiZNJDLD72ODcuRW1rW1UJLNt+My
 DP8nyHOnKmYnezntG2O2XRWH03isbIUof+Pf5MWt7MOwdcIp5EcpWmczmkatJflsVT
 4RpkjlBLvZ3V3aBtNBKLM75szsSlQEu3moxKpP8Y=
Date: Tue, 19 May 2020 16:24:54 +0100
From: Will Deacon <will@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 3/3] arm64: vdso: Fix CFI directives in sigreturn
 trampoline
Message-ID: <20200519152453.GA15811@willie-the-truck>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-4-will@kernel.org>
 <20200519130930.GO10636@e103592.cambridge.arm.com>
 <20200519133941.GB14570@willie-the-truck>
 <20200519135537.GG5031@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519135537.GG5031@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_082459_102006_FC515104 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tamas Zsoldos <Tamas.Zsoldos@arm.com>, Mark Brown <broonie@kernel.org>,
 "kernel-team@android.com" <kernel-team@android.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Daniel Kiss <Daniel.Kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 02:55:37PM +0100, Dave Martin wrote:
> On Tue, May 19, 2020 at 02:39:41PM +0100, Will Deacon wrote:
> > The gas docs say:
> > 
> > 	"Mark current function as signal trampoline."
> > 
> > which is really informative.
> 
> Well, we've demonstrated that identifying the signal frame is a gross
> bodge.  The cfi annotation should provide a reliable way to identify the
> signal frame, but I guess it was too poorly specified or came too late
> to prevent the bodges from spreading.
> 
> Since this seems to be a nonstandard invention, I wouldn't hold out
> much hope of finding a usable spec.
> 
> Of course, something might be using it now, so I guess we have to leave
> it.

I had a quick look at libstdc++ (the horror!) and it looks like the DWARF
backend in there /does/ make use of this information as part of the
_Unwind_GetIPInfo() function:

https://refspecs.linuxfoundation.org/LSB_5.0.0/LSB-Core-generic/LSB-Core-generic/baselib--unwind-getipinfo.html

*ip_before_insn is set to 1 or 0 depending on whether or not the PC
corresponds to a function annotated with .cfi_signal_frame. So I think
the code in libstdc++-v3/libsupc++/eh_personality.cc doesn't need the
mysterious NOP at all!

Unfortunately, it looks like the LLVM libc++ doesn't use this, and instead
calls _Unwind_GetIP():

https://refspecs.linuxfoundation.org/LSB_5.0.0/LSB-Core-generic/LSB-Core-generic/baselib--unwind-getip.html

and unconditionally subtracts 1 in libcxxabi/src/cxa_personality.cpp,
meaning that the NOP is necessary.

So, after giving myself a splitting headache, it looks like:

  1. We need the mysterious NOP for LLVM
  2. We could drop .cfi_signal_frame but it's harmless to keep it
  3. We need the .cfi_def_cfa directive to locate the frame record, as
     .cfi_signal_frame doesn't do very much at all.

Make sense? If so, I'll spin a v2 of the patches along with a comment
trying to summarise some of this.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
