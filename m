Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D327AD4B3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 10:20:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZL1azCmlov8xcJ5LQp05ROdk9bty/RshPbI3S5U0cI=; b=rLZRwbVrfUy8cT
	EpwKk5OLny3CpTi+6tOqJr3dZo4iGSHEPIvVJY1bVee0MGfc+HWba3CNesz7yQL/R40853QHSV3V7
	zJSdV1tTY27NyH4iNZ7v9MHljjVLzTSMMFm5i8Sllv/+Wpwwwqu3yJyJvQ3TL27y9TthNfmp+VX7K
	HVeWZbSb116k33hRUDCn9kwlJobnqMc9lBxeOU0VUBeDpiLaZuQ+pfROtOqfus07DZJ2qNds9IQcj
	G/UUWVO6bFhw1CDdliy9NlKFrTU4qFxcas2gUuKlSUpNlUfU27iY55GxE8Je3+KHZgTpcMUh0GF7Q
	l1v+EWkQlDaI51GY48nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Etv-0006YT-Lh; Mon, 09 Sep 2019 08:19:55 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Eth-0006Xg-OG
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 08:19:43 +0000
Received: by mail-ot1-f67.google.com with SMTP id g25so10381038otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 01:19:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cpNgmTfgs+Y6rqNSVh0GjVp5y0qF00Dm+QjFQehUQnM=;
 b=QhckfhViQwklKT33kRCVes/a1ABWpD4e34I9idnZMUB6uo/MlLz3mlBD8HvzvmetCY
 Q9xYkL9wlOWFSGhozTfqlXx394s/OctIcuf/8QH+0+cPW1WXf2LAT0kHZsbAXE6IhxVV
 8xx8sVD5OXBAcz+lZSSwmL2jMdJBhBqbnd9oV2gH+1dr9SqOmoSXR6gbMtT23ZzUkYE2
 MWiupO58nNoibm6Kgbu2eXAGM3nJkHaRgC3WQ+fyZM9tYMRKDz8oXFk1KonPw7oPRn3L
 yoIaehj3jIf3VZLoSaXt0HdcxTzrtHyFJ1ZDi+MCg2xdZ0w9rFKZXERsiqVYJqipW6PN
 aPig==
X-Gm-Message-State: APjAAAXuy5xbOjxo24JmkBh1tXPryggfz79sundSMUe/8Oe9pi9993yc
 ZunaWdKFGUf7+BLlBy1kNA6JiE1e68ZQooreIV8=
X-Google-Smtp-Source: APXvYqxHyZJaWZdZUyPi2ApqFXT7o6ts5V7EdJCAfrN0VKZvw8Iysfc9E3B7ZPbwU6l0QzjgF99yP96BUWWHfygy+TU=
X-Received: by 2002:a05:6830:1196:: with SMTP id
 u22mr18888843otq.39.1568017172441; 
 Mon, 09 Sep 2019 01:19:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190907161634.27378-1-marek.vasut@gmail.com>
In-Reply-To: <20190907161634.27378-1-marek.vasut@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Sep 2019 10:19:21 +0200
Message-ID: <CAMuHMdXkExZXeXnxuKkMC0J4m56cZUmJpcq2JCXuMv3PBzA0Dg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: Add /soc dma-ranges
To: Marek Vasut <marek.vasut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_011941_876478_98E32719 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Wolfram Sang <wsa@the-dreams.de>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Sat, Sep 7, 2019 at 6:16 PM <marek.vasut@gmail.com> wrote:
> From: Marek Vasut <marek.vasut+renesas@gmail.com>
>
> Add dma-ranges property into /soc node to describe the DMA capabilities
> of the bus. This is currently needed to translate PCI DMA ranges, which
> are limited to 32bit addresses.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>

Thanks for your patch!

> NOTE: This is needed for the following patches to work correctly:
>       https://patchwork.ozlabs.org/patch/1144870/
>       https://patchwork.ozlabs.org/patch/1144871/

What happens with the above patches applied, and without this one?

As PCI/OF driver patches go in through different trees, is it safe to apply
this patch now?
Should they go in together?

>  arch/arm64/boot/dts/renesas/r8a7795.dtsi  | 1 +
>  arch/arm64/boot/dts/renesas/r8a7796.dtsi  | 1 +
>  arch/arm64/boot/dts/renesas/r8a77965.dtsi | 1 +

Do we need similar patches for the other R-Car Gen3 and RZ/G2 DTS files?
What about R-Car Gen2 and RZ/G1?

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
