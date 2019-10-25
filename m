Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4CCE5612
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 23:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZWbHgS+sk5a5EuQT0g8xP5Jncy/aQqmcvTyVoLVYRg=; b=KQNNPQUp622GFR
	XapoqOgiyJXcQTgr1dZ59CWd/wqCR5+gdZtbtYFNmw7XI1KE5EoMNwpA4GrYMtaLNEQT9qL4KHNCk
	X3S4r5mzVP7QrWGjaZ93+CqAYkpJpGHcsqww/kbEZnUdVD4Fpeow0apKjw+wauA/en1Cojpck5R9l
	tPAyQxYRBAgcDp/I1Ie3QQDpSa6xvQAbInNFvQUerg4+2N/9OHb0zrVMm4P5OBNe6vHR5CWWBbeh5
	aHDuR+mncL3UBZLXs0h5ALdFvCtYDUFstdbHMUfePGWOEP7Zzmvcf7uvHKUmz+8kW+JluKhCdYrN1
	GQImLb8GmxCHIooN4wag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO7Jz-0006WN-J3; Fri, 25 Oct 2019 21:40:35 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO7Jo-0006VZ-7T
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 21:40:25 +0000
Received: by mail-ua1-x944.google.com with SMTP id i13so1064898uaq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 14:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eLRTvF39CVqCAmddGFaUsqwSoY4prNIEuh/o+NUz9p0=;
 b=nZwUQClYiXQ3Q52cTJI0jeh6bazrVJ+0UCwrx0+54WLkrX9dSlGV2PmY8y824qhqm+
 b+SsEDhWiXq1vyab8zOMbLt8DhbgT32DsHm0LjkkTaQ8wSdZ04Z068CQf10fi5T6mqZG
 zjUCFHf9Fcmio8uikM9+SHUQ1o4GuEZM1oAdAl++/ApeZP/iz2BcFl9JTY/GXVwKZTcB
 0IsWFCeBssn/P/ZcmLKkBkgsGKonf9IgvdUar6yKNQSkHanHTQbtP2n1EXdi45W9kU4m
 TVnPXm/1DG4WURnHnBCY0X642BPoq6T5AptAXxcLFsw7IIuU0b5f10JYnaHC0W3N00B3
 rHaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eLRTvF39CVqCAmddGFaUsqwSoY4prNIEuh/o+NUz9p0=;
 b=NZV0CMz1WumvESn1ojVcKzqLiezS53ZCX8QyPEcOrME//7MUDUilPE4noeI34bRqVg
 rvogNYJx1O2uLnBKfpziUtoZRddkT04vnkPNaNTMpqK8pMVCCPqbwGMjdlfpvJ9lU4jh
 FRYbJiQah7fl9gtGvaNyuLntn9HCDk9egRg/tixDLELwus52+jtA/kETzd1gJD5Tjb+8
 t3wxnAQQWzrzAu5VKsGqqVON0WgV6wXvsyMuk35uy4OSZC/itcjZi20JukD/dJj8gflg
 bwdw0hxWFfMiOOhLHp1eZLJp3jAUfuBy52oWN/ZZnRPXGA/9Ipj0II53ohm8HZ9+RzKl
 idyA==
X-Gm-Message-State: APjAAAUUZA8Yc82IOjc/cKWe3g/9Ox1uKwTfateW8mpRdms+0XrLaGEv
 XwJhMpKNdKvqUN+VBw6+OOdfRGaF5Nm6XSnePfIUZQ==
X-Google-Smtp-Source: APXvYqzB/CyaeixcYXmheo+/rDDZ8UwTzUWhRNGhABApN6r+1HSU0y6CYCp+GyizuEe28jQkvtHrxlkE/Z+LErTCmf0=
X-Received: by 2002:ab0:6387:: with SMTP id y7mr2789274uao.110.1572039622492; 
 Fri, 25 Oct 2019 14:40:22 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-3-samitolvanen@google.com>
 <20191025094137.GB40270@lakrids.cambridge.arm.com>
In-Reply-To: <20191025094137.GB40270@lakrids.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 25 Oct 2019 14:40:11 -0700
Message-ID: <CABCJKue5QAuHi4tzk+82=HD9ts2SLTqn1VZ4OmGfhu0LG8GHfQ@mail.gmail.com>
Subject: Re: [PATCH v2 02/17] arm64/lib: copy_page: avoid x18 register in
 assembler code
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_144024_294216_1A729223 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 2:41 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > diff --git a/arch/arm64/lib/copy_page.S b/arch/arm64/lib/copy_page.S
> > index bbb8562396af..8b562264c165 100644
> > --- a/arch/arm64/lib/copy_page.S
> > +++ b/arch/arm64/lib/copy_page.S
> > @@ -34,45 +34,45 @@ alternative_else_nop_endif
> >       ldp     x14, x15, [x1, #96]
> >       ldp     x16, x17, [x1, #112]
> >
> > -     mov     x18, #(PAGE_SIZE - 128)
> > +     add     x0, x0, #256
> >       add     x1, x1, #128
> >  1:
> > -     subs    x18, x18, #128
> > +     tst     x0, #(PAGE_SIZE - 1)
> >
> >  alternative_if ARM64_HAS_NO_HW_PREFETCH
> >       prfm    pldl1strm, [x1, #384]
> >  alternative_else_nop_endif
> >
> > -     stnp    x2, x3, [x0]
> > +     stnp    x2, x3, [x0, #-256]
> >       ldp     x2, x3, [x1]
> > -     stnp    x4, x5, [x0, #16]
> > +     stnp    x4, x5, [x0, #-240]
> >       ldp     x4, x5, [x1, #16]
>
> For legibility, could we make the offset and bias explicit in the STNPs
> so that these line up? e.g.
>
>         stnp    x4, x5, [x0, #16 - 256]
>         ldp     x4, x5, [x1, #16]
>
> ... that'd make it much easier to see by eye that this is sound, much as
> I trust my mental arithmetic. ;)

Sure, that makes sense. I'll change this in v3.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
