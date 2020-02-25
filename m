Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8FA16C253
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 14:29:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zbz4YMxEmTaZp0PUyB5o+Q4DnxrUM3e+TFOcWHyvaFI=; b=KWMU4wCm8EO6je
	n0/CqHxiqQWtOG/4Nt3Fll49bcb5BTHIHtVlZfZRhb9X/JjoP49tbd7VFkn2iMGUvdefHBezn5VDp
	lGTULlOGcgB122CD3vhBYj8WWIOni2rPd1KLyX3bVx6lDWK9Cj3KC/gBqZlngS5NL3ImON4Con6o0
	CwrUoF5XGF0ylJuvPCEOUcByChQGLoGuwoToVgq9zmETr66ecpGTT/rklOnMIO/keHCkZlQMryyPt
	l8gMPza7scfPil4pQpGWMDJ/mBb3hVi7UW2BoNzkfd2pQT1IQEG9yz7tEbPVxq++aU9cm1UssGr5S
	yvN6C9y1Uz9qHBKGO8Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6aHT-0003TE-2i; Tue, 25 Feb 2020 13:29:47 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6aHE-0003S0-CJ; Tue, 25 Feb 2020 13:29:33 +0000
Received: by mail-il1-x143.google.com with SMTP id b15so1351436iln.3;
 Tue, 25 Feb 2020 05:29:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5lF3WK73j83uTzBWoCX+piYUTJ8gjsoXLtNVHKHOJEo=;
 b=ZudqYNc9t8VwUeyXbtkRxh8lHGluXfeSSnakCvOJToZqfk4qvsQlCH5HWcFuWFaSJY
 QB0PCG/XOyXPyQzeJHM6qIGzZi2oGpf+T97sLBaopJqBANRWwXaPjcIp/Fh94UXWk4DZ
 sshe0t0+EG3dY58wRPsK1EuCjFaqqHhU0tt7iB5CsWLuOQ49+uOjOskk4sjR4OxMIur/
 MKWF9WdCxtizbtfQDGIcdnMbfhkt8mdYuUEmEUNYxpNc7LYbHwwN5tNm4e9xGy3CYiAy
 ajPAYcgwY/Yqa3nYUAUYEPRogUsvKrTaTjbCNmdLs39GyxALyDALM/WWMTelf0psha2Z
 EnUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5lF3WK73j83uTzBWoCX+piYUTJ8gjsoXLtNVHKHOJEo=;
 b=hQWNp+bnXuMAnyexaygNJlem0KZ8aAVGu2IalGdMBnCS7d83pyrpH2moNBg40X1cb/
 sld7v+5xioEsgDHFeOA1wiFCio5W67gjXuBrZPhGrYkGeAqTAu1K0k6Tv6wSgVT8gEg/
 mZxMMdik00gB1ywXkeufJVlSKMzkWo7+EHYQC8TwTEaY45FW2LKYRHVOa07yCM2pltf9
 N9UfxtfK2GJTfzp75X69oot5YQ6oEnmUwtYLrWE1uFvrbvDPbUeqfWJM4lAR16V7NKGS
 1cXq4qCqTc15glrP+EpM9pDwwBv0zQv5PxxeZ24o4bEaFMzCD31fonSrbmBw3V92gHig
 Doqg==
X-Gm-Message-State: APjAAAW+3R6YzX+VnMkWUchsgKyxgl24z7v9dUrGKREa6NeZknAjPWBx
 IC1HRS0EiCoE9OLibs7x+B1FItnJXcaK9cTzvVU=
X-Google-Smtp-Source: APXvYqxRLwQApYXLXAJc3nFCmhsetmCMQtqeunUdez14f4lqjAVrvxj3k8VFZFvSyQxmInPtjkQ93a/MwESfN08c7uk=
X-Received: by 2002:a92:9cc6:: with SMTP id x67mr68531411ill.31.1582637370664; 
 Tue, 25 Feb 2020 05:29:30 -0800 (PST)
MIME-Version: 1.0
References: <1582480985-6773-1-git-send-email-stefan.wahren@i2se.com>
In-Reply-To: <1582480985-6773-1-git-send-email-stefan.wahren@i2se.com>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Tue, 25 Feb 2020 13:29:19 +0000
Message-ID: <CALeDE9P3ksuvLeiki5HSnAjQTs4tM_bhspB-ktMWiy85SZocSg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: bcm283x: Add missing properties to the PWR LED
To: Stefan Wahren <stefan.wahren@i2se.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_052932_419483_17B809DA 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pbrobinson[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> This adds the missing properties to the PWR LED for the RPi 3 & 4 boards,
> which are already set for the other boards. Without them we will lose
> the LED state after suspend.
>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Tested-by: Peter Robinson <pbrobinson@gmail.com>

Tested on a 3B+ and a 4B. On a related note it seems that the original
RPi3B is missing the pwr led entry altogether, is that expected given
that at least the 2, other 3 models have the entry?

Peter

> ---
>  arch/arm/boot/dts/bcm2711-rpi-4-b.dts      | 2 ++
>  arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts | 2 ++
>  arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts | 2 ++
>  3 files changed, 6 insertions(+)
>
> diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> index cb33852..f242834 100644
> --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> @@ -31,6 +31,8 @@
>                 pwr {
>                         label = "PWR";
>                         gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
> +                       default-state = "keep";
> +                       linux,default-trigger = "default-on";
>                 };
>         };
>
> diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
> index 66ab35e..28be033 100644
> --- a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
> +++ b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
> @@ -26,6 +26,8 @@
>                 pwr {
>                         label = "PWR";
>                         gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
> +                       default-state = "keep";
> +                       linux,default-trigger = "default-on";
>                 };
>         };
>  };
> diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
> index 74ed6d0..3734314 100644
> --- a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
> +++ b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
> @@ -27,6 +27,8 @@
>                 pwr {
>                         label = "PWR";
>                         gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
> +                       default-state = "keep";
> +                       linux,default-trigger = "default-on";
>                 };
>         };
>
> --
> 2.7.4
>
>
> _______________________________________________
> linux-rpi-kernel mailing list
> linux-rpi-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
