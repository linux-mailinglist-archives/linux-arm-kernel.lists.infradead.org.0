Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FF31A6C0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 20:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0K5OYNq8aY3Vz38LQvcbeELFDe0cXlCfjpLyVl8Udc=; b=qEkMFMhaDp4/SB
	Byb8zubo82HpHghqj/XuARGD5jvRWHdHtC+er8KnE249FqgCCnbUnZ1ba/3n/MLElCbZ61GBR1oeq
	Dv4o5QUEdImXQOKzhqwscPGV1AWnGHBTcCWY7EuvmEE8Ro4rhTbX4t4Np+4cFGQW8rvrH7rcDUzoE
	XsPvISazaMFZijrvjbnKopZGmGiI8Ml483OkSghCmAw0193sz/rnet/EGIf2lbwjSzKwzVGs99P6I
	LxWigaI/6VtWevVigHyBUTJ02id0xJm/dDC9SRaqGr0RnHvBRL/FslKcEWD8m3WciU5PclwYFtj/X
	Ur8NDWIEcLrTZBL+DlBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO3pf-0003lB-Qc; Mon, 13 Apr 2020 18:29:19 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO3pZ-0003kh-HP
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 18:29:14 +0000
Received: by mail-pg1-x542.google.com with SMTP id c23so4829490pgj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 11:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=okqkFQ9Y/XR2Uylj/PBU9rQT9Y97Xsyzid6BJbXKYDw=;
 b=KzdcNdOFkQ4motYzQSbGGZfva4sm/AvLEBRZ8iVoHUscDTl2KSZZLZF38aM21c80eF
 2M+VUMpt5cmZayLcn5RmWrIO1Q5VeY+inACc6T245VKjcekv+5pcZkKD1dlxl79ki4P3
 KucTeTdL6EsEZGiRjXw3Uqr6TSgHGjHmZe2vXVnHPTOQYjPON50cT9frLsN2S7lYmfn7
 RxXQJqrvGGR4m2CzunPl5iiJoU72wbIil7j6aiNi6zQf3ofEOd8RKklFYpX604zp6lTi
 Y6OGtTn8lFuhozNA+rRtLEk4CbGC+43aBvo/QcBPiijapOM5KxkVCbqLp70ZTEfNkL/c
 ueNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=okqkFQ9Y/XR2Uylj/PBU9rQT9Y97Xsyzid6BJbXKYDw=;
 b=o2iu1US2BQLQWeQngR/87mYTzZMQ75ozO+s5TSSBMjHzFfKeZaviAFyCASJwetPWDJ
 WSMNOYh55u9WxFqxaaM0ODo/Rci3/DHht2iIuR4Lt4GWU6ntlD1c0u5QwjldOpfQ7yn9
 3i/d5QSxp5VDFmkyzItrgSHPN+NCc6uIHu4Qf4H48gQDJrlvHjUG7d7QzziI96FeCdEN
 X8gf0ftv82J3d03DFmb7XGwbxDwer3S0bqm/ivBcXxTPFGi5337QXuxERbEPdPiNiGze
 AG2e0YRZ0BBBy9NIIv9Sudj5Hd/BoUobfj41l7ZIK6zaQCOztko9HMXBzaBzm2KmCaaP
 bRVA==
X-Gm-Message-State: AGi0Pub1qVuxDxjmvmZcfFEc9Z8A7JGyalFJHyKMAdg3YhsKzAAvMUil
 oOxFnXjssdetafspjuC8SeBUwDDksK9YmeAJcFlH/A==
X-Google-Smtp-Source: APiQypIP1E33hhfznbi9NfC4v99qr7cXozR2upGUjMkfZgNyiN/IFEhI7vX+kNy3Q1FyTJmBJ46GRNxuOfW4kqDvvd0=
X-Received: by 2002:aa7:919a:: with SMTP id x26mr18865698pfa.39.1586802552376; 
 Mon, 13 Apr 2020 11:29:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200407190558.196865-1-caij2003@gmail.com>
In-Reply-To: <20200407190558.196865-1-caij2003@gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 13 Apr 2020 11:29:00 -0700
Message-ID: <CAKwvOdk3YG5TFD71E-9vPqssFZW1U3umCR+AWLLp8RZK2zHGsw@mail.gmail.com>
Subject: Re: [PATCH] ARM: replace the sole use of a symbol with its definition
To: Jian Cai <caij2003@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_112913_600386_9EDAC8DF 
X-CRM114-Status: GOOD (  20.62  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Enrico Weigelt <info@metux.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 12:09 PM Jian Cai <caij2003@gmail.com> wrote:
>
> ALT_UP_B macro sets symbol up_b_offset via .equ to an expression
> involving another symbol. The macro gets expanded twice when
> arch/arm/kernel/sleep.S is assembled, creating a scenario where
> up_b_offset is set to another expression involving symbols while its
> current value is based on symbols. LLVM integrated assembler does not
> allow such cases, and based on the documentation of binutils, "Values
> that are based on expressions involving other symbols are allowed, but
> some targets may restrict this to only being done once per assembly", so
> it may be better to avoid such cases as it is not clearly stated which
> targets should support or disallow them. The fix in this case is simple,
> as up_b_offset has only one use, so we can replace the use with the
> definition and get rid of up_b_offset.
>
> Signed-off-by: Jian Cai <caij2003@gmail.com>

Probably didn't need the extra parens, but it's fine (unless another
reviewer would like a v2).  Maybe Stefan has some thoughts?
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Please add Link tags if these correspond to issues in our link
tracker, they help us track when and where patches land.
Link: https://github.com/ClangBuiltLinux/linux/issues/920

> ---
>  arch/arm/include/asm/assembler.h | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
> index 99929122dad7..adee13126c62 100644
> --- a/arch/arm/include/asm/assembler.h
> +++ b/arch/arm/include/asm/assembler.h
> @@ -269,10 +269,9 @@
>         .endif                                                  ;\
>         .popsection
>  #define ALT_UP_B(label)                                        \
> -       .equ    up_b_offset, label - 9998b                      ;\
>         .pushsection ".alt.smp.init", "a"                       ;\
>         .long   9998b                                           ;\
> -       W(b)    . + up_b_offset                                 ;\
> +       W(b)    . + (label - 9998b)                                     ;\
>         .popsection
>  #else
>  #define ALT_SMP(instr...)
> --
> 2.26.0.292.g33ef6b2f38-goog
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
