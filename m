Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E385AE74E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 16:20:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmFkXlPJinlkUg7paeaZ6tG2xj9RQ5O5dV97Pkjs+0I=; b=KjB7UDvmaYn6j/
	WWhPdaLq/EEsu0uJkJqUyQhVHO/ZhDc0gJq683nbNmbE6i6QW7bF+8NNLDVwxOksW8wb+lD9JY+AV
	ZtHALQnfBUJj4sB3tUuJL2ZYdeza9ZizNr0E2buz82Fm+vXJf4aI1CTIkMwlM1LRG+Qpjx0Xo0oMm
	+xCRLqLUlBp0HI07B/wCB3n/YMF7fQ2cSLx6E8PPmei+e8aMSv3YtDhHhnJ033+/+6Q9aqnzdLtJ4
	c2e+BTWUwDsP7zfttC8AvpwTMgvxHrvV0TRgeNyd7EM0plTbSPQiD9Qcydjbe3O6cXea0BG+yz8r/
	04GCmJ+0qby1Keh1l9pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP6ol-0002BO-Dc; Mon, 28 Oct 2019 15:20:27 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP6oP-00029j-NR
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 15:20:07 +0000
Received: by mail-vs1-xe41.google.com with SMTP id w25so2619588vso.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 08:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZU5xUNm1kaCHgnGkxHeR/Mx1+L5fbEGEQysvhMTguc4=;
 b=eSmzhzPZfT7cUe+QHJCBCLOHsdk+EZDEV9fLq/VonLuESD+7AlLYYPrnI17uBv2SBg
 3TD4dUHaoFk8FpSe0MeKqGFrA0VaN0FxWa+wsTCO0XEBDSOfCQvENAl6OX1Rb3jrp+n3
 JPkuxbGtWe1J+gHHSaQORWLI7cXq3klsPNWOMsgNXu6Fg8nKxysP4iyA0VydqPQgY0JL
 N7EJLUpZITruMx0JSqETf+bX1nMYrqvrsSGAmoFxsqJMadIf4Q/uhe6KZosWwtiY9rRW
 8EGaI4kC5ExBIAoyg7rWysQrcycy0XTYf6yCBvrKZ1/2CBM7WNaipneRGQ1wmCRv9UKA
 damA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZU5xUNm1kaCHgnGkxHeR/Mx1+L5fbEGEQysvhMTguc4=;
 b=o/UFNDBjlLuem0xbmHcPL3t8EsCP5skLhjySPBWgNKxmzVTimK3YGFj+V6trLNjFpK
 xy/lB5X76zl1EzYvTqticTPchj6n/7hke/ysQWnndZIBcfph6tF1FKOGxj9FtTEA7BL5
 wupqfPItOXiSkQO1J5Q+ZD13/QIWtca5Lccs4/zufuTqQorJFxGlbYuCJMwQ1DDNf/YJ
 HBN6wA9Hge55JYbf8J2T9CiK45ve6Vzvflc3voL2gbA2cVmWI2OON4Yo8DDYo2UyWqCD
 roctBEHHJPpQ7U0QTVVAMwuefvIoXi/DhkdKyf/OsH1k8oYnR0EaExcFkERdwMxhjZEh
 RG9A==
X-Gm-Message-State: APjAAAWj4AMBX4Zr5aJxLigIJBvpj3we+BknJI3ceThuPZnPzF8JX/v3
 k5K0enUQB2BN5ZttBiBzWgxzDmLmELX/BahC0qIKXQ==
X-Google-Smtp-Source: APXvYqzRltIrku2LXVeEFCHJc2YFi4Md1SIaeyW4mfj+XUvo+qC8pGuc9cXtasR/G76UI8ICFDNLc3Y6k3eXZlTO+J8=
X-Received: by 2002:a67:ed8b:: with SMTP id d11mr8849195vsp.104.1572276001000; 
 Mon, 28 Oct 2019 08:20:01 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-6-samitolvanen@google.com>
 <2c13c39acb55df5dbb0d40c806bb1d7dc4bde2ae.camel@perches.com>
In-Reply-To: <2c13c39acb55df5dbb0d40c806bb1d7dc4bde2ae.camel@perches.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 28 Oct 2019 08:19:49 -0700
Message-ID: <CABCJKucUR=reCaOh_n8XGSZixmsckNtFXoaq_NOdB+iw-5UxMA@mail.gmail.com>
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
To: Joe Perches <joe@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_082005_769345_8D346284 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi Joe,

On Sat, Oct 26, 2019 at 8:57 AM Joe Perches <joe@perches.com> wrote:
> > +#if __has_feature(shadow_call_stack)
> > +# define __noscs     __attribute__((no_sanitize("shadow-call-stack")))
>
> __no_sanitize__

Sorry, I missed your earlier message about this. I'm following Clang's
documentation for the attribute:

https://clang.llvm.org/docs/ShadowCallStack.html#attribute-no-sanitize-shadow-call-stack

Although __no_sanitize__ seems to work too. Is there a particular
reason to prefer that form over the one in the documentation?

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
