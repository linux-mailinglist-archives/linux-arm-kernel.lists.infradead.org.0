Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E80A67B97
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jul 2019 20:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVtxDZb3lpP87SmMCGHRblTVNT5/uKtSBf2K/xq0X3Y=; b=Q6eyQQ1vCS9qXb
	YyFdvveG/C7TVTl1Fu+m89cDzWD3Qux7TIJNdTTYA9qQC+R0xTI6hSN+UVPKmBXLsNXQ035udcDBa
	CZ02DYWlNqyzsBBkGL1yG5ASL5w2/jxTqZYVt/oF9VkRYdCLAhyeHW2Z6gKsO8vdVec3NIaK8Ew1y
	Se/E8vYNNEfsi/l42/xAqWEEBpI3+kC2RYhKnKdeGv6eLi8b1uA+hageInkuqr8CGLLdLV8ClRyOd
	AfHv1dcK4gn4NqgmRHfqzQDwtQfdbMFWNUzdpxrkTFx/hXPOG7yZPRwAFEVFXGw/pPpyZl4QOUC8R
	PD+nS+TXNeKOI/eqFHpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmMM6-0003Mz-OC; Sat, 13 Jul 2019 18:02:42 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmMLs-0003LZ-Rf
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jul 2019 18:02:30 +0000
Received: by mail-ot1-x341.google.com with SMTP id z23so12654862ote.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jul 2019 11:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6ZP/voUQ+Ch7jvDhff/3yc73Q7YGKXw7YDhL153Ao2E=;
 b=b8/xfNKHuNqMcqJ4EyGHcHDYmM+zN6nVT7x//oevUF4FbXx91wi9j00N6ceIa8Rl/b
 EWTldZb8VXxoLMGdQ/jX9GhU9FkvuZVvXYMStADoUM56a6Ao8VljLH9YGj4om4qyZlHK
 guTTMvmbnMRk8fXgVct4OjpXOGLeqKYUwdzSwAWLaJyJkOj5qUUBWPo/w3tPJUJ6nDNN
 QyCrKo0KX9LlpnLy3HJMroREcBHtTpd/1FRymXULMs0ImnZYirfGH8QSwhLGK2VZpODY
 0oH0K3X6QcMqg9JS7+QwoIzt5VGsca4BUNCU45R/r+xmzf8tVoXlupCWcfN8h88MaV/o
 WjHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6ZP/voUQ+Ch7jvDhff/3yc73Q7YGKXw7YDhL153Ao2E=;
 b=PP4ApizAR18uQLlozp/3iF9kDy/7agizCoh67o/Kx8KKXXuvCA48WWIrfXZuZ18s70
 plqL9JnBT11s1KC5+za371mv8OkUpe9buROCbMs7FWTKKg+IaWtAROOahVnOVxAzQuXt
 Dsp6DL9FUmMo+9bpG4ngevrujs9pGbK9jWJisqXl1KMztTqjQwUDRlLaryfqP9p9vQx4
 E8rVIHE7ZmPyVKqdKPKRWRc8CetwUfwqrbfIMU800Y840XNbtpVrdC8Xlz43TWuUZKkB
 G3OIzz/1oevx2Mf+Ds1eNeLI7mM+xYw8Qr2ZftxrnPfYKpEpD2b9w8Q1+kjQpxehbKQ5
 c/WQ==
X-Gm-Message-State: APjAAAUqIv7YXYO8KEiNRB/2VpWkxYknZL4FYJtWPLdeIeSrI9ZMqzjf
 d5NO+iK/jRYpkuPIizz8DA0nfdWS2hsQ/vDz0KQ=
X-Google-Smtp-Source: APXvYqzRubs7sRxl+oVCUfIW4EL3ndy9n7fDLykWAxtEagG7ww8vQ2yqiVZLk0pBacfN9B23mEk41XjLSvO9HJUoEFY=
X-Received: by 2002:a9d:6742:: with SMTP id w2mr4128114otm.371.1563040944838; 
 Sat, 13 Jul 2019 11:02:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
 <CA+E=qVfhDEQER2UTj65hR9erzej9Ey2FrUa9GV=iCFYsWZ2ztw@mail.gmail.com>
In-Reply-To: <CA+E=qVfhDEQER2UTj65hR9erzej9Ey2FrUa9GV=iCFYsWZ2ztw@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Sat, 13 Jul 2019 11:01:58 -0700
Message-ID: <CA+E=qVdAUFJM27cNL6WRkk5moX=mEk7WUs6UBoX58Y7ove40oQ@mail.gmail.com>
Subject: Re: [PATCH v4 00/11] add thermal driver for h6
To: Yangtao Li <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_110228_921334_2451C43A 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, rui.zhang@intel.com,
 paulmck@linux.ibm.com, "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 4:09 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> On Sun, Jun 23, 2019 at 9:42 AM Yangtao Li <tiny.windzz@gmail.com> wrote:
> >
> > This patchset add support for H3 and H6 thermal sensor.
> >
> > BTY, do a cleanup in thermal makfile.
> >
> > Yangtao Li (11):
> >   thermal: sun8i: add thermal driver for h6
> >   dt-bindings: thermal: add binding document for h6 thermal controller
> >   thermal: fix indentation in makefile
> >   thermal: sun8i: get ths sensor number from device compatible
> >   thermal: sun8i: rework for sun8i_ths_get_temp()
> >   thermal: sun8i: get ths init func from device compatible
> >   thermal: sun8i: rework for ths irq handler func
> >   thermal: sun8i: support ahb clocks
> >   thermal: sun8i: rework for ths calibrate func
> >   dt-bindings: thermal: add binding document for h3 thermal controller
> >   thermal: sun8i: add thermal driver for h3
>
> It would be nice to add dts changes to this series. It's unlikely that
> you'll get any "Tested-by" otherwise.

I added A64 support on top of this series, see
https://github.com/anarsoul/linux-2.6/tree/v5.2-thermal

Branch also contains patches to enable DVFS on A64, feel free to
cherry pick only those related to thermal driver if you want to
include A64 support into v5 series.

>
> >  .../bindings/thermal/sun8i-thermal.yaml       |  94 +++
> >  MAINTAINERS                                   |   7 +
> >  drivers/thermal/Kconfig                       |  14 +
> >  drivers/thermal/Makefile                      |   9 +-
> >  drivers/thermal/sun8i_thermal.c               | 534 ++++++++++++++++++
> >  5 files changed, 654 insertions(+), 4 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
> >  create mode 100644 drivers/thermal/sun8i_thermal.c
> >
> > ---
> > v4:
> > -add h3 support
> > -fix yaml file
> > ---
> > 2.17.1
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
