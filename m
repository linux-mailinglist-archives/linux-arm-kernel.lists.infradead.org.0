Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B05C174561
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 07:12:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8Yja8QZNCy2vddZ7Rv8HFN/pJS/si6EMzZUrH89F7c=; b=XFTLoMOAGUR9i3
	70As1xDV8bBKSC3lCeQGnbZq8EMiYh3XE0oRToVe4voD/w2Rjn14eoLExxpoOETG9l/TcRyJ21WP8
	UToNiTFYdq5ulWmyeaXyEC8Ct6h60iR3Q/cSOlZYW8yAJGmfipunHMQZvCuK9v8GBO55iqTSBLsIq
	cO9LA7ZBCkAzIEeQD9pHFjvYC8zGgQhJbgZYaQEVA4MCzvKHPdLfnooToG22GBc3iF2sFBI0hbDVd
	LFE8uezmbl3it3GUiLctAzZUjb86YP5SzOsrEj3jQ1VfXO7EKV48JUAOIiFdBrxNEmBC5woFxU0KI
	vIi6MzY4PEFZFBzwf+OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7vMI-0000Ky-FW; Sat, 29 Feb 2020 06:12:18 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7vM4-0000KQ-M9
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 06:12:06 +0000
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com
 [209.85.222.47]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id 01T6BSYI013905
 for <linux-arm-kernel@lists.infradead.org>; Sat, 29 Feb 2020 15:11:29 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 01T6BSYI013905
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582956689;
 bh=S8ie6xcSgZjQKTwEkbDG56p/lOho2ipiDfPyiqZ7rvI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LbPDSFz5NguZ7qy+jJ2GTcVzpff7THwcImiuRRN+cm4HYVPvFHt2LbNcMT2OOPt7T
 Sn2PR3GodRycRePEbcksXISSHWOpfueUxiTquU41htdzf6pCV11J/JB6SGO4qa/5X7
 7zUzTdCe0JbQR2jMvJZo++gFNYBapYNgjMkUOvWoEOR1ZqJ8pRAmrN1zAqCjvVxEXZ
 BNjQz1zEblNaXSH1OrQwlN0TZSm8LbqO18IdjBpHg+lddEQvm0S9oANx8emS+HoJX+
 oaSSaT1UBck46ZNz6WVdVZxz+7qvnwKBjeq4925fWIJ1txrrda6LlUwhGj/MGqT/NF
 2oxkPxEKCsaCg==
X-Nifty-SrcIP: [209.85.222.47]
Received: by mail-ua1-f47.google.com with SMTP id l6so1796046uap.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 22:11:29 -0800 (PST)
X-Gm-Message-State: ANhLgQ1ExcD4onA6LMQ5rH+hi66J1CsQwGEml4FYXX+KUQF6DHiyh07K
 v/OCnQ9WF3kERNCDdgeQlHUu/297mCK7GOM0Ny0=
X-Google-Smtp-Source: ADFU+vubh8kH92wzbPEOmByx/QnpSuJQV0HHcAkbw9vppZxNRv2USNuA4QfgAwjQSHZkZXIXBCMYVYnetsx1bYYikKk=
X-Received: by 2002:ab0:2881:: with SMTP id s1mr3837997uap.95.1582956688322;
 Fri, 28 Feb 2020 22:11:28 -0800 (PST)
MIME-Version: 1.0
References: <20200222064445.14903-1-yamada.masahiro@socionext.com>
 <20200222064445.14903-4-yamada.masahiro@socionext.com>
In-Reply-To: <20200222064445.14903-4-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 29 Feb 2020 15:10:52 +0900
X-Gmail-Original-Message-ID: <CAK7LNASnmVJKvVA815oTwL-a37W9qhpV98RfGU+o5cMiM4Ek_w@mail.gmail.com>
Message-ID: <CAK7LNASnmVJKvVA815oTwL-a37W9qhpV98RfGU+o5cMiM4Ek_w@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: uniphier: rename aidet node names to
 follow json-schema
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_221204_961571_0F07DA1B 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 22, 2020 at 3:45 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Follow the standard nodename pattern "^interrupt-controller(@[0-9a-f,]+)*$"
> defined in schemas/interrupt-controller.yaml of dt-schema.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---



Applied to linux-uniphier.


>  arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi | 2 +-
>  arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 2 +-
>  arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
> index 7510db465f33..2e53daca9f5c 100644
> --- a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
> +++ b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
> @@ -566,7 +566,7 @@
>                         };
>                 };
>
> -               aidet: aidet@5fc20000 {
> +               aidet: interrupt-controller@5fc20000 {
>                         compatible = "socionext,uniphier-ld11-aidet";
>                         reg = <0x5fc20000 0x200>;
>                         interrupt-controller;
> diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
> index 8d360c5cc32b..be984200a70e 100644
> --- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
> +++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
> @@ -664,7 +664,7 @@
>                         };
>                 };
>
> -               aidet: aidet@5fc20000 {
> +               aidet: interrupt-controller@5fc20000 {
>                         compatible = "socionext,uniphier-ld20-aidet";
>                         reg = <0x5fc20000 0x200>;
>                         interrupt-controller;
> diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
> index d51b0735917c..994fea7b12c1 100644
> --- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
> +++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
> @@ -462,7 +462,7 @@
>                         };
>                 };
>
> -               aidet: aidet@5fc20000 {
> +               aidet: interrupt-controller@5fc20000 {
>                         compatible = "socionext,uniphier-pxs3-aidet";
>                         reg = <0x5fc20000 0x200>;
>                         interrupt-controller;
> --
> 2.17.1
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
