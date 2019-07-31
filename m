Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CB07D1C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 01:19:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YVO1hZYECs4cehHu5MrVgHzwBXJt+FoHPNEb80s4Itg=; b=WAccM8jfS2hzTL
	/kWxfoBch+kw4nazkhxF3LBQd+ba+sU8/HqAOPbNa62vPhsJwfOjBdVzohHgokOMPIGXB8Z8ievNx
	+ZRNpJv2lwHKwH3nQPC3+wvpwJcoyj644WiQ03Q+igE2sm5JCPJX1FPtR/oJja10+au1YNjuFxLD9
	2sTy69SxxZsJ5lp2LJnW8whKgPY98drBoOXqdfDydt9WM5Udg/+iM9jN+SUpoIqFj8iarDvie4I0G
	0aDOew/xXRa58j2vIrKvgNf6lavblBn4fwKsqPmyrgiSsN4DqUbpa7iaek5cYFZwFKf6NSyr7TJwS
	9dv0KuRJHa83i0vz3yuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsxsr-0000cr-7R; Wed, 31 Jul 2019 23:19:49 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsxsl-0000cT-68
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 23:19:44 +0000
Received: by mail-oi1-f194.google.com with SMTP id q4so22922522oij.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 16:19:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RR0iaPSwLXzlYnEnnE6sJ2Z50c2cBYsQK/byKd2lzSQ=;
 b=h6SaASi2XdkpuAl9NByQoeG5rEeFUlF6Nbb0tbd5VTo1rABjlUb+4Pb/YM9L1GT1Xo
 uR0Dj67Ji1rdCPMrBBfT3p7Mys5wvPbWnHi36NTLr1m6Sgr6jSumD/gqjCPWeprRQagT
 VFE+lFXqNKKlE7qyZxzRfXa6KUIKWAHVJiAJZg/qm13ooveJDdL4y8pWnu18V0eRKDMs
 egfskgo8AzdgxEA/+bKnAIH5sjQaXtcHqvL7PmeoxTMH7IGgJ/4RGwMeVpNDpYQYMdJ3
 WDXw0DwxFRgiWQyHARrxt6NZW4yTn64PWRMO+WBL2hu6aAhcszw7EUA4cumF/katAXlm
 T80g==
X-Gm-Message-State: APjAAAVXgZZoYCtFKCFplStRWx8aNLJIVOeaFF7P9QUH3PThzXwU23y/
 mUck0lJYTLjQO95r/DM64ZHxsIppSFY=
X-Google-Smtp-Source: APXvYqztEyCrXx9OjX/9ZNam3HloQX1+73Dn1X21VoDbM9dXoCUhWrour7t+46WFGUm4Yhoz2RwLSg==
X-Received: by 2002:aca:1b10:: with SMTP id b16mr59411552oib.13.1564615182103; 
 Wed, 31 Jul 2019 16:19:42 -0700 (PDT)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com.
 [209.85.210.49])
 by smtp.gmail.com with ESMTPSA id k135sm24398828oih.1.2019.07.31.16.19.41
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 16:19:41 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id s20so6548848otp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 16:19:41 -0700 (PDT)
X-Received: by 2002:a9d:6d0e:: with SMTP id o14mr55644910otp.205.1564615181289; 
 Wed, 31 Jul 2019 16:19:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190529083254.39581-1-chuanhua.han@nxp.com>
 <20190529083254.39581-3-chuanhua.han@nxp.com>
In-Reply-To: <20190529083254.39581-3-chuanhua.han@nxp.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Wed, 31 Jul 2019 18:19:30 -0500
X-Gmail-Original-Message-ID: <CADRPPNQhRjEx=0Rr-XkHXtLTaWGM_b5zsjrL7vhhzzmQc35j9A@mail.gmail.com>
Message-ID: <CADRPPNQhRjEx=0Rr-XkHXtLTaWGM_b5zsjrL7vhhzzmQc35j9A@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: ls1088a: Revise gpio registers to
 little-endian
To: Chuanhua Han <chuanhua.han@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_161943_229642_A3F11771 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, lkml <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 3:32 AM Chuanhua Han <chuanhua.han@nxp.com> wrote:
>
> Since fsl-ls1088a Soc GPIO registers are used as little endian,
> the patch adds the little-endian attribute to each gpio node.
>
> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>

Acked-by: Li Yang <leoyang.li@nxp.com>

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> index 661137ffa319..3e6d20d065bd 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> @@ -272,6 +272,7 @@
>                         compatible = "fsl,qoriq-gpio";
>                         reg = <0x0 0x2300000 0x0 0x10000>;
>                         interrupts = <0 36 IRQ_TYPE_LEVEL_HIGH>;
> +                       little-endian;
>                         gpio-controller;
>                         #gpio-cells = <2>;
>                         interrupt-controller;
> @@ -282,6 +283,7 @@
>                         compatible = "fsl,qoriq-gpio";
>                         reg = <0x0 0x2310000 0x0 0x10000>;
>                         interrupts = <0 36 IRQ_TYPE_LEVEL_HIGH>;
> +                       little-endian;
>                         gpio-controller;
>                         #gpio-cells = <2>;
>                         interrupt-controller;
> @@ -292,6 +294,7 @@
>                         compatible = "fsl,qoriq-gpio";
>                         reg = <0x0 0x2320000 0x0 0x10000>;
>                         interrupts = <0 37 IRQ_TYPE_LEVEL_HIGH>;
> +                       little-endian;
>                         gpio-controller;
>                         #gpio-cells = <2>;
>                         interrupt-controller;
> @@ -302,6 +305,7 @@
>                         compatible = "fsl,qoriq-gpio";
>                         reg = <0x0 0x2330000 0x0 0x10000>;
>                         interrupts = <0 37 IRQ_TYPE_LEVEL_HIGH>;
> +                       little-endian;
>                         gpio-controller;
>                         #gpio-cells = <2>;
>                         interrupt-controller;
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
