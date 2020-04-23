Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FF81B6301
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 20:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bEmhqN7/UyD2FlqxFD2xMFKelwbdw7CY8Cd+uejGzLY=; b=ekJYVy1TGr50bP
	d5dX6MNK9ta2ciK7+8sw6wfMJewBnRF2MZPNvB7+LwP5FpL5bGIcfZo8EUqzPlkgaGixoiyf2J9ND
	e1zuwNrGvekJkjA7Gbslh8BNmdtF613u33CUM6k7tPGpfl2MeFaq6eylh0P2wfHUw4J0eMuqNaI3K
	PesSEa6+jx1wm0hS+GkejX1PGNcAwdqQVA3wXqK19HmSv8VhcScHfIAg5BixV7EAHmsl7k9alVVhk
	x+teh/opKTJOLc7rAWmrYbEg0bc+a0ih4aYUzmENhvCqt48sFKHl29+W5zGNeAUheKxtNT8Fwtx9M
	L9aNxxeOSvqL3S3YhcFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRgI8-0005ML-Md; Thu, 23 Apr 2020 18:09:40 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRgHw-0005Kg-Fh
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 18:09:29 +0000
Received: by mail-pg1-x544.google.com with SMTP id g6so3265753pgs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 11:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KWVTVR9QPt8YpEnS6+rG3cx9IAZdQ2Peqca4Ud6UmSY=;
 b=CdFotNnqSpurMKkIu6CgBx6OkkmuS4dmePbH5JYO6Yb24rHfaG6bv/j6W3gwVuvGlR
 64PbSSNPaH8ceQMVqvMs5BZdL4WabMg/+3TPoVNadaUwZ1CIY5Ft1srs/S6AInLWxtLR
 iKNcf7yWw+tp7Mv+in+N3g014ylhLnJOJ++nc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KWVTVR9QPt8YpEnS6+rG3cx9IAZdQ2Peqca4Ud6UmSY=;
 b=BzM86Atdx6Px3+V8TUiLTDopKgAP2EOnp1LqnfkLHrJa30adjS4H0Jtx4kf6mf5m42
 XC0JghAqC9n2voQ2Ufiv7L6qcpt/jlv33UNSLCXUgCatIlybmtJbm/4cH2FNAMWe0r9M
 5kna8D2dLi3/X099MQ5lFe+G/Tq9F5lsDryR0IrD5Ky4U5uok2Qjppj9DoSKvRIz2W85
 btMbEWvz5RqGIw8JYsgMXipAIyOccVcD4TWLLoyMYxfAQOwpkkSr9VmHeCUuHaAri6Qt
 zZGj1aCZ1lvmJQeJQC10MyczYW07Adj4HDH8umFJajlhcb7nc6qdtxc0U6lprMcBxp2j
 PBSg==
X-Gm-Message-State: AGi0PuYkX5eJeaXOMPyYnl2Q6+q8TqRD2TKztGpCOYMeLEOsJvp0O9Ts
 lg+fTI6DsATpOQ1SzuA67D1swA==
X-Google-Smtp-Source: APiQypLMPu77yfYvTCVDe2sNxmi176/dfhJmzHOmLBk67EV18fTOD0x11gPSr7XgMYCWAsHYZmXLuw==
X-Received: by 2002:a63:5c01:: with SMTP id q1mr4899728pgb.177.1587665367464; 
 Thu, 23 Apr 2020 11:09:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id d184sm3152431pfc.130.2020.04.23.11.09.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 11:09:25 -0700 (PDT)
Date: Thu, 23 Apr 2020 11:09:24 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v12 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <202004231108.1AC704F609@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
 <20200421021453.198187-2-samitolvanen@google.com>
 <202004221052.489CCFEBC@keescook>
 <20200422180040.GC3121@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422180040.GC3121@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_110928_525271_F5183934 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Apr 22, 2020 at 07:00:40PM +0100, Will Deacon wrote:
> On Wed, Apr 22, 2020 at 10:54:45AM -0700, Kees Cook wrote:
> > On Mon, Apr 20, 2020 at 07:14:42PM -0700, Sami Tolvanen wrote:
> > > +void scs_release(struct task_struct *tsk)
> > > +{
> > > +	void *s;
> > > +
> > > +	s = __scs_base(tsk);
> > > +	if (!s)
> > > +		return;
> > > +
> > > +	WARN_ON(scs_corrupted(tsk));
> > > +
> > 
> > I'd like to have task_set_scs(tsk, NULL) retained here, to avoid need to
> > depend on the released task memory getting scrubbed at a later time.
> 
> Hmm, doesn't it get zeroed almost immediately by kmem_cache_free() if
> INIT_ON_FREE_DEFAULT_ON is set? That seems much better than special-casing
> SCS, as there's a tonne of other useful stuff kicking around in the
> task_struct and treating this specially feels odd to me.

That's going to be an uncommon config except for the most paranoid of
system builders. :) Having this get wiped particular thing wiped is just
a decent best practice for what is otherwise treated as a "secret", just
like crypto routines wipe their secrets before free().

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
