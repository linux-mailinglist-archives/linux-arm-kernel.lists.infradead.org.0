Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C941DF115
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 23:28:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8a9v3q6YXShGSXFxg7aBEWbbnwnRLY9AMaK5XBSm5rs=; b=FBZco7xnkO2k3o
	XHnFgsbdeLmNZjQs6BTIs0b4QoRjS7EZ0FcVdIS0j4HNDhWjRlsGYdKq/0S9WY0yYOq1THHs9h10n
	CCqMuY4Wf2jDj5kpggMp0T+SPJckYYNVEMj/9pWn/P+nKCYZ9gVCndDOrLHogPDZm83KOix+4xo/r
	QHfn59YYWja3v88E8FRgCQ5ATkI4XR6ITQl2xbNI1lmNBTgrOGg3XsrxRINwAY8NyF8A8myg3TCeV
	Mqsd1TjFu81MlVA0753K1ZcjtZ2C6u2j47zHuolZRtF6t+jb3XVUWghLx3XXI5gr4iwl1Nitvrqsh
	AHOyoTi+nPPVqsmnpOsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcFDe-0008Gb-7i; Fri, 22 May 2020 21:28:42 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcFDU-0008G4-Mp
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 21:28:33 +0000
Received: by mail-il1-f195.google.com with SMTP id c20so12161475ilk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 14:28:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aeNkqKnvqrQ1R9V6A7mXbyK3G4VemHM61exPIH1obU8=;
 b=cJ2FtRMs5Zlk9bLvlWKE5KkHUW+RH33IyHPXzSS7EVx1UcGG6hH3WAfMyK+/E4B13N
 CSsxeJ8i1HOrQa4F0HDAliZXOwDGNcZSv1hVcetDdUIAQmKJ5E1QhLkEwhuKqthBdrCe
 7ylQGoUtD/D7EaRRkhPc+LQN1gg+0H+M/lMvLEV7m/m2NoupMGYpaTkKiVnH2fE0OfHy
 CCdeB1W5jjLCfp3vuWwmuUJxAPRjYldO7kb+nHF7N5GJuJvMtXNRs0dNfAgNalffETJx
 a4huC5nolmFAZWwJc+4zJfZ1drY1Z9wnjhsJ7uYDW2xxWJke55yN8OUZqcLpDsYlvRs8
 vOnA==
X-Gm-Message-State: AOAM530LZK1oFnLPJd0UCJCyoWXCuAn/RLpo8cOxQhShLOYYVMaf//ip
 33CWBPxQnmcWc1COSyZxdG7GNeoMWT4=
X-Google-Smtp-Source: ABdhPJzkohdK9LNpUz18eFernZfFab0kC+9qWKvpcuYDl+fO+c1XNvj/e4+lSF6TXEYxDQN6+VPImg==
X-Received: by 2002:a92:afcd:: with SMTP id v74mr14762339ill.305.1590182911360; 
 Fri, 22 May 2020 14:28:31 -0700 (PDT)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com.
 [209.85.166.41])
 by smtp.gmail.com with ESMTPSA id d8sm4152757iob.41.2020.05.22.14.28.30
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 14:28:30 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id h10so12915729iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 14:28:30 -0700 (PDT)
X-Received: by 2002:a6b:1505:: with SMTP id 5mr4759580iov.198.1590182910435;
 Fri, 22 May 2020 14:28:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200507112955.23520-1-geert+renesas@glider.be>
 <20200507112955.23520-4-geert+renesas@glider.be>
In-Reply-To: <20200507112955.23520-4-geert+renesas@glider.be>
From: Li Yang <leoyang.li@nxp.com>
Date: Fri, 22 May 2020 16:28:06 -0500
X-Gmail-Original-Message-ID: <CADRPPNQxRwa2kQj_5K26RcovBhtfxdKitOxBKF8sgoyu9O+W-Q@mail.gmail.com>
Message-ID: <CADRPPNQxRwa2kQj_5K26RcovBhtfxdKitOxBKF8sgoyu9O+W-Q@mail.gmail.com>
Subject: Re: [PATCH 3/4] clk: qoriq: Add platform dependencies
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_142832_743181_CCBC686F 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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

On Thu, May 7, 2020 at 6:31 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> The Freescale QorIQ clock controller is only present on Freescale E500MC
> and Layerscape SoCs.  Add platform dependencies to the CLK_QORIQ config
> symbol, to avoid asking the user about it when configuring a kernel
> without E500MC or Layerscape support.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Hi Michael/Stephen,

Are you applying this patch?  If not I can apply it with your ACK.

Regards,
Leo

> ---
>  drivers/clk/Kconfig | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index bcb257baed06daa0..22bf015610d1724c 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -232,7 +232,8 @@ config COMMON_CLK_AXI_CLKGEN
>
>  config CLK_QORIQ
>         bool "Clock driver for Freescale QorIQ platforms"
> -       depends on (PPC_E500MC || ARM || ARM64 || COMPILE_TEST) && OF
> +       depends on OF
> +       depends on PPC_E500MC || SOC_LS1021A || ARCH_LAYERSCAPE || COMPILE_TEST
>         ---help---
>           This adds the clock driver support for Freescale QorIQ platforms
>           using common clock framework.
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
