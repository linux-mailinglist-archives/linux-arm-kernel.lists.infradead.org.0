Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C45F013FBD3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 22:58:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tPAsRAXcImnabhoVWVjfxSJ1aPK7hXHJLgNLbZ+X5OQ=; b=LhS0ExdsN7VtJf
	WGeCu1YZFWSmrLx0yj/yeO8FVcfaW0Jm9EWUneUfaBSaO+XUlcLIl5oFUVlXDjtcFfM2VaGgwaMSc
	IeXkH2zISMampp+lcEieWmDEj3OrB/SAkKT/BbINnlGPrDyGcF8scGPoWO3JtLyJ4IZsYMx06vazn
	nnifDySlvKiIddRKRVkEpKsw+Sc2HC/C0MmhHmQs+3Y/3VpwVlvFi6XeQ5eZgeqt0K3spQb+qt76s
	9daOL3oQfvIf1xrZXrCsVoFLQkXVEzUePrszsxT7L4bHhVN2x5t6NehW+mxwtwgZZQ9heWsPU/ps7
	LbBGaOEQMJowoEFbl4OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isD9b-0005Fk-ME; Thu, 16 Jan 2020 21:58:15 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isD9T-0005F7-Vr
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 21:58:09 +0000
Received: by mail-vs1-xe41.google.com with SMTP id p6so13657910vsj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 13:58:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=90kSKrsPpbCluN0U4RDiVNxyzvDrsXuzgr4VAEgKFuc=;
 b=VNVb2CG8c3HkjMqddLo98y3OPZa+WSPTAgoYdSf7FbWI5WNi3wnlLK0p32BzwbDJkl
 DxW3dVwqqXEzvQDJ/t2t8XVh7UcdBnxl57fQBAwB07GY+Kc5s2di8Ti7bcTy/S2/pe8U
 ishyY7KqIu0u9X9VZYcJD0ArT3LnkwpSs93Icdin/XOuAUh49RrudpoY+q52GTTYSx40
 GpnMdqP6bRbODHeQRjbKNwwaXhmlW1mB68/yoKkEelegSKWRaD4DkiQa+ct5BY9CQ8b+
 WhW5jUQJ1e+6OM3m0IRmGb8dXhOkx9FNog8QbWSOqQkVjep7R9pRuyilDTthUXsbS/HD
 LriA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=90kSKrsPpbCluN0U4RDiVNxyzvDrsXuzgr4VAEgKFuc=;
 b=FjpPdqI+flocRiIk9hT/mOyS8QWdzMyq2kUX0w5B0sViCKuNXPNWvKdg5C5ZGlGeFd
 ZbmrQMgDD+PE6BH9S1FEBMkWum7ef0y8mUSA2FtreXpBCx6RnVjDnZszXYarhvSjfZ5g
 Wjf6WL9ZtE6uBuKKv5fUvpmx3oC3Yj/Hiy5Zq+TA6pSSYOXN2wabfMTD6twYjhErUjfh
 e10opre1fa+26/Z0tSEQHqdK+9ztxVlrIXQBjSpmYsCeT2Shw1ZdUKw2jRXaH4oYoSXX
 C2bKeeOXvjNQ1WiNpS7IuHpWHjt1cWu6EHW4YElX2ooFDWgflJOEyeNabJrZzMRAFC6n
 X6zA==
X-Gm-Message-State: APjAAAWSFdppGRv6gHDFfrO3ILydLeO8MshB5utBdONDHsX4ROybLddX
 RAvWxiRp4gqTgARUHbIN7euhlGIZTW7GrViTuG7tvQ==
X-Google-Smtp-Source: APXvYqzrUqH5/W2UZ+FeXG0hZr7Tack1J9k9eB9pBix6w41rOK+OkTqsOrnRDdc5aMPEGFoHQeXxcn/0tewoHbFlgSg=
X-Received: by 2002:a67:ae43:: with SMTP id u3mr3413809vsh.44.1579211884786;
 Thu, 16 Jan 2020 13:58:04 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-15-samitolvanen@google.com>
 <20200116182414.GC22420@willie-the-truck>
In-Reply-To: <20200116182414.GC22420@willie-the-truck>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Thu, 16 Jan 2020 13:57:53 -0800
Message-ID: <CABCJKucnitMPUv+NhZu4bscz9qs1qB9TXR1OP-ychFO0LQ4v_g@mail.gmail.com>
Subject: Re: [PATCH v6 14/15] arm64: implement Shadow Call Stack
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_135808_050261_B2B06A06 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 10:24 AM Will Deacon <will@kernel.org> wrote:
> >       .macro  irq_stack_entry
> >       mov     x19, sp                 // preserve the original sp
> > +#ifdef CONFIG_SHADOW_CALL_STACK
> > +     mov     x20, x18                // preserve the original shadow stack
> > +#endif
>
> Hmm, not sure about corrupting x20 here. Doesn't it hold the PMR value from
> kernel_entry?

You're right, and it's used in el1_irq after irq_handler if
CONFIG_ARM64_PSEUDO_NMI is enabled. Thanks for pointing this out.
Looks like one of x24-x29 should be safe here, and the comment needs
to be updated to explain why x20-x23 shouldn't be corrupted.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
