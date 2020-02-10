Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88215158211
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 19:08:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/KZVMmmlFScpdJZSHD+K2faLwyabSGPIKoTHCOJ83g=; b=nPJBY3+cLzqf2B
	OpfEDo8fNU942VmzAb6P5ci1MB7qry3zqSniDIG+G1xgxaOTdOFDcPz+tYw3huProFnkzuSE9UJEz
	rOc0gledlZT5ekXM22EXlgcSjreA2VrLE9kXEBV2+CzywfYKvOG/siOKuAdO8S1igoNiMQQiN/fcr
	hurgyRBmgFMU20RYGvax9nz2cvbVBRCcez9yQ6fFG9KxnGDBEvBTNKwTL35yzbbHKxQ7gd6/VYypK
	Jc6ez58slyteUPoa7LMtEe1UsxLOnbP+d+L9soEuRY/muNq0Q9wWwLxBf8SXA9lnoK0k9wXcM01V3
	/Ol3/vOYVKoab2OAhPOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1DTQ-0005mk-Kw; Mon, 10 Feb 2020 18:07:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1DTH-0005m9-N5
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 18:07:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 527422082F;
 Mon, 10 Feb 2020 18:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581358067;
 bh=fZY3SQNpPCnRBs32URTn+EedNYpwNvv58zAKZ4PXDQ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MhSFm6pxgBM4UCGwR1shK5x3S7ghvaKBgaa8wHBuZU3zoh8GJXUvL//MSDY85r1eE
 BRup8cnQdmJ0sIk/2rKEK0dbZ6Wn1eVTFVkGNxHeHu64JFJ+BtEQ0wbQrrWPJEVlut
 0ZjWRbmrsBXc1XHZTYJ/fzWCK3XhFd2c6j3rvmf8=
Date: Mon, 10 Feb 2020 18:07:41 +0000
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
Message-ID: <20200210180740.GA24354@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
 <20200210175214.GA23318@willie-the-truck>
 <20200210180327.GB20840@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210180327.GB20840@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_100747_770808_F7629413 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, James Morse <james.morse@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, Marc Zyngier <maz@kernel.org>,
 kernel-hardening@lists.openwall.com, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 06:03:28PM +0000, Mark Rutland wrote:
> On Mon, Feb 10, 2020 at 05:52:15PM +0000, Will Deacon wrote:
> > On Mon, Feb 10, 2020 at 05:18:58PM +0000, James Morse wrote:
> > > On 28/01/2020 18:49, Sami Tolvanen wrote:
> > > > Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
> > > > different exception level.
> > > 
> > > Hmmm, there are two things being disabled here.
> > > 
> > > Stashing the lr in memory pointed to by VA won't work transparently at EL2 ... but
> > > shouldn't KVM's C code still treat x18 as a fixed register?
> > 
> > My review of v6 suggested dropping the -ffixed-x18 as well, since it's only
> > introduced by SCS (in patch 5) and so isn't required by anything else. Why
> > do you think it's needed?
> 
> When EL1 code calls up to hyp, it expects x18 to be preserved across the
> call, so hyp needs to either preserve it explicitly across a transitions
> from/to EL1 or always preserve it.

I thought we explicitly saved/restored it across the call after
af12376814a5 ("arm64: kvm: stop treating register x18 as caller save"). Is
that not sufficient?

> The latter is easiest since any code used by VHE hyp code will need x18
> saved anyway (ans so any common hyp code needs to).

I would personally prefer to split the VHE and non-VHE code so they can be
compiled with separate options.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
