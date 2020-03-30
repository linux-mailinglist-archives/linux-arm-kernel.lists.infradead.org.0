Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C5B197E98
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 16:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1mjShtTR97rlljuL4rROk1y/1KexgaKa2H17z0T3JQ=; b=Aw7EM/R1dE+CUc
	KOpc4BqMD04kVuLkokjG2/fmwmdkKuNiNjCwoi8x21dalWNuAkjwRB9LjBJKD/251KJm1G6FAL/kk
	Vjw6ZhzUPAusJBjJ5I5DsYS3lvUABl6COOfUojZPxo9RvQJTbi+ZBd+9mofaVke9P5aZHui4Vx+05
	B4+X5R+PTezlaYX1Rw649IgTgXeRGer8vD1LDjDvWB1tAPZaJn+XnEi8G+XAmcFELeFXC64ulZ/ft
	CxdIllx3jyNh2RCs8sEuCHKlLAD/lCp60kOskbeCa2CXtxXX12CS26yZ/czhyJPy3XvtDjXDPmm/q
	bd+KsuqXe6OtL4MSQShw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIvXD-0007tv-90; Mon, 30 Mar 2020 14:37:03 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvX0-0007o4-RY
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 14:36:53 +0000
Received: by mail-wm1-x341.google.com with SMTP id z18so20212493wmk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 07:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IGd71RkVWTsSZvNIxpN+UIltjHWvTcmReTwjtQy9No8=;
 b=rC6pUYMAWYDi5WjsE+4Dt9SWDeAxak8jRBt83N7DuZaSQjy5fxPp5JYaByAkWnyfSz
 HNg6oKN9FCWG4qQB5Z35kpgeppY3tRRpevJ2ZUYZHcZjdvSfLrhwiy3+/ayNCLK0Qdgi
 gg4Gcvc8z1uvls+6mbbcdbn2gTKgKHbc2IavbfO1JTh25Az68Jgb1EmAcvzY9Hyq7DVG
 DFvkl2VpSdUpwhkw+mjyZmNThj+cEp7a2i3rPnysJWBX1tW1hJHg/+8QFMLUzLhGJ1/a
 aDab/udGKSfrZKrCh1AsJnZmaS/fzaxzJ8J1iluTpojUpGatDCr0wVN0ERdkgQlive0U
 UUwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=IGd71RkVWTsSZvNIxpN+UIltjHWvTcmReTwjtQy9No8=;
 b=dZmGNxJOcGqqu4ot/GQTTKRZyf2XLxWrX2XQdEm8e7ONLX7/XiumJnz+SEDxdABhwU
 3HYaTrFXiV36rJnO3y1XhJhpt9VO6/ArqJhBd1qrnXFTsU9gkB/FNzgD5LkhELERj47w
 nVkYYfOHQg+eruYpNpmRp42zwvyiahfBtjfw5SWBds+0zrHGd+mFgMzokb0ljyoWE2qV
 /IcNZ++AKXvgq/jkzJZRPjis5SWYSrF8e6wJCNMt7qoPuJc5bxO3eR/JALxEPGSNcHnj
 WIwYRGamOF4oe7q4UJ/aeVqs1Q918hXhuPVtNUwcyTxIkKhkS/Va3CPqye539U55s5+J
 NihA==
X-Gm-Message-State: ANhLgQ3SgxT8PjeYsk7ieLjWi/DW/FAZqnIec5b+Vmul4bZlQvM52Jcd
 66eaAcculi72v8feVjZ5d7CdBw==
X-Google-Smtp-Source: ADFU+vvxUGImjM5JIy+I1eQfF1yk6XKGBxoLANg2YV3nDNFdsMlgaMC18p+bTmN19aUMrtIjrjmoYA==
X-Received: by 2002:a7b:c8d0:: with SMTP id f16mr13901627wml.50.1585579008501; 
 Mon, 30 Mar 2020 07:36:48 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2?
 ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id p13sm22285909wru.3.2020.03.30.07.36.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Mar 2020 07:36:47 -0700 (PDT)
Subject: Re: [PATCH resend] power: reset: introduce oxnas-restart
To: Daniel Golle <daniel@makrotopia.org>, linux-oxnas@groups.io,
 linux-arm-kernel@lists.infradead.org
References: <20200328225719.GA463417@makrotopia.org>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT7CwHsEEwEKACUC
 GyMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJXDO2CAhkBAAoJEBaat7Gkz/iubGIH/iyk
 RqvgB62oKOFlgOTYCMkYpm2aAOZZLf6VKHKc7DoVwuUkjHfIRXdslbrxi4pk5VKU6ZP9AKsN
 NtMZntB8WrBTtkAZfZbTF7850uwd3eU5cN/7N1Q6g0JQihE7w4GlIkEpQ8vwSg5W7hkx3yQ6
 2YzrUZh/b7QThXbNZ7xOeSEms014QXazx8+txR7jrGF3dYxBsCkotO/8DNtZ1R+aUvRfpKg5
 ZgABTC0LmAQnuUUf2PHcKFAHZo5KrdO+tyfL+LgTUXIXkK+tenkLsAJ0cagz1EZ5gntuheLD
 YJuzS4zN+1Asmb9kVKxhjSQOcIh6g2tw7vaYJgL/OzJtZi6JlIXOwU0EVid/pAEQAND7AFhr
 5faf/EhDP9FSgYd/zgmb7JOpFPje3uw7jz9wFb28Cf0Y3CcncdElYoBNbRlesKvjQRL8mozV
 9RN+IUMHdUx1akR/A4BPXNdL7StfzKWOCxZHVS+rIQ/fE3Qz/jRmT6t2ZkpplLxVBpdu95qJ
 YwSZjuwFXdC+A7MHtQXYi3UfCgKiflj4+/ITcKC6EF32KrmIRqamQwiRsDcUUKlAUjkCLcHL
 CQvNsDdm2cxdHxC32AVm3Je8VCsH7/qEPMQ+cEZk47HOR3+Ihfn1LEG5LfwsyWE8/JxsU2a1
 q44LQM2lcK/0AKAL20XDd7ERH/FCBKkNVzi+svYJpyvCZCnWT0TRb72mT+XxLWNwfHTeGALE
 +1As4jIS72IglvbtONxc2OIid3tR5rX3k2V0iud0P7Hnz/JTdfvSpVj55ZurOl2XAXUpGbq5
 XRk5CESFuLQV8oqCxgWAEgFyEapI4GwJsvfl/2Er8kLoucYO1Id4mz6N33+omPhaoXfHyLSy
 dxD+CzNJqN2GdavGtobdvv/2V0wukqj86iKF8toLG2/Fia3DxMaGUxqI7GMOuiGZjXPt/et/
 qeOySghdQ7Sdpu6fWc8CJXV2mOV6DrSzc6ZVB4SmvdoruBHWWOR6YnMz01ShFE49pPucyU1h
 Av4jC62El3pdCrDOnWNFMYbbon3vABEBAAHCwn4EGAECAAkFAlYnf6QCGwICKQkQFpq3saTP
 +K7BXSAEGQECAAYFAlYnf6QACgkQd9zb2sjISdGToxAAkOjSfGxp0ulgHboUAtmxaU3viucV
 e2Hl1BVDtKSKmbIVZmEUvx9D06IijFaEzqtKD34LXD6fjl4HIyDZvwfeaZCbJbO10j3k7FJE
 QrBtpdVqkJxme/nYlGOVzcOiKIepNkwvnHVnuVDVPcXyj2wqtsU7VZDDX41z3X4xTQwY3SO1
 9nRO+f+i4RmtJcITgregMa2PcB0LvrjJlWroI+KAKCzoTHzSTpCXMJ1U/dEqyc87bFBdc+DI
 k8mWkPxsccdbs4t+hH0NoE3Kal9xtAl56RCtO/KgBLAQ5M8oToJVatxAjO1SnRYVN1EaAwrR
 xkHdd97qw6nbg9BMcAoa2NMc0/9MeiaQfbgW6b0reIz/haHhXZ6oYSCl15Knkr4t1o3I2Bqr
 Mw623gdiTzotgtId8VfLB2Vsatj35OqIn5lVbi2ua6I0gkI6S7xJhqeyrfhDNgzTHdQVHB9/
 7jnM0ERXNy1Ket6aDWZWCvM59dTyu37g3VvYzGis8XzrX1oLBU/tTXqo1IFqqIAmvh7lI0Se
 gCrXz7UanxCwUbQBFjzGn6pooEHJYRLuVGLdBuoApl/I4dLqCZij2AGa4CFzrn9W0cwm3HCO
 lR43gFyz0dSkMwNUd195FrvfAz7Bjmmi19DnORKnQmlvGe/9xEEfr5zjey1N9+mt3//geDP6
 clwKBkq0JggA+RTEAELzkgPYKJ3NutoStUAKZGiLOFMpHY6KpItbbHjF2ZKIU1whaRYkHpB2
 uLQXOzZ0d7x60PUdhqG3VmFnzXSztA4vsnDKk7x2xw0pMSTKhMafpxaPQJf494/jGnwBHyi3
 h3QGG1RjfhQ/OMTX/HKtAUB2ct3Q8/jBfF0hS5GzT6dYtj0Ci7+8LUsB2VoayhNXMnaBfh+Q
 pAhaFfRZWTjUFIV4MpDdFDame7PB50s73gF/pfQbjw5Wxtes/0FnqydfId95s+eej+17ldGp
 lMv1ok7K0H/WJSdr7UwDAHEYU++p4RRTJP6DHWXcByVlpNQ4SSAiivmWiwOt490+Ac7ATQRN
 WQbPAQgAvIoM384ZRFocFXPCOBir5m2J+96R2tI2XxMgMfyDXGJwFilBNs+fpttJlt2995A8
 0JwPj8SFdm6FBcxygmxBBCc7i/BVQuY8aC0Z/w9Vzt3Eo561r6pSHr5JGHe8hwBQUcNPd/9l
 2ynP57YTSE9XaGJK8gIuTXWo7pzIkTXfN40Wh5jeCCspj4jNsWiYhljjIbrEj300g8RUT2U0
 FcEoiV7AjJWWQ5pi8lZJX6nmB0lc69Jw03V6mblgeZ/1oTZmOepkagwy2zLDXxihf0GowUif
 GphBDeP8elWBNK+ajl5rmpAMNRoKxpN/xR4NzBg62AjyIvigdywa1RehSTfccQARAQABwsBf
 BBgBAgAJBQJNWQbPAhsMAAoJEBaat7Gkz/iuteIH+wZuRDqK0ysAh+czshtG6JJlLW6eXJJR
 Vi7dIPpgFic2LcbkSlvB8E25Pcfz/+tW+04Urg4PxxFiTFdFCZO+prfd4Mge7/OvUcwoSub7
 ZIPo8726ZF5/xXzajahoIu9/hZ4iywWPAHRvprXaim5E/vKjcTeBMJIqZtS4u/UK3EpAX59R
 XVxVpM8zJPbk535ELUr6I5HQXnihQm8l6rt9TNuf8p2WEDxc8bPAZHLjNyw9a/CdeB97m2Tr
 zR8QplXA5kogS4kLe/7/JmlDMO8Zgm9vKLHSUeesLOrjdZ59EcjldNNBszRZQgEhwaarfz46
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <467de56a-5d82-ad4a-a681-88c0dedfa8eb@baylibre.com>
Date: Mon, 30 Mar 2020 16:36:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200328225719.GA463417@makrotopia.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_073650_950287_A426CE9E 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Sungbo Eo <mans0n@gorani.run>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/03/2020 23:57, Daniel Golle wrote:
> Add reboot handler for OXNAS OX820 chips as reboot currenly hangs on
> those boards. Code is based on ox820_assert_system_reset() found in
> https://github.com/kref/linux-oxnas/blob/master/arch/arm/mach-oxnas/mach-ox820.c#L181
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  drivers/power/reset/Kconfig         |   7 +
>  drivers/power/reset/Makefile        |   1 +
>  drivers/power/reset/oxnas-restart.c | 229 ++++++++++++++++++++++++++++
>  3 files changed, 237 insertions(+)
>  create mode 100644 drivers/power/reset/oxnas-restart.c
> 
> diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
> index 890380302080..6163c52e7eb4 100644
> --- a/drivers/power/reset/Kconfig
> +++ b/drivers/power/reset/Kconfig
> @@ -123,6 +123,13 @@ config POWER_RESET_OCELOT_RESET
>  	help
>  	  This driver supports restart for Microsemi Ocelot SoC.
>  
> +config POWER_RESET_OXNAS
> +	bool "OXNAS SoC restart driver"
> +	depends on ARCH_OXNAS
> +	default MACH_OX820
> +	help
> +	  Restart support for OXNAS OX820 boards.
> +
>  config POWER_RESET_PIIX4_POWEROFF
>  	tristate "Intel PIIX4 power-off driver"
>  	depends on PCI
> diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
> index da37f8b851dc..5710ca469517 100644
> --- a/drivers/power/reset/Makefile
> +++ b/drivers/power/reset/Makefile
> @@ -12,6 +12,7 @@ obj-$(CONFIG_POWER_RESET_GPIO_RESTART) += gpio-restart.o
>  obj-$(CONFIG_POWER_RESET_HISI) += hisi-reboot.o
>  obj-$(CONFIG_POWER_RESET_MSM) += msm-poweroff.o
>  obj-$(CONFIG_POWER_RESET_MT6323) += mt6323-poweroff.o
> +obj-$(CONFIG_POWER_RESET_OXNAS) += oxnas-restart.o
>  obj-$(CONFIG_POWER_RESET_QCOM_PON) += qcom-pon.o
>  obj-$(CONFIG_POWER_RESET_OCELOT_RESET) += ocelot-reset.o
>  obj-$(CONFIG_POWER_RESET_PIIX4_POWEROFF) += piix4-poweroff.o
> diff --git a/drivers/power/reset/oxnas-restart.c b/drivers/power/reset/oxnas-restart.c
> new file mode 100644
> index 000000000000..e0c126eae0f5
> --- /dev/null
> +++ b/drivers/power/reset/oxnas-restart.c
> @@ -0,0 +1,229 @@
> +// SPDX-License-Identifier: (GPL-2.0)
> +/*
> + * oxnas SoC reset driver
> + * based on:
> + * Microsemi MIPS SoC reset driver
> + * and ox820_assert_system_reset() written by Ma Hajun <mahaijuns@gmail.com>
> + *
> + * License: GPL

You can remove this line

> + * Copyright (c) 2013 Ma Hajun <mahaijuns@gmail.com>
> + * Copyright (c) 2017 Microsemi Corporation
> + * Copyright (c) 2019 Daniel Golle <daniel@makrotopia.org>
> + */
> +#include <linux/delay.h>
> +#include <linux/io.h>
> +#include <linux/notifier.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/of_address.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/reboot.h>
> +#include <linux/regmap.h>
> +
> +/* bit numbers of reset control register */
> +#define OX820_SYS_CTRL_RST_SCU                0
> +#define OX820_SYS_CTRL_RST_COPRO              1
> +#define OX820_SYS_CTRL_RST_ARM0               2
> +#define OX820_SYS_CTRL_RST_ARM1               3
> +#define OX820_SYS_CTRL_RST_USBHS              4
> +#define OX820_SYS_CTRL_RST_USBHSPHYA          5
> +#define OX820_SYS_CTRL_RST_MACA               6
> +#define OX820_SYS_CTRL_RST_MAC                OX820_SYS_CTRL_RST_MACA
> +#define OX820_SYS_CTRL_RST_PCIEA              7
> +#define OX820_SYS_CTRL_RST_SGDMA              8
> +#define OX820_SYS_CTRL_RST_CIPHER             9
> +#define OX820_SYS_CTRL_RST_DDR                10
> +#define OX820_SYS_CTRL_RST_SATA               11
> +#define OX820_SYS_CTRL_RST_SATA_LINK          12
> +#define OX820_SYS_CTRL_RST_SATA_PHY           13
> +#define OX820_SYS_CTRL_RST_PCIEPHY            14
> +#define OX820_SYS_CTRL_RST_STATIC             15
> +#define OX820_SYS_CTRL_RST_GPIO               16
> +#define OX820_SYS_CTRL_RST_UART1              17
> +#define OX820_SYS_CTRL_RST_UART2              18
> +#define OX820_SYS_CTRL_RST_MISC               19
> +#define OX820_SYS_CTRL_RST_I2S                20
> +#define OX820_SYS_CTRL_RST_SD                 21
> +#define OX820_SYS_CTRL_RST_MACB               22
> +#define OX820_SYS_CTRL_RST_PCIEB              23
> +#define OX820_SYS_CTRL_RST_VIDEO              24
> +#define OX820_SYS_CTRL_RST_DDR_PHY            25
> +#define OX820_SYS_CTRL_RST_USBHSPHYB          26
> +#define OX820_SYS_CTRL_RST_USBDEV             27
> +#define OX820_SYS_CTRL_RST_ARMDBG             29
> +#define OX820_SYS_CTRL_RST_PLLA               30
> +#define OX820_SYS_CTRL_RST_PLLB               31
> +
> +/* bit numbers of clock control register */
> +#define OX820_SYS_CTRL_CLK_COPRO              0
> +#define OX820_SYS_CTRL_CLK_DMA                1
> +#define OX820_SYS_CTRL_CLK_CIPHER             2
> +#define OX820_SYS_CTRL_CLK_SD                 3
> +#define OX820_SYS_CTRL_CLK_SATA               4
> +#define OX820_SYS_CTRL_CLK_I2S                5
> +#define OX820_SYS_CTRL_CLK_USBHS              6
> +#define OX820_SYS_CTRL_CLK_MACA               7
> +#define OX820_SYS_CTRL_CLK_MAC                OX820_SYS_CTRL_CLK_MACA
> +#define OX820_SYS_CTRL_CLK_PCIEA              8
> +#define OX820_SYS_CTRL_CLK_STATIC             9
> +#define OX820_SYS_CTRL_CLK_MACB               10
> +#define OX820_SYS_CTRL_CLK_PCIEB              11
> +#define OX820_SYS_CTRL_CLK_REF600             12
> +#define OX820_SYS_CTRL_CLK_USBDEV             13
> +#define OX820_SYS_CTRL_CLK_DDR                14
> +#define OX820_SYS_CTRL_CLK_DDRPHY             15
> +#define OX820_SYS_CTRL_CLK_DDRCK              16
> +
> +/* Regmap offsets */
> +#define OX820_CLK_SET_REGOFFSET               0x2c
> +#define OX820_CLK_CLR_REGOFFSET               0x30
> +#define OX820_RST_SET_REGOFFSET               0x34
> +#define OX820_RST_CLR_REGOFFSET               0x38
> +#define OX820_SECONDARY_SEL_REGOFFSET         0x14
> +#define OX820_TERTIARY_SEL_REGOFFSET          0x8c
> +#define OX820_QUATERNARY_SEL_REGOFFSET        0x94
> +#define OX820_DEBUG_SEL_REGOFFSET             0x9c
> +#define OX820_ALTERNATIVE_SEL_REGOFFSET       0xa4
> +#define OX820_PULLUP_SEL_REGOFFSET            0xac
> +#define OX820_SEC_SECONDARY_SEL_REGOFFSET     0x100014
> +#define OX820_SEC_TERTIARY_SEL_REGOFFSET      0x10008c
> +#define OX820_SEC_QUATERNARY_SEL_REGOFFSET    0x100094
> +#define OX820_SEC_DEBUG_SEL_REGOFFSET         0x10009c
> +#define OX820_SEC_ALTERNATIVE_SEL_REGOFFSET   0x1000a4
> +#define OX820_SEC_PULLUP_SEL_REGOFFSET        0x1000ac
> +
> +

Use a single empty line

> +struct oxnas_restart_context {
> +	struct regmap *sys_ctrl;
> +	struct notifier_block restart_handler;
> +};
> +
> +static int ox820_restart_handle(struct notifier_block *this,
> +				 unsigned long mode, void *cmd)
> +{
> +	struct oxnas_restart_context *ctx = container_of(this, struct
> +							oxnas_restart_context,
> +							restart_handler);
> +	u32 value;
> +
> +	/* Assert reset to cores as per power on defaults
> +	 * Don't touch the DDR interface as things will come to an impromptu stop

This line is >80 chars

> +	 * NB Possibly should be asserting reset for PLLB, but there are timing
> +	 *    concerns here according to the docs */

Multiline comment should be:

/*
 * blah blah
 */

> +	value = BIT(OX820_SYS_CTRL_RST_COPRO)		|
> +		BIT(OX820_SYS_CTRL_RST_USBHS)		|
> +		BIT(OX820_SYS_CTRL_RST_USBHSPHYA)	|
> +		BIT(OX820_SYS_CTRL_RST_MACA)		|
> +		BIT(OX820_SYS_CTRL_RST_PCIEA)		|
> +		BIT(OX820_SYS_CTRL_RST_SGDMA)		|
> +		BIT(OX820_SYS_CTRL_RST_CIPHER)		|
> +		BIT(OX820_SYS_CTRL_RST_SATA)		|
> +		BIT(OX820_SYS_CTRL_RST_SATA_LINK)	|
> +		BIT(OX820_SYS_CTRL_RST_SATA_PHY)	|
> +		BIT(OX820_SYS_CTRL_RST_PCIEPHY)		|
> +		BIT(OX820_SYS_CTRL_RST_STATIC)		|
> +		BIT(OX820_SYS_CTRL_RST_UART1)		|
> +		BIT(OX820_SYS_CTRL_RST_UART2)		|
> +		BIT(OX820_SYS_CTRL_RST_MISC)		|
> +		BIT(OX820_SYS_CTRL_RST_I2S)		|
> +		BIT(OX820_SYS_CTRL_RST_SD)		|
> +		BIT(OX820_SYS_CTRL_RST_MACB)		|
> +		BIT(OX820_SYS_CTRL_RST_PCIEB)		|
> +		BIT(OX820_SYS_CTRL_RST_VIDEO)		|
> +		BIT(OX820_SYS_CTRL_RST_USBHSPHYB)	|
> +		BIT(OX820_SYS_CTRL_RST_USBDEV);
> +
> +	regmap_write(ctx->sys_ctrl, OX820_RST_SET_REGOFFSET, value);
> +
> +	/* Release reset to cores as per power on defaults */
> +	regmap_write(ctx->sys_ctrl, OX820_RST_CLR_REGOFFSET, BIT(OX820_SYS_CTRL_RST_GPIO));


This line is >80 chars

> +
> +	/* Disable clocks to cores as per power-on defaults - must leave DDR
> +	 * related clocks enabled otherwise we'll stop rather abruptly. */

Multiline comment should be:

/*
 * blah blah
 */

> +	value =
> +		BIT(OX820_SYS_CTRL_CLK_COPRO)		|
> +		BIT(OX820_SYS_CTRL_CLK_DMA)		|
> +		BIT(OX820_SYS_CTRL_CLK_CIPHER)		|
> +		BIT(OX820_SYS_CTRL_CLK_SD)		|
> +		BIT(OX820_SYS_CTRL_CLK_SATA)		|
> +		BIT(OX820_SYS_CTRL_CLK_I2S)		|
> +		BIT(OX820_SYS_CTRL_CLK_USBHS)		|
> +		BIT(OX820_SYS_CTRL_CLK_MAC)		|
> +		BIT(OX820_SYS_CTRL_CLK_PCIEA)		|
> +		BIT(OX820_SYS_CTRL_CLK_STATIC)		|
> +		BIT(OX820_SYS_CTRL_CLK_MACB)		|
> +		BIT(OX820_SYS_CTRL_CLK_PCIEB)		|
> +		BIT(OX820_SYS_CTRL_CLK_REF600)		|
> +		BIT(OX820_SYS_CTRL_CLK_USBDEV);
> +
> +	regmap_write(ctx->sys_ctrl, OX820_CLK_CLR_REGOFFSET, value);
> +
> +	/* Enable clocks to cores as per power-on defaults */
> +
> +	/* Set sys-control pin mux'ing as per power-on defaults */
> +	regmap_write(ctx->sys_ctrl, OX820_SECONDARY_SEL_REGOFFSET, 0);
> +	regmap_write(ctx->sys_ctrl, OX820_TERTIARY_SEL_REGOFFSET, 0);
> +	regmap_write(ctx->sys_ctrl, OX820_QUATERNARY_SEL_REGOFFSET, 0);
> +	regmap_write(ctx->sys_ctrl, OX820_DEBUG_SEL_REGOFFSET, 0);
> +	regmap_write(ctx->sys_ctrl, OX820_ALTERNATIVE_SEL_REGOFFSET, 0);
> +	regmap_write(ctx->sys_ctrl, OX820_PULLUP_SEL_REGOFFSET, 0);
> +
> +	regmap_write(ctx->sys_ctrl, OX820_SEC_SECONDARY_SEL_REGOFFSET, 0);
> +	regmap_write(ctx->sys_ctrl, OX820_SEC_TERTIARY_SEL_REGOFFSET, 0);
> +	regmap_write(ctx->sys_ctrl, OX820_SEC_QUATERNARY_SEL_REGOFFSET, 0);
> +	regmap_write(ctx->sys_ctrl, OX820_SEC_DEBUG_SEL_REGOFFSET, 0);
> +	regmap_write(ctx->sys_ctrl, OX820_SEC_ALTERNATIVE_SEL_REGOFFSET, 0);
> +	regmap_write(ctx->sys_ctrl, OX820_SEC_PULLUP_SEL_REGOFFSET, 0);
> +
> +	/* No need to save any state, as the ROM loader can determine whether
> +	 * reset is due to power cycling or programatic action, just hit the
> +	 * (self-clearing) CPU reset bit of the block reset register */

Multiline comment should be:

/*
 * blah blah
 */
> +	value =
> +		BIT(OX820_SYS_CTRL_RST_SCU) |
> +		BIT(OX820_SYS_CTRL_RST_ARM0) |
> +		BIT(OX820_SYS_CTRL_RST_ARM1);
> +
> +	regmap_write(ctx->sys_ctrl, OX820_RST_SET_REGOFFSET, value);
> +
> +	pr_emerg("Unable to restart system\n");
> +	return NOTIFY_DONE;
> +}
> +
> +static int ox820_restart_probe(struct platform_device *pdev)
> +{
> +	struct oxnas_restart_context *ctx;
> +	struct regmap *sys_ctrl;
> +	struct device *dev = &pdev->dev;
> +	int err = 0;
> +
> +	sys_ctrl = syscon_node_to_regmap(pdev->dev.of_node);
> +	if (IS_ERR(sys_ctrl))
> +		return PTR_ERR(sys_ctrl);
> +
> +	ctx = devm_kzalloc(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
> +	if (!ctx)
> +		return -ENOMEM;
> +
> +	ctx->sys_ctrl = sys_ctrl;
> +	ctx->restart_handler.notifier_call = ox820_restart_handle;
> +	ctx->restart_handler.priority = 192;
> +	err = register_restart_handler(&ctx->restart_handler);
> +	if (err)
> +		dev_err(dev, "can't register restart notifier (err=%d)\n", err);
> +
> +	return err;
> +}
> +
> +static const struct of_device_id ox820_restart_of_match[] = {
> +	{ .compatible = "oxsemi,ox820-sys-ctrl" },
> +	{}
> +};
> +
> +static struct platform_driver ox820_restart_driver = {
> +	.probe = ox820_restart_probe,
> +	.driver = {
> +		.name = "ox820-chip-reset",
> +		.of_match_table = ox820_restart_of_match,
> +	},
> +};
> +builtin_platform_driver(ox820_restart_driver);
> 

With these fixed:
Acked-by: Neil Armstrong <narmstrong@baylibre.com>

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
