Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D776AFE4FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 19:35:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0lsvtzPuXzqBqjUwF2zRsr+IrZc3SuXiUYsc+5Jl+Y=; b=sAeRklmlWtDlXp
	mSLJzQGDGz2IjlYEIKIdrze6bhRedg8TWormLrS2Td8bv5FFUuONfAc29OeTFKZuuSxY7GjW0cSKQ
	DhtXdjRea8aBDzsTQl9Zgg5ZwK0sAbUNNumdYoXWWJZXidJQS1jIfWd6CkkyaS4ICqAgOE8AVRwZm
	EW4KzXK/GfwwQXsdvHAmIpNKh3tkobnA1Ofl9Bw6TUmkb7RqoIzoOCPRJkTaNb36EtQgk7Ndm2XtW
	1khHdG7ZA2riqn07xvHFKQlNC+wGKsOp37tkac7ALO1Pz3t3vOr8zJOKGVMWcIsNsQx8Bxnkx7Plv
	tH/uugpU01iebjXX8uXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVgQp-0000Ds-5X; Fri, 15 Nov 2019 18:34:55 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVgQg-0000D6-D4
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 18:34:47 +0000
Received: by mail-vs1-xe44.google.com with SMTP id 190so6952908vss.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 10:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z/RQj5FqYPBFFb/BHpJq3oq0/JIX3F5mcr3Ic1KDLoA=;
 b=DPVoi3lqXCZqeWh9romeMaws5hqXk7f+VlyR9XfhSR/9BdSIhcYmEux7SQ5St6jgAv
 Qy7JHhLn5W/E49pgWgOuvApN0oQk7kKUVdvzqM0GYzY6xGnHrcu3/C3H75y46ixSvuca
 LjPAO51k95incrTQsuJOy8ZRL6zlZ92V+cSt7WAY8zd/QGfPmISheb/46Q0qXikywE7H
 4Xh/pOiL99Mk+H/Q9TdrDS1OLq9XHIwJxh3HXyW7oVjDzKgHZwFJFMojZFKSuD9lUD8s
 TsrwyDeDC5tuRiLuIUH3CjrVYpkyH7ytqD6EnefisDfsVDoa6xNUGa6ZrfAwBeh0RQqM
 vZrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z/RQj5FqYPBFFb/BHpJq3oq0/JIX3F5mcr3Ic1KDLoA=;
 b=WDM50PsJdqvsS//PzsTdCZfbCHia2fE9CY61SMuhJnfRmNjqWjisk5cjcdKknPKYj/
 bZIqjFKApi/Jg6Qvc7rTPduArwKf2McfEDgl1FbYY+lx4SEK5Al1WytQmUfSzc4sLjKY
 TnPS8PPIaV7dXSEw4sacetdL1SfGavRSrmmGBfa+YbmsGnJ4mQmE/+Nk4EmNjQAbk4UG
 FbdtHylA0wZcBsXSdnKZ/vfWjjGaMaATFDNE79v1oWR2QV+bI5jtYH0Y6GjajmuYSEKU
 Gl66fMGc3QFfwjIsw2xqlXGa15uL8QzoI8Pq7OXHrtBZWgQnU2Egc6keQcrI2h8xlE0s
 douA==
X-Gm-Message-State: APjAAAUEjE6vyNu/YCUFNG8f5fWlT/twoJl95mGNPTGRu2XfUcrd29c4
 /IChZwiN0e1NdYMEjr4CCtn9X5LeV4lPcIyamJIwug==
X-Google-Smtp-Source: APXvYqy9ZihhNwSz15zAc2n9wuqx0KKCFEmVQyQmPiar9gQiv4PEvu699gEh+PcCmRyXpyUO7fCyzGA8P+JoII/zuY4=
X-Received: by 2002:a67:e951:: with SMTP id p17mr5243152vso.112.1573842878866; 
 Fri, 15 Nov 2019 10:34:38 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <20191105235608.107702-6-samitolvanen@google.com>
 <20191115153705.GJ41572@lakrids.cambridge.arm.com>
In-Reply-To: <20191115153705.GJ41572@lakrids.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 15 Nov 2019 10:34:25 -0800
Message-ID: <CABCJKucsJxXJ6tBYSify-2FS-P1rC=vEKTo+HdhN2e0K9fcBow@mail.gmail.com>
Subject: Re: [PATCH v5 05/14] add support for Clang's Shadow Call Stack (SCS)
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_103446_444348_14675EA2 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Fri, Nov 15, 2019 at 7:37 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > +config SHADOW_CALL_STACK_VMAP
> > +     bool
> > +     depends on SHADOW_CALL_STACK
> > +     help
> > +       Use virtually mapped shadow call stacks. Selecting this option
> > +       provides better stack exhaustion protection, but increases per-thread
> > +       memory consumption as a full page is allocated for each shadow stack.
>
> The bool needs some display text to make it selectable.
>
> This should probably be below SHADOW_CALL_STACK so that when it shows up
> in menuconfig it's where you'd expect it to be.
>
> I locally hacked that in, but when building defconfig +
> SHADOW_CALL_STACK + SHADOW_CALL_STACK_VMAP, the build explodes as below:

Ugh, thanks for pointing this out. I'll fix this in v6.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
