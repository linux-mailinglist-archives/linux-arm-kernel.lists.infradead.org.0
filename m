Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C8F459BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 11:59:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bC6O2HU2jYUdjTg9QMkpMAhDQ99Y2dozfoAZzlzRthM=; b=iedZybCOaqAYwc
	eBIYxzPzYx670HxGbXYa5uJbE76JY6KP6sh14g/lP+sJ1FV5bh2fEJHActQnvPiD25iA4ovAMdrYD
	EXWi4YseAPTKCbCMwilNzjAUAZ3vgKr0HrrP2n+vE/GBxXpkTqtOaI7ZBRCU/UtmMfrjsfsPvcswE
	O/v8WgFaclh6Z0OoDcf/QVsDqaF8YLpWJ+1BCSixrVMR5lZqk9j1WICvfx9LPNSW2cUTrl2YT829p
	Ke/Pc0nTpWNoZGujQM8QNfKpaIeLGokaoTCW54DH5vQsnPkHSAPkhL1yB2TC5HkE6baHW+CqqdHFW
	9m9Kr+m+D6nwBSOoOwlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbizD-0003JG-Bk; Fri, 14 Jun 2019 09:59:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbiyw-0003In-2z
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 09:58:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7ABB72B;
 Fri, 14 Jun 2019 02:58:49 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3357A3F718;
 Fri, 14 Jun 2019 03:00:32 -0700 (PDT)
Date: Fri, 14 Jun 2019 10:58:46 +0100
From: Will Deacon <will.deacon@arm.com>
To: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
Subject: Re: [RFC] Disable lockref on arm64
Message-ID: <20190614095846.GC10506@fuggles.cambridge.arm.com>
References: <20190502231858.GB13168@dc5-eodlnx05.marvell.com>
 <CAHk-=wiEahkwDXpoy=-SzJHNMRXKVSjPa870+eKKenufhO_Hgw@mail.gmail.com>
 <20190506061100.GA8465@dc5-eodlnx05.marvell.com>
 <20190506181039.GA2875@brain-police>
 <20190518042424.GA28517@dc5-eodlnx05.marvell.com>
 <CAKv+Gu9U9z3iAuz4V1c5zTHuz1As8FSNGY-TJon4OLErB8ts8Q@mail.gmail.com>
 <20190522160417.GF7876@fuggles.cambridge.arm.com>
 <20190612040933.GA18848@dc5-eodlnx05.marvell.com>
 <20190612093151.GA11554@brain-police>
 <20190614070914.GA21961@dc5-eodlnx05.marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614070914.GA21961@dc5-eodlnx05.marvell.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_025850_223644_8A8F7E18 
X-CRM114-Status: GOOD (  23.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Kees]

On Fri, Jun 14, 2019 at 07:09:26AM +0000, Jayachandran Chandrasekharan Nair wrote:
> On Wed, Jun 12, 2019 at 10:31:53AM +0100, Will Deacon wrote:
> > On Wed, Jun 12, 2019 at 04:10:20AM +0000, Jayachandran Chandrasekharan Nair wrote:
> > > Now that the lockref change is mainline, I think we need to take another
> > > look at this patch.
> > 
> > Before we get too involved with this, I really don't want to start a trend of
> > "let's try to rewrite all code using cmpxchg() in Linux because of TX2".
> 
> x86 added a arch-specific fast refcount implementation - and the commit
> specifically notes that it is faster than cmpxchg based code[1].
> 
> There seems to be an ongoing effort to move over more and more subsystems
> from atomic_t to refcount_t(e.g.[2]), specifically because refcount_t on
> x86 is fast enough and you get some error checking atomic_t that does not
> have.

Correct, but there are also some cases that are only caught by
REFCOUNT_FULL.

> > At some point, the hardware needs to play ball. However...
> 
> Even on a totally baller CPU, REFCOUNT_FULL is going to be slow :)
> On TX2, this specific benchmark just highlights the issue, but the
> difference is significant even on x86 (as noted above).

My point was more general than that. If you want scalable concurrent code,
then you end up having to move away from the serialisation introduced by
locking. The main trick in the toolbox is cmpxchg() so, in the absence of
a zoo of special-purpose atomic instructions, it really needs to do better
than serialising.

> > I was hoping we could use LDMIN/LDMAX to maintain the semantics of
> > REFCOUNT_FULL, but now that I think about it I can't see how we could keep
> > the arithmetic atomic in that case. Hmm.
> 
> Do you think Ard's patch needs changes before it can be considered? I
> can take a look at that.

I would like to see how it performs if we keep the checking inline, yes.
I suspect Ard could spin this in short order.

> > Whatever we do, I prefer to keep REFCOUNT_FULL the default option for arm64,
> > so if we can't keep the semantics when we remove the cmpxchg, you'll need to
> > opt into this at config time.
> 
> Only arm64 and arm selects REFCOUNT_FULL in the default config. So please
> reconsider this! This is going to slow down arm64 vs. other archs and it
> will become worse when more code adopts refcount_t.

Maybe, but faced with the choice between your micro-benchmark results and
security-by-default for people using the arm64 Linux kernel, I really think
that's a no-brainer. I'm well aware that not everybody agrees with me on
that.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
