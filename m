Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9877080284
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 00:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQpZ5MP6MfQgCQrELK0EbPt8IRKv7zPl+GywQnAJgVg=; b=EaJFkMcV7mDvm+
	btIxDaqSxOosNcg0tMEx4Gs3eiXQNmldita4eNwAJIMw/kr5XPTEceh2ux0c19QqGuQr5Q9erE2YV
	b8P/mBtFC1+KAU2GfunOFNxOs0XEbbJIon+cWiGyb5fRcKm2OyDwI4+HuZnuw2p68WZMosGNzjz7D
	Yr9oZColSuGoO0PV03mH2PpaEq4y3J8NdWP0d7MAhMyoxZsEgVVpc3P7LYvJAeGpNPsUZJkFnGQXO
	mas8jooKHhhQDiXa0AtZax43r2av90Cl02giscOrxY55WxlbdMXa3RIs4Hh2KM4hnEAknF+M8PeEP
	eaE/7ojip5Wk1WtpLLMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htfgT-0004fR-EV; Fri, 02 Aug 2019 22:05:57 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htfgI-0004ef-MR
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 22:05:48 +0000
Received: by mail-lf1-x143.google.com with SMTP id x3so179222lfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 15:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xrfzf1n6CyGQsoKM/rCIg+1mXwfgdsAcDyoW9rc/jvc=;
 b=oINPPoLRRQcr5XR6l2Wf7v6WIsirZ/WlZDIth/098AeUwMcpWle11uuEzn5u++Abbw
 p84ACyxXswGQ+FjzOB2FEtYiAXvXPDGrmA7TGNO/4FZk3NOb/tlU0wGB6+spYDD0o9cc
 7aOwsb8w4MsnqP8UhzAHfn0sOuOzxyavUozEHSK95nP+lwSVlmLrBlj2jJl0piBSz6v1
 Od1qTtTUJVnRojTH++c95VRBTXoURi54Q4E6FZPnbt8ufrH1xT6sQLk9sSzMXL7v6kRP
 PFao7Q+upi7wRhQrrUMu8OLSOsZo/OpWjIqoAogGDjPHUBZXxrJtTPitOl71lBBmcbJH
 OcGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xrfzf1n6CyGQsoKM/rCIg+1mXwfgdsAcDyoW9rc/jvc=;
 b=m7U4nBTtlXYzKd7AfQE37T/7pnyhgxRmkeD/HAgmsZO22x8rKEMm2cnWlyyaGZRWxh
 Ib6dJ6WxzpaO/t2d/yd0WLk0vy6Yanct4sgSokf0ftfDasZr/e1hCrlm9v4f7EKGWMhZ
 VMODhwFyiNqJwG1SBU1vFJ88z6JWqT8h1rLcHGZpaUK/G7PFT4BqyH3uTA3Ks+DCjjYA
 Sl98cUSutWjwZbAlJpvoXh0EpJjwp8VpKMvbpljX7seM8AEmo4S2MnimOPnOjPVH8OcB
 tH8TeL844FBV3pAP2ug9GW0xw6qCf28OFBRDJfz68lG4QWi2knXeUVG9+6/2vMhGToyX
 dnfw==
X-Gm-Message-State: APjAAAW1sQWG/AqB9e2Uj7IMT36PRj+LqMxcf4QqdpEt1OSWxF8l/wO9
 uhoy32CVo1uYztCsipc91glpyyFSUFzEpI2nG6lKWw==
X-Google-Smtp-Source: APXvYqzoOiwul8C85ZTIP011ZzYUrkJi1o0HbjmU+2dpaiIqY1XtOuG1Nk7g3pTSmq00Z1/FVLYmGNc4qRgmJ8p+TIA=
X-Received: by 2002:ac2:4891:: with SMTP id x17mr67452003lfc.60.1564783541865; 
 Fri, 02 Aug 2019 15:05:41 -0700 (PDT)
MIME-Version: 1.0
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
 <1563393026-17118-11-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1563393026-17118-11-git-send-email-wahrenst@gmx.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 3 Aug 2019 00:05:30 +0200
Message-ID: <CACRpkdaN-8e9vNn_Q=6TBwUZnfDwaha3Lad-z9ycLykpPusmTQ@mail.gmail.com>
Subject: Re: [PATCH RFC 10/18] pinctrl: bcm2835: bcm7211: Add support for 7211
 pull-up functionality
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_150546_799709_2F244531 
X-CRM114-Status: GOOD (  24.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Michael Turquette <mturquette@baylibre.com>, Al Cooper <alcooperx@gmail.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Mark Brown <broonie@kernel.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan!

Thanks for your patch!

On Wed, Jul 17, 2019 at 9:50 PM Stefan Wahren <wahrenst@gmx.net> wrote:

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

(...)
>  /* argument: bcm2835_pinconf_pull */
>  #define BCM2835_PINCONF_PARAM_PULL     (PIN_CONFIG_END + 1)

Why this derivative of PULL?

What do you need that these standard configs and their parameters
doesn't already cover:

 * @PIN_CONFIG_BIAS_PULL_DOWN: the pin will be pulled down (usually with high
 *      impedance to GROUND). If the argument is != 0 pull-down is enabled,
 *      if it is 0, pull-down is total, i.e. the pin is connected to GROUND.
(...)
 * @PIN_CONFIG_BIAS_PULL_UP: the pin will be pulled up (usually with high
 *      impedance to VDD). If the argument is != 0 pull-up is enabled,
 *      if it is 0, pull-up is total, i.e. the pin is connected to VDD.

The argument isn't really defined but at one time I thought it should be
in ohms, but proprietary values are possible I guess.

 +static int bcm7211_pinconf_set(struct pinctrl_dev *pctldev,
> +                              unsigned int pin, unsigned long *configs,
> +                              unsigned int num_configs)
> +{
(...)
> +       for (i = 0; i < num_configs; i++) {
> +               param = pinconf_to_config_param(configs[i]);
> +               if (param != BCM2835_PINCONF_PARAM_PULL)
> +                       return -EINVAL;

This seems unnecessary, like some "hello I am here with magic value" instead
of just using the standard pull up/down configs and some ohm or custom
value.

> +               arg = pinconf_to_config_argument(configs[i]);
> +
> +               /* convert to 7211 value */
> +               switch (arg) {
> +               case PIN_CONFIG_BIAS_DISABLE:
> +                       arg = BCM7211_PINCONFIG_PULL_NONE;
> +                       break;
> +               case PIN_CONFIG_BIAS_PULL_DOWN:
> +                       arg = BCM7211_PINCONFIG_PULL_DOWN;
> +                       break;
> +               case PIN_CONFIG_BIAS_PULL_UP:
> +                       arg = BCM7211_PINCONFIG_PULL_UP;
> +                       break;
> +               }

This switch is fine, but lose the arg translation and just use the arg
as-is, I don't see the point.

The interpretation is anyway clear from:

> +               .compatible = "brcm,bcm7211-gpio",
> +               .data = &bcm7211_pinconf_ops,

This compatible string, and the variant of SoC is what you should
store in your state container instead of custom arguments, like

> +       match = of_match_node(bcm2835_pinctrl_match, pdev->dev.of_node);
> +       if (match) {
> +               bcm2835_pinctrl_desc.confops =
> +                       (const struct pinconf_ops *)match->data;
> +       }

Instead of storing the confops in the .data store just an enum for the SoC
and make the code adapt to which SoC it is. Storing different ops may make
sense but it seems to just be adding kludges here in the argument to
work around that later on the driver doesn't know which SoC it is
running on.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
