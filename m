Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72622D4497
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 17:41:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w3UN/si+Z60AFI3NzDCuPQYQ2ic+fVwYudKLtl7KthE=; b=ZDRinWhiFhrrvQ
	go1NecMj9opvruSQwx9B+8hdEuiXvaqXeffHOEeP8n2NCOldGriM/bCrT3e1KUlT4omrWRY5ufsmP
	4UO4NwYxfgJfTq8NT8zgHQo0d+KCnSAyCmD7EnK03pGnlaZR7Ml+g1iKlzzEZFgX8s5IGec0utE4O
	JGRePR4EhpSEtuTrBXvx1O/mavkFzO/S1cMrORIFBN5sOPe2065obA1UpXg9dSmagb/2dnh9cFtUk
	T950V2/va4Bp1Nvx4mOlowJ0yShkFyTGgzrlkRNLer8RIhlF29j1GDFgvmG1toOXuUejyMEX0FJbc
	lde+4BSPkiD+u5Wa3zkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIx2J-00074I-Iz; Fri, 11 Oct 2019 15:40:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIx29-00073r-Hg
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 15:40:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9B135142F;
 Fri, 11 Oct 2019 08:40:48 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B05D43F68E;
 Fri, 11 Oct 2019 08:40:45 -0700 (PDT)
Date: Fri, 11 Oct 2019 16:40:43 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v2 05/12] arm64: Basic Branch Target Identification support
Message-ID: <20191011154043.GG33537@lakrids.cambridge.arm.com>
References: <1570733080-21015-1-git-send-email-Dave.Martin@arm.com>
 <1570733080-21015-6-git-send-email-Dave.Martin@arm.com>
 <20191011151028.GE33537@lakrids.cambridge.arm.com>
 <4e09ca54-f353-9448-64ed-4ba1e38c6ebc@linaro.org>
 <20191011153225.GL27757@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011153225.GL27757@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_084049_673343_125BCAEA 
X-CRM114-Status: GOOD (  21.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Fri, Oct 11, 2019 at 04:32:26PM +0100, Dave Martin wrote:
> On Fri, Oct 11, 2019 at 11:25:33AM -0400, Richard Henderson wrote:
> > On 10/11/19 11:10 AM, Mark Rutland wrote:
> > > On Thu, Oct 10, 2019 at 07:44:33PM +0100, Dave Martin wrote:
> > >> @@ -730,6 +730,11 @@ static void setup_return
> > >>  	regs->regs[29] = (unsigned long)&user->next_frame->fp;
> > >>  	regs->pc = (unsigned long)ka->sa.sa_handler;
> > >>  
> > >> +	if (system_supports_bti()) {
> > >> +		regs->pstate &= ~PSR_BTYPE_MASK;
> > >> +		regs->pstate |= PSR_BTYPE_CALL;
> > >> +	}
> > >> +
> > > 
> > > I think we might need a comment as to what we're trying to ensure here.
> > > 
> > > I was under the (perhaps mistaken) impression that we'd generate a
> > > pristine pstate for a signal handler, and it's not clear to me that we
> > > must ensure the first instruction is a target instruction.
> > 
> > I think it makes sense to treat entry into a signal handler as a call.  Code
> > that has been compiled for BTI, and whose page has been marked with PROT_BTI,
> > will already have the pauth/bti markup at the beginning of the signal handler
> > function; we might as well verify that.
> > 
> > Otherwise sigaction becomes a hole by which an attacker can force execution to
> > start at any arbitrary address.
> 
> Ack, that's the intended rationale -- I also outlined this in the commit
> message.

Ah, sorry. I evidently did not read that thoroughly enough.

> Does this sound reasonable?
> 
> 
> Either way, I feel we should do this: any function in a PROT_BTI page
> should have a suitable landing pad.  There's no reason I can see why
> a protection given to any other callback function should be omitted
> for a signal handler.
> 
> Note, if the signal handler isn't in a PROT_BTI page then overriding
> BTYPE here will not trigger a Branch Target exception.
> 
> I'm happy to drop a brief comment into the code also, once we're
> agreed on what the code should be doing.

So long as there's a comment as to why, I have no strong feelings here.
:)

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
