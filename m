Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A94EEB59
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 22:44:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QkVesvDIN5SCy7w7iFIhk3hNrwF47E6dPtNy6l58izo=; b=ZjdnSDDm5ELkEQ
	Bz8oY2Of9KhAUUSHrAoYIinGeaMp0e+6qR8eHHOk6YdtZakpYyGcAjBiUci3uUemT5nYyE8cLYw7G
	11Xne0WwT5RGFFxPQkQFpJkiOyPVYOrUDh5i1d5mJhG3vLIhob2qq4GiNyH9+Nt8DTQ+qC2DwQ8Yo
	jzk9byIvwrW+o3hqaWtXULCdtZO5IbOEWppUXVeFJi4OGeB6iwtRMBUUcG16XC9CHvIL6ds1KhRhJ
	99W8wTs2USV6Tsr8Rmq12q3a6RTUI9fn6zEs55ZixLp4FbDsBBtvEuLZCflyPoIRSqVDmvVFjyuvJ
	n2MdMnZcN9h+ynkXlRZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRk9e-0001B2-4u; Mon, 04 Nov 2019 21:44:54 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRk9T-0001AD-JM
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 21:44:46 +0000
Received: by mail-ua1-x943.google.com with SMTP id y17so2619690uaq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 13:44:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kaXvf9wE3k9UaecG65PnRrmHU9a0z9eeJYq+CJlozEg=;
 b=pHQfGMcFvDs8Sz/sj2D9FDXz3MnOQRQu+N4CdnI6FNzotw2uFLAsGlw2AfCslqt5i1
 NhuT8B5Ezfwhp9svCCthVzKrqQzSaREP2/BOyA4VdDO3mOGFMeEnNqjZV9EKKb5BwgAH
 bM/dxgbkeGBwpw6v8NjWHN7WfR5TQqN/xXvS5kz11espcMoT6/ho31I/XOxv81JBcV1z
 GeqbggJuYjxj2QeyalY3/MCFCfCDWJn8/AxC+ZFPpCHvzX/Cpnxf1nw4yPeZBVh+ScLp
 O8nGwga8BiVRzIj9L+z7DaZgwmXUgoNZyiEQqIULFC5kXaLbkCP27rPqGbTAVSPqhK1Q
 tN3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kaXvf9wE3k9UaecG65PnRrmHU9a0z9eeJYq+CJlozEg=;
 b=gp3zNyIXJSZMUZMAiEaumVB/U5LaLCXQdPwvF+lvKgZTLiBpluxNG9B+x74itJbgHP
 1aj6lgPF+hK4ghKJAJ+26BO01tWzy1tHBsvBKql+eGSs/hH+9b7Gbi1d5RZbM5pfwRB6
 i2i5zHbLbJZ6PB7EFxi7JssQs9PaZH5Xh/Hmrl3jliLUQyh1KWDBlmQ9aGa2kSfTFsUB
 kE0FDQLaH7fuBDxI2LQcuc93qZAGTCt+leRWEEmke90pjh86ZaKaYmfoYOPTbXq6R0lt
 4Jf5RFiOEZb7BmG3ES/MoVloPh4bcPNck5AxnWzfaXNsdEq5JOOXrUTA7t5SzpAs904w
 yE1g==
X-Gm-Message-State: APjAAAUeNHDL4z6dTRutf8r/+vry8koA+GZCs/Ri1+ENuB1fBMV53wD5
 X0zoxCgc7ZqvnE6ztEmZpU4W17F2ix/OzH9GMgXHvw==
X-Google-Smtp-Source: APXvYqyozZ81Thh7mlXHgf1QUiqKh64ERV1FrTZSir+nNNiHAQ72oavyDPOWqxJDAI6llfn+2fNkSSVjyIyFG0syB7k=
X-Received: by 2002:ab0:5981:: with SMTP id g1mr1829842uad.98.1572903881724;
 Mon, 04 Nov 2019 13:44:41 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-4-samitolvanen@google.com>
 <20191104115138.GB45140@lakrids.cambridge.arm.com>
In-Reply-To: <20191104115138.GB45140@lakrids.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 4 Nov 2019 13:44:30 -0800
Message-ID: <CABCJKuf4wi6oUkJ68Z49UkK5q4WYYmSPt1X0pyw34ueNMkGC5Q@mail.gmail.com>
Subject: Re: [PATCH v4 03/17] arm64: kvm: stop treating register x18 as caller
 save
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_134443_662750_97B5A4F4 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Mon, Nov 4, 2019 at 3:51 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > --- a/arch/arm64/kvm/hyp/entry.S
> > +++ b/arch/arm64/kvm/hyp/entry.S
> > @@ -23,6 +23,7 @@
> >       .pushsection    .hyp.text, "ax"
> >
>
> Could we please add a note here, e.g.
>
> /*
>  * We treat x18 as callee-saved as the host may use it as a platform
>  * register (e.g. for shadow call stack).
>  */
>
> ... as that will avoid anyone trying to optimize this away in future
> after reading the AAPCS.

Sure, that's a good idea.

> >  .macro restore_callee_saved_regs ctxt
> > +     // We assume \ctxt is not x18-x28
>
> Probably worth s/assume/require/ here.

Agreed, I'll change this in v5.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
