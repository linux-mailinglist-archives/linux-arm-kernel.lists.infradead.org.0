Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15978158C2D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 10:55:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkBF8KBCC5Q1Lx3lgc0jSwGT7Q/80zqKbRSSluSAoTo=; b=GbajNqDKDpLIkM
	OZj35GUnBkbONwwD/CUZWraeplGv2TlS17/VGZVy98g1dRpnaTix2rLtoe0ceJlOt6VuMbh+dzCvJ
	Q0uJgvO0o2S1iaXExh2Fgv/fPVm5FTqwSft7Kr+2+nOUnNlLjN5IyjweEcFc74XB9+sKUbYljztFE
	mrBDFRoPb31USosdzjyLSdGA5R/t50BpKfbYfPbqSFkJ0hhx2/Ek2/i6DIkwLcs34zLvJ6aGZy4Q8
	ifwQW7Jgr+EESYqcO7IGjxZmunVIrx3eCui0JY4/eQ3giBclcUJbRaC+Ar947FyHRdOO/2uQDVMH8
	QLTOgjzN6vnqod0F66Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1SGT-0003sE-Ie; Tue, 11 Feb 2020 09:55:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1SGM-0003ru-9d
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 09:55:27 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B570420714;
 Tue, 11 Feb 2020 09:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581414926;
 bh=q0Fz9yIHjMR47rqb63t0DZl1MM211pLUxeDAzl1/TSU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hrXJkcSkEoSoFke6H/bWzn+haEaMNsTni9NIh0NgD7P0mnftHNPZG2n/2stHF8MKF
 mUeshVt39Y4lYdMB5hiW9Q2LCA2kIHGnewOd1K85B0nChMIUWGAuZ249tThQJZU4P+
 U/CFhsQ7s3AcDzue88/R8xKJUiKDB07ydtxZI/tI=
Date: Tue, 11 Feb 2020 09:55:19 +0000
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
Message-ID: <20200211095519.GB8560@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
 <20200210175214.GA23318@willie-the-truck>
 <20200210180327.GB20840@lakrids.cambridge.arm.com>
 <20200210180740.GA24354@willie-the-truck>
 <43839239237869598b79cab90e100127@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <43839239237869598b79cab90e100127@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_015526_378339_E0F77501 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 09:14:52AM +0000, Marc Zyngier wrote:
> On 2020-02-10 18:07, Will Deacon wrote:
> > On Mon, Feb 10, 2020 at 06:03:28PM +0000, Mark Rutland wrote:
> > > On Mon, Feb 10, 2020 at 05:52:15PM +0000, Will Deacon wrote:
> > > > On Mon, Feb 10, 2020 at 05:18:58PM +0000, James Morse wrote:
> > > > > On 28/01/2020 18:49, Sami Tolvanen wrote:
> > > > > > Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
> > > > > > different exception level.
> > > > >
> > > > > Hmmm, there are two things being disabled here.
> > > > >
> > > > > Stashing the lr in memory pointed to by VA won't work transparently at EL2 ... but
> > > > > shouldn't KVM's C code still treat x18 as a fixed register?
> > > >
> > > > My review of v6 suggested dropping the -ffixed-x18 as well, since it's only
> > > > introduced by SCS (in patch 5) and so isn't required by anything else. Why
> > > > do you think it's needed?
> > > 
> > > When EL1 code calls up to hyp, it expects x18 to be preserved across
> > > the
> > > call, so hyp needs to either preserve it explicitly across a
> > > transitions
> > > from/to EL1 or always preserve it.
> > 
> > I thought we explicitly saved/restored it across the call after
> > af12376814a5 ("arm64: kvm: stop treating register x18 as caller save").
> > Is
> > that not sufficient?
> > 
> > > The latter is easiest since any code used by VHE hyp code will need
> > > x18
> > > saved anyway (ans so any common hyp code needs to).
> > 
> > I would personally prefer to split the VHE and non-VHE code so they can
> > be
> > compiled with separate options.
> 
> This is going to generate a lot of code duplication (or at least object
> duplication),
> as the two code paths are intricately linked and splitting them to support
> different
> compilation options and/or calling conventions.
> 
> I'm not fundamentally opposed to that, but it should come with ways to still
> manage it as a unified code base as much as possible, as ways to discard the
> unused part at runtime (which should become easy to do once we have two
> distinct sets of objects).

Agreed, and I don't want to hold up the SCS patches because of this. I'm
just nervous about the function attribute because I've only ever had
terrible experiences with them. Maybe it will work this time (!)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
