Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCC7E1F6D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 17:37:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrNCpYIp4+rIqrF96yBgfI651qyapv32oYP6sqw0CUk=; b=YY9JWrn9BEmnoH
	qMWDGCylf3tpWt58pKEQbTrUcqRHLS8UAS/jAu9Y4ahwm/QhEwz8w0KY9t/ehZQY/LNJbuRQLKJDB
	zHEg+NgsgvKXmzWhC47XAuzZLWouM5Xsf5Lgx48U8Dfi0LnNB64StLXpJNOkkMIHAHWndIFecOr9v
	DR/dlrg0CU67xDkTZJ9KLHJFx9rdlHKLcoxydSJHTT6bA5RihHa0xsRRmtUr71w59AKzmLLbXw+LK
	lv3RBk+x5eJS6GZFbTX70xFadg5pnyp3g+ItSAt6TdQD4vfYhz2VPXkpx93NvDQ1QP5paOP6BJC6Q
	7BbZTJ6FhjsLFvsdfXKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNIhK-0000YH-V6; Wed, 23 Oct 2019 15:37:18 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNIhB-0000Xy-Nf
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 15:37:11 +0000
Received: by mail-il1-x141.google.com with SMTP id l12so19324360ilq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 08:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sR2SNSnWNwKPR9DRMKnUHE6gMbz4VxB5+FQlRjQHbYk=;
 b=if0Y/K+bq2VP0SUiEtC6YdtsHM9dyP5JmWUT3AyFj22AYtLxOkIBx9KqKRXORfJk5o
 pwaRf3waYJBB2f6wxn5KEKEI7y2ghA7jS9NW5D8sxdxwlWLZ7nBBonDzPCSxxuKHqngp
 IK4mH/JwTsTmfM2bciFwJtoge+ejdYHZdgOchIpDgMOGf1B0zKG2MFcwn+jtbB6OVDM+
 JmHr6FVZzvh5RjIcRcnrySRiWRFpkdxSl5aJTBZZDLL9WNal832HP9TcNzFzjZ5s61RI
 9+mWUu0N4g/tK96XhQGYtRcazQOuyln0l87gX3sgsPXOfI4srezH4tRoxxSpY12Bw8pU
 p9Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sR2SNSnWNwKPR9DRMKnUHE6gMbz4VxB5+FQlRjQHbYk=;
 b=NQ+RNYZdbDVozM/K28OW+RKINF/ST5A3PHqIuTuUXwLrZNUDo42tkuADGiTJjBFw6G
 rejzgV+9uA9f/kvEmci6aAhEkQlDgAbVRVXtRZ9OarLc5quFQHSvZoSa5mwUQZPQW9se
 4ImdlKN6BE9tbjyn0jktcO7QzfIGZZWwNFAxkSD/P90KG79z6ofDGmbTRdl/M5iTQjYj
 ZG0lihk4RcGyn4+9gVRGQd0jAyhjwU4sCfo+ZKHwiwwceihEm/+XsMSQy9w9kAD4HET3
 lstu+RS5eET4IuR6HaF04gIyRCZkt0MGQ8spFW8TaIOyS9g6YZzsnWHucJVmqQ2GObkz
 I/hA==
X-Gm-Message-State: APjAAAUbDSOsGbdA6YkWVyQ0pbfeua4osNwUBPIwWbtl25hjIiTtPQZG
 IyvpVkMftF4o90fdgwo4AGFshtXLhFKmJxnGoDdB5pXTEqM=
X-Google-Smtp-Source: APXvYqwcyEef1k3eSIVQftJdMb4J6dmUUsBH64WugGGW0Hv+ml6s21TuA/xxpNc0Hz4rvsRY/Y30rpHOQs/Ie6/vbv0=
X-Received: by 2002:a92:d285:: with SMTP id p5mr36879409ilp.278.1571845028660; 
 Wed, 23 Oct 2019 08:37:08 -0700 (PDT)
MIME-Version: 1.0
References: <2e3d8287d05ce2d642c0445fbef6f1960124c557.1571828539.git.baolin.wang@linaro.org>
 <CAK8P3a0i_xvSzeRxfT-5LLpaAfGx3USsuXX1dv1x6Bg87jeopg@mail.gmail.com>
In-Reply-To: <CAK8P3a0i_xvSzeRxfT-5LLpaAfGx3USsuXX1dv1x6Bg87jeopg@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Wed, 23 Oct 2019 08:36:57 -0700
Message-ID: <CAOesGMg5MH3Dq8yBLhHZCJJwMqVaiqqJyhs-tNE_nWDzUaTPCw@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Update the Spreadtrum SoC maintainer
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_083709_772380_8448B423 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Baolin Wang <baolin.wang@linaro.org>, Lyra Zhang <zhang.lyra@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 arm-soc <arm@kernel.org>, baolin.wang7@gmail.com,
 Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 5:17 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Wed, Oct 23, 2019 at 1:06 PM Baolin Wang <baolin.wang@linaro.org> wrote:
> > +F:     drivers/power/reset/sc27xx-poweroff.c
> > +F:     drivers/leds/leds-sc27xx-bltc.c
> > +F:     drivers/input/misc/sc27xx-vibra.c
> > +F:     drivers/power/supply/sc27xx_fuel_gauge.c
> > +F:     drivers/power/supply/sc2731_charger.c
> > +F:     drivers/rtc/rtc-sc27xx.c
> > +F:     drivers/regulator/sc2731-regulator.c
> > +F:     drivers/nvmem/sc27xx-efuse.c
> > +F:     drivers/iio/adc/sc27xx_adc.c
> >  N:     sprd
>
> Maybe add a regex pattern for "sc27xx" instead of listing each file
> individually?
> That would simplify it when files move around or you add more drivers that
> follow the same naming.

Agreed.

In addition to that: Baolin, when you resend this, feel free to send
it to soc@kernel.org so we get it into our patchwork tracker (if you
want us to apply it directly).


Thanks!

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
