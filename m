Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 770BDDE80F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:29:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eHk5c8j+3Fige3U+HFuTrlRJkaksewLfinWQXCV4QvM=; b=Xme/GgSwy1m7Nf
	RqTHbqZ/jHzg+CMaTKMiGTiPYKFSdx/vHDmy04Yp2aRnWomWV/kjAT/TaHpXRtJ2s9ON0rbojOWm/
	rCkEcgA0msxyoxwRlAe1sUb58+1rqaYCHh3SQu+HdW+xaygDBAqR9Iy5sQY7W2rCosS6is2ZGkibA
	lj1RFLXstLw6DSeiQtQlNExF1FdskbS1glJqWsZUZiRZQ916LCgB6NEPcui4HUxoV4+RhLdGvImN/
	z88xr4sTEfFbeNThCRThShFB5SYtvnzfeREnZlhG/OOM/Pnz4HDrFYSZD6kqtUOocq9DBMPMp37UZ
	RUqrO5xOxQQ5E2wlHpDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTzt-0002Se-J3; Mon, 21 Oct 2019 09:29:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTzj-0002SA-2r
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:28:56 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C8F620684;
 Mon, 21 Oct 2019 09:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571650134;
 bh=Ij6S89oTE2ChGvN/UW+DXJfdLK0DsQIGRLCpuPOoRWA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=zWZzDriip6tNCgfYO0M88aJAV5J/LSHelLDvXsN0JxFO1eO3wP1xf9jH9VOPlWeRr
 l8gfqL/30jne+EhJJPVaCBHdwfmo0Jc+al53Fz46Fn92tge0OM9hWMU0I3I9+Es3ta
 pEfX+JuiTXYfFUauJoNlctRr1EGfMdnBG4PgNxEc=
Date: Mon, 21 Oct 2019 18:28:49 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH 00/18] add support for Clang's Shadow Call Stack
Message-Id: <20191021182849.d51a67b0c0fe74d8d524147f@kernel.org>
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_022855_145122_7355237F 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, clang-built-linux@googlegroups.com,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, 18 Oct 2019 09:10:15 -0700
Sami Tolvanen <samitolvanen@google.com> wrote:

> This patch series adds support for Clang's Shadow Call Stack (SCS)
> mitigation, which uses a separately allocated shadow stack to protect
> against return address overwrites. More information can be found here:
> 
>   https://clang.llvm.org/docs/ShadowCallStack.html

Looks interesting, and like what function-graph tracing does...

> 
> SCS is currently supported only on arm64, where the compiler requires
> the x18 register to be reserved for holding the current task's shadow
> stack pointer. Because of this, the series includes four patches from
> Ard to remove x18 usage from assembly code and to reserve the register
> from general allocation.
> 
> With -fsanitize=shadow-call-stack, the compiler injects instructions
> to all non-leaf C functions to store the return address to the shadow
> stack and unconditionally load it again before returning. As a result,
> SCS is incompatible with features that rely on modifying function
> return addresses to alter control flow, such as function graph tracing
> and kretprobes. A copy of the return address is still kept in the
> kernel stack for compatibility with stack unwinding, for example.

Is it possible that kretprobes and function graph tracing modify the
SCS directly instead of changing real stack in that case?

Thank you,

-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
