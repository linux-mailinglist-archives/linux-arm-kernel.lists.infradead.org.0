Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E87164DA0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 19:28:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NoRK7iE6fxsjjHKIAXGco8EbmG58oG4yl0yYhT2lzU4=; b=qXizkVItbpT3eD
	NaVsTzSrIhFBoix6pm71yOOzC8zujQDzU4NI3DGxxGAfuZusYBU8eX2k2sQ7tU4Ve9KHbPVp5ZGpu
	818fOaq5PXr0uY+dyaNDrIA1dnWLV4FKqKOQRN/GVTzL+Uy93DCDK4lNAVr9DaDvVl4wcTjDSzQC5
	uUK+IcrU0LSz6w5cVSnMH8CDGeoiVovVQzs/ezdglH7mEQXig79wwfXw/0iZXGa1nyUMw0mU+CPNW
	0S289ctp3S3rWZvdoMkYNXBnh+x7ShdUl/q+XZRzsY4PM+Wv2de5NrzBOAXoCASS2hgYhtI9RQOJl
	EwzdOAYorW4V4i9DhAAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4U4i-0000Td-S7; Wed, 19 Feb 2020 18:27:56 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4U4a-0000Sq-Cl
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 18:27:49 +0000
Received: by mail-vk1-xa41.google.com with SMTP id t129so423144vkg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 10:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l8bheu//eOsUC2rG1tcM8D2woU+rRRO7+NHd/SAby40=;
 b=DMdoPkJfjI8vEiQ931OXimak2rqeezogGTA8Jz0YUFlSK+iP3iGUiJm8P0zxfSazbl
 sTLes5Pdhak910J52lP/cGVjDxzDihqkqyUztiFUlwZg0VhXzKO1IB9YGArPtZqB6CV3
 5i85IFWDdO9zpfwEZ9XXCunsWgqWEwKKlhfY1B2U5wv6+QD3YcbhFr+s44GC4sg72+rA
 n2ie3yBEKdehbzyFS5WDKMUNUnSdwc2SvQkZ5DylB/so9f2QssueydxU/mKohLfzAbZz
 K3OtN1dWSEkKMUwc/C1SbRHw0naFdurKZuH+kXBfdy4MpfLQng5Kl2vAtDn1OZwbvUbU
 +EpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l8bheu//eOsUC2rG1tcM8D2woU+rRRO7+NHd/SAby40=;
 b=ZLqNUU4c0vYNgHDwW9dxr7wZG0xrWdV2R9aewwjWiseMjwdTZoYBvBVgQfHN1Huqov
 GJjqvvai7cIF7n4RnrH3NqHJYLsJPS8ZXPuMCChfhbD0EfVhgk50ZDQRzfRKXa98Wnic
 zGPoGM/tPqQHiXo0E/80lUkwwvvaf6Pu0DfaACgSVW3VfznJUtvSL+0rMexX+Gcg49Kf
 KiEM5jKbEYjnCLznDqDDa9Rq6oZ+MECvDUqiHT5nw/ykey5Oe9hqXsCh5tStziCvU3nT
 JaSnsNRDle4yytF8z5nkxF2Wm8YdkfDRZaPAQo3KTnieqtP2bCKSyswDHwEgcDFef6Lp
 l8cQ==
X-Gm-Message-State: APjAAAUOyRkeRlReq4EPZpK5oSHS4Jh7iQIRr8knkKhp6kcCI3KsZtSX
 oXzzy2SmrYt6ltf7lslO5pmOS/IcbQ4mZx55aIq31w==
X-Google-Smtp-Source: APXvYqz43ZWMlwcCQPP90XUO0jIibofgqeEtAm/3NdUy/lBowdl1d7auUgQbzj7b/uQk3jHx8Zbly6t36F7bSB8gUac=
X-Received: by 2002:a1f:e784:: with SMTP id
 e126mr12203230vkh.102.1582136864292; 
 Wed, 19 Feb 2020 10:27:44 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
 <20200219000817.195049-13-samitolvanen@google.com>
 <CAKv+Gu9HpKBO-r+Ker47sPxvHBWLa6NAHe4P71x=K4Wiy2ybwQ@mail.gmail.com>
In-Reply-To: <CAKv+Gu9HpKBO-r+Ker47sPxvHBWLa6NAHe4P71x=K4Wiy2ybwQ@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Wed, 19 Feb 2020 10:27:33 -0800
Message-ID: <CABCJKuckw-_WMDF7=Vndwm5vfZXpeZachUSMMCsN0Sx_P8DXBg@mail.gmail.com>
Subject: Re: [PATCH v8 12/12] efi/libstub: disable SCS
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_102748_454554_FBCCC2E0 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 11:41 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> On Wed, 19 Feb 2020 at 01:09, Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > +#  remove SCS flags from all objects in this directory
> > +KBUILD_CFLAGS := $(filter-out -ffixed-x18 $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
> > +
>
> I don't see why you'd need to remove -ffixed-x18 again here. Not using
> x18 anywhere in the kernel is a much more maintainable approach.

Sure, I will drop -ffixed-x18 from here in v9. Thanks,

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
