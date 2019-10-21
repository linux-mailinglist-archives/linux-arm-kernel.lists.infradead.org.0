Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D528DE479
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 08:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=niovUW7GUTnmGb+tpLDc+qXJxV/mzUL6ptnF2z82McE=; b=NiKiNH+u2A8NGI
	Fsd9AkjMjantvmFXzVQPf50UeZ1u796v0ofmYMd7NItBYQ6nw2IRLmUSSgQUqEKxRV/sEnoMLx2b5
	SlQ0Xv53WElgSYEHAvkyEYfiobnbO9VBPf8Z/KPlIm90BgcNDiQqTFdT3F02ke0CA3AAYFIZZEGs6
	QTP8nMXGtd+KMx+77Vd7bztmcP9/bhFsSjgC0U0Ii29fxa2ccJELXb+xMKcBrXTntAwyeSD/srUQk
	O2BzSjIFbIcjYKKB9Y70ewEprT6HLfWfeI+JzQ5vGlSgLH666UGjlN+KL8WYCpG9dBNNbWmXS8NfJ
	K0NYD4MVW1Ajk92wkO/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMR50-0004nS-0a; Mon, 21 Oct 2019 06:22:10 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMR4q-0004mu-Uo
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 06:22:02 +0000
Received: by mail-wm1-x342.google.com with SMTP id 14so4786381wmu.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 23:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uyhVv4N2UiJ3EJxpaNQCWc5NdrhC/9AoAL7jZ85/7b8=;
 b=GjbUSEjvkAF47IsFWgAUnfSwZ9jZeOmpmmzg8L/6guVX38gCMZuouTdMO5Iji6ewM0
 ZcqaKKfluXkc0GCek0xGcyop4JHYb97Q/n3Eqc7ah2EKKHr0N7BGDs851PPpZHuHqzCj
 Az8WGOd2xhVAFxxTDg1R2UqIdUdRXgD25JY9oY8pXU6I6vVvsfZ0aFENdmAVqf4UnUr8
 lcQmqiLBmmkWCuTPfA0TxotJre4XtMv52V1BrM2hzvGfc4Miftl70l+50k9K9NVhoe2J
 xX9Fh2F8N7Dj2Pl0njY0mgUTPdAzdCBXsCb1ksBM0pvjzMtLDB5366phzKtAZjRMiTXL
 ANmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uyhVv4N2UiJ3EJxpaNQCWc5NdrhC/9AoAL7jZ85/7b8=;
 b=ekMkQy3y31yQVS609Nr1mG1u5LnrpggmKj/SzTtfBrfbMsT+UOtG/d26rvb6YYflJU
 gUt7+0oLmbQtt3E6vyHSywALv9jYLuTiv4azmy9ZvPP8tjrm7i47KZhacm1Zr9sPbNdh
 TlyxugKeyhAg38jVG0iBqQDiAPK83JkOyXl+mIuRoVDbQovZ9D5w/dFvTWgFAVM3o5wu
 yAE/kiivR1KTo8LAAoR8lDLQiksfxXsuyQyVo3W5rEGmv4kKYAYU18+HPaJvhIADdqn9
 dkyddGLsGJ1z5rDFBVZj9q8uNmNJni87MsFe399BdGFejKDFnIxAeDEqP5tbeFT4u9yC
 0bTg==
X-Gm-Message-State: APjAAAW7rDNTnR2ucXb/hweUG3kVnSXkiahoOpyMpOkgc3O+UWvxOPKX
 2HhDvYb29djo9akUmbnLol5umofDRdPTFpnnyOSJTA==
X-Google-Smtp-Source: APXvYqx9wfbsml6zIZvtLXulYaMSgitt7ok8Qfrnv+GkD+c5R91Idi9S9ZV+WgZk06tMxv4wXfJaROot0zqVv9/hG5E=
X-Received: by 2002:a7b:c925:: with SMTP id h5mr1847720wml.61.1571638919306;
 Sun, 20 Oct 2019 23:21:59 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-17-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-17-samitolvanen@google.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 21 Oct 2019 08:21:48 +0200
Message-ID: <CAKv+Gu-88USO+fbjBgj35B4fUQ7A_t9nHO_swyN=T1q1G2wViA@mail.gmail.com>
Subject: Re: [PATCH 16/18] arm64: kprobes: fix kprobes without
 CONFIG_KRETPROBES
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_232200_992876_C0AD0A70 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 18 Oct 2019 at 18:11, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> This allows CONFIG_KRETPROBES to be disabled without disabling
> kprobes entirely.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Can we make kretprobes work with the shadow call stack instead?

> ---
>  arch/arm64/kernel/probes/kprobes.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
> index c4452827419b..98230ae979ca 100644
> --- a/arch/arm64/kernel/probes/kprobes.c
> +++ b/arch/arm64/kernel/probes/kprobes.c
> @@ -551,6 +551,7 @@ void __kprobes __used *trampoline_probe_handler(struct pt_regs *regs)
>         return (void *)orig_ret_address;
>  }
>
> +#ifdef CONFIG_KRETPROBES
>  void __kprobes arch_prepare_kretprobe(struct kretprobe_instance *ri,
>                                       struct pt_regs *regs)
>  {
> @@ -564,6 +565,7 @@ int __kprobes arch_trampoline_kprobe(struct kprobe *p)
>  {
>         return 0;
>  }
> +#endif
>
>  int __init arch_init_kprobes(void)
>  {
> --
> 2.23.0.866.gb869b98d4c-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
