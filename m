Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C111B1C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 10:15:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFEukB9rc1GDeKG+engr/T4Xv2oKhw82MS/SHQJuu74=; b=PeKWGp68erFtfW
	neAqnAsuhdiMAh5YJQMBhLXRtXek54T+VWIAlHKWVw2Spw13NqWfgqOMgy2+v2+MKE7IGNO/I0wiH
	zYJsXu8/SH/HMSYDTTTJQf1yltu7MoyPYRn6+sgZGzhTqYPAQ1Frooh4Ahf58mhsMRGC7dHjtDFr4
	FUVZOVDKU6iY8qoJUKEgMnBdZ9zZRfrGFcKUK8Jv0xp9IF1OHATWOvqtoRO1o1bjBHUCjTySGXWxy
	fMKrb4M9rTTyz9CFBG/+JmfFVrM/tfYGsk1AWDYFbuML8ko2sNCL24W1WeLoI5n7ijjKjpAse3eX2
	yRJYsvBj9JnkmuAR36qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ67V-0004jK-IK; Mon, 13 May 2019 08:15:37 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ67N-0004iX-G7; Mon, 13 May 2019 08:15:31 +0000
Received: from [192.168.178.187] ([109.104.33.66]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MJn4B-1h66Hp0HGb-00K6ce; Mon, 13 May 2019 10:14:56 +0200
Subject: Re: [PATCH 3/3] pinctrl: bcm2835: bcm7211: Add support for 7211
 pull-up functionality
To: Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org
References: <20190509205955.27842-1-f.fainelli@gmail.com>
 <20190509205955.27842-4-f.fainelli@gmail.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <eb73a935-3638-e7b5-c85e-7857d61a7511@i2se.com>
Date: Mon, 13 May 2019 10:14:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190509205955.27842-4-f.fainelli@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:JTDUvpLHa55zi/Dt55qLS5DnQOpaKejjGcxYKJuoM3QMrg+B7VB
 Ju+vfuIH5aKRFYZw3Uv4K6D3655pRM1/ONqdhNQTFDyvu9HM1JoT34nKKiD5Hi6qOKcd7Ea
 D+HXoXJxGz0ZIUstZGYcUjC0U25iBgls+nm+kfvMqGbENikB+9ieM+pDQ+Z6gDUdTyX0hle
 DeQgMZt6X6SlwI8J3KFmQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Gw7Ftq56uJE=:92NT/03PgfE3f83odq3HvL
 dpxhCqrSNO7BiiIC7zrVKWY3Cn1vSQvVudmD24jW/ejbGXwCpqgG+yEsIQ3Q7oE4fin7aUjsd
 OBFK0ETfwUfzQ3XH8X4BLEC2UIzm/IUbRZZPRk2khHXAgDa2T8Vxlby897F0mfTcYH33SDSTt
 zlffYsv8CF8lOmeLDPL1u3zm663HbKLDKEp27yc2Ypz835O8A9ADNBzMmHRjcZiCAHzQrkZgf
 QseOxHcW5Wcc2oYLFgnBqR4V5Nrv/yuH/2MpmjAr7h2IgOkABPWEp9XqMb6Tb9SijqLYv/svX
 waOlE6thf453fwxYdACkHDYGmplXopB/66ytGOVvd/+VqDNUjgaRjNJ841sJg8KZ0G3YcZwlF
 fDKv2EVVJLnS9uJ9NZVUX08H+EgFM0QmqDdYzjrMrSrTQu96zVwuu9WPfpp+Az7XgAPVn2d4y
 iJsItBTET3Uzi3fvzKM/JreNrON9bbhEsJrdBh6bws14jyarfegmUBkZKQHB8F2bT9aIV0V+9
 WwMa4COsyZIXojuELWY6i73eSvJT3gHI1pCqXqLVanfPfYS1E6h1OipKAL4akrEQrwMhCZEpf
 UEbdpNY3CEzdcYwKGVMqUnHex+7tWJvAdOFh5c9fyRUSiO1SUkHbNLyfnIMQQ9xHAY7o6xi0B
 l0NXjJeFt37NWgGmfE5XqYqU7ZBHJP0sTFpRoeZIov66r+DSPgCOiRnkO8U8ssGLUhhaFaB1f
 0DIBAf5L21lAwyKKKEqOoY6XdqNXeUzooClAbqx0+pCrwRnFPIiEklJm76c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_011529_839741_79D56341 
X-CRM114-Status: GOOD (  21.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Doug Berger <opendmb@gmail.com>,
 Scott Branden <sbranden@broadcom.com>,
 Matheus Castello <matheus@castello.eng.br>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>, Al Cooper <alcooperx@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Lukas Wunner <lukas@wunner.de>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

On 09.05.19 22:59, Florian Fainelli wrote:
> From: Al Cooper <alcooperx@gmail.com>
>
> The 7211 has a new way of selecting the pull-up/pull-down setting
> for a GPIO pin. The registers used for the bcm2837, GP_PUD and
> GP_PUDCLKn0, are no longer connected. A new set of registers,
> GP_GPIO_PUP_PDN_CNTRL_REGx must be used. This commit will add
> a new compatible string "brcm,bcm7211-gpio" and the kernel
> driver will use it to select which method is used to select
> pull-up/pull-down.
>
> Signed-off-by: Al Cooper <alcooperx@gmail.com>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  drivers/pinctrl/bcm/pinctrl-bcm2835.c | 85 +++++++++++++++++++++++++--
>  1 file changed, 80 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
> index 183d1ffe6a75..35d9f9593000 100644
> --- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
> +++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
> @@ -57,15 +57,26 @@
>  #define GPAFEN0		0x88	/* Pin Async Falling Edge Detect */
>  #define GPPUD		0x94	/* Pin Pull-up/down Enable */
>  #define GPPUDCLK0	0x98	/* Pin Pull-up/down Enable Clock */
> +#define GP_GPIO_PUP_PDN_CNTRL_REG0 0xe4 /* 7211 Pin Pull-up/down select */
>  
>  #define FSEL_REG(p)		(GPFSEL0 + (((p) / 10) * 4))
>  #define FSEL_SHIFT(p)		(((p) % 10) * 3)
>  #define GPIO_REG_OFFSET(p)	((p) / 32)
>  #define GPIO_REG_SHIFT(p)	((p) % 32)
>  
> +#define PUD_7211_MASK		0x3
> +#define PUD_7211_REG_OFFSET(p)	((p) / 16)
> +#define PUD_7211_REG_SHIFT(p)	(((p) % 16) * 2)
> +
>  /* argument: bcm2835_pinconf_pull */
>  #define BCM2835_PINCONF_PARAM_PULL	(PIN_CONFIG_END + 1)
>  
> +enum bcm7211_pinconf_pull {
> +	BCM7211_PINCONFIG_PULL_NONE,
> +	BCM7211_PINCONFIG_PULL_UP,
> +	BCM7211_PINCONFIG_PULL_DOWN,
> +};

unfortunately this not usable for DTS files.

Please look at:
include/dt-bindings/pinctrl/bcm2835.h

Btw the meaning between BCM2835 and BCM7211 of pull down and up is
different :(


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
