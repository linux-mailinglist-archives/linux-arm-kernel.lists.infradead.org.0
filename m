Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDFFF2CD9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 11:52:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LoLu8um2hn0PFfzKo2HMwY6v6h2IaipFkqPeGBMQt6c=; b=sCcIAWYX/dhQ+Z
	HVG4dyZ57R3KZSi5QxiJNSKv+5aYBilJNBmvKVP0q9Vfz/4hNuBtsP3l1On0hDvyfRh6Uj/xybCtL
	Fg1XN/aHOOsGSRPLtMUeWxvpuWkYb10DT6UPJqvS7qNB08AwstbgfBmotCPD0t+2zR+YV0synUoK4
	HubgV3xCwALRnf17fVcnZ9o9JaBVbqsG6WBgASNAyjPjH5jPzTvdN4t7ayojQkK7dySFsjHLKn9rJ
	FCVVovs6ubWGnT9n6nte4IlYwf1kBu2YCzp3DSkT/9k64vG5cLCCfiqEb0DOEnq0GfHoJc1L6VRUL
	Ng39od0TtTwt3pNO70dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSfOi-0000M1-6X; Thu, 07 Nov 2019 10:52:16 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSfOJ-0000EN-4l
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 10:51:52 +0000
Received: by mail-wm1-x342.google.com with SMTP id q70so1953083wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 02:51:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OvMY+y9t+JrwQeXlyarqTJXF9VkquzjWewr7iQbYsdg=;
 b=HKwEOaykRl1GaA5HUx+9TcTEGGb7oNvHt2Y9owJSyCUoyem7fwAkvwQBHkQI2FPvWP
 uD0rulX0IgiMsrRSKmb0gtmwI0JV854FA+6gSUC796H6UFIZXFzBZJ2xOUivRHTVQ7hz
 7wCtkr90dGCFRE9MIxHYuABRTVM2CaXJ2g8zZntLAHf9IB+LEKPFIzPuvH4ZT93oEQRw
 CkmsEypotk24LHmyt9u5PQ+ufkPLAAuWaKVGxSQQlNXe6maf3XOUhitNWnifjM/Y/KdZ
 9bZxWAB3xnwJN98FAhenJ2RmIObgbkD+CCxooE1AqOAT7pNw5Zsa/8pH6e9bXw4Thfeb
 Hl0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OvMY+y9t+JrwQeXlyarqTJXF9VkquzjWewr7iQbYsdg=;
 b=PoJ6PHi2jhZBLn22pkRiq6BFPiN5fQXsSN35FnCM99GvAAXoTBUtOGkQTqSe4dMfDf
 kZpy4KVjIIzO369vYRC5tyN/p699cBBJYHcUYus5pJhngsWWxq9MbaevDUSbylLNKTRr
 r9ZG3lCX9LndkwWhJKkkvduE4Ti2wVcFD/OCCfh93/UnrQThVajUxtbFgprq/Ub6rIMF
 LzMSOwaZsNKbX5vJdWkUNOg+1sY8Sns+38a1lIKzel96K+Sm68Gpv7e9viUEWdIW7HYr
 wxje5TFqWdUpL+p+jIfjNSOGq+5HJ8+mWVwWXcst2tTP9rKd2Le9C5q34sh4Yk8Z2Idk
 7CXA==
X-Gm-Message-State: APjAAAUl27E42PljvNHi0AdyRjF8royS15SCrN9t929iZmHRTZlTHXEe
 9Bl8Y7knDm0e/vdgy5y5znAxXUvJ2htVQWpESgOrKg==
X-Google-Smtp-Source: APXvYqxZvEiiT90pDsnYPJdaxTdcxJka6vY+KKCUJ0OKpqIG88pZzG10bA4lVqLf/rqLW8X5UhbBGNpzEr6t7euuMFw=
X-Received: by 2002:a1c:b1c3:: with SMTP id a186mr2297717wmf.10.1573123909498; 
 Thu, 07 Nov 2019 02:51:49 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <20191105235608.107702-12-samitolvanen@google.com>
 <CANiq72mZC-G_R_RJjapZS+NvkQcrjdiri0NyHUgesFzUpe-MDg@mail.gmail.com>
In-Reply-To: <CANiq72mZC-G_R_RJjapZS+NvkQcrjdiri0NyHUgesFzUpe-MDg@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 7 Nov 2019 11:51:38 +0100
Message-ID: <CAKv+Gu9DD12BPV_jNv9Hjw4oSiZvtdiVVjB-B8WLXCoPL4CA9Q@mail.gmail.com>
Subject: Re: [PATCH v5 11/14] arm64: efi: restore x18 if it was corrupted
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_025151_232426_5DF44318 
X-CRM114-Status: GOOD (  12.44  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jann Horn <jannh@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, Marc Zyngier <maz@kernel.org>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 6 Nov 2019 at 05:46, Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Wed, Nov 6, 2019 at 12:56 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > If we detect a corrupted x18 and SCS is enabled, restore the register
> > before jumping back to instrumented code. This is safe, because the
> > wrapper is called with preemption disabled and a separate shadow stack
> > is used for interrupt handling.
>
> In case you do v6: I think putting the explanation about why this is
> safe in the existing comment would be best given it is justifying a
> subtlety of the code rather than the change itself. Ard?
>

Agreed, but only if you have to respin for other reasons.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
