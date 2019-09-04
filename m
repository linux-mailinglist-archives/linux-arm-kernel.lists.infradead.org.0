Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280C1A93D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 22:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKfVF79hzfQs8jFoJFOl1pp9CiHV/qpcI4D22ta0iLg=; b=H/B6r2PUGPFQXv
	DDRCGHOPswmwoC9j8Um1nXlBhnKcO0jhKBYa3SGrT0vn1TOc2yqKFLrv0v+0I8pnvm+xSYKLAWzyw
	St4bp0QULvi/UrSYvDiQkCgXqbydqJU8va4SW2r9MFew9A576plwYIE4vQgLhGvkvhCsXURrknrl2
	pPqtiQ+MWO9m6EUjdHLLQVq0b/SxiXJNH50WqLgj0O0y5Tv88fzo3sf2/oO/cbhHWFHeR8vybKitc
	6FjwQSsuez5Qyo/hhyegYueTpUa8BXh1QhBsU+Fx9ExrOyF4W5GglYUfLdfMyuIvEa0rc0gpx11mD
	aWT04OBC4shYwgeKZ5gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5c3B-0000xM-6s; Wed, 04 Sep 2019 20:38:45 +0000
Received: from mail-qk1-f177.google.com ([209.85.222.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5c31-0000wg-AL
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 20:38:36 +0000
Received: by mail-qk1-f177.google.com with SMTP id z67so8118685qkb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 13:38:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nQ+TZt2xAU6ARjfRCiqVZR2trBRpvvDn7We+sIvH1zE=;
 b=DDuxYjdLjHQH/emC9brCBmlf+hqVGrW4uWeIJRFbre4mccizWMfhhrwCQ1V72472B5
 k1dS8E5vKWWEatMhK3EOA+BQzZ0S/RHPgclFnfSt293sRYgfFEiLb7+UMSIbWuQIA1rv
 qMIMqljo8T06GKerLujOZo3ueb2mU0BAWu+5wvWlQWmnKJBDHHCN7kQ0fBW9JwSgF+jz
 b/Jz1K5FddgL6aZzAFYGIRt/Xzcgfpdh6CR9+LrWnafOevVjZkxOTv/dL2lM09QMp/Nm
 hgiWV3a/3Hfl8MwxDw+1yfTrS+Vq4bKMWZQMRJZVmXBf6+1o4LFlkQERtBGHkyE5OSC2
 OaVA==
X-Gm-Message-State: APjAAAXiW9VZVdAuNzZxpNqp06wV+W3aKdIhfF+gxGBbMYE0FZ6oi86S
 iYobMYfB67N+p3Vw6UUB+4Ihf5Pk0mDx3O260KJN1Q==
X-Google-Smtp-Source: APXvYqx9uD7UtlRyqsCOqQGbbg7AQnv4dWGAqV8gWQixfO/xjWBKsLWBDyCZMABQgbs3kg00uBUNX8YKi+rJXXEYHFs=
X-Received: by 2002:a37:4fcf:: with SMTP id
 d198mr41434701qkb.394.1567629514068; 
 Wed, 04 Sep 2019 13:38:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190904175002.10487-1-krzk@kernel.org>
 <20190904175002.10487-2-krzk@kernel.org>
In-Reply-To: <20190904175002.10487-2-krzk@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 22:38:17 +0200
Message-ID: <CAK8P3a0N1C7+_vpAhhmqVv9A+jd4bOXNEgPj_=fdPZTqy-93ng@mail.gmail.com>
Subject: Re: [GIT PULL 1/5] ARM: defconfig: exynos for v5.4
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_133835_361598_A0F5D4F3 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.177 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.177 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 7:50 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> Samsung defconfig changes for v5.4
>
> 1. Enable AHCI platform driver on exynos defconfig for Exynos5250-based
>    Arndale board,
> 2. Make Max77802 PMIC regulator driver a built-in on multi_v7 defconfig
>    as it is essential early during boot.

Pulled into arm/defconfig, thanks!

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
