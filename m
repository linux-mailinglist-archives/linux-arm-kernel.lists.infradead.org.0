Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A25944A7AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 18:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVW3xWg8qXlJ+OYX+hmOwtLvStHJXvaiRkk0dEmTymE=; b=RPJZ89LE+ZlJtA
	LJunWPwcwNqldJ2wq/PmweCFvAnwJzUufdkqzgW4ZG7k4rjmeO0IpZKHiaC3kzBfnTFjsIh4YSADW
	J9G9RUXbgnPZAyytkr7cXdvI3HjNG1h4hvfVoh6vi07VFFUHi/kZFcRAIFNa3UPlU+09nERw16+rQ
	VJsFNhiaobNTnOpGbbMEsMCA0va/98nyx6dMDDN2wTYjSRLqiB0YhgeTP14v/VedfG40cIUgH3KKk
	5qaQ9ZU+zMI5WiixUwd1yy0Wa1dI7uMxHOHxlp41L+/gM8CYfZ5mk4RusqIMqnSQsy4Xm90rfwT99
	6Zcds/Ff49ix1477sTSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdHMK-0001Df-V8; Tue, 18 Jun 2019 16:53:25 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdHM5-0001Cp-RF
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 16:53:11 +0000
Received: by mail-pf1-x441.google.com with SMTP id d126so8001636pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 09:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=IqqtXsFGosoxNpPkm5wyCgfinoqyhByKBZjMuz4MB0I=;
 b=bg323twPxByid8peFGN7CaP7DYTzxD48CEFt6vzKFLuZr27ZPVeYR9aqapgK/NZyMX
 VwWDxuPluBaWMti4Db1jhMO8vU/6BpjUYDcDWPDqPIvC8V72JIX4y5qjBmafMOwLeDC+
 ex3OfhlOOmJs9zSa/1f/dp42YA8jMBbipGqeaijIyJMFO3zPZKzEYTlm6JJQaYMvayp0
 YcOwru57r9aSI06mvYdo4y0QlmqTtTz7ltIdOozdK1wEgu14p/fq2LSvG9qOBut3BD8o
 fU4dXkm9gaS6lKhpmdzsnMcIDNm+U2NyMlAqoMSX6bh2OonBDJ48eTnIkbyGgA+1Ugg+
 5hAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=IqqtXsFGosoxNpPkm5wyCgfinoqyhByKBZjMuz4MB0I=;
 b=P6VLGHfFKpZhF7EISkdU9ZgtkEZoIhcJ+wEOt7iUbPvGkrSCHApXtLc7elYMue9B+i
 KRQwh/Qpl8K8fPIIEP2GJzfU3s+0EiEIHhz4DxWoV7y6ldUziSwBfIZNmYWTI0PaEoUB
 WCIPmZge3XQXV4suhh46zTFxRmtjA6jx8GmqyHf5VeuVHqYubOe0gmPKKKnszPfSJtMC
 MifEJn9Kcc4dTbRiO7VPpn4/o3uEEa+toR++csxVVBVyjXrfZNNH3NLBZgM/YpxYt6hj
 ex1lz8KVOH85YLrMZkGJkpqVhGW45xJNJILWNEcWnRSIMwR6jFmumc9awQ/EtHpH+IIJ
 p+Sw==
X-Gm-Message-State: APjAAAVlIsZ99cs8DpjJ4HVSctB3O2ADTYJO4o7/5MQd+TU664nCPlzt
 IgMDBTTRrDPQ3DZhGLatl/UWhA==
X-Google-Smtp-Source: APXvYqza2rYN7tr43Lk9Mo1yoxZIdHHve48RruCrOAFPMAW78pCSNW6feYT0xc+hh4kEhI6LzewVVA==
X-Received: by 2002:a63:4a1f:: with SMTP id x31mr3594318pga.150.1560876788415; 
 Tue, 18 Jun 2019 09:53:08 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152]) by smtp.googlemail.com with ESMTPSA id
 a11sm15966693pff.128.2019.06.18.09.53.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Jun 2019 09:53:07 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: "kernelci.org bot" <bot@kernelci.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 "David S. Miller" <davem@davemloft.net>, tomeu.vizoso@collabora.com,
 guillaume.tucker@collabora.com, mgalka@collabora.com, broonie@kernel.org,
 matthew.hart@linaro.org, enric.balletbo@collabora.com
Subject: Re: next/master boot bisection: next-20190617 on
 sun8i-h2-plus-orangepi-zero
In-Reply-To: <5d089fb6.1c69fb81.4f92.9134@mx.google.com>
References: <5d089fb6.1c69fb81.4f92.9134@mx.google.com>
Date: Tue, 18 Jun 2019 09:53:07 -0700
Message-ID: <7hr27qdedo.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_095309_925411_20D5AA1F 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Alexandre Torgue <alexandre.torgue@st.com>,
 "kernelci.org bot" <bot@kernelci.org>, netdev@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"kernelci.org bot" <bot@kernelci.org> writes:

> next/master boot bisection: next-20190617 on sun8i-h2-plus-orangepi-zero
>
> Summary:
>   Start:      a125097c8410 Add linux-next specific files for 20190617
>   Details:    https://kernelci.org/boot/id/5d07987659b51412add51503
>   Plain log:  https://storage.kernelci.org//next/master/next-20190617/arm/multi_v7_defconfig/gcc-8/lab-baylibre/boot-sun8i-h2-plus-orangepi-zero.txt
>   HTML log:   https://storage.kernelci.org//next/master/next-20190617/arm/multi_v7_defconfig/gcc-8/lab-baylibre/boot-sun8i-h2-plus-orangepi-zero.html
>   Result:     ce4ab73ab0c2 net: stmmac: drop the reset delays from struct stmmac_mdio_bus_data
>
> Checks:
>   revert:     PASS
>   verify:     PASS
>
> Parameters:
>   Tree:       next
>   URL:        git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>   Branch:     master
>   Target:     sun8i-h2-plus-orangepi-zero
>   CPU arch:   arm
>   Lab:        lab-baylibre
>   Compiler:   gcc-8
>   Config:     multi_v7_defconfig
>   Test suite: boot
>
> Breaking commit found:
>
> -------------------------------------------------------------------------------
> commit ce4ab73ab0c27c6a3853695aa8ec0f453c6329cd
> Author: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Date:   Sat Jun 15 12:09:31 2019 +0200
>
>     net: stmmac: drop the reset delays from struct stmmac_mdio_bus_data
>     
>     Only OF platforms use the reset delays and these delays are only read in
>     stmmac_mdio_reset(). Move them from struct stmmac_mdio_bus_data to a
>     stack variable inside stmmac_mdio_reset() because that's the only usage
>     of these delays.
>     
>     Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>     Signed-off-by: David S. Miller <davem@davemloft.net>

This seems to have broken on several sunxi SoCs, but also a MIPS SoC
(pistachio_marduk):

https://storage.kernelci.org/next/master/next-20190618/mips/pistachio_defconfig/gcc-8/lab-baylibre-seattle/boot-pistachio_marduk.html

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
