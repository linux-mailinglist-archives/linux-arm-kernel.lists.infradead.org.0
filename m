Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BE01581C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 18:52:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s8ttoE0hbc2L5NP4Zc9TFsVVBQDv6Jau27Vf+8Ln3Ng=; b=PACS18ZxpjroYZ
	GlOQ1MmqN5vjtuTTqoJcZsxDrMo7JjriLyMedrWYXEs4io+mWKYTolgv1JPSXRJROUaHg0VhuBrTG
	yG9Z3ay1Rp5eJXyMjPnh/vVmP7Dk2E+gzLZiKmLYCk2HnTwuD0QnYDfPx20SQhHqyxbIyj9Eha9+2
	AQi/r7Cgfl/wb+yenzigbPBWTbuIH0nY2lz0RynIu+74jwWD/DwPIDPM7bQWL/Ign8aDvkDe5BJjT
	4/trPR1xgTahorFBB4m+B8hp/Kaai/poXvEVRDnRb+lOK565IS1v8a/ssMEQa1Yi4lkOKErehyBQW
	naJLhLtm9btGiz64L/EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1DEY-0006Et-9N; Mon, 10 Feb 2020 17:52:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1DEN-0006D4-GX
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 17:52:24 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B5BB20715;
 Mon, 10 Feb 2020 17:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581357142;
 bh=w4QaI4rwl8xDK0pPvWLaHd5U0Rdh0Tn4UR8oOFoh5Pg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SwvUPgIlRB37NIGfkknNFZdWlQ7zdhhxoI9oOpxIjAVtbw5kEW46Z3Xua3ED9FVVz
 Qe5ek2fpczwxrW3E2Q2bxRjmv2GVXM5HzJ/+ZCQ75nikohMXSsDTxFneXJ9W328+oF
 NUm3yhGlentzJM3zl1Cd+UZ7gCE75VqB9vrOyToY=
Date: Mon, 10 Feb 2020 17:52:15 +0000
From: Will Deacon <will@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
Message-ID: <20200210175214.GA23318@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_095223_573272_53C643DD 
X-CRM114-Status: GOOD (  15.25  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, Marc Zyngier <maz@kernel.org>,
 kernel-hardening@lists.openwall.com, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 05:18:58PM +0000, James Morse wrote:
> On 28/01/2020 18:49, Sami Tolvanen wrote:
> > Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
> > different exception level.
> 
> Hmmm, there are two things being disabled here.
> 
> Stashing the lr in memory pointed to by VA won't work transparently at EL2 ... but
> shouldn't KVM's C code still treat x18 as a fixed register?

My review of v6 suggested dropping the -ffixed-x18 as well, since it's only
introduced by SCS (in patch 5) and so isn't required by anything else. Why
do you think it's needed?

> As you have an __attribute__((no_sanitize("shadow-call-stack"))), could we add that to
> __hyp_text instead? (its a smaller hammer!) All of KVM's EL2 code is marked __hyp_text,
> but that isn't everything in these files. Doing it like this would leave KVM's VHE-only
> paths covered.
> 
> As an example, with VHE the kernel and KVM both run at EL2, and KVM behaves differently:
> kvm_vcpu_put_sysregs() in kvm/hyp/sysreg-sr.c is called from a preempt notifier as
> the EL2 registers are always accessible.

That's a good point, and I agree that it would be nice to have SCS covering
the VHE paths. If you do that as a function attribute (which feels pretty
fragile to me), then I guess we'll have to keep the -ffixed-x18 for the
non-VHE code after all because GCC at least doesn't like having the register
saving ABI specified on a per-function basis.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
