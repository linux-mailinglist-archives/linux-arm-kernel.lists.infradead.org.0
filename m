Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0377019550B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 11:21:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AI+pye7a2cByf44OZlQ+n6n2cDQ+aN7EUki0ao6X5oU=; b=KyhllI7qDWdvd7
	URbB2uU/J8qZmcDrXfyNT/zWWBRdjumruGUgQG0XmTqLQ5RMeV16eVEEbOQD4UIOq09PxQmIfp3YQ
	yufnu3rXWaHdHGOsJcf7Fsby44EFV74NxO/aaYVryEPwYIo+qzczrLUfBkdr2j0nXPr0ItLza1hrI
	UJOkQ8ltBeO9kJ4vLs6UA8MkNLFKHuYKjHydN9xrtJqAp2TfSSzrzwVCa3Mn5P0ANxZ5vww21pyal
	8QKttw1qbtYCOaLi4WyqYCZGTzJqyoApCnza39WAJVhgx5DAOEgfbVlu4m+yD46+vCcmHHaPCKrGR
	fgowWBys/tGMVFnImreA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHm7C-0000CF-1T; Fri, 27 Mar 2020 10:21:26 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHm6z-0000BJ-N9
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 10:21:16 +0000
Received: by mail-lf1-x144.google.com with SMTP id e7so7396503lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 03:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TuB8BNTEMS6Xu4xWKK0GTpM0KTFJDSPd7CoTH260LEY=;
 b=BWdcmcSOZAia9WokqOKv83FwargH+rfDXr2Mp0QwyZsT/mABCSd3y3ZMISvNsbmXhU
 gQMIR1duY1UxdvKr1tbHQzNudMLJvKqINJWtOlrbk9+kwOmXToR95IOMrI3yVrYmqYw4
 ERIXKr3kSqBiWHHSNhbcDl9Iko5A1Q0USZ7lVRGh7i4ZWuu8E4UBLvEJ0Rb7XNIkfIsy
 aw8uoNh4prsuenO/RPpdtz/llUkVRpSahQ6WFiqcc4YqGBOhRx5YxeATNzXZkpF5gRXs
 u9qzGndEeTvD5XvNeditQ2MMZ58/zYFaGXYoaCpP0AzoqV0GaxsvyztxFYEj52lAcoCH
 pBJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TuB8BNTEMS6Xu4xWKK0GTpM0KTFJDSPd7CoTH260LEY=;
 b=qlCaHFbs/61rUNjZVPn+n+UoIw9jBBTdIanI1zkF/szpV1qPQ38BA/1ju27+xoZQuG
 9fteszFlaxZmaaWo5nAp0npBAAywfqEaoz/qeFZyiktc+MtAupTm19TkH2CIKWVFWwtT
 jwk50XGC9XCj6VQcmbf1XHWHPM7f1aiMtlQo3LM+BDBJ3Wwm2xA2BSrqg6S2feXGm6rn
 DbzvKQPGplcYjQjIwfM+NGeae1GysfbieSeTmkosra0/WLJeOeJ7w4jMaMEc4+G99UeM
 B/HLMCmdfdyWYXXtgY1fPzVsyQgIzuOd7FJy+LCW+MTuQRj4dr6dSpLaFr/FQwsGkfvp
 zsnQ==
X-Gm-Message-State: ANhLgQ0n0iY9l2zEkyH39U3frhHrQT4ldhvadEMVBd1H57cQZ8VCzjvj
 JlLt2YmdkmAhxJ810X6mxdTWeUbFTq5EfTqw835QNQ==
X-Google-Smtp-Source: ADFU+vtsIgqK8FyZODtKNKWKI1HxhtKduwTybRXQvKGmxQLsPLeMOqx9p3y4gdOqstKYu6oc3bIWeFZeiamysR3lBHg=
X-Received: by 2002:a19:ac8:: with SMTP id 191mr8675462lfk.77.1585304468041;
 Fri, 27 Mar 2020 03:21:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200317205017.28280-1-michael@walle.cc>
 <20200317205017.28280-13-michael@walle.cc>
 <CAMpxmJW770v6JLdveEe1hkgNEJByVyArhorSyUZBYOyFiVyOeg@mail.gmail.com>
 <9c310f2a11913d4d089ef1b07671be00@walle.cc>
 <CAMpxmJXmD-M+Wbj6=wgFgP2aDxbqDN=ceHi1XDun4iwdLm55Zg@mail.gmail.com>
 <22944c9b62aa69da418de7766b7741bd@walle.cc>
In-Reply-To: <22944c9b62aa69da418de7766b7741bd@walle.cc>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Mar 2020 11:20:56 +0100
Message-ID: <CACRpkdbJ3DBO+W4P0n-CfZ1T3L8d_L0Nizra8frkv92XPXR4WA@mail.gmail.com>
Subject: Re: [PATCH 12/18] gpio: add support for the sl28cpld GPIO controller
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_032114_345773_5A816960 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-hwmon@vger.kernel.org, linux-devicetree <devicetree@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, Marc Zyngier <maz@kernel.org>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>, linux-pwm@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, linux-gpio <linux-gpio@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 9:06 PM Michael Walle <michael@walle.cc> wrote:
> Am 2020-03-25 12:50, schrieb Bartosz Golaszewski:

> > In that case maybe you should use the disable_locking option in
> > regmap_config and provide your own callbacks that you can use in the
> > irqchip code too?
>
> But how would that solve problem (1). And keep in mind, that the
> reqmap_irqchip is actually used for the interrupt controller, which
> is not this gpio controller.
>
> Ie. the interrupt controller of the sl28cpld uses the regmap_irqchip
> and all interrupt phandles pointing to the interrupt controller will
> reference the toplevel node. Any phandles pointing to the gpio
> controller will reference the GPIO subnode.

Ideally we would create something generic that has been on my
mind for some time, like a generic GPIO regmap irqchip now that
there are a few controllers like that.

I don't know how feasible it is or how much work it would be. But
as with GPIO_GENERIC (for MMIO) it would be helpful since we
can then implement things like .set_multiple() and .get_multiple()
for everyone.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
