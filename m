Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7BEEB61C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 18:27:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKQQwj0NZ4uMjA3lzRNZxUhVA8Eul5TQ1lP34eBAWbM=; b=MQqTMTkj0tFgaZ
	zy6SaJkyZu8liYfnwZ7dbW61QWzVxSdE5p5Bsw0QrHbNovHwrzSbpFxCz+3YkIptjH5Ak8PzgRHvk
	rh7ZA4Je60qfAkSuvkugV7sxYY1tkvY8oxWlzCMpGpYfAXiC+5RmXAbBzYeY7INCJcDmVHTllZWgY
	3NSlpA32CTjncwKwtEraV5hBagTbFVDMoeuTdyFJDDZKrQ+HKms/BPvaejxkz0DjZLtJextgJk0gj
	boiRNm4wUOC4cMGawupyQhd/8Ua4zoP2UVl5JBaIIctKpc7I3gypw3hFp9eaT7NcGR9VTitv2U5uQ
	xOGBrqj1uSsHFq3q4Glg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQEEh-0004o0-Ui; Thu, 31 Oct 2019 17:27:51 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQEEY-0004mk-NH
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 17:27:44 +0000
Received: by mail-ua1-x942.google.com with SMTP id o9so380412uat.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 10:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=46AmydREw6SfU27IOaxxeyDyoZWG9jeVi2WIEFhrMqA=;
 b=uKrGepNXzPXDPzJbvbemKuf7R6S5LOyd1Myup06RKzLSP2nrNd0gQdYUKo5Mow3DAS
 +SE7IfD6gsDwY0qy8BSl0pYU8GPWYV87yKCwXeFmUj8tfcvjCxE6XCZvWViSX7BLJr2h
 JeRICf0gxuCWKgnMwiCuZSLMzerlDUIsThoYOFbNVmV4Iio6o99JIWYLgpdzR7oI4BDx
 tISF+YHwsfL5BB8DS6m0YqBcFdYRIfZsqtAtZCMGUCUGgOjGgmE4qf5gvZ9MBWNon0hF
 l2JKhPx8hF2es29OTb38GxXTjoyqOeNJvDE0LRnzacnT1nPR0db8A8Us17QUjMd2B+Rn
 jUDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=46AmydREw6SfU27IOaxxeyDyoZWG9jeVi2WIEFhrMqA=;
 b=nmdpMAsMPk8yfN9h5awtA7R36MjIRx9n7Jpg9cNOBohENU5z38ruiO8slupuBJy0TO
 iIA2Pmj44Cb45OX9VFcHJul4ntsO96NJsduxp0PTjqCnBjYdPzMVP+vFoL4YyfRZ9e3Z
 +kkqsx/UbGMzAKTATklE3An2RNjo2J1S7v/L96nZl1d858IM1mpwdTUoGs+3eW4uNSXc
 4ZG75zZVme43yyV+3rmLj7R7LTlKZmTgqyhMdyPjcwpQIvC/Raxdvko27KXz1guxZpys
 GmwMHTwPE0okcZps0hpyr+3edT2QLBTJ4scLqwrrSGHA/DPwh1UM1NnWL49Q3jafbExx
 j7Cg==
X-Gm-Message-State: APjAAAVQewfqVH8jvO7dVlWL94mm3fNj4rTTsNdbh/AJbCcuyH75u8lF
 f3ZpW2DXXyIRExXl4YqayFjarghwbLabli1vybzutw==
X-Google-Smtp-Source: APXvYqwHBpr5C3UNKE6XLzBUe1Jy/aZ4Jd12qOfI93i2wDsaUH2oAUrgK4KH1mAvPJ/zcWPVngS0f/6vsb1FU+PAYk8=
X-Received: by 2002:a9f:3772:: with SMTP id a47mr3382097uae.53.1572542858440; 
 Thu, 31 Oct 2019 10:27:38 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-14-samitolvanen@google.com>
 <CAKwvOd=kcPS1CU=AUjOPr7SAipPFhs-v_mXi=AbqW5Vp9XUaiw@mail.gmail.com>
In-Reply-To: <CAKwvOd=kcPS1CU=AUjOPr7SAipPFhs-v_mXi=AbqW5Vp9XUaiw@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Thu, 31 Oct 2019 10:27:26 -0700
Message-ID: <CABCJKudb2_OH5CRFm64rxv-VVnuOrO-ZOrXRHg8hR98Vj+BzVw@mail.gmail.com>
Subject: Re: [PATCH v3 13/17] arm64: preserve x18 when CPU is suspended
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_102742_782889_810884DF 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 10:18 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
> > +#ifdef CONFIG_SHADOW_CALL_STACK
> > +       ldr     x18, [x0, #96]
> > +       str     xzr, [x0, #96]
>
> How come we zero out x0+#96, but not for other offsets? Is this str necessary?

It clears the shadow stack pointer from the sleep state buffer, which
is not strictly speaking necessary, but leaves one fewer place to find
it.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
