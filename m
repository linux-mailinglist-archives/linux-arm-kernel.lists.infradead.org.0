Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC991C92D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnE+W8GFd2LBHogPAkoXjqg9RdRjXHbVMfocIFGtJ/E=; b=KQUoUcRAaD1Fy1
	fA4nKI6YzYEhUfRfVPve+TG4z8m19U5E9SOOgjDsvjcpiAPxi8whftJXDlClQpizzD5F6bFcy/x1g
	egY8dC3IZtxS8NvrWuCtL7heTGbSOQcuFrH6keJIPZJWNrCPco7jJVLWASWBgtHOSlLzzwmzKs49y
	ZyxDS0o3wYcGguU/KV4oEG/4lKi/41cSSd7dvqzIlX0pTVpUA1QkMqmfvAn0cXItKsnozt3YpYepH
	ZY0tatfXiHIHjor5qRgYzPXQolIxR6oAdHMoLFHmUXA/BkwJbfhyqTJ5XrGKxBQfD46aq4G/Bdkxs
	soaASsY5PRwIOJHB20FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhzZ-0000ba-02; Thu, 07 May 2020 14:59:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhzP-0000ao-4h
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:59:08 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 323AD20736;
 Thu,  7 May 2020 14:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588863546;
 bh=jLruy/POqDDULaCkeRloP0BBAbIljx4SJJoaPo6KJMc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ceWFPsD+l4PlT9Qgz5Zc5zuXD4YhnRHSZpyLlNiScDXqb/Stu7Hxm3KN2+PVJyv0v
 OuGSSaURC2Cy3v+Kibsfso8LvOJ1tBb7LVwISGII11Q/lnKAWrQdfbItSZZWe0faxJ
 3HiyaBVVUFHzFaUXQmipDt2qc6lD7r41pDNARwzM=
Date: Thu, 7 May 2020 15:59:01 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 00/11] arm64: BTI kernel and vDSO support
Message-ID: <20200507145901.GA1938@willie-the-truck>
References: <20200506195138.22086-1-broonie@kernel.org>
 <20200507143332.GB1422@willie-the-truck>
 <20200507143547.GC1422@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507143547.GC1422@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_075907_219492_22C53FCB 
X-CRM114-Status: GOOD (  22.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 03:35:47PM +0100, Will Deacon wrote:
> On Thu, May 07, 2020 at 03:33:32PM +0100, Will Deacon wrote:
> > On Wed, May 06, 2020 at 08:51:27PM +0100, Mark Brown wrote:
> > > This patch series adds support for protecting the kernel and vDSO with
> > > BTI including code compiled with the BPF JIT at runtime.
> > > 
> > > We build the kernel with annotations for BTI and then map the kernel
> > > with GP based on the support on the boot CPU, rejecting secondaries that
> > > don't have BTI support. If there is a need to handle big.LITTLE systems
> > > with mismatched BTI support we will have to revisit this, currently no
> > > such implementations exist.
> > > 
> > > This series depends on several branches in the arm64 tree:
> > > 
> > >  - for-next/bti-user
> > >  - for-next/insn
> > >  - for-next/asm
> > > 
> > > v3:
> > >  - Add a patch adding a comment about why we enable leaf support for
> > >    PAC.
> > >  - Fix build of the 32 bit vDSO.
> > >  - Refactor the macro for emitting the ELF note for BTI code so that
> > >    the flags are defined separately in order to make it easier to
> > >    add handling for any future users.
> > 
> > Bugger, I'm still getting warnings (clang 11.0.1), but from an allmodconfig
> > build now:
> > 
> >   warning: some functions compiled with BTI and some compiled without BTI
> >   warning: not setting BTI in feature flags
> > 
> > (repeated many, many times).
> > 
> > I'll try to get you some more info.
> 
> Quick look at the log suggests that these are caused by HDRTEST, whatever
> that is.

Sorry, my parallel build threw me off, so I don't think it's HDRTEST after
all. One of the problems appears to be tracing:

    CC      kernel/trace/trace_clock.o
  warning: some functions compiled with BTI and some compiled without BTI
  warning: not setting BTI in feature flags

Looking at objdump, there are funny gcov functions with PACISAP prologues:

0000000000023e40 <__llvm_gcov_writeout>:
   23e40:       a9be57fe        stp     x30, x21, [sp, #-32]!
   23e44:       a9014ff4        stp     x20, x19, [sp, #16]
   23e48:       94000000        bl      0 <__sanitizer_cov_trace_pc>
   23e4c:       90000000        adrp    x0, 0 <__register_ftrace_function>
   23e50:       90000001        adrp    x1, 0 <__register_ftrace_function>
   23e54:       5293ac02        mov     w2, #0x9d60                     // #40288
   23e58:       91000000        add     x0, x0, #0x0
   [...]

:/

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
