Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E20C3D7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 19:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IxCnXXXirBcKjDVo3Ulwsx/Hj2+nmo9SZyg5eVpCP5A=; b=JHdT+qlamffNQT
	Zon6jr/bj5boqQenSp9vImNxbtDIwR8r7Cg3FhRBXCBulNF+nqC4SxkO/Pje+rs3GO0+r46DkUA3O
	Odz1la8QqiXz/iqSiQ1hVA5NeSQnMmwyprUkfO1/Z/nj/z9r3C+d8h5o24SUXyGKKL6kh4BRL5qDX
	hJdNrAXAYyVOvlCefDJMsZ4ZlRfK8kZY/f/1Lt8mTvClql1hQ3/Ld6u9vv5m3FWtVovqWupgzClJ6
	xHLNO7FBJJYOC6DNsMu7QtMEBmrQtEVk/IEiMZerj3GEIVbZOmUInNF7iQyEWZJdQQo/V7WNFD3Xg
	P45Tyu6WVPUv9aPAOlag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLVU-00073O-Pb; Tue, 01 Oct 2019 17:00:12 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLVE-00072r-KS
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 16:59:58 +0000
Received: by mail-pf1-x443.google.com with SMTP id h195so8440064pfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 09:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2awflrC+S8sW6Q8RM/7IHEMp9YVcJWuJTxLTWpq/SvI=;
 b=BV49VzhGClndCpnhV7hfr6O3hnvXTBaeI71S7Wb7NEfFeGK2L2UbE/CHr1SoGn8sqR
 t+jDBhR/ja8iIRH73mXK+85sipatQ7KQi02cIBi3mZZrug3mhTFJBWzZcpHtSXD0L7ot
 U7YiWARFMcbhN4RpZ05H4ne6z+rLWsFutiKvXBIjenmImi90FKyUQToC6CN1mXG2e713
 EEVldl+tL6vYTmxzps3RVIM44J97N+9Lvr0NNtbpJDzt0V9SeUj04OM3eDajFZhs5/bc
 cHcLm79dh6p4hK5pWMlZDm30hvguPG9+fVnYuf+WpzrOwzFupTWqjOlLWDZyIGYmHxCy
 qEDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2awflrC+S8sW6Q8RM/7IHEMp9YVcJWuJTxLTWpq/SvI=;
 b=mehd3ARDWOPLyz1Eh+EUxR/ntVOE0XUSrCLm1TKYJFPjJCZYNjwPRZ6CfNzhxJsWWX
 85u0eBZG4ErFuFKqbHi8C+5smpeAzRyClhxECO4s9/ft/HfyNX77EC7xX1Uyx5IGbvMy
 BTmFGPuQ9uBmIw2b6+AYuBmg/2L22TzVgZbXa3n/3UF8EOwfhjEeAeOTis0RdwN/5drw
 g7IZnL0a4+qT88h0k/0B/RtRbWB5j6Dt4JWuM25ImQGQETVE2WrO3G+VAYvHzfI3nCx2
 9glr14HfENu4oFW7Q6GWDwkNok3h1UBnVQRtGe4FCE55GXc1ZuxpW6QlzbBS75U39Ioc
 Vn+Q==
X-Gm-Message-State: APjAAAXDGeGaszjEooZUHo62XYGA4x1n07PLb6gIAtBHkFvtBwUp+gNc
 b3RroAelb92uQm3r9QPZ3Sqj2W9vyG69rKD0+Pedy0xbS0Y=
X-Google-Smtp-Source: APXvYqza0SPHw15ijDTzbY4E90ZETPgajrtr0mx3323n/WmbwxvaNA6FJ4ljLciXhra0aRHuEKxCIkefXuD7pecraIk=
X-Received: by 2002:a63:2f45:: with SMTP id v66mr7478314pgv.263.1569949194584; 
 Tue, 01 Oct 2019 09:59:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926214342.34608-1-vincenzo.frascino@arm.com>
 <20190926214342.34608-2-vincenzo.frascino@arm.com>
 <20191001131420.y3fsydlo7pg6ykfs@willie-the-truck>
 <20191001132731.GG41399@arrakis.emea.arm.com>
 <ed7d1465-2d7b-d57c-c1b1-215af1ba7a6f@arm.com>
 <20191001142038.ptwyfbesfrz3kkoz@willie-the-truck>
 <7558914c-fc2d-d05a-ccbe-76ef451670ae@arm.com>
 <20191001144353.5rn3bkcc6eyfclh7@willie-the-truck>
 <20191001153056.GO41399@arrakis.emea.arm.com>
 <20191001164657.l2wz3ghq6icm3lim@willie-the-truck>
In-Reply-To: <20191001164657.l2wz3ghq6icm3lim@willie-the-truck>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 1 Oct 2019 09:59:43 -0700
Message-ID: <CAKwvOd=+-PEQXOZBG6rprWdOzHfcQq9ojkGo+Q28vfC4AU=Hwg@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_095956_669438_2BB3DDC3 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 9:47 AM Will Deacon <will@kernel.org> wrote:
>
> On Tue, Oct 01, 2019 at 04:30:56PM +0100, Catalin Marinas wrote:
> > In the long run, I wouldn't mandate CROSS_COMPILE_COMPAT to always be
> > set for the compat vDSO since with clang we could use the same compiler
> > binary for both native and compat (with different flags). That's once we
> > cleaned up the headers.
>
> But we'll still need it even with clang so that the relevant triple can be
> passed to the --target option. The top-level Makefile already does this:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Makefile#n544

That's not pulling the cross compiler out of a *config* (as this patch
is proposing); rather from an env var.

>
> so I think we should do the same thing for the compat vdso as well, which
> would allow us to remove this complexity by requiring that
> CROSS_COMPILE_COMPAT identifies the cross-compiler to use in exactly the
> same way as CROSS_COMPILE does.
>
> Am I missing something here?

I think the second paragraph you wrote shows we're all in agreement,
but I suspect you may be conflating *how* the toplevel Makefile knows
we're doing a cross compile.  It doesn't read a config, this patch
would make it so a cross compiler is specified via config, Catalin
asked "please no," I agree with Catalin (and I suspect you do too).
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
