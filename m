Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E141A53C1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 22:54:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYIDXnDUoj+SaqkpiknkujT0+2UXkkobSIQTkL3Dg+4=; b=DrpspeSQbJBHbB
	xuG9eJsW102ZeyylkYF1wddGv80PXxTsvoe/gYUA9XfUKy2LFZACjNSJwyQjTHbW428XYvVxUYTtT
	PemaeQwfwPrud0qZTdCnbRo0GrJn5C73h9YVuEKbAhGHz6kNM/l136WCeNI5noolnRbA6y7MH6QyI
	XNbSfWBHd0xQy61PqMBXSiZO72SR+HsU9LTwo3fhznicOlA2uLcXqv2hZv8k4xl9k2TrBVSE5u6q8
	vpCtuBytY7Eznjs0YzCKLRtrKOJpNFU9xs86OyV3AjECwpy16o/+Xg/wX1RrArfPKMln8ktgYxzBa
	1q5oU51w8eopuvm14G+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNN8l-0000MV-Ng; Sat, 11 Apr 2020 20:54:11 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNN8d-0000LQ-Nq; Sat, 11 Apr 2020 20:54:05 +0000
Received: by mail-ed1-x543.google.com with SMTP id w2so351454edx.4;
 Sat, 11 Apr 2020 13:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DpPxEWdUioZn0HQBN6mQ3Q1Ob+fhxROdq5kNfultqe0=;
 b=uV8o6Zrzip2ioASe/aWS4uXvVFMa3myxewPYeEnNDC0qaR7bBZVUnx5TAXo42zU+mT
 EGyAyToZyyI3SNTjHdnBQXAnBZ0YpvS+8sWFjlkbN006pdPypOunFi28q4GHWhiyC5UN
 V04MspF2oljn/e7Muu86Rn+VMAFmYYp3V8mmy9pjPGv3b7+2Wa9lDQKQ2gczJPiqfWDO
 Mn8yGKCpAjPKRs/jHFX9fa479geh2aNUNEUNvvbKYG4ZO6P0Q14saXOSGjLKPkxfkwU9
 LNLgd+l6Jx2PjSnzAWJuhsq4WdmYLsRBNguCYN8YxzOWoiQv4jTJjVgR4jhaFJ/nGYP6
 Ji8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DpPxEWdUioZn0HQBN6mQ3Q1Ob+fhxROdq5kNfultqe0=;
 b=QkFAVU9VhZbHYyX+7z8MJslkkWK4EyeXYgLC0R709/M7h6YNoO9g9lQGLknWv9Tpci
 Jn9dZW+mzEHd3Bk0Ik8+MdwsUiC6Z9zIV2mtm4DbDTry3mv+j2Jdq/7vyow0ryCfDmRU
 kJ7t8W7eNj7OrUjq3/0DrRPTdl1ne+pD5d8oudXP58tYl3+/6tRnRJc57fhoATECdvW4
 v5a+GndhSMzuPWNi2/ONbhRqNH+tPoHme4NthQdvu/nwmmnpmaoeHYGAfPFIgLoHFS4P
 jVXveNV6smfzaHI5DFB8xKYAAvhdYexCjTgrYr8q6bYJRd/5cQPco4qUPUCfJBEe/Ahx
 gIQw==
X-Gm-Message-State: AGi0Pubosl9RM5DE2wR8sN28f3kNCtpjKhb8wVSHrcZvxmkSWd2Daq0b
 hoAfKOUPHOYHOqD8IBIuTg8EwcepQygRiHKbgyQ=
X-Google-Smtp-Source: APiQypJIyy959kWit6wOcPV+RL4aML0qO6rTxQ8ZWgimKnCOgqQggo5+d4M8bUVBY9+zdR8WOiKOCdL3T3EfdqTZdT0=
X-Received: by 2002:a17:906:4048:: with SMTP id
 y8mr1640707ejj.258.1586638441265; 
 Sat, 11 Apr 2020 13:54:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200411170356.1578031-1-martin.blumenstingl@googlemail.com>
 <20200411170356.1578031-3-martin.blumenstingl@googlemail.com>
 <1jlfn2szqp.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jlfn2szqp.fsf@starbuckisacylon.baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 11 Apr 2020 22:53:50 +0200
Message-ID: <CAFBinCDut=qY9f8BTwRrHC6zKMGK4DEqXFnd8BxN6S2OatXrWg@mail.gmail.com>
Subject: Re: [PATCH RFC v1 2/2] pinctrl: meson: wire up the gpio_chip's
 set_config callback
To: Jerome Brunet <jbrunet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_135403_799416_67F4EC7E 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerome,

On Sat, Apr 11, 2020 at 7:23 PM Jerome Brunet <jbrunet@baylibre.com> wrote:
>
>
> On Sat 11 Apr 2020 at 19:03, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:
>
> > Use gpiochip_generic_config for the gpio_chip's set_config callback so
> > GPIO flags like GPIO_PULL_UP or GPIO_PULL_DOWN can be used in the board
> > .dts descriptions.
> > This is required for some Meson8m2 boards where GPIO_BSD_EN provides the
> > "MUTE" signal and requires enabling the internal pull-up resistor.
>
> I think your addition makes sense but, FYI, there is another solution to
> your problem that should already work as it is.
>
> If the platform requires a pull-up, you could set the pinconf 'bias-pull-up'
> property in dt in the pinctrl definition passed to the device using the gpio.
Thank you for this hint.
personally I find GPIO_PULL_UP is easier to write when I'm passing a
GPIO descriptor anyways.

> There is an example of that in meson-gx-libretech-pc.dtsi with the phy
> irq pin.
I'm still hoping that pinctrl-meson will gain interrupt support one
day, then the driver will (hopefully) take care of that :-)


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
