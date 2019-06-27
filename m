Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C06758E41
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 01:07:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3T+hP5qWOQDnw87PkCOhjlZEnltvgUlHAT5gfsEUxiw=; b=m/4T2va/x75wsp
	7Tc2QqjuPnFhdgDzIBmEkhO9B9PM0DAJjBUrcF2wTgWWpklGdTqlfzS7psqCRQcpqf3UQ5/HV4aV6
	R3NWeo4EcN1V1XDiCwbKB0GIBfY5rRch6Od102sSeFHf38Ywe4rOrJ1gO1XJFvKkZbBgXEcuM2iEa
	+tc/8cAryHXCBh7gvSwuV0UX+oBvsjaC+QzzOxzniHx0Ci6JuplIFFGn8OXLueLQnWJLihnJ79ou2
	GOgDjhSmEUh03+6qhh0kqZ7k0aVF4zl9cEoOAvEXN3monexnL/b44/8jdBsb1PrsF/Khd+glj8v3e
	q8cQzvxhnlerkWy5iK7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgdUH-0007wB-NU; Thu, 27 Jun 2019 23:07:29 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgdU5-0007v4-Kh
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 23:07:19 +0000
Received: by mail-pl1-x643.google.com with SMTP id b7so2085735pls.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 16:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j8aV1JatTnCG9rEfKFqUjdOyDtVtjZrcPrKiiada/KQ=;
 b=PI8yun9rIYrfvJePU9ieiN5O/3Qk2VslkzAZJXq2L0EBRtjuK6USjOKgOZ7Sc3b+kf
 LPjwHijZrg/3NHKZAYZHn8P3h7xwVWlHnKoc2/RrtZtZgli4ONeW98tcloEtmOsMxT5m
 QVM3ftbNcbQGm+emV1Lijfg3U4M9T1XcPT5f6kW8AfUQ44udK7p25ZgMy/I2rTzLM34G
 mWCxIs5XIjjiXQdMjtLFVEc3ANV0UzH068BKZGk1INqR1RU80HQd+ujezyya4rmZvA5b
 u6sdkn++METQypcjKKe5RUomOOj0r19dOFdHGeJotVDCVz1KLCVeRTLX6reoAbhQrHhm
 kLvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j8aV1JatTnCG9rEfKFqUjdOyDtVtjZrcPrKiiada/KQ=;
 b=U2w7CyVTuXhI9xk0KyADAG2odpXkCycJjsmnW31WUvi1MxpD71wCGJGT3UyaZ0F6W1
 EFceGnOiKCJ4bOe7Wzt/+Ru440lUj7FPRivXfFglU6SXz+7rG+bbNbg6udCGTNLXhCNB
 uVpuq3vpN7aOegLnAxxc55DgQ34QP3Qy+dD2SiL4dIcaMeLAVCP5DPGFtWiLDIRxOqOl
 OVmkteYJ8D4qeVi8P3h1PSRhJQrW1VOSFo8na9cdj71vAnZ1sie7vLU1/mfAgOrEW1zX
 +ys9Fq0yIxCqJCnyTASTShbDJKiLaB+4ZhUYQ/tlbukhlG96ej1Wngcu1MY2oX5KBjmt
 ipJw==
X-Gm-Message-State: APjAAAUa2UfJaOG6+y8SHUtvBIuah2ll2ygvYUWKFW8s0Rgsnharzg50
 9QhzSL+47haRYTCYTuDL1NkvR9ZDYPHH+kXeERabEA==
X-Google-Smtp-Source: APXvYqwWpZpvsnZI1MNBHv4VcBRtExkgggkF2GcyWY7FfmfWI8rEETy9DfUnxj5aU4wruEHdvjbqLbL5JkRgkd6QXzU=
X-Received: by 2002:a17:902:9f93:: with SMTP id
 g19mr7450025plq.223.1561676836363; 
 Thu, 27 Jun 2019 16:07:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190627221507.83942-1-nhuck@google.com>
In-Reply-To: <20190627221507.83942-1-nhuck@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 27 Jun 2019 16:07:05 -0700
Message-ID: <CAKwvOdkYvuYTq=kV9yBWmStQ4GhMtpnp9dV5UvASQKeMwfu0Vw@mail.gmail.com>
Subject: Re: [PATCH] clk: mediatek: Fix -Wunused-const-variable
To: fparent@baylibre.com, sboyd@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_160717_682647_02CF206D 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Mark Brown <broonie@linaro.org>,
 mturquette@baylibre.com, LKML <linux-kernel@vger.kernel.org>,
 Nathan Huckleberry <nhuck@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-clk@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 3:15 PM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Clang produces the following warning
>
> drivers/clk/mediatek/clk-mt8516.c:234:27: warning: unused variable
> 'ddrphycfg_parents' [-Wunused-const-variable] static const char * const
> ddrphycfg_parents[] __initconst = {
>
> This variable has never been used. Deleting it to cleanup the warning.

comparing this to `nfi1x_pad_parents`, it looks like this maybe should
be an entry in `top_muxes`, but there seem to be some magic constants
in those that I don't understand or know what we'd use for
`ddrphycfg_parents`.

Again, looking at `nfi1x_pad_parents` for reference, we see
`CLK_TOP_NFI1X_PAD_SEL` used with it and being defined in the device
tree bindings in include/dt-bindings/clock/mt8516-clk.h.  I would
guess that `CLK_TOP_DDRPHYCFG_SEL` should be used in `top_muxes` with
`ddrphycfg_parents`.

`CLK_TOP_DDRPHYCFG_SEL` appears in:
drivers/clk/mediatek/clk-mt8135.c
drivers/clk/mediatek/clk-mt8173.c
drivers/clk/mediatek/clk-mt2701.c
drivers/clk/mediatek/clk-mt7629.c
drivers/clk/mediatek/clk-mt7622.c
but not the translation unit in question:
drivers/clk/mediatek/clk-mt8516.c

in most of the above (except clk-mt2701.c which simply has 1
additional field but otherwise matching values, and clk-mt8135.c which
has 2 different values), it's added to a similarly named and typed
`top_muxes` as:

MUX_GATE(CLK_TOP_DDRPHYCFG_SEL, "ddrphycfg_sel", ddrphycfg_parents,
  0x040, 16, 1, 23),

even then `ddrphycfg_parents` shows up in the other translation units
in the same statement as `CLK_TOP_DDRPHYCFG_SEL`.

So questions to the maintainers I have:
1. Is the above `MUX_GATE` what should be added to `top_muxes` in
drivers/clk/mediatek/clk-mt8516.c?
2. If so, where? Is order of the array elements important.

If the answer to 1 is no, then we should take Nathan's patch.

>
> Cc: clang-built-linux@googlegroups.com
> Link: https://github.com/ClangBuiltLinux/linux/issues/523
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
>  drivers/clk/mediatek/clk-mt8516.c | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/drivers/clk/mediatek/clk-mt8516.c b/drivers/clk/mediatek/clk-mt8516.c
> index 26fe43cc9ea2..9d4261ecc760 100644
> --- a/drivers/clk/mediatek/clk-mt8516.c
> +++ b/drivers/clk/mediatek/clk-mt8516.c
> @@ -231,11 +231,6 @@ static const char * const nfi1x_pad_parents[] __initconst = {
>         "nfi1x_ck"
>  };
>
> -static const char * const ddrphycfg_parents[] __initconst = {
> -       "clk26m_ck",
> -       "mainpll_d16"
> -};
> -


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
