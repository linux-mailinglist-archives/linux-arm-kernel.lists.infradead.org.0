Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2C1D09E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JABvQm6fSCjoS0UgCaNB+3yiw1pwy6dJ61ZYiwyamBA=; b=OklXnVr0nR68/3
	Z6cfozv6SBwCmkmEblsR0K91QfQoL1d61HZ64K5xHrgs6VqmVGTDMhOz7C9C8quQ1rvCtvgFQm4wy
	wVIaFz7iYHUz8yN/abjKnEcBLDQm3qiPBmNnju7iXazrZd410WdYiMSybRgHnPoiS++J3+oXVFpvC
	2QrlH0TikWuMSueA0PW7DVs/x4YyP6hF2g7biabBBB+sXwXXxqhVC7stc9f6g3WvO5deeN/gbm/NK
	l2dcvm4jz8Y85uEspJFn9z2yPYVm73+lW/8NvY6NBvGv8m2DCvIEqQ2kAKqBzRasdoSMOQmR1bkKW
	GNjmqTh9q3a3QdvHF/+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7NF-0008MP-G4; Wed, 09 Oct 2019 08:31:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7LX-0005qQ-D3
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:29:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB02B337;
 Wed,  9 Oct 2019 01:29:22 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3EACF3F68E;
 Wed,  9 Oct 2019 01:29:22 -0700 (PDT)
Date: Wed, 9 Oct 2019 09:29:20 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v2] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
Message-ID: <20191009082920.GM42880@e119886-lin.cambridge.arm.com>
References: <20191007201452.208067-1-samitolvanen@google.com>
 <20191008212730.185532-1-samitolvanen@google.com>
 <20191008233137.GL42880@e119886-lin.cambridge.arm.com>
 <CABCJKufHzQamE5+JtH0J4TyS05kutkty_7GwJ6w8T-szdCwHvg@mail.gmail.com>
 <20191009000159.GA531859@archlinux-threadripper>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009000159.GA531859@archlinux-threadripper>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_012923_588656_5B04F762 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 05:01:59PM -0700, Nathan Chancellor wrote:
> On Tue, Oct 08, 2019 at 04:59:25PM -0700, 'Sami Tolvanen' via Clang Built Linux wrote:
> > On Tue, Oct 8, 2019 at 4:31 PM Andrew Murray <andrew.murray@arm.com> wrote:
> > > This looks good to me. I can build and boot in a model with both Clang
> > > (9.0.6) and GCC (7.3.1) and boot a guest without anything going bang.
> > 
> > Great, thank you for testing this!
> > 
> > > Though when I build with AS=clang, e.g.
> > >
> > > make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CC=clang AS=clang Image
> > 
> > Note that this patch only fixes issues with inline assembly, which
> > should at some point allow us to drop -no-integrated-as from clang
> > builds. I believe there are still other fixes needed before AS=clang
> > works.
> > 
> > > I get errors like this:
> > >
> > >   CC      init/main.o
> > > In file included from init/main.c:17:
> > > In file included from ./include/linux/module.h:9:
> > > In file included from ./include/linux/list.h:9:
> > > In file included from ./include/linux/kernel.h:12:
> > > In file included from ./include/linux/bitops.h:26:
> > > In file included from ./arch/arm64/include/asm/bitops.h:26:
> > > In file included from ./include/asm-generic/bitops/atomic.h:5:
> > > In file included from ./include/linux/atomic.h:7:
> > > In file included from ./arch/arm64/include/asm/atomic.h:16:
> > > In file included from ./arch/arm64/include/asm/cmpxchg.h:14:
> > > In file included from ./arch/arm64/include/asm/lse.h:13:
> > > In file included from ./include/linux/jump_label.h:117:
> > > ./arch/arm64/include/asm/jump_label.h:24:20: error: expected a symbol reference in '.long' directive
> > >                  "      .align          3                       \n\t"
> > >                                                                   ^
> > > <inline asm>:4:21: note: instantiated into assembly here
> > >                 .long           1b - ., "" - .
> > >                                            ^
> > >
> > > I'm assuming that I'm doing something wrong?
> > 
> > No, this particular issue will be fixed in clang 10:
> > https://github.com/ClangBuiltLinux/linux/issues/500
> > 
> > Sami
> 
> I believe that it should be fixed with AOSP's Clang 9.0.8 or upstream
> Clang 9.0.0.

OK, understood. You can add:

Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Tested-by: Andrew Murray <andrew.murray@arm.com>

> 
> Cheers,
> Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
