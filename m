Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 050A61ABB52
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QGlsg3s9BJneEx/wUY1NOIdWSk6J5l73Ab35YLsX/fU=; b=fVQEw6U9ZncBdO
	FHWaM/V9SL3EZKm1wnM573rsKVJG/03L0t8djBxUSonIfSKg4wH6mZzoSdi9ruWvCcmc39f5iFvRs
	XgkLgNz9l/FYt7E3u5yna76Ob5eEeAXemiY5g/Z2N6Sl8DqaAhHATEqFKFyhtENbrsIiAxhOLMenl
	dBcpDc0oQA/16bM8Ox3RS/EYTwVaLUW52yz8ZK7uk1jEDC37yTouAnI4zyYbZL5ZIkyOKs7AFxZBd
	ue+2NNAY7hc88s3b0TOc7D/VYR3ksk8GwT4J2s0VOCbpRFL2i4OMD3YEBf98AQ7TEjL3+Y4peQUxg
	8GbwDn/EDu0NddVRSLJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOzyy-0004TA-3k; Thu, 16 Apr 2020 08:34:48 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOzym-0004Sk-Eb
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 08:34:37 +0000
Received: by mail-lj1-x243.google.com with SMTP id j3so6424667ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 01:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MyKtvenZZySMWZjgRLJbDJOPHGIrfVrSPfr0WfI/VtA=;
 b=fYkiVyjy7eOsJYWlAiTayzWjGkE+e1mUldI0Bx/CxoO/uRzO5h5zkKeWvLWyT4wIVq
 y4Um/zqK1i/EUxtP/cB7m2yiCfOAVbucsbSvm9uAIBdUy5w/NyEgZas2SerPH26kjihk
 NJ5qrlR6KCeUheLOqsfKpP2vrUVQYBdC/lh6Iy4lvDXzlo9F10OICHSA8GRZxV9vIwgG
 g+fgaQUuLBOTvaOt4crwBP5OOZe7ophOecfwpbiaskT4jEC1w1TFXKcnvnYX+N2JBeWE
 dUyc5WtmVr5a+KeD8IdGTWSudzyYEY/vdzcMmFi1Gbr8mYPVC1ncjFXy4g01wQx0gT9E
 vWBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MyKtvenZZySMWZjgRLJbDJOPHGIrfVrSPfr0WfI/VtA=;
 b=i3zP8oK2MJiFk+eAakDeqpjsoEvUcKphKmFaoxgKCtE5dVi7wEJp00XjEOFE1XM3WF
 JvN8dnIx0tcpYc7I1reKQ/PmI0v6rcmT1qkiOkQGtEuzK6b5hjf0rrPl4O/6MZUUAYbK
 fojXuZp8gVGl0qgHCcJ6w2UeRcwnLRwGH/94Ixg99n9gjXlzDg0NwuViYIhqBurmFLrJ
 AzPrEEbW/Zx+m7yMgi6+arkwAnQ7tDWo6IyCJm/SzEzc87UdMUnkvWP/iQLqdKWImUXM
 kIXJjLk5MXgD6VO/Jm1nDHilDyAEzN/8pKTrbs+fvjPHLRJHfRxO8JTf/AWnl5aq3zrQ
 gojA==
X-Gm-Message-State: AGi0PubYpR0XZZQA12iCMALl7yvRKgv7rgm7pzzANac+8y4+45cNx4tS
 JESosjQN6pBRb/v8TMpZX92HtQYahPOcul/HrjeA1g==
X-Google-Smtp-Source: APiQypKpg4Qo0k4IoZG1lD0aQ14OtbNSt7M01nnNL2FnfHvo9Iw7EPQxYDZAVptV9fOJpu5zJ470WV5Vz4uxzy+rmRs=
X-Received: by 2002:a2e:8805:: with SMTP id x5mr2229929ljh.223.1587026074289; 
 Thu, 16 Apr 2020 01:34:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-12-michael@walle.cc>
In-Reply-To: <20200402203656.27047-12-michael@walle.cc>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 10:34:23 +0200
Message-ID: <CACRpkdbANL_W3gcTwue5VUCWT95boMXjFSqTeFDZvJ6iSeNpJg@mail.gmail.com>
Subject: Re: [PATCH v2 11/16] gpio: add support for the sl28cpld GPIO
 controller
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_013436_500200_D44CAD3C 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michael,

this is looking good provided we can get the generic GPIO regmap
helper reviewed and merged. Thanks!

On Thu, Apr 2, 2020 at 10:37 PM Michael Walle <michael@walle.cc> wrote:

> This adds support for the GPIO controller of the sl28 board management
> controller. This driver is part of a multi-function device.
>
> Signed-off-by: Michael Walle <michael@walle.cc>

> +       depends on MFD_SL28CPLD

Apart from this depends it seems the patch is compile-time
independent of the other patches so I'd suggest we just merge
the generic regmap driver and this driver to the GPIO tree once
we feel finished with them, optimistically assuming that the MFD
driver will land and that we will not need any fundamental
changes in the GPIO driver.

Worst case we have to revert the driver and that is no disaster.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
