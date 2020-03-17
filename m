Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D827F188AF8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 17:46:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=458A2uftX+OPEFycLYK/4JZ7PxYOXK9tzuLUVhqP2G4=; b=giYMiUrbEKmbpj
	yisP5AgiBTYREs80WPeAhxxDnRi5UIAdytpC7zL+p9XwCjO46h6ErQhF9onYgIdv6VPkoIsZi3ppa
	CLRkzjk5uf3VCCBUkcFvNPSXB2KTJF8am+H3Ui+A2LaKK0zGjhZ0n6EbstW7kSr48IOwrasA7wrAY
	A5vR4RoZAEUkatSN/GMkWBEbw7JXFPwHYobHm1mhhn/39hg0HItR5CDPMMWGOWeCzsRc2t+5r2Pmf
	vhW2Yf5mXwivDfnUtb9TRIy1Tvoxf7tcRkdeiaKYBbZuwv8vXac+q6KwNSvUwj7yyyf5cz5FJuVQ/
	JcBpU9Nr3hMSeNd9h30Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEFMC-0000ph-Do; Tue, 17 Mar 2020 16:46:20 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFM3-0000pB-Nw
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 16:46:13 +0000
Received: by mail-ot1-x344.google.com with SMTP id 39so6935369otu.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 09:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5eJQW9u/oqLF6BZRfUiV1G5G6DviGGlWCr2b1498xxQ=;
 b=LMRx7nwWe7cMHMOWNUg05zRuPgY6DofzFHMhj1gQnEGael6LRUmB87NFm94a/wAfQX
 qykah79BwhO1P0ntFvhaKtyeXHgmlW5N/BGaWP5tIlIMKLhnE+3K5J8zhdQEUNxGgANf
 mXgbeSIOtdcNdJ2mSwcAt00z0uL/hD3bOfgu7xKu2E8K4MYFOKF5f/4rqd54WT8p+4JU
 Gzt//MblJ65rZBgIlXAHxF4Riy/dM6uPNIerdGo5NXG0RHt9RJHKUdWeTrkrfGrEMpeP
 U9ixsy97/bDAWsXfWP/01XRU5DVl8ZcLaF4BgdJ2y7RJ4bx/dRXjPBaFxBoG5mN/5vsB
 z+YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5eJQW9u/oqLF6BZRfUiV1G5G6DviGGlWCr2b1498xxQ=;
 b=Ws1peLKPGJFFuXlorcu/jU7Y6Y+drrCptKdPBUOqJ3fiZQFD+YvM0xWvd09K5MHBHG
 nvmuGeuSU7EURDuOWUdYXVJghYE2QQ5oP6wZk7DR7OJqvEnbt4Eceh+nsrKmLwvoU7nG
 SKYw3pieAkgXI/n3u1rxhb9ocwxT1cuB7Qyv2WjJAAVJ3cysnaPcO1FwNcIsJEBzcmJ6
 +CXnIyRy/nENWvwecvGcQiKjS7nZaHTifnXqdw9ywjnncCOBYXG/TryQk28kKTnwzh0F
 QeJ4zMKxfNuzDgy6Vl0n2U39ZqnUtt8amqZGkt3EOCkCn1FZCQa0lsi5q1aSG1pQVTE5
 CT3A==
X-Gm-Message-State: ANhLgQ3PvP8C0Y+hBgaHAFJpBe+wDPlzgqQqKbHZ71/MAE1AzYQCSjg5
 Nu7+/hndywnYF8rpDvp8Xr43z00VQd6jgQ6uU1k=
X-Google-Smtp-Source: ADFU+vvntK56sIrmvkmT/qpvgh4Fm7v80qV219/QCLI53RZ9n5flRN/sXMIpPVYkFqh99ZsVYYoAnS05cZQy56ytVHY=
X-Received: by 2002:a9d:560b:: with SMTP id e11mr116304oti.226.1584463569050; 
 Tue, 17 Mar 2020 09:46:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200317155906.31288-1-dev@pascalroeleven.nl>
In-Reply-To: <20200317155906.31288-1-dev@pascalroeleven.nl>
From: Emil Lenngren <emil.lenngren@gmail.com>
Date: Tue, 17 Mar 2020 17:45:58 +0100
Message-ID: <CAO1O6sccq7c_S8ZMsChBKcVcCn-DDv6awZzNr2BEnh8TH6ZxGg@mail.gmail.com>
Subject: Re: [RFC PATCH 0/4] pwm: sun4i: Properly turn pwm off and fix stuck
 output state
To: Pascal Roeleven <dev@pascalroeleven.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_094611_780377_189A1829 
X-CRM114-Status: GOOD (  23.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [emil.lenngren[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pwm@vger.kernel.org, linux-sunxi@googlegroups.com,
 LKML <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Den tis 17 mars 2020 kl 17:00 skrev Pascal Roeleven <dev@pascalroeleven.nl>:
>
> Hi all,
>
> For the last few days I've been debugging a lot to get pwm working again since
> recent changes in 5.6-rc1 broke it for me.
>
> Testing shows the pwm controller crashes (or the output gets stuck) when the
> period register is written when the channel is disabled while the clock gate is
> still on. Usually after multiple writes, but one write can also lead to
> unpredictable behaviour. Patch 3 and 4 fix this.
>
> Patch 2 contains a fix which wouldn't completely turn off the pwm if the
> output is disabled. The clock gate needs to stay on for at least one more
> period to ensure the output is properly disabled. This issue has been around
> for a long time but has probably stayed unnoticed because if the duty_cycle is
> also changed to 0, you can't tell the difference.
>
> Patch 1 removes some leftovers which aren't needed anymore.
>
> Obviously these patches work for my device, but I'd like to hear your opinion
> if any of these changes make sense. After days, this one is a bit blurry for me.
>
> Thanks to Uwe for some help with debugging.
>
> Pascal.
>
> Pascal Roeleven (4):
>   pwm: sun4i: Remove redundant needs_delay
>   pwm: sun4i: Disable pwm before turning off clock gate
>   pwm: sun4i: Move delay to function
>   pwm: sun4i: Delay after writing the period
>
>  drivers/pwm/pwm-sun4i.c | 53 ++++++++++++++++++++---------------------
>  1 file changed, 26 insertions(+), 27 deletions(-)
>
> --
> 2.20.1
>

I also worked on sun4i-pwm some time ago, fixing a bunch of issues.
One was that disabling the pwm sometimes didn't turn off the signal,
because the gate and enable bit were modified in the same clock cycle.
Another was that the current code used an unnecessary sleep of a whole
period length (or more?) in case of an update to the period, which
could be very time-consuming if it's a very long interval, like 2
seconds.

Note that the behaviour is not unpredictable, if you know how it works ;)
I fiddled around a long time with devmem2, an oscilloscope and the
prescaler set to max to figure out how works internally.

Please try my version I just posted at https://pastebin.com/GWrhWzPJ.
It is based on this version from May 28, 2019:
https://github.com/torvalds/linux/blob/f50a7f3d9225dd374455f28138f79ae3074a7a3d/drivers/pwm/pwm-sun4i.c.
Sorry for not posting it inline, but GMail would break the formatting.
It contains quite many comments about how it works internally. I also
wrote a section at http://linux-sunxi.org/PWM_Controller, but it might
be a bit old (two years), so please rather look at the code and the
comments.

/Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
