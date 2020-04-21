Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B231B1F69
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 09:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kUFxjak/zJFl6yW6pZZ5E0rtIOhv5HbFyBmUKBTKZto=; b=IQK60By5EHrmO4
	jLxaW9lBdRTwZA1LzjH5Q1vbvzI2k/xmQFKGufMgEekhOWS3MHKAc6M0a8JIzo8qdRNKdxYJ+LqXJ
	PkL0BO18pj1U+a0jTXpBQ6BUg8lAIpKbrBVoK7gaHiAcYTb/yd28k58UK+Vdu6yiMMkvfsrcUehWK
	0D481Y0QHnBUaIo0M9kkoIv0SWCKLBdyJVKC9lp9b41AmZyxH9CSmy2nl+wVa2b980+bT3+wRicts
	wXCdnIwX6O+G3b4PtQESnDrjZyHvvPWEL8vgowD3qN1WyfGCuicwovt3/Qv7g5qZAk/745HiTmPbQ
	RctCWT9IsQojzdXGZlcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQmvJ-00059L-6t; Tue, 21 Apr 2020 07:02:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQmv7-000573-CP
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 07:02:14 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2DC8206A5;
 Tue, 21 Apr 2020 07:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587452532;
 bh=Z+fmf3MZTanUK1eDlZtoFdJGrDCVH0CGd4BwENIe5E0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GBUY2Mu1pH5QqANYe1GJjosD6c/oF6gvLuIOBkUU4xMMIBCPQc8eHirwbD/lIN+fo
 pUy9A2APpR3RQVTYdoe85rp+Z4PEu0b/7iqs2G14lfRh1kJ+t8bXU8/q58TDECxLfu
 Zii20HSrpehI+Mop+ZzV1HtSTFSAZqshN53NFF/4=
Date: Tue, 21 Apr 2020 08:02:06 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v2 5/5] arm64: entry: Enable random_kstack_offset support
Message-ID: <20200421070206.GB14448@willie-the-truck>
References: <20200324203231.64324-1-keescook@chromium.org>
 <20200324203231.64324-6-keescook@chromium.org>
 <20200420205458.GC29998@willie-the-truck>
 <202004201529.BB787BB@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202004201529.BB787BB@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_000213_453283_63936602 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jann Horn <jannh@google.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, kernel-hardening@lists.openwall.com, "Perla,
 Enrico" <enrico.perla@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 03:34:57PM -0700, Kees Cook wrote:
> On Mon, Apr 20, 2020 at 09:54:58PM +0100, Will Deacon wrote:
> > On Tue, Mar 24, 2020 at 01:32:31PM -0700, Kees Cook wrote:
> > > +	/*
> > > +	 * Since the compiler chooses a 4 bit alignment for the stack,
> > > +	 * let's save one additional bit (9 total), which gets us up
> > > +	 * near 5 bits of entropy.
> > > +	 */
> > > +	choose_random_kstack_offset(get_random_int() & 0x1FF);
> > 
> > Hmm, this comment doesn't make any sense to me. I mean, I get that 0x1ff
> > is 9 bits, and that is 4+5 but so what?
> 
> Er, well, yes. I guess I was just trying to explain why there were 9
> bits saved here and to document what I was seeing the compiler actually
> doing with the values. (And it serves as a comparison to the x86 comment
> which is explaining similar calculations in the face of x86_64 vs ia32.)
> 
> Would something like this be better?
> 
> /*
>  * Since the compiler uses 4 bit alignment for the stack (1 more than
>  * x86_64), let's try to match the 5ish-bit entropy seen in x86_64,
>  * instead of having needlessly lower entropy. As a result, keep the
>  * low 9 bits.
>  */

Yes, thank you! I was missing the comparison to x86_64 and so the one
"additional" bit didn't make sense to me.

With the new comment:

Acked-by: Will Deacon <will@kernel.org>

I'm assuming you're merging this via some other tree, but let me know
if you need anything else from me.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
