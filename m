Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 679F2132F28
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 20:15:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZ8e3mq8UaGu1xPi2Spftzx5wuoIHXpARTIkZqgfK38=; b=Vh3IVsC/3K7GE+
	h25ibWMdwW55yj7eeAOT/VNW503Y4EAAz/XnMPfP8gm2dOfg8YdNSinGg4YiWFg2QrX5HE9Xc7Kgv
	PBIwRvpBffjUimihA8qChqE4GTWN5LcYsodGvhtn6FKJoQ2Qf6TPdshbQPgOvrMEpzoS5xr8WWr66
	TuJ7lHVYYOWd5i4zJEJR9nUXMsVWS6I9naQOnry2k1IvmYlNtbldu5rlaedNS8VwZl4Ec/a80YwPT
	U6eG6fBgEStS6GeZJeimyWWvn0SAAK54coVjwRFAWU6kz1TNFCwJNMVcBVo80TA/1exZqRTSi9uNP
	p6cAgv8uMIvnnagWiveg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iouK0-00049p-7e; Tue, 07 Jan 2020 19:15:20 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iouJr-000493-Tw
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 19:15:13 +0000
Received: by mail-io1-xd43.google.com with SMTP id h8so535353iob.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 11:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yl2wbUAzHAKbcOb1Vl7UvKqELmoqXyVI0Xh3B+s9l6w=;
 b=rkQzotOI2WHHWwl7HXrjtEqiFBUizAnXJy0V8EQAuovXuZcIet+WvPqNR5SjCRKpX3
 RBOmcSr49Rvp4qGRrH8iXEmGIh1XxFKeoUYJC3G0jk3Ln6y1IfZjD6/eLB3cwp6f9L8B
 V5xp35Kp4/+p+M+E/8RZ7RVnE289Ouaw8GJ/JTCsju3xsMP9NfaE8X4KXapOYPEOFbx9
 8c1UEuszme5mHl5SDsWoFPTH89wgrj0jW9rjSb06Enjkys1L2KrVbLlRB6qEJiCUkvjm
 jTv08XipmW3TZppSYqz1ljOQawAKLULX/rRIeXP6mAV1b6DoU12kV8x5Uzfj0ZhR0DV6
 WhCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yl2wbUAzHAKbcOb1Vl7UvKqELmoqXyVI0Xh3B+s9l6w=;
 b=ZXP8Ur/2ql7T0Di1GXl7BYnw+xGNhUhjtMFFqyTdVbA3MPSDSQkTMP5HFva9wFBXUb
 In/1iC7hv6YZZwL9ROSfKtfpchfAmR0zhOFNKL3JPZqw0QITjsQzjv6To5QhJSwJsEQR
 TUPSNFIvqzrn1Hblm0izk59R+hzBWVn7XHPHjsmKfRK1jPnVVfmViz6+PB9klTZb6ZuG
 qDK+EkA53f4Xm3LexIWzqbpH911gaNhAlmZAot4fy+qe5TxF6BD0k/HCeRN12KSr9NUz
 O8O0EHz9rjCjKBwa4uEuIa6uz26DS5Gbi1/qj7EFY0o1T50j73bWJ29dVC7nk6epHkfR
 xTFg==
X-Gm-Message-State: APjAAAXodcjMzhZvQZZ9Buel2XpiZ12+IvZXFapD1sYZACFPqdf/mPpo
 0t/Yjx3q+se3/2kAlHI5EUDkMLMBJacFdd1WY1A=
X-Google-Smtp-Source: APXvYqz9PvnXo6JBf/ETXrEq1+jj6hv8iMvI1zUApsw3LhkJjvDhAUAxswe1B7GebdiWNs1qbym12yJE7R7vujQvTMM=
X-Received: by 2002:a6b:c8c8:: with SMTP id y191mr430846iof.104.1578424511057; 
 Tue, 07 Jan 2020 11:15:11 -0800 (PST)
MIME-Version: 1.0
References: <20200106203700.21009-1-tony@atomide.com>
 <CAOesGMiNbyUXwPFsG-ipTn-xfEs+A2hG8Q8MTcSLz5794GCv0g@mail.gmail.com>
In-Reply-To: <CAOesGMiNbyUXwPFsG-ipTn-xfEs+A2hG8Q8MTcSLz5794GCv0g@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Wed, 8 Jan 2020 03:14:59 +0800
Message-ID: <CAEExFWuQuTHNsjABpSBAa46NzftHS0+nLLG=qdEcaeatLZFLeQ@mail.gmail.com>
Subject: Re: [PATCH] clocksource: timer-ti-dm: Fix regression
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_111511_992996_84CF8941 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tony Lindgren <tony@atomide.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 7, 2020 at 5:07 AM Olof Johansson <olof@lixom.net> wrote:
>
> On Mon, Jan 6, 2020 at 12:37 PM Tony Lindgren <tony@atomide.com> wrote:
> >
> > Clean-up commit 8c82723414d5 ("clocksource/drivers/timer-ti-dm: Switch to
> > platform_get_irq") caused a regression where we now try to access
> > uninitialized data for timer:
> >
> > drivers/clocksource/timer-ti-dm.c: In function 'omap_dm_timer_probe':
> > drivers/clocksource/timer-ti-dm.c:798:13: warning: 'timer' may be used
> > uninitialized in this function [-Wmaybe-uninitialized]
> >
> > On boot we now get:
> >
> > Unable to handle kernel NULL pointer dereference at virtual address
> > 00000004
> > ...
> > (omap_dm_timer_probe) from [<c061ac7c>] (platform_drv_probe+0x48/0x98)
> > (platform_drv_probe) from [<c0618c04>] (really_probe+0x1dc/0x348)
> > (really_probe) from [<c0618ef4>] (driver_probe_device+0x5c/0x160)
> >
> > Let's fix the issue by moving platform_get_irq to happen after timer has
> > been allocated.
> >
> > Fixes: 8c82723414d5 ("clocksource/drivers/timer-ti-dm: Switch to platform_get_irq")
> > Cc: Yangtao Li <tiny.windzz@gmail.com>
> > Signed-off-by: Tony Lindgren <tony@atomide.com>
>
> Acked-by: Olof Johansson <olof@lixom.net>

Acked-by: Yangtao Li <tiny.windzz@gmail.com>

I am sorry. I will pay attention next time.

>
> > ---
> >
> > I did not notice simlar issue with other patches in the series, but
> > please do double check Yangtao.
>
> Yeah, this even seems to be caught at build (but our builds have been
> so noisy with warnings lately that they're hard to spot):
>
> /build/drivers/clocksource/timer-ti-dm.c: In function 'omap_dm_timer_probe':
> /build/drivers/clocksource/timer-ti-dm.c:798:13: warning: 'timer' may
> be used uninitialized in this function [-Wmaybe-uninitialized]
>   798 |  timer->irq = platform_get_irq(pdev, 0);
>       |  ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~
>
>
> -Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
