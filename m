Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22ADCEEB3F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 22:35:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LQtLa4Uqp9O6Y2NxDidkJzli778MlXyRxPIutc2WJqg=; b=Eh+Kb289WNhJ2w
	ArbYE2I/2TzWajm7fq6LIZs0fQ/049NUnq4T75he8CqbwnkBjX9FsZgYcdr0PnAcyQpjWfXnbj9eA
	CEj7h067RKHUDpoSyXqulXBuNC153NcoAfBgF/LQ1nHGv3IW9AHkURA8CnYi3nXnTp9HH3IQqN3TN
	JRzmqZBt9f94olzc5EbTTY5tkU+RIvwn57lC0e5yw4WybTi3BETPwIP2YUdLqZpEaetfsGA4ZDPcN
	iCl41R9bcoZN5z3x84mn2nZtXeKNF47uIlwIg2Szgljvm+0cV+VoXo1ypsX2haDYIesKveXjjYZn0
	gmnaq4dIaV/OPiiB5IRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRk0q-0007GW-NN; Mon, 04 Nov 2019 21:35:48 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRk0j-0007G4-MP
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 21:35:42 +0000
Received: by mail-vs1-xe43.google.com with SMTP id m6so5456690vsn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 13:35:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+iM6UF9mA8yEqKM2m+szbX2ng9KhnEZYRb5X/ojWJG0=;
 b=WQqOCU6qrDuZG8nuHgiV+CHsG7gWSoR72oOp+M0wKsltRJK+cGqjt2t0ZxI2LM6V8C
 1RQXAzRnu6jhZem6MHYFf5TI8O0Eb0LMsQH/RUeNBQLsild5ptqHR2+8pjmiMbj3JxhX
 gRUGg1RmBpVc1Q1nhoC4mIIl7umwH3N3gETvGBsHefq3zid8veGm9BMAaqqXtchvboU3
 oe82rt/ua0dQOwqs4AcW0tswAhd4f8FEmYPR+Wai5JGF1id5ch5hL+dBrDB6AtOUJFPg
 GiGCKXyOExBSa2rtb1uirhcrkQbT6A5dkDAwpPptAzVGzCMyH1PZXR7LWJ4+2g7vZ1c1
 epJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+iM6UF9mA8yEqKM2m+szbX2ng9KhnEZYRb5X/ojWJG0=;
 b=mzXy6AScm4WQdgzgCvmWBNLb4vB3TZ9xywLsOfKGAJ4OuhlT2FfTMQtJkBfETSVgml
 V5n42ner9TBYulRNeyouXtxYeGvnc6dYM63x1sGvkPP1kyt0QuHRwOq75dE9PZvs6Oo9
 3lbimYNpA+uoDfHCo/KdzAPH4BqQ2K6sUwy89UKvoBGc9+AWYLQYIRi9po0vZrA2eGqG
 acVUHOPKW/pRpcNPcbqEpR2W5IF4Fw1UZ7+8h9ZjXGZhshYK19+itAnSFa1vr5UXgyA4
 R7lone3P08fh0hpnnX6PduqnVhJlFxOAzW9MrADykihkK+Z/06sq6Wmy9z8YazRKobay
 wlpg==
X-Gm-Message-State: APjAAAUJXgH9L3ZmEGLveEMcIPdLyIdvB45INEWeYtZ5ZwAgIOaja8wD
 CfxrbayEiplNBfZwojxn4iUo1y74PCYhYLhQUb2DSg==
X-Google-Smtp-Source: APXvYqw2qurgJaO5Z50222coqPPYraifWu1WpUrqJjCs3EdmK1uhIyv2tT4xgK/tp1HQy+BY+QUyECFV9cgzh+9tP6o=
X-Received: by 2002:a05:6102:36a:: with SMTP id
 f10mr9282538vsa.44.1572903339925; 
 Mon, 04 Nov 2019 13:35:39 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-8-samitolvanen@google.com>
 <20191104124017.GD45140@lakrids.cambridge.arm.com>
In-Reply-To: <20191104124017.GD45140@lakrids.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 4 Nov 2019 13:35:28 -0800
Message-ID: <CABCJKueoJs7hS7VrVoz6CY_oAjTGcV-W61v9GAdwg+zk0W5ErA@mail.gmail.com>
Subject: Re: [PATCH v4 07/17] scs: add support for stack usage debugging
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_133541_757677_A23D340E 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
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

On Mon, Nov 4, 2019 at 4:40 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > +#ifdef CONFIG_DEBUG_STACK_USAGE
> > +static inline unsigned long scs_used(struct task_struct *tsk)
> > +{
> > +     unsigned long *p = __scs_base(tsk);
> > +     unsigned long *end = scs_magic(tsk);
> > +     uintptr_t s = (uintptr_t)p;
>
> As previously, please use unsigned long for consistency.

Ack.

> > +     while (p < end && *p)
> > +             p++;
>
> I think this is the only place where we legtimately access the shadow
> call stack directly.

There's also scs_corrupted, which checks that the end magic is intact.

> When using SCS and KASAN, are the
> compiler-generated accesses to the SCS instrumented?
>
> If not, it might make sense to make this:
>
>         while (p < end && READ_ONCE_NOCKECK(*p))
>
> ... and poison the allocation from KASAN's PoV, so that we can find
> unintentional accesses more easily.

Sure, that makes sense. I can poison the allocation for the
non-vmalloc case, I'll just need to refactor scs_set_magic to happen
before the poisoning.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
