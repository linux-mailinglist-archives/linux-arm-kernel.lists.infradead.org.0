Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD13DC63B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 15:37:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AKldxGZ3RC03q+Ve5WZquUVbQNMs0MaPMbbj6vQeuUk=; b=u8yj6K7enDJ7FF
	cX3aQyxMUSYqStW8vl4KWvJ16V8vLp5tWgvj+O5JYLZrA0x6vB+nbOgki6Z118m6FE6+Wpc+tg16N
	3JMSk3LhlF5bN3wG8zfBAlGUctRsamfgBsOfqHxNWRuutVgVTQX1Kk6DIUfgz2XNfdupFoSEptNis
	uFmYnBBhQ5B36G4Ah12IRAo4bLF+QvNcN0WJ8JaJbfu6ynzv/ofbUD4NK6btW3kMsClChEVhKaaBJ
	Vn2yAfmlkNI7a56Tj0VvpU/vZAnQXQ//1uF1RaMzsIODt82OSp/IaAVaOWiOcaPwsPxPOQR080roQ
	m1Cm8mzShjoQo2qyuspA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLSRA-0006Pu-OF; Fri, 18 Oct 2019 13:37:00 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLSR0-0006PL-Pz
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 13:36:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A62E03BB;
 Fri, 18 Oct 2019 06:36:39 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BBC903F6C4;
 Fri, 18 Oct 2019 06:36:36 -0700 (PDT)
Date: Fri, 18 Oct 2019 14:36:34 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 05/12] arm64: Basic Branch Target Identification support
Message-ID: <20191018133628.GC27757@arm.com>
References: <1570733080-21015-1-git-send-email-Dave.Martin@arm.com>
 <1570733080-21015-6-git-send-email-Dave.Martin@arm.com>
 <20191011151028.GE33537@lakrids.cambridge.arm.com>
 <4e09ca54-f353-9448-64ed-4ba1e38c6ebc@linaro.org>
 <20191011153225.GL27757@arm.com>
 <20191011154043.GG33537@lakrids.cambridge.arm.com>
 <20191011154444.GN27757@arm.com> <20191011160113.GO27757@arm.com>
 <20191011164159.GP27757@arm.com>
 <20191018110551.GB27759@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018110551.GB27759@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_063650_932496_32A29407 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 12:05:52PM +0100, Mark Rutland wrote:
> On Fri, Oct 11, 2019 at 05:42:00PM +0100, Dave Martin wrote:
> > On Fri, Oct 11, 2019 at 05:01:13PM +0100, Dave Martin wrote:
> > > On Fri, Oct 11, 2019 at 04:44:45PM +0100, Dave Martin wrote:
> > > > On Fri, Oct 11, 2019 at 04:40:43PM +0100, Mark Rutland wrote:
> > > > > On Fri, Oct 11, 2019 at 04:32:26PM +0100, Dave Martin wrote:

[...]

> > > > > > Either way, I feel we should do this: any function in a PROT_BTI page
> > > > > > should have a suitable landing pad.  There's no reason I can see why
> > > > > > a protection given to any other callback function should be omitted
> > > > > > for a signal handler.
> > > > > > 
> > > > > > Note, if the signal handler isn't in a PROT_BTI page then overriding
> > > > > > BTYPE here will not trigger a Branch Target exception.
> > > > > > 
> > > > > > I'm happy to drop a brief comment into the code also, once we're
> > > > > > agreed on what the code should be doing.
> > > > > 
> > > > > So long as there's a comment as to why, I have no strong feelings here.
> > > > > :)
> > > > 
> > > > OK, I think it's worth a brief comment in the code either way, so I'll
> > > > add something.
> > > 
> > > Hmm, come to think of it we do need special logic for a particular case
> > > here:
> > > 
> > > If we are delivering a SIGILL here and the SIGILL handler was registered
> > > with SA_NODEFER then we will get into a spin, repeatedly delivering
> > > the BTI-triggered SIGILL to the same (bad) entry point.
> > > 
> > > Without SA_NODEFER, the SIGILL becomes fatal, which is the desired
> > > behaviour, but we'll need to catch this recursion explicitly.
> > > 
> > > 
> > > It's similar to the special force_sigsegv() case in
> > > linux/kernel/signal.c...
> > > 
> > > Thoughts?
> > 
> > On second thought, maybe we don't need to do anything special.
> > 
> > A SIGSEGV handler registered with (SA_NODEFER & ~SA_RESETHAND) and that
> > dereferences a duff address would spin similarly.
> > 
> > This SIGILL case doesn't really seem different.  Either way it's a
> > livelock of the user task that doesn't compromise the kernel.  There
> > are plenty of ways for such a livelock to happen.
> 
> That sounds reasonable to me.

OK, I guess we can park this discussion for now.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
