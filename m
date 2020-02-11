Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C6A158C29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 10:54:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4GLvY8ZGEQ3dmH7tS3W5EiN6iMq8yTKrwbYdwo/Kok=; b=dxOzyYkNx0vYlF
	/2o94XwkoZtvfTpfaXjTx0epOgokgdxpI1PyK+Dd6HsFJc46vkFvCIj9cMZG/7o1yB5LZFJA9XroU
	wA9zjTEffB7gcIpytpEgaxpclKbRwz870cm95MBFOCriSws3qdrdhg/C7XQGO0ADZ1hopK9mufH/F
	RlWEj8ZlBEAiglG4RtF6fjHPA/WfI23dcE2dJDd2522af+XxwQbDqOsUDaW9n6tCmZesC3/HAhsKQ
	xoHUPL7nrb6ZNmotb65BWa+eYoiohzPp05AKJkobQQX4Gb9P5SBDZnsOYXXmvPe9LmwZnz25fddZu
	0mXoQdcba6OytC38jjhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1SFE-0002FI-Jv; Tue, 11 Feb 2020 09:54:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1SF7-0002Eh-FW
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 09:54:10 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E938F20714;
 Tue, 11 Feb 2020 09:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581414849;
 bh=dZ6CUij+Y34KbHJA5uYdVJiJ5KihU8UAFU+V7kMs+eE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wPuXWwxpf67WBRCSd6gmmbHXBuqvSvmM7CL5fmZPWW/D8lxpA6mBLOiyCCe82Ondo
 3bLF5Mk0tp3wc7yciEiT9D+0q01TUCgH5co17XExIGf17qY4ndjc51TU5p8+1Z7yee
 ZmH+8o2VhBQKJpV1BsMvZ2mVsLoV5sPSz3ZIWmH4=
Date: Tue, 11 Feb 2020 09:54:02 +0000
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
Message-ID: <20200211095401.GA8560@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
 <20200210175214.GA23318@willie-the-truck>
 <20200210180327.GB20840@lakrids.cambridge.arm.com>
 <20200210180740.GA24354@willie-the-truck>
 <20200210182431.GC20840@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210182431.GC20840@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_015409_543691_63A466FD 
X-CRM114-Status: GOOD (  16.14  )
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

On Mon, Feb 10, 2020 at 06:24:32PM +0000, Mark Rutland wrote:
> On Mon, Feb 10, 2020 at 06:07:41PM +0000, Will Deacon wrote:
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
> > > When EL1 code calls up to hyp, it expects x18 to be preserved across the
> > > call, so hyp needs to either preserve it explicitly across a transitions
> > > from/to EL1 or always preserve it.
> > 
> > I thought we explicitly saved/restored it across the call after
> > af12376814a5 ("arm64: kvm: stop treating register x18 as caller save"). Is
> > that not sufficient?
> 
> That covers the hyp->guest->hyp round trip, but not the host->hyp->host
> portion surrounding that.

Thanks, I missed that. It's annoying that we'll end up needing /both/
-ffixed-x18 *and* the save/restore around guest transitions, but if we
actually want to use SCS for the VHE code then I see that it will be
required.

Sami -- can you restore -ffixed-x18 and then try the function attribute
as suggested by James, please?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
