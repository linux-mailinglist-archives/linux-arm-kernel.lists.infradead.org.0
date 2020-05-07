Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7C91C9E00
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 23:58:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMnJAxKzjBf1bkO164AN+tzG6UB8BjggXc9BXLD4YxU=; b=mC9M4mCrNE8QuE
	wSu4xh/GaZLDQqTmWcwVQmZ5w8WRXYckbIuJ0C9QkxbCLv/BjzplyPS/CxMO4wDrPxaWYKMDTE1d2
	B+weqMX9ORK/t42VY7em79En4XiFRQETbLBUqmjKU8K0P/qfmCCm0fKwx3AEDDUj4TfqdgtuO9EwH
	9iN7t128hMK6lpJU0g+iie3vmeUkEqO6dPK55B3dQsDW459e4Xbo513Afxb4FRO12ISD1Ao6dcEvx
	FDCLcqOjk3BiH/VH3rl1SSc2JWrK5EitIEpoMtppGfZeZsx5Pukyls7lkGXnKj9T/7mHRyVm62xy2
	7fjdC58ZXEd6SPDyDLdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWoX0-00034p-Lv; Thu, 07 May 2020 21:58:14 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWoWt-00033Z-GI
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 21:58:08 +0000
Received: by mail-io1-f67.google.com with SMTP id f3so2617627ioj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 14:58:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GI7tbDeUUOEa56ks8zKfYc4C3uORKh3Rq+YHa4B8fIs=;
 b=eSB+Pfhg62rldIezZl3QoIqBTp6ByA+/T8y7xga+1DjwgFYJxZqJw8tTA0/sLEZW5v
 v6i7BPOmkeg5qBH2Tfrl+SeuTyjHDMZM5zT0DJVpiwQ7eFWrXrrsdomzYDVgUw+or9gZ
 i5UoNkJkAQx8D20l/BzJn83SV/m3K6/sRw7PSCgquARRGqYVKW8L+kXjEu5GYkiB8XR0
 bavtbQGJi70YEsk6KR1y+0z8mIc3r8zX6ry5THjDtut/OyFjSZ1y3jqonbl2vDDo65nG
 Ey7tGX9GRscpR1Lb2syCHem56t9x9CMZ2UQhFKHybRaRjlUrgMsWVYfp82ztU2+5q1Xg
 3F/g==
X-Gm-Message-State: AGi0PuZxDLWa9GPQdz5t5dg4V8P5WTUHkeZXK0xztJnDi/fwbabjCNFv
 cWLBuOTQSBfEWOC5HolpOR9kSkvP0/8=
X-Google-Smtp-Source: APiQypLUuAmzs+kPLJbSoRCXpqUT/08AprLDtoiWTzLeFRZ+yoa6+DMNrbSu5qhxR+gJ4VanIg5SXg==
X-Received: by 2002:a5d:9546:: with SMTP id a6mr16153514ios.62.1588888684413; 
 Thu, 07 May 2020 14:58:04 -0700 (PDT)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com.
 [209.85.166.43])
 by smtp.gmail.com with ESMTPSA id n138sm3029876iod.21.2020.05.07.14.58.03
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 14:58:03 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id f3so2617574ioj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 14:58:03 -0700 (PDT)
X-Received: by 2002:a02:cebb:: with SMTP id z27mr16202135jaq.32.1588888683009; 
 Thu, 07 May 2020 14:58:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200507112955.23520-1-geert+renesas@glider.be>
In-Reply-To: <20200507112955.23520-1-geert+renesas@glider.be>
From: Li Yang <leoyang.li@nxp.com>
Date: Thu, 7 May 2020 16:57:51 -0500
X-Gmail-Original-Message-ID: <CADRPPNTdv3R4t7JsjGuPP5h5APA7vcSMNK1vJMjzPtGw=Uw9-w@mail.gmail.com>
Message-ID: <CADRPPNTdv3R4t7JsjGuPP5h5APA7vcSMNK1vJMjzPtGw=Uw9-w@mail.gmail.com>
Subject: Re: [PATCH 0/4] qoriq: Add platform dependencies
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_145807_541430_2847BCB5 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
>         Hi all,
>
> Several QorIQ blocks are only present on Freescale or NXP SoCs.
> This series adds platform dependencies to the corresponding config
> ymbols, to avoid asking the user about them when configuring a kernel
> without support for these SoCs.
>
> Most patches in this series are independent, but the third patch may
> cause some Kconfig warnings when applied before the second patch, and
> enabling the QorIQ CPU frequency scaling driver in a non-Layerscape
> kernel.
>
> Thanks for your comments!

Thanks.  The series looks good to me.

Are we trying to merge them through the various driver subsystems or I
can also pull them in through the fsl-soc tree.  If we want to go
through driver subsystems:

Acked-by: Li Yang <leoyang.li@nxp.com>

>
> Geert Uytterhoeven (4):
>   ahci: qoriq: Add platform dependencies
>   cpufreq: qoriq: Add platform dependencies
>   clk: qoriq: Add platform dependencies
>   thermal: qoriq: Add platform dependencies
>
>  drivers/ata/Kconfig     | 1 +
>  drivers/clk/Kconfig     | 3 ++-
>  drivers/cpufreq/Kconfig | 3 ++-
>  drivers/thermal/Kconfig | 4 ++--
>  4 files changed, 7 insertions(+), 4 deletions(-)
>
> --
> 2.17.1
>
> Gr{oetje,eeting}s,
>
>                                                 Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                                             -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
