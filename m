Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF95A4BBC
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 22:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gwvqaohS2rz9KrDrsCdwfM4bhc1L8yK2YLiqyTsOnTk=; b=udRStLYPkUgjou
	HeSRorwAUPu3lsi21iGnIYCELzMcUTUs0cUKuWKwa9E+N3CiBEslI1wEEzzDoABLdBY96rP65iKDZ
	5nfdEX0sXdZeDYypJikJuAdo5fHYOjApDIhiQt4Cb1CW3K04jNw3Rsb0O42f+CEG6ccaWfQHQaN1E
	TvXWL1SGQ57cQoEfbDUxuhytrF9db9gnDdQqlJerJJ3rgQAzwXaxg5FFKYPLYczeA8Qffe/YquYPq
	C19zysWO+UBT3Lqpd5PQzaBefY/h/6jjWGaFd0frrbmatSg5ZlmnDp7CqeYEe1tRocl87iKkDhs9n
	AZj2t2Ai0D+h2gx/GxoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4WHY-00044X-Rq; Sun, 01 Sep 2019 20:17:05 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4WHL-000445-Us
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 20:16:53 +0000
Received: by mail-lf1-x141.google.com with SMTP id c12so8943431lfh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Sep 2019 13:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7pieDnEw7XexRSfOcC5t938V4PwFmYIdp3LSZsC7Nk8=;
 b=rB1FdwrDr6rfirZ9QCeEA/cWgDP9XY7t1qCikcklcNyOqg1lqlZA8QZVeT4hsijqs/
 KRC+WG0cf5Apck1uRguLJ9Kjvf+FUBVvU55b3e9jS5/DL1ulxPyXMZyKsB+E94X835Gb
 AL4t123XQ2zxXc1JQ7jU5yLz78Bz4gd8CrNqtmCavGmjLXFEEZ0wqigs4BWl5xXms4SF
 l1kSeUL68yacqJxmXICoJfwTWSaGoEqIAGZFVx4/7JAMqw+XPkupa8QQr50LJKV0ydfH
 +UPqhEYD35/rYU9CYn4knmOv8LZ2s8dn6pHKinuNXHLhK3TXrawaWE/T6WkNikyKjJRU
 4KwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7pieDnEw7XexRSfOcC5t938V4PwFmYIdp3LSZsC7Nk8=;
 b=uWCPsqu97FgPlt7W2oy2SYXZDBAfirbKv060wp6BNy3vxAw8Qz0Faa30jgbIm2CbaV
 eitvAeAUOvzo0yfelVNn2JRCgzp6rkeVq+/h6pZlhwAWnz0HuK+MXpDVgVf3Ws0uNsrG
 oRXh39UdZZkWMUdMCPVqS/9BZSyxUvGgKkyS7ZhlK9weqF9mZZEcn1xW2hobeg4epCbP
 QHUu+aclbpJ5ep5AVI2tis/hiTrf6q57dLVQuegVivQIEYuaaOZlwATbJFEgh5Nk3q+2
 F8HH5kV1mw+sYN4yV3LdyjIvhDlAZL685Cvk4Snw4/nsEGrBhteI4ST8QCBjWfeiHW9T
 cyhA==
X-Gm-Message-State: APjAAAWGe/4H8IKFrcd6+at4v17fmAyCs1cRc7/pA+gV3j2QNKALayLw
 LOGeyTH9KSuZvYNxpwHzzsheCRkuDZWJ7vT/yP1wTQ==
X-Google-Smtp-Source: APXvYqxjhhDnVgjO+SgS9TAcycMvANIFXFWDUhuaJtSnkRomow72//GKwRuS0wEXJPIegLixrr1g4+9+m2goSxEoYiw=
X-Received: by 2002:a19:ed11:: with SMTP id y17mr8825708lfy.141.1567369008844; 
 Sun, 01 Sep 2019 13:16:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190831180402.10008-1-alexander.sverdlin@gmail.com>
In-Reply-To: <20190831180402.10008-1-alexander.sverdlin@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 1 Sep 2019 22:16:37 +0200
Message-ID: <CACRpkdaSwkRo2kWUMWNrtcLnT=2o5y9UThFZdmSD62pWairUxA@mail.gmail.com>
Subject: Re: [PATCH] spi: ep93xx: Repair SPI CS lookup tables
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_131652_005558_52100030 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Hartley Sweeten <hsweeten@visionengravers.com>,
 Russell King <linux@armlinux.org.uk>, stable <stable@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Lukasz Majewski <lukma@denx.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 31, 2019 at 8:05 PM Alexander Sverdlin
<alexander.sverdlin@gmail.com> wrote:

> The actual device name of the SPI controller being registered on EP93xx is
> "spi0" (as seen by gpiod_find_lookup_table()). This patch fixes all
> relevant lookup tables and the following failure (seen on EDB9302):
>
> ep93xx-spi ep93xx-spi.0: failed to register SPI master
> ep93xx-spi: probe of ep93xx-spi.0 failed with error -22
>
> Fixes: 1dfbf334f1236 ("spi: ep93xx: Convert to use CS GPIO descriptors")
> Cc: stable@vger.kernel.org
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>

Sorry for the mistakes and thanks for fixing, much appreciated!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
