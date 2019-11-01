Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987EBEC6DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 17:33:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KyrtAEE8ZWQCjMRTVUZiBUt1oiZe3+j5Ed5I1SPyZg=; b=XTDTSQDAzH01uF
	zjqECgiTuPi1nolCxbnmYJJylDuWGpgl9ZMxRYjeNNkQowXRJaMrZFJ5pyCRp3GZGCj1IWX0KJaRZ
	8EZQLYpv3ELr3NNe5tau6SRybP/RvixlPmLDCjUGaRRR6YVc7P5yYRRl06jYX8H/XyrjfJadrupbX
	9LPEYH5et2vyELodTaMOvWDWyRACPfRyFob4qGc0DWJ++niqFuB6QmeWxJLVLhSffXLCBL15j39gj
	VtwJJWKqBtv9sxMlMjMs9Zz/47MKMLYmxwHMzL0R9ZgM6PFjhZVTP2MqkTMnPMmucw4pMOHzx59sq
	PVi/hi0nh2Qqlt4zan/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZrQ-0004YH-51; Fri, 01 Nov 2019 16:33:16 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZrI-0004XI-9c
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 16:33:09 +0000
Received: by mail-vs1-xe42.google.com with SMTP id l5so6700031vsh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 09:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j5WHWvyJ9Hz5kosmku4ReDEqbYSNCjtYvPAtQ8gov0w=;
 b=mVdZ7udliBm1Ah/0SRYlDf6bwEJ6TL7x3JmnofXlcyZOXqi5Q9VBuiMbpvt9qFtviY
 O1dg12Mx/ZqNCdmPnMehixCUQwwDXQwkP8easpaC7ETmB8M+bGzkf5mtTCIfXJepYgXQ
 UpEXv0+Y/8IRh6Bt9tXSt5I5dm6Naa/8+P0Gfr7zVhf9zJ0enNNpTxkLjpUS3Y3FM1TQ
 K14mAw/P1HzmMF2Q3lOwbI6KFmRqbDNTH4h5du1QpSKj0tUoB4V/KntCBftt2t3ivGyo
 CvnopvuGe8ctEsWcfBzhSVdFtD8ECLxaPGft365BahwUkKRXVOufpCDz3m9fqW+WiVMo
 c2IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j5WHWvyJ9Hz5kosmku4ReDEqbYSNCjtYvPAtQ8gov0w=;
 b=KPlSHtJsrafTsG0boSDEjyQe7S/gkCm4XMVw72cTfXCz4OZ3nwM3ZF/YqPlCLHA34E
 o9D3abmx7Ec6v0XI/T6I8joivi67qNbXLLXEp3d5JuFJQyofxrIGVNHG+HaRb7EuqcKw
 uEPAaPFCpQGQhxSLrBFw02CmJj8WF/zKHXlF7ft9Tm42z9Cz93T1ivWY/Bg1QkZlmyjS
 xbZM6ElagmspW8fjT3swICdRSKLT3wJCpsVrnRDuK3s6MuD0FG3IyZLmOgROk4Svkp5S
 YEEiQ4Vua+AoA9KpoLryHtAK2YBFz90uTD7Q9zzcatBzpQhYDV30RuhXN+Be4bL992oe
 9SUQ==
X-Gm-Message-State: APjAAAVS3+h1wSpPCq+Y9cEMTJYYJEvtU65bEhTI6htt4iQZ9E/l8MKW
 so2NA5eZNMQNLhUKKwtl3rMdfCNI/UIM4i5AhIGh/A==
X-Google-Smtp-Source: APXvYqyUC2VNoK3kn3nz3vybeugE+sMvvcm2WU0gwrr3Eljqv0y0V3sHBklXl+ihwCVizGZj+lsXZashNS/ogzG8fqQ=
X-Received: by 2002:a05:6102:36a:: with SMTP id
 f10mr1696654vsa.44.1572625985166; 
 Fri, 01 Nov 2019 09:33:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-8-samitolvanen@google.com>
 <201910312054.3064999E@keescook>
In-Reply-To: <201910312054.3064999E@keescook>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 1 Nov 2019 09:32:54 -0700
Message-ID: <CABCJKueAf3f-rHw8AXJKKi=kfnh+nBMpJP2Vb2DVqLUWZVmFqQ@mail.gmail.com>
Subject: Re: [PATCH v3 07/17] scs: add support for stack usage debugging
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_093308_358856_B8F7BB38 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 8:55 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Oct 31, 2019 at 09:46:27AM -0700, samitolvanen@google.com wrote:
> > Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks.
>
> Did I miss it, or is there no Kconfig section for this? I just realized
> I can't find it. I was going to say "this commit log should explain
> why/when this option is used", but then figured it might be explained in
> the Kconfig ... but I couldn't find it. ;)

It's in lib/Kconfig.debug. But yes, I will add a commit message in v4.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
