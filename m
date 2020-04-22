Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0411B4C66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 20:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Vop1/CigsQhxz7d0LQc4d32VNVYIFsqzWwymXZr0dU=; b=buTArwCF8raOKs
	uZSwBkbi6UcsLcQBRsqTL/MvUm/IK38HmgFwS9d0oH2pnYw996YB5mHHxlbj4cXECcwfEplXzI44q
	afiEUoyJZaxSYgGAJV1aEC6VCGzvxsp/NEZAWB7q2fzgP4gq6a5AaPhlOMx3QnEg4fj33Jx5xtK7i
	rKPWl0SAFq/SLL+ITVe+pkjMui8IT1CZ32J1+63NbVOs72kI+7DdZbXEuIxVpEilaZ7q6z/PaEOHW
	m9T0FxUcg82noa8JiscbOoZLqROh9v2Rtpf50fmwp6aSPiFhF+Pmg4bbNtDBbRrm2NePvAITdBG1c
	S97okYU8GwmC+2B5mJkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRJhK-00084p-BI; Wed, 22 Apr 2020 18:02:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRJhB-00083h-1q
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 18:02:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 824A1214AF;
 Wed, 22 Apr 2020 18:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587578520;
 bh=FzQTGQ2Ix7C7yR7IfBH/DXbB5Ch65ICfo4tHoOW7nnI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0A/YQX2JzsYbuIiD4/c6g+qjcG+aB9pdJitG9h83SJHB7+jTxNwY5IDmnL47zNJ6V
 qkPfXvBBgDtNOmFzFEVREiwbBFjVhVldeCzCnsxfJ4wJIjmCpYs/DAm781XyRGitZZ
 7lfgUik1elBgd5oRg2rtr0BDR5SgI2rZBf6TZ7fc=
Date: Wed, 22 Apr 2020 19:01:53 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200422180153.GD3121@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck>
 <202004221047.3AEAECC1@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202004221047.3AEAECC1@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_110201_138400_FD53C583 
X-CRM114-Status: GOOD (  21.36  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-arm-kernel@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 10:51:02AM -0700, Kees Cook wrote:
> On Wed, Apr 22, 2020 at 06:39:47PM +0100, Will Deacon wrote:
> > On Mon, Apr 20, 2020 at 02:18:30PM -0700, Sami Tolvanen wrote:
> > > On Mon, Apr 20, 2020 at 06:17:28PM +0100, Will Deacon wrote:
> > > > > +	 * The shadow call stack is aligned to SCS_SIZE, and grows
> > > > > +	 * upwards, so we can mask out the low bits to extract the base
> > > > > +	 * when the task is not running.
> > > > > +	 */
> > > > > +	return (void *)((unsigned long)task_scs(tsk) & ~(SCS_SIZE - 1));
> > > > 
> > > > Could we avoid forcing this alignment it we stored the SCS pointer as a
> > > > (base,offset) pair instead? That might be friendlier on the allocations
> > > > later on.
> > > 
> > > The idea is to avoid storing the current task's shadow stack address in
> > > memory, which is why I would rather not store the base address either.
> > 
> > What I mean is that, instead of storing the current shadow stack pointer,
> > we instead store a base and an offset. We can still clear the base, as you
> > do with the pointer today, and I don't see that the offset is useful to
> > an attacker on its own.
> > 
> > But more generally, is it really worthwhile to do this clearing at all? Can
> > you (or Kees?) provide some justification for it, please? We don't do it
> > for anything else, e.g. the pointer authentication keys, so something
> > feels amiss here.
> 
> It's a hardening step to just reduce the lifetime of a valid address
> exposed in memory. In fact, since there is a cache, I think it should be
> wiped even in scs_release().

But we don't do this for /anything/ else and it forces alignment
restrictions on the SCS allocation. Please either do it consistently, or
not at all.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
