Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBC8186AE7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 13:32:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNikggsu4Nk2Vp9ukgeIbD7NWoXPWiwS82+6Wx8IFfc=; b=Zt77t1hHz3fDcZ
	irqbTI2JnbVxbtwb8BbjOC4CtKpwstJAK3i+rrNDn+pNaBYR88k7rvkAnw/Af3bXfhmg/6nKEhMdu
	fSgQbcvUfBDJteE3XV/SlOZYoXl0+matIafbghgkjKM6b1xz21oUyOx+CJVL0qR3pX3w0m+9rTllP
	JdKq5U7m4HmuHPIbqh4kGX9Pp8AOoIZSFqKnwFNEQHIrr7J+35DHtRXAUHlWc9qQeXiV15y1qlKu6
	fYIeHQxcs2OH30l942uk8PyL13VyhtFLDQF94ywiJDJhw3pyqkR5plAL+orQ3J+/wjO7whE3sfTiC
	KxUrRHKaMin920fy8gNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDoui-0005gN-7i; Mon, 16 Mar 2020 12:32:12 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDoua-0005fy-02
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 12:32:05 +0000
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
 [209.85.217.44]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id 02GCVdKS023406
 for <linux-arm-kernel@lists.infradead.org>; Mon, 16 Mar 2020 21:31:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 02GCVdKS023406
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1584361900;
 bh=zpCoHUBeDJGjHqdX9oB4j+mSj5BJoyxsC8tu6I0gEvE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Z8Uv17kehP6AU8luHPv8o4S/QQDTPgs+Qm7U7hJRTLRktKhFnQ7fWaCskGMsVp+N/
 1RTdU5b343bYf6MeoLim1BgBiDycA1a5ztRoEDVaAfbBHGUAI6sodfVRVe2reuhAeU
 kWrkgCTfBwC7Um1H58K+E+VBmTpQwqd1/jjELMSxD8DxCKmzuAymiFCNhbtG8UeKdc
 b/5z4tlv4ff/3qGw/U84qQf+ktBqF5/imHWrUTFOJUjXKU4B7KTvsKcOWQ68q1kmZk
 GGnqsjyzeqPPCGIlh1f/jcyY9qEYVtqu/BmbMq2aaqCSlmMi6R5dOsPgMxBNkmBVtD
 wWxA8y+shvGHQ==
X-Nifty-SrcIP: [209.85.217.44]
Received: by mail-vs1-f44.google.com with SMTP id n6so11110698vsc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 05:31:39 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3ONSEXxmUWvyJ9FME/ctrBT9v2ZIL0iQMXvRE6VMFTSbKsC5mI
 Vp+HS29P9rkvW+pdMVQZEJIlY/d7HPFK/kfPuDY=
X-Google-Smtp-Source: ADFU+vslQ2MQUt3HOh4jbtvGO2wNFlnU2SIK9Hi7L8whmrTgbjpovnuWApmSmKtPusuvmqo3ZjAjKdr5EnwxaWLKqCg=
X-Received: by 2002:a67:2d55:: with SMTP id t82mr8503531vst.215.1584361898827; 
 Mon, 16 Mar 2020 05:31:38 -0700 (PDT)
MIME-Version: 1.0
References: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1584061096-23686-7-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1584061096-23686-7-git-send-email-hayashi.kunihiko@socionext.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 16 Mar 2020 21:31:02 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR+73FGUC7NAaPM_5uyjccuxDXokmKaY2KJpxqskdyuVg@mail.gmail.com>
Message-ID: <CAK7LNAR+73FGUC7NAaPM_5uyjccuxDXokmKaY2KJpxqskdyuVg@mail.gmail.com>
Subject: Re: [PATCH 06/10] ARM: dts: uniphier: Add ethernet aliases
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_053204_264076_09F2004A 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: DTML <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jassi Brar <jaswinder.singh@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 9:58 AM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> Add an aliases property for ethernet to determine device name assignments.


There is no call-site of of_alias_get_*() for this device.

Why don't you describe the reason correctly?





>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  arch/arm/boot/dts/uniphier-ld6b-ref.dts    | 1 +
>  arch/arm/boot/dts/uniphier-pro4-ace.dts    | 1 +
>  arch/arm/boot/dts/uniphier-pro4-ref.dts    | 1 +
>  arch/arm/boot/dts/uniphier-pro4-sanji.dts  | 1 +
>  arch/arm/boot/dts/uniphier-pxs2-gentil.dts | 1 +
>  arch/arm/boot/dts/uniphier-pxs2-vodka.dts  | 1 +
>  6 files changed, 6 insertions(+)
>
> diff --git a/arch/arm/boot/dts/uniphier-ld6b-ref.dts b/arch/arm/boot/dts/uniphier-ld6b-ref.dts
> index 60994b6..079cadc 100644
> --- a/arch/arm/boot/dts/uniphier-ld6b-ref.dts
> +++ b/arch/arm/boot/dts/uniphier-ld6b-ref.dts
> @@ -29,6 +29,7 @@
>                 i2c4 = &i2c4;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> diff --git a/arch/arm/boot/dts/uniphier-pro4-ace.dts b/arch/arm/boot/dts/uniphier-pro4-ace.dts
> index 92cc48d..64246fa 100644
> --- a/arch/arm/boot/dts/uniphier-pro4-ace.dts
> +++ b/arch/arm/boot/dts/uniphier-pro4-ace.dts
> @@ -26,6 +26,7 @@
>                 i2c3 = &i2c3;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> diff --git a/arch/arm/boot/dts/uniphier-pro4-ref.dts b/arch/arm/boot/dts/uniphier-pro4-ref.dts
> index 854f2eb..181442c 100644
> --- a/arch/arm/boot/dts/uniphier-pro4-ref.dts
> +++ b/arch/arm/boot/dts/uniphier-pro4-ref.dts
> @@ -29,6 +29,7 @@
>                 i2c3 = &i2c3;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> diff --git a/arch/arm/boot/dts/uniphier-pro4-sanji.dts b/arch/arm/boot/dts/uniphier-pro4-sanji.dts
> index dda1a2f..5396556 100644
> --- a/arch/arm/boot/dts/uniphier-pro4-sanji.dts
> +++ b/arch/arm/boot/dts/uniphier-pro4-sanji.dts
> @@ -25,6 +25,7 @@
>                 i2c3 = &i2c3;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> diff --git a/arch/arm/boot/dts/uniphier-pxs2-gentil.dts b/arch/arm/boot/dts/uniphier-pxs2-gentil.dts
> index e27fd4f..8e9ac57 100644
> --- a/arch/arm/boot/dts/uniphier-pxs2-gentil.dts
> +++ b/arch/arm/boot/dts/uniphier-pxs2-gentil.dts
> @@ -26,6 +26,7 @@
>                 i2c4 = &i2c4;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> diff --git a/arch/arm/boot/dts/uniphier-pxs2-vodka.dts b/arch/arm/boot/dts/uniphier-pxs2-vodka.dts
> index 23fe42b..8eacc7b 100644
> --- a/arch/arm/boot/dts/uniphier-pxs2-vodka.dts
> +++ b/arch/arm/boot/dts/uniphier-pxs2-vodka.dts
> @@ -24,6 +24,7 @@
>                 i2c4 = &i2c4;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> --
> 2.7.4
>


--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
