Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3166210731B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 14:27:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4M1D8zPEN9y5DxZJWV7olaH5wSM24rpivL/MBpmxIcI=; b=pEopcU8FWgRHe5
	PMFb3hh+DeM55VxG2T8LtEoRzL+7hxyu/7RmAq3VLFyOHJGQLvUMwr3heHL5XACUlSQqU0Dhf+0b1
	A4aUcbgcCRK3L9RawUb0FDMePBWjbyOeUbCFj7+yjpGcDYuIYiQxT/ybA7IBn1E0Iv+JcfjnHkcdn
	Mwv+IrGeeHygu4zNrIMgFbzTb3GOKbryg4IlXC+Rp3JrrhsugMJOnuc7qKhLqDKqRZBWHEE3/hNJQ
	1DvRggAQSsrbvqGQRwXGRHGHndVq9uQHsZMazmWuF+mKn++cCRQ5yDnnAmu9ph8jGnoWLQEiByegQ
	Y0pjWw4qKu/TC0s3SLVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY8y4-0007p8-6V; Fri, 22 Nov 2019 13:27:24 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY8xv-0007op-AV
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 13:27:16 +0000
Received: by mail-wm1-x342.google.com with SMTP id 8so7629679wmo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 05:27:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sK5kefc4tZBxMPU02RtKRK4ywmyHZ5AFZKCzHt7tao4=;
 b=ig5jaXlzp57NFjS0hikMJqw5SEQtXdtFOxqYuBWOLLv2LKXyMygxO13KOp0KCIWFbb
 3fOxTYFaxB8E3Lf+io6VHGFf+4EerZzA51fN/5/O9NZ7cEuxu/Og7KVKBJOD+8DSZfjm
 iSd56VqREEGERiTVXt4nVkZKkyX4YJEJMxmHDbYMz/Gbt/Xnp4CmY5xpKVGTL6DjYBHC
 UB8VEeYH+jXpFGGxeN1k3WRCzy6VOH9lQbAKoSs3uQPkozSqclJa6dcPcDR3cCslQYul
 BIc9wz6buYeS3/uCdG4MjB3YfU+AmwURPNmkGshCzifniGaoPWoq14n8ix1WA3A+Jss9
 niiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sK5kefc4tZBxMPU02RtKRK4ywmyHZ5AFZKCzHt7tao4=;
 b=ONn+NeNSFQin/09WKZOCiXafu0KcfMDbRlVS2EOBM9iYKySKJb5YFk+6NLx99StilQ
 lOQUxfCjdwy0G6vrH7su/vLjBatYzp/KNvO7GPf9US6SJN0+egGBBqn8dVD0SuCbPUyH
 03ivxJXHmpHog0SWMR8m+HE9/Q3aR8VssUlns8B966Qr2JTAnvYlHzr5ZiOxLiWcBebp
 FWIxCKYZ6MGbgYlWQbZmceXSVqwo38LT8+TXzyMkvlQnDohVAJWm/n2vh2C7pXfnkPXM
 B8/nrc2t//rokxid1nhphO46lhEHdFxfTqqFEa/RYX9B1FwAH47Pg4AQWcM85THY9Pth
 fXXg==
X-Gm-Message-State: APjAAAWqn24h1/0BW4WqaZYcNfjNeIAiNoLoNV9DC7bRUxc6unn4lwCZ
 xryELo3KmnXJJq2zI0CEJhpP4Piy4ChC7xvPP8fmJw==
X-Google-Smtp-Source: APXvYqy6GPGi16rQ1ZgCIdQbXRtUkQ6nG8tXbLDq9Divly0dYbUSgAktpMPPCrfLeS3EdVQWPVSihZPH6Q80HtETsuw=
X-Received: by 2002:a1c:3d08:: with SMTP id k8mr15856636wma.119.1574429233401; 
 Fri, 22 Nov 2019 05:27:13 -0800 (PST)
MIME-Version: 1.0
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <1574166746-27197-9-git-send-email-amit.kachhap@arm.com>
 <CAKv+Gu_U37kfCOT4ko-pK6b80aQ2uCe88WfHPwwzjrZ4frndmw@mail.gmail.com>
 <cdc2fdcf-7a58-a551-253e-adb92180e749@linaro.org>
In-Reply-To: <cdc2fdcf-7a58-a551-253e-adb92180e749@linaro.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 22 Nov 2019 14:27:02 +0100
Message-ID: <CAKv+Gu982YqEw4feaAw+W1kiDKYLM+DTPs_w9RU+tjTh3ZkAXQ@mail.gmail.com>
Subject: Re: [PATCH v2 08/14] arm64: mask PAC bits of __builtin_return_address
To: Richard Henderson <richard.henderson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_052715_375478_AC519F64 
X-CRM114-Status: GOOD (  24.41  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 Nov 2019 at 09:48, Richard Henderson
<richard.henderson@linaro.org> wrote:
>
> On 11/21/19 5:42 PM, Ard Biesheuvel wrote:
> > On Tue, 19 Nov 2019 at 13:33, Amit Daniel Kachhap <amit.kachhap@arm.com> wrote:
> >>
> >> This patch redefines __builtin_return_address to mask pac bits
> >> when Pointer Authentication is enabled. As __builtin_return_address
> >> is used mostly used to refer to the caller function symbol address
> >> so masking runtime generated pac bits will help to find the match.
> >>
> >> This change fixes the utilities like cat /proc/vmallocinfo to now
> >> show the correct logs.
> >>
> >> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> >> ---
> >> Change since last version:
> >>  * Comment modified.
> >>
> >>  arch/arm64/Kconfig                |  1 +
> >>  arch/arm64/include/asm/compiler.h | 17 +++++++++++++++++
> >>  2 files changed, 18 insertions(+)
> >>  create mode 100644 arch/arm64/include/asm/compiler.h
> >>
> >> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> >> index 998248e..c1844de 100644
> >> --- a/arch/arm64/Kconfig
> >> +++ b/arch/arm64/Kconfig
> >> @@ -117,6 +117,7 @@ config ARM64
> >>         select HAVE_ALIGNED_STRUCT_PAGE if SLUB
> >>         select HAVE_ARCH_AUDITSYSCALL
> >>         select HAVE_ARCH_BITREVERSE
> >> +       select HAVE_ARCH_COMPILER_H
> >>         select HAVE_ARCH_HUGE_VMAP
> >>         select HAVE_ARCH_JUMP_LABEL
> >>         select HAVE_ARCH_JUMP_LABEL_RELATIVE
> >> diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
> >> new file mode 100644
> >> index 0000000..5efe310
> >> --- /dev/null
> >> +++ b/arch/arm64/include/asm/compiler.h
> >> @@ -0,0 +1,17 @@
> >> +/* SPDX-License-Identifier: GPL-2.0 */
> >> +#ifndef __ASM_ARM_COMPILER_H
> >> +#define __ASM_ARM_COMPILER_H
> >> +
> >> +#ifndef __ASSEMBLY__
> >> +
> >> +#if defined(CONFIG_ARM64_PTR_AUTH)
> >> +
> >> +/* As TBI1 is disabled currently, so bits 63:56 also has PAC */
> >> +#define __builtin_return_address(val)                          \
> >> +       (void *)((unsigned long)__builtin_return_address(val) | \
> >> +       (GENMASK_ULL(63, 56) | GENMASK_ULL(54, VA_BITS)))
> >> +#endif
> >> +
> >> +#endif
> >> +
> >> +#endif /* __ASM_ARM_COMPILER_H */
> >
> > It seems to me like we are accumulating a lot of cruft for khwasan as
> > well as PAC to convert address into their untagged format.
> >
> > Are there are untagging helpers we can already reuse? If not, can we
> > introduce something that can be shared between all these use cases?
>
> xpaci will strip the pac from an instruction pointer, but requires the
> instruction set to be enabled, so you'd have to fiddle with alternatives.  You
> *could* force the use of lr as input/output and use xpaclri, which is a nop if
> the instruction set is not enabled.
>
> Also, this definition of is not correct, because bit 55 needs to be propagated
> to all of the bits being masked out here, so that you get a large negative
> number for kernel space addresses.
>

Indeed. Even though bit 55 is generally guaranteed to be set, it would
be better to simply reuse ptrauth_strip_insn_pac() that you introduce
in the next patch.

Also, please use __ASM_COMPILER_H as the header guard (which is more
idiomatic), and drop the unnecessary 'ifndef __ASSEMBLY__'.

Finally, could you add a comment that this header is transitively
included (via include/compiler_types.h) on the compiler command line,
so it is guaranteed to be loaded by users of this macro, and so there
is no risk of the wrong version being used.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
