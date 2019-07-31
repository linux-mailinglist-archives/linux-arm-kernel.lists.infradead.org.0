Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E4A7D13F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 00:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8Bu7Z2zXTG6vBi96YoyDbzO2m03x5PwtKGbmifPrjk=; b=QwqgFB78E8M8kh
	h8TTS/0Gha9qZ2YvltEgmR0Rr+MpHI8xNAFGqTClCDinNXPcCbhWANYGAfgzWoaFEXmEgLmwgjLjP
	72NzjGBgaswNEbPvEnF2mMzR6T7S2sTJfYRtlC7s/rD2+7IqdpdxvhETGAXurb4SxWeGLOP5zrXJj
	jRWYoc3zarx1rlX1ipryuQhrqr8iEg+oG0Oz4ixRe0BoeL6RwsNC87J+ydQ4+Gu3OXO2p/jGioqvD
	OSfawSqJpaSayfOvtN5r1+zNMb9C/Tfc+P+JnOvEfumGiLCHsqDwyGw3EGmP1GuYklnsmJdMgjzO9
	1Y3IPhkuAfAs2B9xmbqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsxGq-0002vF-Kn; Wed, 31 Jul 2019 22:40:32 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsxGk-0002uq-0C
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 22:40:27 +0000
Received: by mail-lj1-x241.google.com with SMTP id m8so33699722lji.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 15:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5HNMAizo1MDGSZw7JIwDqYk31Wb10QHDQmyQRyMX4zg=;
 b=PpsMQT6ap8+lWa9EgPNy733P/g52et7aVqY3Nqb8PUY9xsRsMCjijwa15wuGB49g1s
 4wOwjngXv+gYCNEeIA1XO77yWFdpifl8L3pfLNgQ/u07MNBUEbrDkYykOD60NRxLfLeq
 AtUB9FTMUq6uqWXMvTs78/+yd5fh4k6P345783bcK3gOPZ1+qCmlH2bQMEoce24jh8eE
 WjvVN56+N2QHhRABtpzcKV0jL29U5IRO2LJ2K0ra9N5pPRm1QTfeAJTv2Dzd2q0OeFYf
 SD+u8IjiiwulEZO5ZAlHWVJYXWP85qveTcDECN+FyNuWNJmKt+wdfJeRLJkn1JJpD74G
 amrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5HNMAizo1MDGSZw7JIwDqYk31Wb10QHDQmyQRyMX4zg=;
 b=jkNHy0evWl35aBIsh8Ghtbrpx0L/AEn3gQak4Gj+nYTQPiRGcNp2gD2NaV3ZcN272/
 1moNePS52HqPpVv3BPFT0HBbdO19+6eozUcB/ZNahZQKY4fqxxXqe9Fr6DR2gVGbJQNg
 Cy9p+RKM+c7nlUCEs9hC+ebRCsDuLw9Y857bez8XuSVwLVcrHhQTTgNdONTlY/Q9SxJG
 QPiZCoZJ6MQCdVde483BkjHQe9UHm6tCXFZXq2Gul4kaz44XYVLXeVGuyY5rr4U8UUhx
 aGEgdLnl5SAv7v2XeID5N+fPpM6RwjsCLQ1Q8oS++6OsvgJmWaTkVI11b+Yxymryapv2
 bX1g==
X-Gm-Message-State: APjAAAVpThY6LtHk6GTZ+wLbgaud3kTKQE6PgAwMx/ejgZfJ2hWhaNxN
 zxDrue/JBGob01ZIziF3uT3amPbNn60UrFvtuOXb4w==
X-Google-Smtp-Source: APXvYqxIzEh2d0oibu1mPj2dccpkGDjEL429V/6M3XKsJ7ystGzvZqmXo1+gchWC3ScfsekqdSz6S5FQL/U7mziEO2M=
X-Received: by 2002:a2e:8195:: with SMTP id e21mr62637463ljg.62.1564612824202; 
 Wed, 31 Jul 2019 15:40:24 -0700 (PDT)
MIME-Version: 1.0
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
 <20190730134115.GE4264@sirena.org.uk>
 <CACRpkdYevQiwW8iED8_qBo5yCcj5yCGrM76Lu3MyrU6Vy4HoNg@mail.gmail.com>
 <5d41b01a.1c69fb81.84578.a0bc@mx.google.com>
In-Reply-To: <5d41b01a.1c69fb81.84578.a0bc@mx.google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 1 Aug 2019 00:40:12 +0200
Message-ID: <CACRpkdb+O6vhpQ_Hx+UQOOVqS7wSdRmKGW-Dkem5nUv6p_fgsg@mail.gmail.com>
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
To: Stephen Boyd <swboyd@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_154026_075972_4B10CBA6 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>,
 Timur Tabi <timur@codeaurora.org>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Mark Brown <broonie@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 5:13 PM Stephen Boyd <swboyd@chromium.org> wrote:

> -       if (IS_ENABLED(CONFIG_OF_GPIO))
> -               gc->need_valid_mask = of_gpio_need_valid_mask(gc);
> +       if (of_gpio_need_valid_mask(gc))
> +               gc->need_valid_mask = true;

This looks like the silver bullet, thanks for your sharp eyes for this!

I'll send this out with your authorship and apply to next so Mark can see
if it fixes the issue.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
