Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B67BC1BAA62
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chKBIqadLwNC3uGrbiM0YuF+/KLxhiDbRFVGvx3bhU4=; b=IQ2Lm8Dxh7fT+o
	9w//J95caFL6cOaPzj0EzzGGTgpubeW6OWNkF3cdqsKvOMm+pxEJ4rAF0sNd1WWXijL6mUGTGoE1r
	NMXecWsbFBJIo8FmKz1rscCLlIN6jIRSBsgO1E1vs2bxuSL9BSduIMJ/GrvoCpteIS80uXatvKSlO
	dPy1QiNB1o9RZZ9eJ6/xnmOULk/05CvS1nsoREAgpMddtqMaPkalqxnTb/fBH1LpqThSnNPA8orfN
	T/M9AIu6svd6A27pzboLS7LrZHBShKUqcPRf0Uhi7RaEYgJA5akL+oyu9ng0MKtHPgRhhRuog6rGB
	SAXG3ucnXhO5JI4l46yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6wS-0004y2-Tc; Mon, 27 Apr 2020 16:49:12 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6wJ-0004ww-5U
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:49:04 +0000
Received: by mail-lj1-x243.google.com with SMTP id j3so18292443ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 09:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DggTYojfEhSzNZzSt4p++E5JdlZHCZXJc0ROh9SzVlM=;
 b=GRK7TdGOAvGylag4wlIODdJrhvjeHh+CNCtIcuSjrjRzmjvA/4gHODiRDIqS3Ni+Ul
 xbrVAAQCFm0TrYX2gS2hmjsvmryyRHakKtro88oW5d8as36di5wAZi4QB0mVNrt3VYKC
 +mpM0biKQt1OtPZuP6KA+c31n0Icc3RDkS0F9D8RbdChUBCSxHizssgw5UMLXNS+Ozdv
 GhMLcbyKMjipz7hWcnUogsA5mxtEQ9HhUWk5UBJ4M7FpLiEWL82tfvSHuemxUMjA3T9k
 HQEcjwjSO8dW822QXi8v5ESAjxm5SgtUzR6RIF8ybNX7oWNscelNzVp5wj+yo9QkGQtH
 XR7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DggTYojfEhSzNZzSt4p++E5JdlZHCZXJc0ROh9SzVlM=;
 b=jyb0vFO7i+NIgdQ6uYrFiyU+IgOoSzCPMPRyZCnuIOFuPG7N7IPqlGf/ZhfMfmp1Tk
 z4gMri7G34oMtgBWDfbJm5EpfMlhMlsPeSn6xvWLxcwC/hPke1CLTXxDQM28fxuBeXvR
 CC8E7scRUlt2YRY5jCLaqiOdlwHmsw20RraLoa/BZAClIBW0tn4bCdOG/o2FkcE4hImU
 w1nLjyflBJQdvaTZvWCMqxEM4KBcXriVxY98K7v1API0VSKZtgQCjmC2nVxtVjElMdHf
 CfvhigYKbotOkREnI4Y5gdx3n3ED4PMHkUPM3rXpo26bXwW2AtbG0tz8CkNFcRTZdpD1
 yXEg==
X-Gm-Message-State: AGi0Pub5BOmyfkaMl755cW+ldEJZ4fzboALeiqE90jPIwf02RYpZRy9a
 IyA9/L38VMOM87DcUOv2bAwPjoJqTnySoKlYfZk=
X-Google-Smtp-Source: APiQypKOZlel+ggVdbFyIPtgHGZpVrDz6ne1COTeLPmgW0WeAhG5IdM5qWoDEvfl/ilzflIttY+StL0Az1RFGIsqSuw=
X-Received: by 2002:a2e:7613:: with SMTP id r19mr4909107ljc.29.1588006140845; 
 Mon, 27 Apr 2020 09:49:00 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
 <20200427160018.243569-2-samitolvanen@google.com>
In-Reply-To: <20200427160018.243569-2-samitolvanen@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 27 Apr 2020 18:48:49 +0200
Message-ID: <CANiq72=vvRcjWCON7zbaCTxLA2wP_-5zrnLyymR4g9b1gwc5kg@mail.gmail.com>
Subject: Re: [PATCH v13 01/12] add support for Clang's Shadow Call Stack (SCS)
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_094903_213365_F183E8DA 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [miguel.ojeda.sandonis[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ingo Molnar <mingo@redhat.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 6:00 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index 333a6695a918..18fc4d29ef27 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -42,3 +42,9 @@
>   * compilers, like ICC.
>   */
>  #define barrier() __asm__ __volatile__("" : : : "memory")
> +
> +#if __has_feature(shadow_call_stack)
> +# define __noscs       __attribute__((__no_sanitize__("shadow-call-stack")))
> +#else
> +# define __noscs
> +#endif

Can we remove the `#else` branch? compiler_types.h [*] has to care
anyway about that case for other compilers anyway, no?

> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index e970f97a7fcb..97b62f47a80d 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -193,6 +193,10 @@ struct ftrace_likely_data {
>  # define randomized_struct_fields_end
>  #endif
>
> +#ifndef __noscs
> +# define __noscs
> +#endif

[*] Here

Cheers,
Miguel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
