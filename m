Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0732D1DF120
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 23:29:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P23hmUAIXwoZnjC2eonp0HmISdgtpKYi9YLiYCnP5Sw=; b=ReR0otxXahnox4
	i375F637rA8s2LYoT80gilSlZU9pDksWEdaVB0Fi5k0kS/ymtyf4ChNgrXGiIycC1sysBkQICH45u
	fuOLfc47y3xNShAlDr6rSygD7B/QYriY/cE1JUTa7wEFIiI210+bJ0TGhgQPACq2A13qeKYty4vQ9
	KJIo01JzQINDG+zsP1SpM2vDTlvlDAFiX/CNBfsZxK4qjlG0zokbHg77GEijNQ2+oqUY+5OFs6+kt
	8NOLaxNZe6Yx8b/dTzHSiMHqMOtosxfs4HI9TnCqaO5Fu+qkTYL1NA1FjOBhjqQ2hDPbPWhu2XVMD
	0xY7i9jP+Ern9u+hjP0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcFEh-0000CV-KG; Fri, 22 May 2020 21:29:47 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcFEU-0000Bm-Gy
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 21:29:35 +0000
Received: by mail-il1-f193.google.com with SMTP id m6so12131465ilq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 14:29:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/FEKPVDTqZYdkry/gHcCWAwnNiWnV8DNS7HV5f1GoQI=;
 b=OajAZVI1Z0/no+GbgbRIAUxVqqirtwBL9YwU9/Uot80WJIKGwEqwJHQ1Ek/zhfDA4u
 X+DZf7B37BvLgDxQz+82hsmmguiRY959x2kGR8okXi1wnuVC202otxdpl4Tii4zRtJcU
 bTX5vR9TTQhgn5W4qkY1lk1l3xzEDuvserbhjVYu0fuQXv/39FeUK26o0udeCDKmwIuh
 npDeOOtjS5yvSZYaS92peReKptG75fhDU6heee3+iiTDi1+d5aQ2EOSzkkGVrah6nOql
 O6RNI/RUxxK86gqxHN1ecJdZDz9Jnro0Gr13/wKLOt6Vt6k9kdnVZi1WBodguBtWDWVa
 5k6A==
X-Gm-Message-State: AOAM531KVqKtqixdD0CtD6tIMJcu060pSslT1oTYmkmDfth09ftzi9pB
 naHbq6m56MF+eA5fovkig3lMZ26327U=
X-Google-Smtp-Source: ABdhPJy6DZnBlKY3wk/4zbFo/f49PV1IlJZt2xiU0wAu2HRvt2dp5vhNU/Gnah4JSLLJjGykoDy1Og==
X-Received: by 2002:a92:c704:: with SMTP id a4mr15355703ilp.163.1590182973756; 
 Fri, 22 May 2020 14:29:33 -0700 (PDT)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com.
 [209.85.166.50])
 by smtp.gmail.com with ESMTPSA id z11sm4080632iow.12.2020.05.22.14.29.32
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 14:29:32 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id o5so12929162iow.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 14:29:32 -0700 (PDT)
X-Received: by 2002:a5e:8b4b:: with SMTP id z11mr4708967iom.78.1590182972502; 
 Fri, 22 May 2020 14:29:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200507112955.23520-1-geert+renesas@glider.be>
 <20200507112955.23520-2-geert+renesas@glider.be>
In-Reply-To: <20200507112955.23520-2-geert+renesas@glider.be>
From: Li Yang <leoyang.li@nxp.com>
Date: Fri, 22 May 2020 16:29:09 -0500
X-Gmail-Original-Message-ID: <CADRPPNSwEv_SV4jQk-gOj6+WhAX1jVQk2szgPN=o2JVqV0yjLw@mail.gmail.com>
Message-ID: <CADRPPNSwEv_SV4jQk-gOj6+WhAX1jVQk2szgPN=o2JVqV0yjLw@mail.gmail.com>
Subject: Re: [PATCH 1/4] ahci: qoriq: Add platform dependencies
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_142934_560932_5C06EB77 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Jens Axboe <axboe@kernel.dk>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, lkml <linux-kernel@vger.kernel.org>,
 linux-ide@vger.kernel.org, Zhang Rui <rui.zhang@intel.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 7, 2020 at 6:30 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> The Freescale QorIQ AHCI SATA controller is only present on Freescale
> Layerscape SoCs.  Add platform dependencies to the AHCI_QORIQ config
> symbol, to avoid asking the user about it when configuring a kernel
> without Layerscape support.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Hi Jens,

Are you applying this patches?  I can also apply it with your ACK.

Regards,
Leo
> ---
>  drivers/ata/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
> index 05ecdce1b702cf8b..d9e66b37acd1862a 100644
> --- a/drivers/ata/Kconfig
> +++ b/drivers/ata/Kconfig
> @@ -264,6 +264,7 @@ config AHCI_XGENE
>  config AHCI_QORIQ
>         tristate "Freescale QorIQ AHCI SATA support"
>         depends on OF
> +       depends on SOC_LS1021A || ARCH_LAYERSCAPE || COMPILE_TEST
>         select SATA_HOST
>         help
>           This option enables support for the Freescale QorIQ AHCI SoC's
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
