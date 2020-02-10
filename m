Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB40158237
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 19:24:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Un+E8vdqgdY+gMTaXXzP/k+y28dobJnE+koO79erIrc=; b=ZdXKYEgiwt8fM4
	Ve0/3+9r0Uq65IWZ2hcQ+yCbdvkN8a5aNuLnzRQwLcFearJax8/IPq7n8rS9KFUac905Ko2UIF0e9
	hi/yu4SxOivKZdar4cviDl34M6hE1PrknvsqQ+uCTi1pUr11JVAvyQEwFVId813UkkQ3LR3vtUJHH
	pZzbo7KU7NTyADz+7byPi+fJkPotFdiVS29pKX8u50/uXiFnnjWiGFIPFfh8oeiNGH4ep4ZbittB/
	gvK24nFmbC7DEzn3Z7/8UMyBLVSTPIu2yDQReoQ2FBs5lQj8MGuQmksUTbq4GKMcxpogqUcoGJHN2
	qGhvmozv/KfK9zRLmpBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Djg-0002fk-He; Mon, 10 Feb 2020 18:24:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Dja-0002f6-ND
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 18:24:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7FF621FB;
 Mon, 10 Feb 2020 10:24:36 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 326BA3F68F;
 Mon, 10 Feb 2020 10:24:34 -0800 (PST)
Date: Mon, 10 Feb 2020 18:24:32 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
Message-ID: <20200210182431.GC20840@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
 <20200210175214.GA23318@willie-the-truck>
 <20200210180327.GB20840@lakrids.cambridge.arm.com>
 <20200210180740.GA24354@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210180740.GA24354@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_102438_801921_0743738D 
X-CRM114-Status: GOOD (  16.32  )
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

On Mon, Feb 10, 2020 at 06:07:41PM +0000, Will Deacon wrote:
> On Mon, Feb 10, 2020 at 06:03:28PM +0000, Mark Rutland wrote:
> > On Mon, Feb 10, 2020 at 05:52:15PM +0000, Will Deacon wrote:
> > > On Mon, Feb 10, 2020 at 05:18:58PM +0000, James Morse wrote:
> > > > On 28/01/2020 18:49, Sami Tolvanen wrote:
> > > > > Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
> > > > > different exception level.
> > > > 
> > > > Hmmm, there are two things being disabled here.
> > > > 
> > > > Stashing the lr in memory pointed to by VA won't work transparently at EL2 ... but
> > > > shouldn't KVM's C code still treat x18 as a fixed register?
> > > 
> > > My review of v6 suggested dropping the -ffixed-x18 as well, since it's only
> > > introduced by SCS (in patch 5) and so isn't required by anything else. Why
> > > do you think it's needed?
> > 
> > When EL1 code calls up to hyp, it expects x18 to be preserved across the
> > call, so hyp needs to either preserve it explicitly across a transitions
> > from/to EL1 or always preserve it.
> 
> I thought we explicitly saved/restored it across the call after
> af12376814a5 ("arm64: kvm: stop treating register x18 as caller save"). Is
> that not sufficient?

That covers the hyp->guest->hyp round trip, but not the host->hyp->host
portion surrounding that.

Anywhere we use __call_hyp() expects x18 to be preserved across the
call, and that's not only used to enter the guest. If we don't want to
do that naturally at EL2, we'd probably have to add that to
do_el2_call in arch/arm64/kvm/hyp/hyp-entry.S.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
