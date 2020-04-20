Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C67A61B1959
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 00:24:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3+BEiXM9BzX61liCvG8uUDwDUajRUzkZ7JcFcECLRA=; b=eEzyKThh2wPNIp
	fBXAUbvN4h6bvymgzrfA0Cq0o93OMLgxz2dSKkcA/A/Y1814R9sdw3Y1XEO8jLnSIauWEzWyNRwz6
	n8zOPWKHhD6UVTxpj9GNngl3vKlZ20b0wxPFShVMzPpC0AqRygBPg9gb9rHGjipcAQjk9BVV8oIYC
	rjshtU9Th9Z/uvAqNwujQWsN+j38PQva62Nyk1+FUiMMltXoClEFDTwvZR+RdPvuSFvrhXEyind2/
	ZTUbjUpRCYnULMc39R73iQjzQvbULZwanUAsuAoWX3o6Iti1NZiuLk/zPeQl3YzuSEhZPxO7AGwIG
	zxxWpNIxvsFj8Do6WXnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQeqN-0006ne-Hu; Mon, 20 Apr 2020 22:24:47 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQeqD-0006mO-JB
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 22:24:38 +0000
Received: by mail-pf1-x442.google.com with SMTP id d184so1260860pfd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 15:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DV6jlkNA0aYuGGTHJFqAlVIWbRQ6V/i9e8cl7YrriE0=;
 b=ubLDLsXEcS+gRy7NCuBS0U8hRfvDH8rbExG4hDMZ/UPB3Z0OlbN5956SCN9w+6vt4s
 i83qKMAoJ8s6PECVYrrc48ILh1tnEurqEwv6c7qI9bHt4RPg/ZBGxoaZyy/j42XiO4dZ
 szcTBlYZ8evRbhYds+7lmWbRUWuouJm359n2RL7FTpFj1Nv1nKihW9WTUcwiDozzD5WY
 y79OD8sZ5VE5Gw8TQs24EtaXvjyqhd4U03u/RPmN+nWebpW7jIQxR6i14XX2UtNodQmJ
 G8FQ1K1xAaTx89lJDQ/zwRRShkgammuw55ZrtUzq7jvDzTQEV7jKgg9hy2uo610Rayz4
 c41A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DV6jlkNA0aYuGGTHJFqAlVIWbRQ6V/i9e8cl7YrriE0=;
 b=qHGgSODMTbphrOvRdHWHj4QL4y/e8usyDQ/Didxyyvwmcx6s0K1X+X33e5e8kbx1Hg
 AbRPEulyOx8o5tLxuH3kk9fZQrjNcCvA1nszoiecxVbjOcuQrOWk4z687GCkb80J3GxE
 UbSNSgWquarZ0zbgESMlISb9nnzs/qYcei91zc1hl1ch9K5j9gHXI248FfoQu2+jYrzY
 r59cePA6BLdNZMl+dco9L4Aj8Xlll+VCO6TBlrwwf9tGroya7HQZ5ltu5m94mDLKqZnZ
 fDernJG4M0VwQ5XSZsNk5sUwFkZXFt4zfJWYCLz3AO3IVq5mtn9vedf63QcBNxNcOW+A
 aDlA==
X-Gm-Message-State: AGi0PubnvPi9XtE5OU9jHpw9TgtAbmYd+yUWkwfjqt95qVjv6/h5AlzT
 mEPw8+MPYS2E2FlF2cW7b6woUA==
X-Google-Smtp-Source: APiQypK3lXJJ8OnZ7ClIxD0BeYEB6XEfm/pjTCKJqF60XnIqxkjWXsIItatZa73ZW9cYSXO2hPmHIw==
X-Received: by 2002:a63:df0a:: with SMTP id u10mr18587666pgg.79.1587421475507; 
 Mon, 20 Apr 2020 15:24:35 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
 by smtp.gmail.com with ESMTPSA id w126sm490730pfb.117.2020.04.20.15.24.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 15:24:34 -0700 (PDT)
Date: Mon, 20 Apr 2020 15:24:28 -0700
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v11 03/12] scs: add support for stack usage debugging
Message-ID: <20200420222428.GB77284@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-4-samitolvanen@google.com>
 <20200420171741.GC24386@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420171741.GC24386@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_152437_658063_D0F459F9 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Ingo Molnar <mingo@redhat.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
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

On Mon, Apr 20, 2020 at 06:17:42PM +0100, Will Deacon wrote:
> > +#ifdef CONFIG_DEBUG_STACK_USAGE
> > +static inline unsigned long scs_used(struct task_struct *tsk)
> > +{
> > +	unsigned long *p = __scs_base(tsk);
> > +	unsigned long *end = scs_magic(p);
> > +	unsigned long s = (unsigned long)p;
> > +
> > +	while (p < end && READ_ONCE_NOCHECK(*p))
> > +		p++;
> 
> I think the expectation is that the caller has already checked that the
> stack is not corrupted, so I'd probably throw a couple of underscores
> in front of the function name, along with a comment.

Correct. I'll do that.

> Also, is tsk ever != current?

This is only called from scs_release(), so tsk is never current.

> > +static void scs_check_usage(struct task_struct *tsk)
> > +{
> > +	static DEFINE_SPINLOCK(lock);
> > +	static unsigned long highest;
> > +	unsigned long used = scs_used(tsk);
> > +
> > +	if (used <= highest)
> > +		return;
> > +
> > +	spin_lock(&lock);
> > +
> > +	if (used > highest) {
> > +		pr_info("%s (%d): highest shadow stack usage: %lu bytes\n",
> > +			tsk->comm, task_pid_nr(tsk), used);
> > +		highest = used;
> > +	}
> > +
> > +	spin_unlock(&lock);
> 
> Do you really need this lock? I'd have thought you could cmpxchg()
> highest instead.

This is similar to check_stack_usage in kernel/exit.c, but yes, I can
change this to a cmpxchg() loop instead.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
