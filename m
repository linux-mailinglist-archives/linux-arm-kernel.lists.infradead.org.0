Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6FCEFA67
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:05:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VHBUxB3lQIOt0KmJyN1NPUK1z6KwjdMMFLJm06HK4vE=; b=NXNldx0MBhrzTC
	CJor6dS5jlzWVAdqFfI+viHEmewiOz4OAlO62mAiM3nVsOp/Z3FQ2kZiuHP7AXQ0yv/Fsz2FSIte3
	sWWoLrFWkNi4H9SXj4+RuUUabrHXz/P8jptuzKl/ifz4t4pb3GwQcP9pGUiD7AU0wAZsSCI1ATQRj
	U4FyDDkBwl4HbDoDhcD7ObKClnJAMYscdJpUgBIEjY8YLVVWHiK2tmfCWS2B5898CoAxbIpnuDPFM
	wrxkt4p7rfQFT26rx5P4uAXXiYhZePXrXHORU7ZSktDE6VKgSUYeL6fY/j3jX/rYMI2VgUNNd5Uqc
	193/LRW46Bk06qC1AL7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRviA-000855-7i; Tue, 05 Nov 2019 10:05:18 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRvhp-000845-Bc
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:04:58 +0000
Received: by mail-lj1-x242.google.com with SMTP id m9so21055629ljh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 02:04:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Syu30Am6BErl09auW6zTpaceggouTxknVxJ/Bz3Nu6s=;
 b=F3UmVNykzWHUTwNdwBuIbGn2Gmfwp0lPCaec0SGFmqb3Uet67QafNd3kCYlw6Ko+iZ
 xv75pN0y9ypmC6pikz0liwOGhAiNts/UROWuHig/DbuhUeFBXD4yqjhPU382v6bC9Ru0
 /j8rerZpggbnjA3tv+Ouiy3Tj9W/7DfdMcsnk1B6kFVShopOgMjoLO9MthZ4KIHuWxuc
 BQP4u2JN974kAVhnIVbXsl02XqxL6+gMbv3UJRx1mRF+XO8D2Fmke5YyV809sOBHqgmv
 rvgASQ5uItepUr0wXaAijVdeu8uYwD5Cz3CiEi/f3Yi1VzBKw690MH7685YqlBJAUyAK
 /oMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Syu30Am6BErl09auW6zTpaceggouTxknVxJ/Bz3Nu6s=;
 b=h7TGAzff4ynpOTTSWYDf2pSUhsxwrSkNehI8VY1Ob94N2tXdLgI2zEdOVokHvypDLS
 pJgaisPH/W68FrpBlmGteia0jXdyoUeEs98fb6xeRSnFTxIMt91VfCbVp4S8XdKAnqNP
 oGeIPWC4mDglGEI2coi8rnQYN4uwUzGcSiNLip/MbN0Yc7IpNLS8VqBxQviJUJPXjs1G
 ftfLAXOQi96hZ4V9sEAAkrdW43MvfXNm2E4lg46lbOVn+rmKnT9HyExVYjxYzLlxNvd5
 llJjqOIm1iF1K7YPHPHhSieOb6XTkex6KeC60+PYS/aJOofBZUKK5LHPk3/pbqJeQYv+
 NjQA==
X-Gm-Message-State: APjAAAWkmWagPoZ4FvX5mN61H3Y9TR9dNI3khW72vNm6glCUoqWbYciX
 hnUfUy1pktIQmKvaWZvUQYYLgrvtXqvzW1nPNRtUAQ==
X-Google-Smtp-Source: APXvYqzNQn4xnOeOTV9UejT9zf0JppB8XIps/M7O6A+dhmKjufcoOTliNdNUw1qqwcAYUPtRHSb50EJJlG+Vv1iRlcY=
X-Received: by 2002:a2e:9a55:: with SMTP id k21mr8950214ljj.251.1572948295656; 
 Tue, 05 Nov 2019 02:04:55 -0800 (PST)
MIME-Version: 1.0
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-38-arnd@arndb.de>
In-Reply-To: <20191018154201.1276638-38-arnd@arndb.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 5 Nov 2019 11:04:44 +0100
Message-ID: <CACRpkdajkSh6Bbvpfycm83j1GuCm+pTfw9fQS53JEfG2i07MKg@mail.gmail.com>
Subject: Re: [PATCH 38/46] video: backlight: tosa: use gpio lookup table
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_020457_422517_39D8F550 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Daniel Mack <daniel@zonque.org>,
 Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 Jingoo Han <jingoohan1@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 5:43 PM Arnd Bergmann <arnd@arndb.de> wrote:

> The driver should not require a machine specific header. Change
> it to pass the gpio line through a lookup table, and move the
> timing generator definitions into the drivers itself.
>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Daniel Thompson <daniel.thompson@linaro.org>
> Cc: Jingoo Han <jingoohan1@gmail.com>
> Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-fbdev@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> ---
> I'm not overly confident that I got the correct device names
> for the lookup table, it would be good if someone could
> double-check.

You're anyway doing more than required for the people who
may or may not be using this platform. Brokenness can surely
be fixed later, it's not like we are taking down the entire Amazon
cloud or something.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
