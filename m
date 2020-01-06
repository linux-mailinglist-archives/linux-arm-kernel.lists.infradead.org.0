Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B4A131A17
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 22:08:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqhDyk6hFbKqSA+XtDrbmfAgJay+qxhc32Pnt7o7huI=; b=TbXRW9D2ZfrRGT
	YCqdfTPeAiL5q9ZAF0SN0XIasyZ6GupVTbL2sFU1HN+ZmFsIAaweU86I1HDFkhusJVzdFaTtquFF3
	fn0rwjjJTTBR7A5n4s0jfeQ2C0RpuR4UHnmSIHQuTa7vcvKpmVi98Tulesai1hz7AkoJwozxxiBBv
	THudU2n2gU/AhQWzLSjViIWrW5pgDH/WhunLhTTI2FQZOkEE6RYQwbSQYJlwy1TmWOb2lixRSQpUg
	xUDpqOP93zdXqbA7CF4iKJs6XgyS/7Pdfc5tJOe6bcLQysWcKXZVJQz8AyPGNSU5a+NkCkKqbXQn5
	gaHyZyXpY2yMqScedl+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZbM-00040W-Ae; Mon, 06 Jan 2020 21:07:52 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZbG-0003zQ-4x
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 21:07:47 +0000
Received: by mail-io1-xd42.google.com with SMTP id n21so48536953ioo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 13:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xRpwQviknb25UoZmbJMLN6EJGSP9FYuSxPxJ31clxVs=;
 b=b3B5l/u9gjT+OpYHkhEegMK+pBwrPRkSjcRruBCbXIAjTmW48tye354OZERmQSamB4
 Pjhy7cDKQeD0thwr0RaYeHK3mokcLMiTaSz73ClS8ThVz1b7Xh1glcIw/XliWXWe89aG
 rlWq2dTdRX3UdRtC8BzSOc3OkazGkrp+7veIltbgQAIWHYw4eQVhAMmA5wygomf1G+dB
 gUdpD85w9ZnSfpJ7rzTdVvEs4vpZOrZw6H2JE2k16gfkiogmGfY2yA29+1vfJw5CW0ep
 iMhCompfFlJYZ8HF38JfyA7iOWkigqMftEDU4Kl7td+2HG3SbsZse6lbr0NRRRzF4APL
 lxIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xRpwQviknb25UoZmbJMLN6EJGSP9FYuSxPxJ31clxVs=;
 b=jInFYSdhzIyZx2ZXXs77hMv1BoXom1gQhQcxYpoA/ROF2bsud4vvOm2VnsLC4waozv
 CuPO0lKJ+8wkofw8p+QxuewXV5JYSxknF6qIBKTrRPohPpsJptwnWkDW+5DNP01PSlKV
 BcCGSK2n7XYpAOJ1FXmBHIcZjaY8EkP7mmIYVJ2FitXrcDdmM7NzA7XfrQmipJ56TWfM
 5MDm+0GDqOVuHvFhqbI6/7uixYeq7AO+RQUK1TVetomIGL14bnlwiK4CVhKFtJt6wdcE
 DQzbFgyyHJebO7OSweFICvVIjcRe8gk/42NcY8BVT4dgOINiN4R78o3C2lOefXNq4FxU
 BLTg==
X-Gm-Message-State: APjAAAX+rsWe9NW3bw+hT3R69ct0xRcKgiP7I12m/hwqRIBBgObNXpDf
 MhZmJBGBnrz9oBjsABfG2zZzLRf+eppJcoWcvQf7pw==
X-Google-Smtp-Source: APXvYqzc+ndsPGVWQqd03R9vgmoEdYCbRH0T8wxQshOrpgT1uPAz0/P2devjATpA6jCfqYmFYGzlDY97JfI5jbp1ng0=
X-Received: by 2002:a02:ce8a:: with SMTP id y10mr71794309jaq.21.1578344863555; 
 Mon, 06 Jan 2020 13:07:43 -0800 (PST)
MIME-Version: 1.0
References: <20200106203700.21009-1-tony@atomide.com>
In-Reply-To: <20200106203700.21009-1-tony@atomide.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 6 Jan 2020 13:07:32 -0800
Message-ID: <CAOesGMiNbyUXwPFsG-ipTn-xfEs+A2hG8Q8MTcSLz5794GCv0g@mail.gmail.com>
Subject: Re: [PATCH] clocksource: timer-ti-dm: Fix regression
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_130746_214311_6ADE36B9 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
Cc: Yangtao Li <tiny.windzz@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 6, 2020 at 12:37 PM Tony Lindgren <tony@atomide.com> wrote:
>
> Clean-up commit 8c82723414d5 ("clocksource/drivers/timer-ti-dm: Switch to
> platform_get_irq") caused a regression where we now try to access
> uninitialized data for timer:
>
> drivers/clocksource/timer-ti-dm.c: In function 'omap_dm_timer_probe':
> drivers/clocksource/timer-ti-dm.c:798:13: warning: 'timer' may be used
> uninitialized in this function [-Wmaybe-uninitialized]
>
> On boot we now get:
>
> Unable to handle kernel NULL pointer dereference at virtual address
> 00000004
> ...
> (omap_dm_timer_probe) from [<c061ac7c>] (platform_drv_probe+0x48/0x98)
> (platform_drv_probe) from [<c0618c04>] (really_probe+0x1dc/0x348)
> (really_probe) from [<c0618ef4>] (driver_probe_device+0x5c/0x160)
>
> Let's fix the issue by moving platform_get_irq to happen after timer has
> been allocated.
>
> Fixes: 8c82723414d5 ("clocksource/drivers/timer-ti-dm: Switch to platform_get_irq")
> Cc: Yangtao Li <tiny.windzz@gmail.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>

Acked-by: Olof Johansson <olof@lixom.net>

> ---
>
> I did not notice simlar issue with other patches in the series, but
> please do double check Yangtao.

Yeah, this even seems to be caught at build (but our builds have been
so noisy with warnings lately that they're hard to spot):

/build/drivers/clocksource/timer-ti-dm.c: In function 'omap_dm_timer_probe':
/build/drivers/clocksource/timer-ti-dm.c:798:13: warning: 'timer' may
be used uninitialized in this function [-Wmaybe-uninitialized]
  798 |  timer->irq = platform_get_irq(pdev, 0);
      |  ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
