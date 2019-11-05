Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A74AF0670
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 20:55:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbOKHFOMQFngtRLwQEEDsaRC6RvTv3E109sK4lg+etA=; b=f05FfKaRnpy5BL
	KZ5MsEcckCAEfIQQcRMyEpHLFRCLDG60y0QMAsFkVapL9q0ZCIv147dnYKt4HerSiOLxtvuHcaVNe
	VzILFm+CWGo9LVSytwhFdENr6Uu6L4yc/rP/3c+Wdc7mDovYVbYg9Ho2fC6P1nwHm72iYqrwaDnVm
	2Q+Pipddm2B+ahPoiYNIysrZF2IMpBfKlG6X5VqQ/5I2r9NybnxTjeHYrfKneccLoPJOEY7+3HT6D
	aRoer+wHgaHQ+PoCBnlDHP2Ato5DLyxmdRc1X0qHlxFH9eWAcAX94oD11A1oHFldKSWHMOKTkoFZ8
	ZmSsDK8sp1v4DljUmk6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS4vF-0001VS-SI; Tue, 05 Nov 2019 19:55:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS4uq-00007F-P8
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 19:55:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E02A7B9;
 Tue,  5 Nov 2019 11:54:56 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5E4523FBA1;
 Tue,  5 Nov 2019 01:15:53 -0800 (PST)
Date: Tue, 5 Nov 2019 09:15:51 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v4 11/17] arm64: disable function graph tracing with SCS
Message-ID: <20191105091301.GB4743@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-12-samitolvanen@google.com>
 <20191104171132.GB2024@lakrids.cambridge.arm.com>
 <CABCJKufDnLjP9vA-wSW0gSY05Cbr=NOpJ-WCh-bdj2ZNq7VNXw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABCJKufDnLjP9vA-wSW0gSY05Cbr=NOpJ-WCh-bdj2ZNq7VNXw@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_115500_856138_5A86ECD1 
X-CRM114-Status: GOOD (  15.65  )
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
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 03:44:39PM -0800, Sami Tolvanen wrote:
> On Mon, Nov 4, 2019 at 9:11 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > Can you please elaborate on _how_ this is incompatible in the commit
> > message?
> >
> > For example, it's not clear to me if you mean that's functionally
> > incompatible, or if you're trying to remove return-altering gadgets.
> >
> > If there's a functional incompatibility, please spell that out a bit
> > more clearly. Likewise if this is about minimizing the set of places
> > that can mess with control-flow outside of usual function conventions.
> 
> Sure, I'll add a better description in v5. In this case, the return
> address is modified in the kernel stack, which means the changes are
> ignored with SCS.

Ok, that makes sense to me. I'd suggest something like:

| The graph tracer hooks returns by modifying frame records on the
| (regular) stack, but with SCS the return address is taken from the
| shadow stack, and the value in the frame record has no effect. As we
| don't currently have a mechanism to determine the corresponding slot
| on the shadow stack (and to pass this through the ftrace
| infrastructure), for now let's disable the graph tracer when SCS is
| enabled.

... as I suspect with some rework of the trampoline and common ftrace
code we'd be able to correctly manipulate the shadow stack for this.
Similarly, if clang gained -fpatchable-funciton-etnry, we'd get that for
free.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
