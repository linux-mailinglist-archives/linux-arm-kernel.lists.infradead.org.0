Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF501954E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 11:11:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KmlaqcNzNCp7u8zMAJzo/lCUc6L6XHLz3DvpadyZgas=; b=IR0yivtQjOJjwG
	T1R3+yRLsuk2NvMTDzbdGg2zYoXsAvdaRERYGT3yOdFVsGZmIJd4dI2/I+WGmjlFLwGkXZi9RRVDb
	W5fQzvCABfxn9Hr9kh7UkYEREpnFwbPME6ld7ff1kBK6pF+VH+rieLqGYpzK68QK10eDE4puISZYP
	pFZaWXiAEHSmKjtZeBH+BuBENLhKO+LD7yxziAvSIR53aNYvZUKzSbPuPgcWD+2KZFlD+yLKzcvL8
	Z838lqcPT1NYP7CfWVWxpOWdcQs5eGdI5/t/ZKmqFjF+ACALVbVhp8OYbYMuVRJRNn/Ku6/4DspaY
	5ujMifNUwufbJGTwjVhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHlwz-00059r-0A; Fri, 27 Mar 2020 10:10:53 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHlwq-00059M-2T
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 10:10:46 +0000
Received: by mail-lf1-x141.google.com with SMTP id c5so7365593lfp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 03:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5Npbjmx2EEwqSvhfm8k1aVlqXx6O4MStkJENyJ0fqd4=;
 b=FT8qzeO2T+rJuaOA0DKTsXprHUdy9BzaA7nB0Fr/QoXarVRQwzxhp7ZWERJ9S6Nk3x
 1MmXn7rBgq6Knbjw+my1fmGfvrKb8HApm0swiL8DmY9PQa9MXJl92nPLb5whysAEig8y
 gGaacje71Fwcn3Fc0uMXJF17TmzJ0JgJa32mkqnDFptAKimXjN0G4BeoTz8e8+5t3fbE
 ugPIv7Y1GBHjDzF0qXIt2VnrwHR1viqbLaLaFePYBTZ1POhrro9XHlPwcNRy+KWIJuyc
 ntLw9mARR8eVUnC2QZM7WILY85/+ZX5oce8D1ZiD6ZNSPWAM3Toiq6KvX7NRnXOIlIu/
 I0yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5Npbjmx2EEwqSvhfm8k1aVlqXx6O4MStkJENyJ0fqd4=;
 b=haQQ7XpoOvJTSipvczsIaqYm8NmUVFyqpXFYSZLNOozCAsicBqVfRld4I0Wmay4HVR
 2/Ryz/1U3dqMOUroZRKIbqMCrsQY5CIqXPdiexAMano7FdzsdNgeJMEmn9S1yNSFSLyE
 imMpDxa8QZ7uhbBhaqabjFhgvnSy/DUKYPsmn/8FG6kf80wNhQrWs6ia+7SnTEGOza3/
 YHX8gkV/g/XGTulaxHKTWIfCnC90AtcfYwnK/jl+y0bIqcUqxEuogOwV+DQBdm3F718X
 81HDoNoP7X2cQPA1qKPsoklHm+kWNyYIwLY8x6VT3Rk3KtlEFLfkLByy+Fxf9892WsAI
 dQJQ==
X-Gm-Message-State: ANhLgQ01X7pOKKKaaCzNY9YJv0PBhOD6LKj89mT4PHHLftwVfMk0EbQb
 0aLlTMpWa0Nfk8DCmNtkHNMvV8Tp0xnrSbz48WFMBg==
X-Google-Smtp-Source: ADFU+vuo7rHjjKyQgOxCXqSH33bSM+Ja4ivZZHhrCjU/q4tcBMMOvFAfACxfFq8agQOOqIlp22v+O/jFyzpwpcjpyIw=
X-Received: by 2002:ac2:5f7c:: with SMTP id c28mr8192077lfc.4.1585303842443;
 Fri, 27 Mar 2020 03:10:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200304225433.37336-1-tony@atomide.com>
 <CACRpkdYL5mZ7i6bEF0b_CUXaG-jHKz4KnSXsBNfs_9M054U3vQ@mail.gmail.com>
 <20200317173422.GN37466@atomide.com>
In-Reply-To: <20200317173422.GN37466@atomide.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Mar 2020 11:10:31 +0100
Message-ID: <CACRpkdad2Qm76aMhSw9Pdh9=Ed9BXsa6SVsAG2+v=KYRNcwEhg@mail.gmail.com>
Subject: Re: [PATCH 0/3] Block idle in gpio-omap with cpu_pm
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_031044_620742_736A3285 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tero Kristo <t-kristo@ti.com>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Ladislav Michl <ladis@linux-mips.org>, Linux-OMAP <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 6:34 PM Tony Lindgren <tony@atomide.com> wrote:
> * Linus Walleij <linus.walleij@linaro.org> [200309 09:27]:
> > On Wed, Mar 4, 2020 at 11:54 PM Tony Lindgren <tony@atomide.com> wrote:
> >
> > > As discussed earlier, here's a series to use cpu_pm to block deeper SoC
> > > idle states if a gpio interrupt is pending.
> >
> > As you requested I queued these on an immutable branch
> > based on v5.6-rc1:
> > https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git/log/?h=ib-omap-block-idle
> >
> > And merged into gpio-devel for v5.7.
>
> Hmm I'm not seeing these in Linux next yet though, care to check?

I was just slow on getting it build tested and pushed out, sorry.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
