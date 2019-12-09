Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96041116453
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 01:20:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LruXqF+PKBfS/6LTnHmemFVFM1yimturbpD07Hlwzwc=; b=c/q6rQYyQeq6e6
	xVNTWkWWNsiW/m5qePA+ghIFdOWe3vsI+9zowjeFKp1Ojj/o46MJgpmJXQOoW5qu0HFaKIgQ4W9yX
	WmY7Olt46ah4v16fgesrLTdzdvktEJgEGUwqHkhmdaRj7icQKd8xWq+dJVSGv2XyFgVujgjUdVCS1
	A+y82ckN2/P0CWV+TViztoF7YlkjpA8PsW2ptKUT4WN6KClbhGmdAuoet/KVOkXDYAh1Ntf3uoQUy
	ki+2TB9TjnrjjeXt4BcXps/GRvZ13BnMvAvLTdRkQjOyd4h7FiJdegrLu9PhkClmitXqBRba3JZbl
	PKlwWFFG83UQFWw7WtbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie6mx-0004r9-Ms; Mon, 09 Dec 2019 00:20:35 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie6mr-0004qZ-3M
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 00:20:31 +0000
Received: by mail-lf1-x12b.google.com with SMTP id n12so9282546lfe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Dec 2019 16:20:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MHPwh1y/n4h6B3Kr1hQ3vt143Cypr4Zc4bxHvs1bL1s=;
 b=YJ2Z9d1LLO3HiNP5Cj86Xn9PhRPnCP461HYAfLOpE33VYg4X/b5RdZMTd5G8RTuLEx
 QcL1QGR9H3CYUKzsTz39bvQHbhtIt1XpuDyXeGSlBu4Mhw3gsH1mUAmUbFoJX5jOxC7m
 4j2oYy6jJd7zrwoMAhPHfi20W3qlsFLgGZ2kLvaD+VU21KINczxmVb4OiITEOcWsPBZD
 bbdzjof/2gxGhZ/z0m6PXS0Fy7CLn/jNa0soMxwdUpbkfh4JMvOqyURODNZ16xDXqdhS
 FAk4OS0IEo8lvQLomW5Z4tV1tTGqQZKvOxFxlhpbQT9Of1ohFUmCpXXygdpESZeHVWz3
 782Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MHPwh1y/n4h6B3Kr1hQ3vt143Cypr4Zc4bxHvs1bL1s=;
 b=BFOiAdVA7XZ/PngXYR/Pr+Zk13zGCF1dNmOPnqQTr8rX/KQReMMkpa0vFrNi4wH8KW
 EIgTeYjNq8/n3UzwFe4bgITUqWCra+NakytNMin5vsIgb/xNiV3grlgUPI4TllS6x7tv
 z6tB8ja8L5oeL10wYj80e1yA6ETkyGclZl/fPbY3AJfSlS5zfS5RFFXzj/u6klGtxrLi
 q7KYW7loJb/wbk01LoJb+puP9ZkWsMytRHaBs2lQNcOoK5DWORQ27yDGGlLEgmX4Guaf
 IRoObVe6/046f/hYKGsm4gtcvr/vC/CPemPuSp7aVfWkh91TjK2rAjNq92VihTHSwAAR
 D88w==
X-Gm-Message-State: APjAAAWx0NIQTve3wanahxIoJN11ufY9N1cSQmx9SkT6411ef+VeIMHr
 yWnwoSIqVOJBMmAYoHuUTehl9I73iRZqfESDQKsKVA==
X-Google-Smtp-Source: APXvYqz1ICQM0K1LHeR6QTf4gipjvIQPfKyB9dj3sza1iGU1uUKxJniITX2rtw2pCgEXg1z77JkTiIlU37yi9pqJWBA=
X-Received: by 2002:ac2:4945:: with SMTP id o5mr13375016lfi.93.1575850826412; 
 Sun, 08 Dec 2019 16:20:26 -0800 (PST)
MIME-Version: 1.0
References: <20191206173343.GX25745@shell.armlinux.org.uk>
In-Reply-To: <20191206173343.GX25745@shell.armlinux.org.uk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 9 Dec 2019 01:20:15 +0100
Message-ID: <CACRpkdZv2rzA8AbFZKq0XVBaXNJR8c5tsb+1KTZ7fNuWjm5cbQ@mail.gmail.com>
Subject: Re: pinctrl states vs pinmux vs gpio (i2c bus recovery)
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_162029_348140_C013B6C9 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

very nice description of this dual-mode problem.

I wish I had a simple and elegant way we could make it
unambiguous and simple to use ... but it beats me right
now.

On Fri, Dec 6, 2019 at 6:33 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:

> One may expect:
>
>         pinctrl_select_state(i2c_imx->pinctrl, i2c_imx->pinctrl_pins_default);
>
> to change them back to the default state, but that would be incorrect.
> The first thing that pinctrl_select_state() does is check whether
>
>         p->state == state
>
> which it will do, as the pinctrl layer hasn't been informed of the
> change that has happened behind its back at the pinmux level.

Some pin controllers have the .strict property set
in their struct pinmux_ops:

* @strict: do not allow simultaneous use of the same pin for GPIO and another
*      function. Check both gpio_owner and mux_owner strictly before approving
*      the pin request.

The non-strict pin controllers are those that actually allow GPIO
and device functions to be used on the same physical line at the
same time. In this case there is not special GPIO mode for the
line in some muxing registers, they are just physically connected
somehow.

One usecase is sort of like how tcpdump work for
ethernet interfaces: a GPIO register can "snoop" on a pin while
in used by another device.

But it would notably also allow you to drive the line and interfere
with the device. Which is exactly what this I2C recovery mechanism
does, just that its pin controller is actually strict, will not allow
the same line to be used for GPIO and some other function at the
same time, so I suppose i.MX should probably explore the
strict mode.

Enabling that will sadly make the problem MORE complex
for this I2C recovery, requiring a cycle of
gpiod_put()/gpiod_get() to get it released from GPIO mode, i.e.
we would need to just get the GPIO when this is strictly needed.
Using devm_gpiod_get() and keeping a reference descriptor
around would not work all of a sudden.

I am thinking whether we can handle the non-strict controllers
in a more elegant way, or add some API to explicitly hand over
between device function and GPIO function. But I can't really
see some obvious solution.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
