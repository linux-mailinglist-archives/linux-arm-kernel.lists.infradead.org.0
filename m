Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E179B686
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:22:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHrFer5IB6bBgzBAaI7B4XlA/YmBUmUpH50mEvm9GoE=; b=FVT5VnldcBIxaS
	P+/tsUiFrW4XB0whNJ2S9qUa2h8K1VWYpPui0qWHU7dsYExyOohJ31G8d5VybW0yLK7lzxjgws4TN
	MiW/Xyk52f4tk7ZPARlzReV2RddZXzitwT+/CCLv3rwbmi39XfJRiK1o1ytPNJJXOVlrlz/Vk/Gs0
	qvziatFza4HN3umE3/Ek5ifv4iLpmbHzHg8TYBrAWhxpz8q0su5XmTO8arljEDtBtoKaR/zwz3Z5Z
	jxd8R/Lz+o9lp3jfMVZVoff5l2y6DLvqzk4RTuBb2aJTSNnvkFUvliRjWsPCBZBqiwnrM5jXoHPcX
	0PtLESmOaKK3hd17H8AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqJK-0002jl-CO; Sun, 28 Apr 2019 20:22:06 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGi-0007Tw-KL
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:29 +0000
Received: by mail-lf1-x141.google.com with SMTP id d12so6336028lfk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CTKqHAreMncZ1h7jPsWtfNHB4etyOtY+dEoamFuIONY=;
 b=c7WKFpCJKWKACqQjuN6+QisDaRfN+IhstozIANrOLGKSX9t088Pd+TJ0TYSEQEUBy4
 9S0QUaM1sh+ydbjwwTTGA2+uSZ8hfN02UN4Q+DUMe588EixH55YWZuDwkvlB5AAvpO9p
 u92Z3P24mMpodmk+mfALJQvxc/SMyGAmZj32lSHufdV+OlBqO9ikPZXO9EaMS5QS7JZH
 qcDuUYEYbIrY94ozz42Oe5j/TU0rjkKDIv+/313hLkPQcLGbPemdP88b4jd1liJb3ndf
 ybbZbPL5qleI6UvLg3ET28KtBqJkZvCggP0d34eegklnHUvJ7O7+qll1m6QAahwX7jsH
 WJMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CTKqHAreMncZ1h7jPsWtfNHB4etyOtY+dEoamFuIONY=;
 b=kkZ9oU3cka7GL7cU4gUwOlmBBjYVwk+yALGQIBKA6rRbP8uG3u0/9GFFKMVw0QA3WC
 iLZT9DBuwVx2Af0AyieMPexc6k2hWLGqKaZyQB/lpowxcEkyePwDhcID74/kHLfSxXQu
 xW3qDlClQXRBM6x84s8uXwE2bu+L9WdUu7NbP49+QcLr9Z5td4DMusXled4521c3iyHV
 MAD6Y6pHVWCkzF6O0kpY9FVvpJ3i7o1P6CHa0JuaVPXHdFXhMU0JsmJBujucsPmJzNWK
 n2Z8mw3O1IbjBWyKdCdA0u4MxnqW2xpMeYaN8ORriLZ3SL/oxzFbMBiTecNQ04hPKjp9
 XlEQ==
X-Gm-Message-State: APjAAAUeg54XkbO/3vBX8Ce3O5kcJjOhERiRbd5Eh0cCUnpiAXFv81/0
 o67iNKp8txiX5i8ump3+JHVMKQ==
X-Google-Smtp-Source: APXvYqzb+UuqHeoCVQGdxxsf48KDNCdx59QYYBrzj/0hrbNxadzY6bfAuPdIbvgkgs1n9/fqqUe+fg==
X-Received: by 2002:a19:428c:: with SMTP id
 p134mr31867733lfa.108.1556482763081; 
 Sun, 28 Apr 2019 13:19:23 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id t9sm4108314lfk.20.2019.04.28.13.19.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:21 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:29:36 -0700
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [GIT PULL 1/3] ARM: dts: exynos: Changes for v5.2
Message-ID: <20190428192936.ybxa437r3jznxgbv@localhost>
References: <20190414154805.10188-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190414154805.10188-1-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131925_027617_61A58951 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, arm@kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 14, 2019 at 05:48:03PM +0200, Krzysztof Kozlowski wrote:
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt-5.2
> 
> for you to fetch changes up to 8cc76b1c75722196fb3d7ffe67cbfeb721a7b0e3:
> 
>   ARM: dts: exynos: Remove console argument from bootargs (2019-04-10 18:13:31 +0200)
> 
> ----------------------------------------------------------------
> Samsung DTS ARM changes for v5.2
> 
> 1. Use proper ADC on Exynos4412.
> 2. Extend the Exynos5420 Arndale Octa board with: CPU cooling maps,
>    unused regulators, ADC and UHS-I SD card support.  Beside that adjust
>    regulators to proper level and add always-on when needed.
> 3. Extend the Exynos5260: high speed I2C and proper external interrupts.
>    Also fix shared external interrupt line and use better PLL for MMC
>    clocks.
> 4. Fix audio recording (broken around v5.1) and microphone recording
>    (since v4.14) on Exynos5422 Odroid XU3 boards.
> 5. Minor cleanups (stdout-path and bootargs).

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
