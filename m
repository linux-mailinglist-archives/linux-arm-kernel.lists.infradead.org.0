Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9771B71AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 12:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kPNxOccGPWBa0trwagMzEOcX+cL3xNW0dqli8vXjI4=; b=lfSuHb0dgX0gq1
	tsQxNAy6WAnF59BmgRWvNoKEC0u+/gNRt9m6M9EFQGDaHKBiDig29xa9BjeZCBSHb0W+HXRTCRJ6W
	O3x6zgiCcPOvZHaxPxuD71LC/5/RKVJzQsDtQSVAQpTDX9Jv2Wws0SzNY3GUdpyiybMjXdOj/gxD2
	7ev3AwJ86G6UnubTsYBdArSXAVLhVIAiYXDFp/q8J8RPGUzoGoQKanwhLziq9OxWqRGI2+eveUuN9
	0BVAM5Ie5I8YvlErgXk5vjY50P7+x0aDbj4YqxM2w5JKth/d1eD2FTKmS41h6llR3a0FPT23efGdb
	fkzOiwx7m7Ijcayizqpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRvKC-0004nV-HL; Fri, 24 Apr 2020 10:12:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRvK3-0004kt-0I
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 10:12:40 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92E232071E;
 Fri, 24 Apr 2020 10:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587723158;
 bh=fKU2iKdaO5V4T6aQoOLQEGsSBw4yYPCuYH7VaMC/eI4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kSbPHK0wqHUeZAx9aecwnpy9ShuMSbMzEpsNdzkiRkR+RFN1VJhrAPY0PtUxIniT/
 /wGBoKmysJ8CLXyd8f+lLlmKyEC4ej+hXUEjlSAbRI/eBWZ8LXlTour55sGrZaQ3Fm
 Ed1oqAak/yYVJ2wRfjZdMUjAgrADXoM7Kob9i6ME=
Date: Fri, 24 Apr 2020 11:12:31 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v12 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200424101230.GB21141@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
 <20200421021453.198187-2-samitolvanen@google.com>
 <202004221052.489CCFEBC@keescook>
 <20200422180040.GC3121@willie-the-truck>
 <202004231108.1AC704F609@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202004231108.1AC704F609@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_031239_060596_2F5293DA 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-arm-kernel@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 11:09:24AM -0700, Kees Cook wrote:
> On Wed, Apr 22, 2020 at 07:00:40PM +0100, Will Deacon wrote:
> > On Wed, Apr 22, 2020 at 10:54:45AM -0700, Kees Cook wrote:
> > > On Mon, Apr 20, 2020 at 07:14:42PM -0700, Sami Tolvanen wrote:
> > > > +void scs_release(struct task_struct *tsk)
> > > > +{
> > > > +	void *s;
> > > > +
> > > > +	s = __scs_base(tsk);
> > > > +	if (!s)
> > > > +		return;
> > > > +
> > > > +	WARN_ON(scs_corrupted(tsk));
> > > > +
> > > 
> > > I'd like to have task_set_scs(tsk, NULL) retained here, to avoid need to
> > > depend on the released task memory getting scrubbed at a later time.
> > 
> > Hmm, doesn't it get zeroed almost immediately by kmem_cache_free() if
> > INIT_ON_FREE_DEFAULT_ON is set? That seems much better than special-casing
> > SCS, as there's a tonne of other useful stuff kicking around in the
> > task_struct and treating this specially feels odd to me.
> 
> That's going to be an uncommon config except for the most paranoid of
> system builders. :)

Sounds like a perfect fit, then ;)

> Having this get wiped particular thing wiped is just
> a decent best practice for what is otherwise treated as a "secret", just
> like crypto routines wipe their secrets before free().

Sorry, but I don't buy that analogy. The SCS pointer is stored in memory
all over the place and if it needs to treated in the same way as crypto
secrets then this whole thing needs rethinking. On top of that, where
crypto routines may wipe their secrets, we don't do what is being proposed
for the SCS pointer to other similar pieces of data, such as pointer
authentication keys.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
