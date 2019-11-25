Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48511108B0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 10:39:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mBj7GDCTb3LvToMVUvRAQErKP6M2hufgO6vRD88aAgQ=; b=KQn4qm7zfjqBS2
	OvZL0qEw6XnCG9QwhAjDABFam9jFuCo4XI6U8+xLmzsXbJQGcaVOvGIU9aDDXLxvJ81VAqCkDKXhv
	J6Vpv0p+VPFdS8RNe1aRj7t1U2WaVfNXdr4SNgl2ozeEcmVtizFBtZI+3o3FCAGI7x1jfJFwc3Xs4
	mIjUO7bdl3XkDsmU0pf/ZWaZHwg4nY9cK+D/Vp1jy41YVh++vN8GdFR7y6XoRxVYJkIPZqUfT8ujh
	P/aDsfZaOgZofpZkFDmCXuM8oS5BCwveUhnnLSlITVBZSGIM+Av9ZPaZWWq6d00/zVNSpFDon39ze
	4rlP55nponaK1anmlvyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZAqS-0006GL-W8; Mon, 25 Nov 2019 09:39:49 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZAqH-0006Fs-2w
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 09:39:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id i12so17136216wro.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 01:39:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jIFKbuyY6b2Zduyd0YX7SPZyNzHw3aXFXKMgIsyj8wA=;
 b=xFD7Xqm8Xmtd4JkAIkNl8asSrs2G3WNc71vz5gc6Zx0UWesrii6nGMEWRhgRpJth1q
 XYHSjAT4cVDmyZSJeNdhriqPC5ujieW+rsSuna/HytT3f7hS39nG15hjqML83c7A9CTm
 g05drqcZZeGJssTsqbaeefctLv14DnvUD8t/jZsTewXQu/xKMMtD2q1C5Z4mXoP2XyxL
 qkKhfrXOrtp8f75mLM+mq/h39m5t+N8o+QSNVjfBIXan5qfNIJOjsPuZszA+scBdx+tB
 S9qQCK3xbur1zvImiKhBA8FeFSEJvfFIhSGbatDFQGWF3ZF4vVBplP8at/ebeCdeCuIY
 vBmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jIFKbuyY6b2Zduyd0YX7SPZyNzHw3aXFXKMgIsyj8wA=;
 b=FvH+/90U9zhM3eraDbCPWAwDi90tniXo9A4TdyYTy9RLA+nkeDpsICm7ScfgHWvcu/
 NlCmqJE0C6udIqfPjFCW+s2vqYmVoPjs9KTrk/BJ/noMKMARMoCTqsbttb8IYaD0zJsc
 KbQ2ybjMcnWrwgnIb1V2shJHPs70/05SClcTd/e3uU0qCmJTcqi+BXd6yxUlk8CfptjQ
 0wr/ObhLmvjObyJw+5NR01FTrYGFe/xRgkfk/wbWYN3+emD/jzjCgTYYTTf6TSyvyEe7
 80nXt0J+F1vKw3jlsuIKjsRJwEOizp8AFpPH3dzdJPDrZYVS52zBxZDB1o4DEwfLRkAV
 thvw==
X-Gm-Message-State: APjAAAV3nU8YH6XAE+HJIZlwTvjmJi1gnn4LUwZNTzQ7Ai+cOaWDLQzG
 4niPpgROs92GwaAa2DIDgwcovHb7m2Jxi8pnsRtDhQ==
X-Google-Smtp-Source: APXvYqx/PqtOowQhWzhHeSp7l2t+nrH+g4sH9e3yGCBTwRvHtRWwqHrNhuElXys3H3FHWmxeTeR1+I6iyVbbs5O1vpc=
X-Received: by 2002:adf:b1cb:: with SMTP id r11mr31430628wra.246.1574674773379; 
 Mon, 25 Nov 2019 01:39:33 -0800 (PST)
MIME-Version: 1.0
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <1574166746-27197-8-git-send-email-amit.kachhap@arm.com>
 <432f8082-c34f-8036-8c5e-fd1fcec9aa17@linaro.org>
 <aa92b083-ddc6-9724-6655-3abc79e78ca9@arm.com>
In-Reply-To: <aa92b083-ddc6-9724-6655-3abc79e78ca9@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 25 Nov 2019 10:39:35 +0100
Message-ID: <CAKv+Gu_d7RTZZU44NGEqQOgHx7PbLB4dc2qsJvdEBBS0zje1gw@mail.gmail.com>
Subject: Re: [PATCH v2 07/14] arm64: initialize and switch ptrauth kernel keys
To: Amit Kachhap <amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_013937_253732_C6FBDE17 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Will Deacon <will.deacon@arm.com>, James Morse <james.morse@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 25 Nov 2019 at 10:34, Amit Kachhap <amit.kachhap@arm.com> wrote:
>
>
>
> On 11/23/19 12:49 AM, Richard Henderson wrote:
> > On 11/19/19 12:32 PM, Amit Daniel Kachhap wrote:
> >> --- a/arch/arm64/include/asm/asm_pointer_auth.h
> >> +++ b/arch/arm64/include/asm/asm_pointer_auth.h
> >> @@ -35,11 +35,25 @@ alternative_if ARM64_HAS_GENERIC_AUTH
> >>   alternative_else_nop_endif
> >>      .endm
> >>
> >> +    .macro ptrauth_keys_install_kernel tsk, tmp1, tmp2, tmp3
> >> +    mov     \tmp1, #THREAD_KEYS_KERNEL
> >> +    add     \tmp1, \tsk, \tmp1
> >> +alternative_if ARM64_HAS_ADDRESS_AUTH
> >> +    ldp     \tmp2, \tmp3, [\tmp1, #PTRAUTH_KERNEL_KEY_APIA]
> >> +    msr_s   SYS_APIAKEYLO_EL1, \tmp2
> >> +    msr_s   SYS_APIAKEYHI_EL1, \tmp3
> >> +    isb
> >> +alternative_else_nop_endif
> >> +    .endm
> >
> > Any reason you didn't put the first two insns in the alternative?
>
> Yes these 2 instructions can be moved below. Thanks for the catch.
>

Do you even need them? Isn't it possible to do

ldp \tmp1, \tmp2, [\tsk, #(THREAD_KEYS_KERNEL + PTRAUTH_KERNEL_KEY_APIA)]

? Or is the range for the offset insufficient?


> >
> > You could have re-used tmp1 instead of requiring tmp3, but at no point are we
> > lacking tmp registers so it doesn't matter.
> >

I think we should fix it nonetheless.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
