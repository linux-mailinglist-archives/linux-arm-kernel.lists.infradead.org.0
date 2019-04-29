Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 963CAE85F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sdJWT3sCI4IhGJ12/FfUhnMJKiGVe8/ufCyC0DRFllA=; b=czkEqg3liM8NCD
	ISly7mUJNMIpQbz7ViLGiQ2CVCf7Jsq7pXq45uMHjEYpnyRMs2kyla6UelPXho/CXo/K9mswM1+Pj
	bg3iz/s9rWCyItXrC+6RW253FgKyVmbt8Y+qtmwSscpTCp8/GYLo4heBmj7NxEiBJQ9PVYH0156IF
	g8mqPXf8eMoIRCGtgZsOdOzFmPRHC+80kSIddmGJ47wOYI5oeFt6Eqa5YYEl8lDyveMmNSJVh2Hmp
	8m0rv0xh8BXtbYZZO+qDcmiAs8BoA4MtbOn7GEn31E8BhUyIAIXXACt3RdzcN0GVLW2RzovQ4wW+G
	cwW3XOhQFzWQBPEOAgoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9l1-0002qQ-1D; Mon, 29 Apr 2019 17:07:59 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9ka-0002WF-31
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:07:33 +0000
Received: by mail-lj1-x229.google.com with SMTP id e18so4165364lja.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=47Lwai9YZAdzeJf7BCBawsYddo0gelB62ti0g3qmaEk=;
 b=nDFCvtdPwUqiyavPo/mkSjMbYQYrhgW0U3EBPnMh/B3PXMlK6yo6GcrdD/7zzpSJox
 5z4YU8weGfBAOw9D2OM4BhrHiOdDj8AyL/95em9lMUOms8vcZ29iEweH3uqwLYsOLYDh
 84XocPGCABpyrse6a2J0J7EyhyURsuwvkRH7pDbyHdSEgkeXB4m0IxHZjHJgKfPf53wR
 f7glOzpbshOz0tC86dCrlyxuyKCo94kRhPV9FntxUQLQtT2cdo0gyDdpEUBAWm1P7edM
 62eNsMqdI7zdXCSBrN9q71ymqdurdrS14FROmz5RSjH/WyIbbbhqVyEYedow4WQGN9mp
 +PMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=47Lwai9YZAdzeJf7BCBawsYddo0gelB62ti0g3qmaEk=;
 b=hZ0Oe/Hc4fHDf/YjirueuiAQLmpHeR3ZoAhrDwK0cF9kgWUhCWxsvG6AZvevVo8I77
 0DHCICV03qYLpVU/J+KTIhsKi9NBBRlJCBzQ8+4JmiEjBIZ9vrOvbGoAQRFKiMxDkozE
 LjV/O83fk4OyTSnXWfkmq4j4ibUtVWL3YG+Cit6jpAgvgvg2tVbxY/MRZMhCzpixe99W
 LuYlw9hvj5uLdHndil4IJLOC8IXXrer9yieN3HUryCfokZ67UoFbTjYFhk9hkdAFWNJJ
 NP28oalFGnziITCB2OYevZrnwBIr172tQFahAqCqSncv50VDfis3lxUM9P7vWlv9/YBk
 20gQ==
X-Gm-Message-State: APjAAAVQt+FseXLXGjYvsLOlGH5DkZ3z46IbyMfSmqMD1JSaXPSIp8z2
 mXPzmAW9FKaPDEV8cpKpKoUWIDI2L0CzLw==
X-Google-Smtp-Source: APXvYqwGCyhVBSziKX0G9NCEUPJWcvMQQkbJyRw6TAy2l2vS7nS2ziby+M6+y8zWkgbmf/zNF91NJA==
X-Received: by 2002:a2e:81d0:: with SMTP id s16mr4170427ljg.145.1556557650143; 
 Mon, 29 Apr 2019 10:07:30 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id d25sm3496956lja.91.2019.04.29.10.07.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:07:29 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:24:57 -0700
From: Olof Johansson <olof@lixom.net>
To: Vladimir Zapolskiy <vz@mleia.com>
Subject: Re: [GIT PULL] ARM: dts: NXP LPC32xx changes for 5.2
Message-ID: <20190429162457.wsthjfkverg5llg3@localhost>
References: <1a151cf8-7588-dbc2-4ea4-e7067c0268b5@mleia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a151cf8-7588-dbc2-4ea4-e7067c0268b5@mleia.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100732_131149_D2ADDE75 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:229 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@baylibre.com>,
 arm@kernel.org, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 20, 2019 at 11:37:24PM +0300, Vladimir Zapolskiy wrote:
> Hi Arnd, Olof and Kevin,
> 
> please consider to pull the updates to NXP LPC32xx board devicetree files,
> the pull request contains minor clean-ups only.
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/vzapolskiy/linux-lpc32xx tags/lpc32xx-dt-for-5.2
> 
> for you to fetch changes up to d5a71e4646a741f22863b12d0037e15b5844af90:
> 
>   ARM: dts: lpc32xx: use SPDX license identifier (2019-04-19 23:57:12 +0300)
> 
> ----------------------------------------------------------------
> ARM: lpc32xx: devicetree updates for v5.2
> 
> Here are the changes for ARM NXP LPC32xx devicetree files:
> 
> * disabled I2S and MAC controllers by default,
> * set default #address-cells = <1> / #size-cells = <0> for SPI slaves,
> * fix notation of hexadecimal values,
> * switched lpc32xx.dtsi to SPDX license identifier.

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
