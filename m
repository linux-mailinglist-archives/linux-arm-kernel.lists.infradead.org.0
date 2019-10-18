Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAAEDCDFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=purByqfRciZNHqvkRP3HR6hMVbFayVyZRNz9VqKseTc=; b=g9ZudLlZVLL0ZU
	SMmdmLSULdo9GA4ts5eM9+X25h7Iib/vQ0fIj8LBE8K8/NrqR9YRpi1V7lve6di0Z1ba5rDZQNeKT
	ETF+iFjM7sxLuj2mba58tf7Hj1p4r3sXP2EfnS9O1eyLaNP6QzjEDJ4CWiXgIUA/cWhYYNHVlCQBf
	jzn58p+bmstSCF4fuISYd77YyrmCQ05Md6tsf6+3b85hh53Xe/61LSI3Epb2HxTpONfjESSlEIyVU
	F+klktgY1VYJOyZgsZmdY902Q0QzyCapfASfdi8dDSDGmOYc9z3FkpWkIalNFtLinUIO/VQKVbD2I
	w4+tYpxY/3uqrJgjTW8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLX3r-0007QF-Cy; Fri, 18 Oct 2019 18:33:15 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLX3j-0007Pb-6E
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:33:08 +0000
Received: by mail-lf1-x144.google.com with SMTP id q28so2169138lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 11:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GbeDXmo9y5jCjWaekiMahqEUs5l1VadqHf+/T7BBGBs=;
 b=O7PltKw1VMi2RMM6PRtWFNe7pkAjXUVERibQ18qTBqg7hBcss0b4ODK8OPurRIOyua
 XPNO9lzWQL2sUCEhn5yIUWxen7VKw9wyTrwnHMKPZjCRfIiXPFfWEAVvv4QRuiFlh5t+
 pDRldcEsIeZnSgRVmFGygqa8PjlBtiqr3OTvL/LcpFDouIoV77L0apIZSU2+TZrDMUpN
 J+BIMIzJe4Gnl2MdVigjlwfITa9bcZsVYbInVJd7VmqoxFJ+R1oQWwmYYSQ+CRxNdp2b
 XI5aTFXOgs9ze9UHzbxQYe24jao6bo43OiCrhgGontQOfGlZavqZSXXnyWO9GEdwqm9A
 B7LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GbeDXmo9y5jCjWaekiMahqEUs5l1VadqHf+/T7BBGBs=;
 b=i0/uDLBAEmNHk8SqBato1YGJJsYtOyuR3ftr1On2gZ0PUb+cD3H1x/O7OSh53gF5GU
 fYj8b4NT/NCAiVQ4nUUmlFU+OMpXw5kz3PDrDCoUPByfXqRNWgznFQXIezNkatQPJChD
 244bZXlQpdyLYE1THDEvz1gYE9klx4upyRzueBza2uAgpo2ZMaKpR/dSOq5J4/WiY3LX
 TFaW3KclPvfDYApAfP0M8zaLb8MWdFo6SlGMVTMru0Vx61+cIZ5jrlWRNj0ippGQ948P
 HvVskfzzXSiaxBzC/Zb+AxMKR/Yq4qT6u/YzUZ2FZSLwKXKMLV8xSTCtczVfaahxfAY3
 sjaA==
X-Gm-Message-State: APjAAAUYg4uLxYVHIQD3oaYSX6XrYlQQDTpVeY0iEQlKbqzUvm5SBO3b
 e0VPOH7Ecf3KnN2kFlXUOvea+Zwyg9hNx1tiLBk=
X-Google-Smtp-Source: APXvYqwxRkqeBTGe2ipFXhHWevOzmHfCv3O5pvZN9gCYzK7L+ln0quOJ8iSVEtAb24QIwyqCIFqfSWgnDz92fMJhPwc=
X-Received: by 2002:ac2:55b4:: with SMTP id y20mr6942077lfg.173.1571423584708; 
 Fri, 18 Oct 2019 11:33:04 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
 <CAKwvOd=z3RxvJeNV1sBE=Y1b6HgXdnT4M9bwMrUNZcvcSOqwTw@mail.gmail.com>
 <CABCJKud6+F=yhTo6xTXkHhtLWcSE99K=NcfKW_5E4swS4seKMw@mail.gmail.com>
In-Reply-To: <CABCJKud6+F=yhTo6xTXkHhtLWcSE99K=NcfKW_5E4swS4seKMw@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 18 Oct 2019 20:32:53 +0200
Message-ID: <CANiq72=PSzufQkW+2fikdDfZ5ZR1sw2epvxv--mytWZkTZQ9sg@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_113307_234588_55C78066 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (miguel.ojeda.sandonis[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 7:11 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Fri, Oct 18, 2019 at 10:08 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> > > diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> > > index 333a6695a918..9af08391f205 100644
> > > --- a/include/linux/compiler-clang.h
> > > +++ b/include/linux/compiler-clang.h
> > > @@ -42,3 +42,5 @@
> > >   * compilers, like ICC.
> > >   */
> > >  #define barrier() __asm__ __volatile__("" : : : "memory")
> > > +
> > > +#define __noscs                __attribute__((no_sanitize("shadow-call-stack")))
> >
> > It looks like this attribute, (and thus a requirement to use this
> > feature), didn't exist until Clang 7.0: https://godbolt.org/z/p9u1we
> > (as noted above)
> >
> > I think it's better to put __noscs behind a __has_attribute guard in
> > include/linux/compiler_attributes.h.  Otherwise, what will happen when
> > Clang 6.0 sees __noscs, for example? (-Wunknown-sanitizers will
> > happen).
>
> Good point, I'll fix this in v2. Thanks.

+1, please CC whenever you send it!

Cheers,
Miguel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
