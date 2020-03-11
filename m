Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BC6181DD5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 17:29:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1AFUHSsaV60TUnXiyOSNOGp/Ap1+bMrT7uQFsktuNtc=; b=B3jvkt1z8P+w+A
	5YocO7VS/9CivwxMVJOJ4xL0VaRq0SI/brsAMhsN6/zxs3e+FFG/I5oMpVtu6b4nrjixNXhbXdw19
	GmZOFaVxnBv4LRAPmU8qhB6HG1tNzXXVB76gyuOLGesg4Mf+M5z9f6UHSh/S+WdgB55mq/XHj4gSF
	BQXgodDifQGj8WR4+BOEdMq6W4e+VbJaZwz7ZzCEC174n0IuuX5b57TWB+K2d7/DU06828zYJozuM
	hGM31oubka99os/cn1CCXNm0Gp9k4EAKjIWMg5DFhPDT5WnSttvQR51eVGZvthpmPzEmdBBrNLMrD
	Abgu2YQPGU647I4Te+SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4EN-0000Da-EV; Wed, 11 Mar 2020 16:29:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4EC-0000Cy-PO
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 16:29:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B8FD47FA;
 Wed, 11 Mar 2020 09:29:03 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B93C63F6CF; Wed, 11 Mar 2020 09:29:00 -0700 (PDT)
Date: Wed, 11 Mar 2020 16:28:58 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v8 00/11] arm64: Branch Target Identification support
Message-ID: <20200311162858.GK3216816@arrakis.emea.arm.com>
References: <20200227174417.23722-1-broonie@kernel.org>
 <20200306102729.GC2503422@arrakis.emea.arm.com>
 <20200309210505.GM4101@sirena.org.uk>
 <20200310124226.GC4106@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310124226.GC4106@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_092904_861388_7B124F34 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H . J . Lu " <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 12:42:26PM +0000, Mark Brown wrote:
> On Mon, Mar 09, 2020 at 09:05:05PM +0000, Mark Brown wrote:
> > On Fri, Mar 06, 2020 at 10:27:29AM +0000, Catalin Marinas wrote:
> 
> > > Does this series affect uprobes in any way? I.e. can you probe a landing
> > > pad?
> 
> > You can't probe a landing pad, uprobes on landing pads will be silently
> > ignored so the program isn't disrupted, you just don't get the expected
> > trace from those uprobes.  This isn't new with the BTI support since
> > the landing pads are generally pointer auth instructions, these already
> > can't be probed regardless of what's going on with this series.  It's
> > already on the list to get sorted.
> 
> Sorry, I realized thanks to Amit's off-list prompting that I was testing
> that I was verifying with the wrong kernel binary here (user error since
> it took me a while to sort out uprobes) so this isn't quite right - you
> can probe the landing pads with or without this series.

Can we not change aarch64_insn_is_nop() to actually return true only for
NOP and ignore everything else in the hint space? We tend to re-use the
hint instructions for new things in the architecture, so I'd rather
white-list what we know we can safely probe than black-listing only some
of the hint instructions.

I haven't assessed the effort of doing the above (probably not a lot)
but as a short-term workaround we could add the BTI and PAC hint
instructions to the aarch64_insn_is_nop() (though my preferred option is
the white-list one).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
