Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B39E164D3A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 19:01:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Yh04u/b3at9WID1z/3A164jnrxa8mPwUaA6yeBGv8s=; b=uLnmn/Dw/dBz3a
	FkIIYAf5D2qCFXiOxNfySVGGalEkcER3G9PD7TxUQTv3g/1oW5V/UH2yAiqk/9BnpmvSY8jE8gCKj
	uYMSPsLzYYgZmkfvpxnjB9mJRev8ZYze2e0bV4+8/UrRA8Hka4bTW9mXSHe8ThTEnZeGXyuM4nPhL
	8LhpgxRcq668hDOOdQ9S4BRSeeFvfXC5OrNk27LZDETcJms+a4Fm/UzkJs7r/LibQnwz1JH/BeZkW
	O6/jlWfIl8QO6bnwGGKAhvFh/7GjCHGzNfAiq3T89ExYwjxnr1VUXKpgxn5BZzlbBqP2vrFwyz2+y
	bMWBcShgK3qSzTAG2/qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4TfD-0006Ut-HO; Wed, 19 Feb 2020 18:01:35 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Tf5-0006UR-M2
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 18:01:29 +0000
Received: by mail-vs1-xe44.google.com with SMTP id x18so896403vsq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 10:01:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lkHXwFRTyqTPxv+c/LKoXDAeY6A/OlAl/xcBXxo2cgo=;
 b=gh6t3G5BECE9aN/9A6d1bwWVVZBG4fe4Jv0G9F7ySydWI5loDBjyb6KyvSnHC3H2xb
 PiYI+vSfh6PGP3+tITPcVcHh8lERKC8od4oC2sH0ZseserCl8/SeCqlEtOKaPowUnmOE
 2eXS1KVuXlN0wfgWz9OeANM1/plXi4TktMssP2HUeiH/l+o/2AxWa3NY/kVCtRCjJr+f
 dMd7adB5l/qvK2DvV3IcWYmCoMHtH9Kl4DGNXpxeVnHW2OLrpEsXBoFzatmkLtQ0Da/S
 Do49a64NNoQSLpsZnbjyOORpErFk4A1akDXWP+T4B/uvtpfqQAguJp3M14618EN8fHqX
 JuhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lkHXwFRTyqTPxv+c/LKoXDAeY6A/OlAl/xcBXxo2cgo=;
 b=gp1etbA+zjpS9BIfq9cPV2YAmPqq9IRGeH0mIhEeYCwGaKhCsZUZpJOgIm9Vwl7U9p
 qhzWQ6GEWhpBMcfZp4oBqJKfLbkPq04zMAG8Lblhk8vxLkYZfB7jl9rlv5Ca+yNcnE/8
 ORr+L/XNpDrwyhPQTPsq3BR/TApT4QoxrJlJYuDrOXiT/42OtTcSkYx6aLZpEnHmThCM
 ynOHs7yOMsthZ+o4G38QM/gLkQ4vjMTEqMFgZmN26cwuxXMlVOO9wyRIsLKEUh1E2PYA
 1yRs0hL6Lp0KuGbbhuhXU711F1bgGts3P3oT0ZJAaHmE+BUuH+KxSsAR/eA9XDaTQEKs
 BJ0A==
X-Gm-Message-State: APjAAAVozBuLnPTJshbyy0w6CtCI/zQwWMF14Fwabxr8e8c4cdFEJpzQ
 1G5lCuk1GUr+F5A/heAX0QRDkhuedVveviO0HGTzlg==
X-Google-Smtp-Source: APXvYqw3wiSQDj5QZ98aok1Lw9PhoU8kfJwXxmz9XhbJ0dJG+YvWrUVCRlfmeIwD1SQGOVaP3AytmkpGm/U6NhVXLLw=
X-Received: by 2002:a05:6102:1c8:: with SMTP id
 s8mr6086880vsq.44.1582135285718; 
 Wed, 19 Feb 2020 10:01:25 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
 <20200219000817.195049-5-samitolvanen@google.com>
 <20200219113351.GA14462@lakrids.cambridge.arm.com>
In-Reply-To: <20200219113351.GA14462@lakrids.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Wed, 19 Feb 2020 10:01:14 -0800
Message-ID: <CABCJKufsYiBX6a0cmaX4D+3RDDKLLeRLAuTZgxO4=QryHYUptQ@mail.gmail.com>
Subject: Re: [PATCH v8 04/12] scs: disable when function graph tracing is
 enabled
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_100127_745746_2D394D02 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 3:34 AM Mark Rutland <mark.rutland@arm.com> wrote:
> Fangrui Song has implemented `-fpatchable-function-entry` in LLVM (for
> 10.x onwards), so we can support this when DYNAMIC_FTRACE_WITH_REGS is
> selected.
>
> This can be:
>
>         depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
>
> ... and we can update the commit message to something like:
>
> | With SCS the return address is taken from the shadow stack and the
> | value in the frame record has no effect. The mcount based graph tracer
> | hooks returns by modifying frame records on the (regular) stack, and
> | thus is not compatible. The patchable-function-entry graph tracer
> | used for DYNAMIC_FTRACE_WITH_REGS modifies the LR before it is saved
> | to the shadow stack, and is compatible.
> |
> | Modifying the mcount based graph tracer to work with SCS would require
> | a mechanism to determine the corresponding slot on the shadow stack
> | (and to pass this through the ftrace infrastructure), and we expect
> | that everyone will eventually move to the patchable-function-entry
> | based graph tracer anyway, so for now let's disable SCS when the
> | mcount-based graph tracer is enabled.
> |
> | SCS and patchable-function-entry are both supported from LLVM 10.x.
>
> Assuming you're happy with that:
>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Great, thanks for pointing that out! This looks good to me, I'll use this in v9.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
