Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E9E2A96E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 13:38:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpVL2MYffScmmmHJ2fc35inhL2M9KZ+NApCTt5q9CSw=; b=fv/bwYrt3H6O8x
	IBZh/0Ub7sEydrFIH+9hS/WwL8E+nc7UzOgDfYjnBaigDDbVdVmq1NsptNKd8xI+woIZxrezHV3ma
	Rtl89x6VR8aMwrAPTD8mfuHPX6dvRKo0C1TWxAW5T3UB1QSQGvbtdnAPCpH090Jt3XseUrtchiEKd
	k6Sll73mxQssMTV8MCdoJf3EQSRjywNIhzBwFQrCPo2kxQhW3jDSrxUx8pM/TjHaUzM+052pBURe5
	U8gIgHlQWIO4nMiyk+YuRNqNwRYVfqDAW430zzzUjRo/SQfnHTEmEDm1NZvq7Gr5BsT5UYW/pzhsJ
	jFuquSx/hAFTOWPsm1pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUrUD-0003z0-79; Sun, 26 May 2019 11:38:45 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUrU4-0003y9-R5
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 11:38:38 +0000
Received: by mail-lj1-x244.google.com with SMTP id j24so12296050ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 04:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=StbyjKuob+g69b+MP1BIv299rEU4AXwlNv29yO23S00=;
 b=e962xnw5+hNuM0uPwzVK1bXVXGAOIcRWYjrrrbvxhjR7fyV8sk0v27XYgG9m4zeju5
 3yv241EGu+AvHZ38YO3q1zs+S8c0THn42fML8dZYxAHUqWpLlfNTwH5LS7OCF7vk+y/p
 hHdELrYG+we3CEBs7JRy7GCEbfXfksQDqWGovwGhGzM6UlRqB2+x8ehtp9CRqH6eUB0O
 VQd95nGEbOfPLPS4+AJwR33boJPqLN9F0RCfOOeJqBR1eFm789TXoZ0XBcCUAmKji5ZW
 e2iVUPwe6KAa4TZvOaxqgtI9Lolra8sXYGDXLN4YxHkOlQQSKAhsmKj2lCTL1GSvkHb5
 2v2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=StbyjKuob+g69b+MP1BIv299rEU4AXwlNv29yO23S00=;
 b=mt8TJF4LxV3gp9ZYCGjz3Db8FRGKgfLYSZwwU5lDRVsYbqFwdfx90EIqYTUdjoFMM7
 VXxoSMm18jGgBbhz330MDhwQGY/3RcGkkqHfAACZ299CaH1uv+/ywJrl/XlTJ98+0e/q
 3q4RN4vJaVPaZGggKplcNp5qb7tFq+6DpAMPWI63wPOiyUhXhVutIWE67CFv14cktCBa
 9Ec2NHi71gyPNCl1SYKAw3G13n644GlxS+i4Te92JF+ogld+RJfCHZi1JVwQ1zH4ArzX
 1L/8iKSfXZ/mHQ3K7759w7f5bnctORD/Odcdxaj+hgTAR9kfsK4BrwTrwzjU1ovovD3z
 08LQ==
X-Gm-Message-State: APjAAAVwDxeEh3VRJQPF8fRfNEPoRTkBUXoXXbwPOIoEkq1RDc7Lw/gB
 JwFxEboIc/8fp1KS1AgshnTD1yAAfPEXx35HkjOAyw==
X-Google-Smtp-Source: APXvYqzkfil9hqz1ZkvBl/R+Yqjpk9Cywx5M2byVDQ7H+/N0GSx/hbm4OvxF1WwQI5M16kMKXZu5E33pRO3OhJJFljA=
X-Received: by 2002:a2e:9259:: with SMTP id v25mr14311716ljg.46.1558870712828; 
 Sun, 26 May 2019 04:38:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190522072153.13727-1-linus.walleij@linaro.org>
 <20190525073616.GE9586@ravnborg.org>
In-Reply-To: <20190525073616.GE9586@ravnborg.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 26 May 2019 13:38:20 +0200
Message-ID: <CACRpkdYK5SdyvUVqVdE2nTyf1Y5Chrt2v9e1MdSkmEa=DQuDkg@mail.gmail.com>
Subject: Re: [PATCH v3] drm/mcde: Add new driver for ST-Ericsson MCDE
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_043837_054705_CCFEC561 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 25, 2019 at 9:36 AM Sam Ravnborg <sam@ravnborg.org> wrote:

> This driver breaks build in drm-misc-next at the moment.
>
> Following patch fixed both a build warning and a build error.
> Could you take a look and get it fixed properly.
>
> If relevant - then patch is:
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>

Thanks Sam, sorry for screwing up :(

I made it to a proper patch and pushed out, it builds
fine with the latest branch after this for me as well.
I'll apply it to drm-misc-next.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
