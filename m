Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B27D946CE8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 01:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oz5J3x1iznVKIe9Mc2S3obV2Xsy1GvLWSZpV31oB2Xk=; b=rKgSp2hOBC8QPg
	gA6YHjFRMv+/CpYYCmT02mCGMQCvcbtJnAaQW794SHukXmMkQevun9fvNBp1ayP9X4DERHBQaEX6Z
	1HjCGZtVvxQGFmw2vPDZX8jB3FqKJAPZYEuDAg2PlWcIwO7XU3+dpJIcSKhE+X/elBrunyVRIcLcz
	p44Y+OA8PXNNdSUzt8fteKaSKzsTCts/7WmyI5wag3+4NeC2rQ/TTMt7g3DBWiYxuoIaFd4HQniRi
	HSGhhU00FELyFEmJ9kVgTjVwL8j7tiy9twIbn6dOcHAYq6pVVrJ1gG14UuGHC3gI1lzqOI+XAp8WM
	IFQ8B120K/qCyEcPFKNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbvYd-0007jX-1J; Fri, 14 Jun 2019 23:24:31 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbvYQ-0007hH-Ms
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 23:24:20 +0000
Received: by mail-pf1-x441.google.com with SMTP id x15so2293772pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 16:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=bkq9Jzt9RkIUkx/mAXpHAFglVjZNcVEkIi23erUdOgI=;
 b=etLa45gSwrb2iPOYWpzShJ5XY5xCG/ZhswoDLMEGntuk9tLKkWkfsQrqyMUX9nODie
 m1pn0WXVfKsIfJbRsJDeclCqJJoaom0n8yqqIqEtA9ProPgLe7CJu0vAdcIZjddCkVJY
 bf+UnLLMtCxb64qTsMSO7k5xfGlG1bo35E9qoti0MaYXSvGenbdXct4UAuOXvUFsFVlz
 ym4dZ49BBqNTwoSd+Cw1ptZE4g/x7dJzgQsXtUKeNluzCR2gHnNyd5qQFchpC8dWfOLE
 E1XgmVFCOJ/mxurWvPywhIXAeNSkfxcWoe08GfVliuHQEAWWarlPj+/C2rPFHEyaFP4N
 drOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=bkq9Jzt9RkIUkx/mAXpHAFglVjZNcVEkIi23erUdOgI=;
 b=Az9HKII3lxALgnRoeeklkaNmNHtpV1xLCk0wFmknRALwv4KAuUPfJQnTghAtuHA7Gz
 NX1n6zZgk5CwWOxA1szsjG3po/oceiKgPCCXvohDXhmved182e2I27cFQDVIY04+rED+
 Mb/G7k1BrSjndl68jfluCCGukXxe6zepm9X+Hj8WqTJFo+ISZdL8A9lCSKkYMVELC4zE
 WGVTqkEPLa0DnyXKtP0507bvxyhV6Lfrf+Nyh8wFTRwd2mlIgrgynPE6JUrjEwv7UhsC
 3bLjxjusaQMHQ/CSolxCl4vz5E6jv1H1rbwPxRuhwLWduukFNgWWHt97b8ahqof//njt
 RrJA==
X-Gm-Message-State: APjAAAV3n+pH8W45re4WgEyCAqrB2wh34iyZY3AgfbBLeOg8aO8EF267
 TVkL/gX/vTnRXOGjH0fJ+046tw==
X-Google-Smtp-Source: APXvYqzN1o/aMB0PsDJRr6SS5wx0Ruyq+bVBj45wj7rG8XlZj0BDufeeFegCTGSnIGcmmJiJedVssg==
X-Received: by 2002:a17:90a:ac14:: with SMTP id
 o20mr13709654pjq.114.1560554657768; 
 Fri, 14 Jun 2019 16:24:17 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id v5sm4220124pfm.22.2019.06.14.16.24.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 14 Jun 2019 16:24:17 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Neil Armstrong
 <narmstrong@baylibre.com>, =?utf-8?B?SsOpcsO0bWU=?= Brunet
 <jbrunet@baylibre.com>
Subject: Re: [GIT PULL] ASoC DT bindings for Meson
In-Reply-To: <20190614184456.GJ5316@sirena.org.uk>
References: <20190614184456.GJ5316@sirena.org.uk>
Date: Fri, 14 Jun 2019 16:24:16 -0700
Message-ID: <7hef3veonz.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_162418_815465_1492093C 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mark Brown <broonie@kernel.org> writes:

> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
>
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
>
> are available in the Git repository at:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git tags/asoc-tohdmitx
>
> for you to fetch changes up to abdcfc25641c5ba6d63047bec1dc8d3aaa7d4111:
>
>   ASoC: meson: add tohdmitx DT bindings (2019-06-14 19:42:00 +0100)
>
> ----------------------------------------------------------------
> ASoC: tohdmitx bindings
>
> The patch on this branch adds bindings for tohdmitx, including a header
> to be used in DT bindings which needs to be shared with the arm-soc tree
> in order to allow system DTs to be merged.
>
> ----------------------------------------------------------------
> Jerome Brunet (1):
>       ASoC: meson: add tohdmitx DT bindings

I'll pull this into my DT branch so I can then queue up all the patches
that use this binding for v5.3.

Thanks Mark!

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
