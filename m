Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 265E7E75EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:15:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D1AQsiJ7oPUbiW1Lu2TkgPjD/pDgkYvlHw4L0BS/Zcc=; b=Zhh8KQ/smSxotS
	IqlAdQPyZLI7I0VmPhiyDJRJMkRosxcspt4LdG6Oa6ELZqOEeEd/RqoRTTFB+xVC66N5YUeC+X1Hq
	oyqnFrSaaTiY4Zai6zTYR+wmWgavcpKpBWXS1iJet4z36M2/PEJScr4mDOJY5iXac9fPiCT4qT2ec
	ejhdxkj9xFO2FcvqJnkRefLBaK0R0SZji6gn2M0h+pOBp7Ko2ZiIkJS83+kIrPO7+5aZcxOAsY1kb
	hMlIFYMLYdtNccmLML9xfvMdw8G7R01+HYfwHOu0sWBzHYwlHmx1bj/sQ5nLSNrN+SmqCZVzVL9/e
	JHaRc3Upkcju4lnlZJAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP7g1-0000if-OD; Mon, 28 Oct 2019 16:15:29 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7fm-0000Hv-0u
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 16:15:15 +0000
Received: by mail-vs1-xe44.google.com with SMTP id y129so6706907vsc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 09:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NAeDGv4mmTdcJjmFC/Y5EqwPqrlxkNMDKmTxGtNGkZY=;
 b=cRlJ8go8Gwg5sHkB7ZS3FAbbXtnMD/tbE+zSlh/I1r1/OC/G4k2GVu3K4ZQIVtSesK
 qWj5vEzyZr/kwqbQ/BTQz27rlFGtYiadnB4BjwV9Aanq9y6mIcNlZgE0TDCUZmzdfMAK
 pYXldXOHSP6bQqOp2tqseN1pN+uwLR+zn/EQU53d0ejxptXvTV4EloD/dPmL0glR+KIS
 nM5OLYggHmVr1GJPpWaCLHPpHehzf5Xxk2CL48eRGzuTedh2dhf7I58eB/9um9Q2ykj/
 fH8V56DN6X6u8meTksQpmCSDkwZZFwfBU/9m+m5LLJy37fUNh5yE52TZE9xDBcF8G6ck
 eKDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NAeDGv4mmTdcJjmFC/Y5EqwPqrlxkNMDKmTxGtNGkZY=;
 b=SKP4JFqqJvr8mLj5Zsop8WB5FdA25TJvllEKPvk6ZXrbc+2PaVxKejy9SfwxVC8/za
 cessTonZFffsBEidYs50gvQnS5MCWJPs/F7VIuaIN4gGQ8mNTd8SoQCYYWYKDu2XQlIf
 OrYlHHjY+J+W+Hmfy4+PPQYcCwYQ7feeQufHOBqAOODoVISIY4KYZhGblZrEPz3lU5TT
 UK0LHmuGvPTtsqa/amFDAGHwktWOKxyWDYK1At9f3L3QX8+sepSHP+aiELvPaLm1+NYy
 GVVhCYTJ3N3AMIFUk3UzmfLndgJtnLHXFhxCPLJolLWBmVujEfFBjA74W9XDBTSOZ0H+
 bxsg==
X-Gm-Message-State: APjAAAV50sX70cS/vx9lxTfVObZkrEPR+4BgADanaou5oI002jM8DC8x
 P12KcE+Qye109B8L3Qv13mjArTxJmUfHCYpnDuXFOw==
X-Google-Smtp-Source: APXvYqyErnDNeReEYHXLOlOQvJxZB1LCeRqzFRFTtzuu+yjPbfij2oddf0msvyrSOjimXhfQmIZ/10I+XmQJOMeVmmI=
X-Received: by 2002:a67:ffc7:: with SMTP id w7mr9278938vsq.15.1572279312128;
 Mon, 28 Oct 2019 09:15:12 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-6-samitolvanen@google.com>
 <2c13c39acb55df5dbb0d40c806bb1d7dc4bde2ae.camel@perches.com>
 <CABCJKucUR=reCaOh_n8XGSZixmsckNtFXoaq_NOdB+iw-5UxMA@mail.gmail.com>
 <CANiq72n4o16TB53s6nLLrLCw6v0Brn8GAhKvdzzN7v1tNontCQ@mail.gmail.com>
In-Reply-To: <CANiq72n4o16TB53s6nLLrLCw6v0Brn8GAhKvdzzN7v1tNontCQ@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 28 Oct 2019 09:15:00 -0700
Message-ID: <CABCJKuexT3-AMiziJdDjKgW2iBW-aBuBJCTRFLK71wvpBkZ5Qg@mail.gmail.com>
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_091514_118413_E9DC869E 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Joe Perches <joe@perches.com>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 8:31 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
> We decided to do it like that when I introduced compiler_attributes.h.
>
> Given it is hidden behind a definition, we don't care about which one we use internally; therefore the idea was to avoid clashes as much as possible with other names/definitions/etc.
>
> The syntax is supported in the compilers we care about (for docs on attributes, the best reference is GCC's by the way).

Got it, thank you for explaining. I'll change this to __no_sanitize__
in v3 since Clang seems to be happy with either version.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
