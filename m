Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E05EA178B7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 08:40:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1hIELon/44BqnjrMfQOXyPD+pJAyfEBMrNmV+5Y/+I=; b=Rg2YTJM6JBt411
	uNOvS0Kr1glHdXEti7HMaFX07MSlxMU8iqiGJW4EM3sg+AWEwYk5gJBLuhhnxfUPgnmcDtba1JqRC
	SedfK6q4oFuhFc4jiVo3uzkYM8NgIwiqxRmqJN26XUKkoi25Bn33wviospHtf0ueGLRHgAIl1lwIg
	59f3ieXZjQkpRQWFD0Rk1tHDrxINCoCiC1iOt8S14pUorwVYT4BBCTNiVNYN+lstTlMXXVZ4uHjPU
	0bRAqaXCh6fbnRqiWb3EzxsOMrk6B0oOphwNJG6nNCcZYQA+ns4RsKUeH2il0sHi2WXw6rxpOlmjS
	64y+YwqdIw0Y7z21JNSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Ode-0003QO-JR; Wed, 04 Mar 2020 07:40:18 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9OdU-0002aC-3u
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 07:40:10 +0000
Received: by mail-wr1-x441.google.com with SMTP id t11so1069754wrw.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 23:40:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6RNmsQpiHqfF/YSgO9NIM7W8CLgp3pdAVo9ykmJZlRo=;
 b=oVfcmTnpm3IisBAZOZhFMkm7jHzBWZKMQy3+fNwZiE84ISTMMwdHR1M2MI70C7JE79
 h+dlEJg1WqUTz5KeXNoPplBU/9fJtSyIUHStuFpxS15Kv20WMab3XUFasOOQTFzcflko
 d5yg1p4aGWRTggfr9RGgCuaDX0ya9cMQaVvGSd83TYZjcWbJ9NoKGu1qOEZ78t7A9O0b
 8sVO4QYD0K2fCCfY7gLSC/VzgwIiJfcurQT078dwwtQ5uLRDwCbbnyLI0pwwZ8TDSbpP
 ++jH3VqahXiptnqdTexN3p5HK9iOprfA8vR3Z3lBfMp6dKQSfryU9aCkBBE+0ZNYu/YA
 lDgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6RNmsQpiHqfF/YSgO9NIM7W8CLgp3pdAVo9ykmJZlRo=;
 b=SJcy5sBTABYMI65kA1AX0bRaLIosDFNrnl8Ml51s2HgXxT6/Z41G736yI7rqVQtnTE
 LZmAOv8gEEI4RsC3IP4IAqtvH5xI5dE0qB5mbEgbMlmekWf4KC4LKkQQ9/fP2jE2qZNX
 /wt+TIvTn5lR2MGd/OH+51MKJIjQbam2W4wiOP3J0qr8V1g9IvvWQh6k4wlXj3+M3uQz
 c2xqqKi1JqkaBzc1He82sbXGl8l1VZvSJqt5qdBTnYXVk0lDa4HeCFIUbu5hPf8FDmoc
 1NlXTFGQZm1+h52ZP6oq9pdWXWp18Ar+YaU8RhMiIftJnKyWj44ZsmD80k7kdQmFDTKa
 0WPg==
X-Gm-Message-State: ANhLgQ2QOKbahy1SpdlXPtiHO001NlJ5qrMR8xicOxEvASXqjCk3V7FE
 VKvN6vkQbXPOJsYrj+rnAhxdDXn/31SSbMVA24DPdg==
X-Google-Smtp-Source: ADFU+vskboW/92fGHw8yfZSMDhTfUOgsQTJ3wM7mHxf3B6ugHu5h8UWfmWEUpFJKno4fiCYNiO2lp5cnJ56nibBCSbQ=
X-Received: by 2002:adf:a411:: with SMTP id d17mr2624915wra.126.1583307605723; 
 Tue, 03 Mar 2020 23:40:05 -0800 (PST)
MIME-Version: 1.0
References: <c41cc67321d0b366e356440e6dbc9eceb1babfe4.1583105749.git.stefan@agner.ch>
In-Reply-To: <c41cc67321d0b366e356440e6dbc9eceb1babfe4.1583105749.git.stefan@agner.ch>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 4 Mar 2020 08:39:54 +0100
Message-ID: <CAKv+Gu-myRS5FWEVucdpS5zUXM+UjBdMGCiFbgu0=3=T8-9LFQ@mail.gmail.com>
Subject: Re: [PATCH] crypto: arm/ghash-ce - define fpu before fpu registers
 are referenced
To: Stefan Agner <stefan@agner.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_234008_200604_9809EAB0 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Jian Cai <jiancai@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Manoj Gupta <manojgupta@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2 Mar 2020 at 00:37, Stefan Agner <stefan@agner.ch> wrote:
>
> Building ARMv7 with Clang's integrated assembler leads to errors such
> as:
> arch/arm/crypto/ghash-ce-core.S:34:11: error: register name expected
>  t3l .req d16
>           ^
>
> Since no FPU has selected yet Clang considers d16 not a valid register.
> Moving the FPU directive on-top allows Clang to parse the registers and
> allows to successfully build this file with Clang's integrated assembler.
>
> Signed-off-by: Stefan Agner <stefan@agner.ch>

Acked-by: Ard Biesheuvel <ardb@kernel.org>

> ---
>  arch/arm/crypto/ghash-ce-core.S | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/crypto/ghash-ce-core.S b/arch/arm/crypto/ghash-ce-core.S
> index 534c9647726d..9f51e3fa4526 100644
> --- a/arch/arm/crypto/ghash-ce-core.S
> +++ b/arch/arm/crypto/ghash-ce-core.S
> @@ -8,6 +8,9 @@
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
>
> +       .arch           armv8-a
> +       .fpu            crypto-neon-fp-armv8
> +
>         SHASH           .req    q0
>         T1              .req    q1
>         XL              .req    q2
> @@ -88,8 +91,6 @@
>         T3_H            .req    d17
>
>         .text
> -       .arch           armv8-a
> -       .fpu            crypto-neon-fp-armv8
>
>         .macro          __pmull_p64, rd, rn, rm, b1, b2, b3, b4
>         vmull.p64       \rd, \rn, \rm
> --
> 2.25.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
