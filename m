Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A96E16FCB7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 11:56:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cn7anUwQ3nkNo+JDktdLZBCN/TAAp2zv+OghM4yPOhw=; b=Zr3oPCQ5C2n+6y
	iJm/enfo7vBXD+6yEDLrQGxgZXT+cL9y03kGWQ6vbUQVDJIbwwfqj2oKlAIzUma9MCi/echiKQFYz
	7Tpf7efY/j/WbgQGrpNADc1/77y8Iod5kYqp5tADWHRzA3COV9DoY83vsRc9asW7M9bzuSAFLjCE2
	a76Sytztxkk2F4Fj5e8hAIewopJ84gzJ8YcLkeRsyYjT7sy3m7NoEFIKaV3hsuthsRX9jxV3SlfB9
	nyc/O2P6HrnAWVNfR2EUAYryeMSoaBSdO2TxmpU+N1FXWlcK5HwZkWLrbPYs0XtU9mDq/yHcRyWEy
	FfzTmUnYITFCJT5OLgsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6uMd-0004Et-S8; Wed, 26 Feb 2020 10:56:27 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6uMO-0004BE-IW
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 10:56:17 +0000
Received: by mail-qt1-x842.google.com with SMTP id l21so1892592qtr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 02:56:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z3j9UKE4CU10RkojeSW3IlQzPeeFXpX/sxvomC4elck=;
 b=giOc/T0TXl+iIxlOUYfUQ+tWKJrb3RxKjhDveWCkvkLIVtnsOdxkcnt0ESXCKSc1TS
 FiRS/OcFWkNbN6ZZbnISyj+Gcaq5JHAlfQbkSUkEMT/fl1OcnIu7vgqbMCuNMug80vmL
 2PWczE+el7IRqrtvshhUbc5PCoiYZhO9GfaNw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z3j9UKE4CU10RkojeSW3IlQzPeeFXpX/sxvomC4elck=;
 b=S6qamSjkAWxpfQaMZrw2KSqOkB3rHOa6LGZHXtiVksi9kUPLiKeyGO8a8Ig1Hc4MPN
 RQXmOJRZy2+Xj+ZURK1xYLRRpsQgLZuDKJcR4f92Zjf2JDJR+e8qR/0+orZ7iW54DTHE
 6jL/UAc0t+4Dym0LK/Jo/gye0IALu/JrfDlSdBX1ezuWT3i8dqLWCC0M0cfsBejQMw+m
 wOaVlB117B9XUIa4STDbOMjwugjUelg/sHIcd6LoplLm+O6N+uxvt6DjeB12utWKHf1F
 uoSVmTRbZ/9Q059KKHdfdF8yFlg/BgZYyw2LZpkp92PrQoYXA8LSQCMo3dOCz5ZXRiL3
 2bTg==
X-Gm-Message-State: APjAAAWfHgGd4P49Lwt69EypMdgT0Abc8wY11lP6yOkXsd2Dfo4N1M0g
 dygCo2/MLZ4HPi4s7Hb9qUgA6EjVHZ8GDBLDuCawjQ==
X-Google-Smtp-Source: APXvYqzIPt5oXV3k/5jmxtXuEfikPuiPbXvjlG9fRqNJ2BaeGuQJX0lMhbp46aXUXmxRSrxBf1S4ddt08lc8oggcF+8=
X-Received: by 2002:ac8:1ac1:: with SMTP id h1mr4525735qtk.255.1582714570954; 
 Wed, 26 Feb 2020 02:56:10 -0800 (PST)
MIME-Version: 1.0
References: <20200220055255.22809-1-Ben_Pai@wistron.com>
In-Reply-To: <20200220055255.22809-1-Ben_Pai@wistron.com>
From: Joel Stanley <joel@jms.id.au>
Date: Wed, 26 Feb 2020 10:55:59 +0000
Message-ID: <CACPK8Xf=t+PY42qxF9jProYGGZZJONb=H1D4xZJc7teFWJ2FrA@mail.gmail.com>
Subject: Re: [PATCH v1] ARM: dts: mihawk: Change the name of mihawk led
To: Ben Pai <Ben_Pai@wistron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_025612_654325_DE79E231 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Claire_Ku@wistron.com,
 Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, wangat@tw.ibm.com,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 20 Feb 2020 at 05:53, Ben Pai <Ben_Pai@wistron.com> wrote:
>
> 1.Change the name of power, fault and rear-id.
> 2.Remove the two leds.

The patch looks okay. Why do you remove the other two leds?

Reviewed-by: Joel Stanley <joel@jms.id.au>

>
> Signed-off-by: Ben Pai <Ben_Pai@wistron.com>
> ---
>  arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts | 17 +++--------------
>  1 file changed, 3 insertions(+), 14 deletions(-)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts b/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
> index e55cc454b17f..6c11854b9006 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
> @@ -120,35 +120,24 @@
>         leds {
>                 compatible = "gpio-leds";
>
> -               fault {
> +               front-fault {
>                         retain-state-shutdown;
>                         default-state = "keep";
>                         gpios = <&gpio ASPEED_GPIO(AA, 0) GPIO_ACTIVE_LOW>;
>                 };
>
> -               power {
> +               power-button {
>                         retain-state-shutdown;
>                         default-state = "keep";
>                         gpios = <&gpio ASPEED_GPIO(AA, 1) GPIO_ACTIVE_LOW>;
>                 };
>
> -               rear-id {
> +               front-id {
>                         retain-state-shutdown;
>                         default-state = "keep";
>                         gpios = <&gpio ASPEED_GPIO(AA, 2) GPIO_ACTIVE_LOW>;
>                 };
>
> -               rear-g {
> -                       retain-state-shutdown;
> -                       default-state = "keep";
> -                       gpios = <&gpio ASPEED_GPIO(AA, 4) GPIO_ACTIVE_LOW>;
> -               };
> -
> -               rear-ok {
> -                       retain-state-shutdown;
> -                       default-state = "keep";
> -                       gpios = <&gpio ASPEED_GPIO(Y, 0) GPIO_ACTIVE_LOW>;
> -               };
>
>                 fan0 {
>                         retain-state-shutdown;
> --
> 2.17.1
>
>
> ---------------------------------------------------------------------------------------------------------------------------------------------------------------
> This email contains confidential or legally privileged information and is for the sole use of its intended recipient.
> Any unauthorized review, use, copying or distribution of this email or the content of this email is strictly prohibited.
> If you are not the intended recipient, you may reply to the sender and should delete this e-mail immediately.
> ---------------------------------------------------------------------------------------------------------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
