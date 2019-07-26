Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 303E27708C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 19:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+EXyf/IB1y7oIEQRqSl4kb5YgxjD4skOcsRr7SMjJ2I=; b=VUV0kEJW4o0LZS
	vEkRlv2rLnHYFCdEntKRhgtoK3RjefGwtAT76y0KWofqsRXIGRrq5u2bk4wOfmXG9PiULsRwTEGcq
	2x/k5tfb89hEn0xntYeYKzDGqsAp7GCaN08TrDO8kDEK38mx+daBC5NMWFLvYZi2ezNiP5453AfqF
	uRiOEalJ71XXBruB1J/zw2MUSTYD8xFeh3vlaqvwyRweLwGIx+VY/Czu9m5gs5xNSew2jUTA6VaP2
	tGctajeJj9+mPqoZDucG0VYgr0NdJkm+njJWIYwlY/FvrD0V0uPdAIqUd2fCZTom2pF4LSul2nTIK
	ZImnDaFPKwTpqbAzxv/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr4Ix-00036T-EF; Fri, 26 Jul 2019 17:46:55 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr4Ik-00035g-AS
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 17:46:43 +0000
Received: by mail-oi1-x241.google.com with SMTP id w79so40858836oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 10:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WGpliEWlMJR86QQHjNkvOVmi637qgDODhWz90T/enDA=;
 b=emd7eY/+yhDi/ewbbEtWfJNyj0igS+6kMhiTEYmlNrYCJsXnVBa432o4xJCP4AdQ7b
 QU+I82y3ekntbHJ7+tw/kXOR4MmaQkSpnQHtfoE7IcNVW7HzDLv6usYXes2madoC7Dfn
 ZFrhgwcHz6Ch88sThBKbpF80ZOsR/yZuXere6sgxRlTlhoA6obhereqdgR/DBjersHmi
 WzZqg+H3QfPOjn0d/iLGPiwT8E9Y8OCbm0jBiVt7reLrH4Qq8vHhZe2v7nYiLbCJSduJ
 wmQPnwRIrkxReKFi6UtlaQ1j13/kerXnTXbSCK7hkdbnsbMABiRBREbmnoHf/zyg4Sza
 mEiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WGpliEWlMJR86QQHjNkvOVmi637qgDODhWz90T/enDA=;
 b=C9qaVruQVbVnOqZ/3/9RsG5gahVIZKNBjNSh5F4yQtgEBN+9tTk5R9Bi8XlGs8hj1e
 T0FZWOTfxjU+KZrCXAay76RyM+V1zx6lqDMSq89hi1IlPObfz1Qwh0nWuzzf7fWr80Kr
 pc19QV/LTb3+Mr+8ZSfum3AGojZtd8lDXOBUuWU8R/Q5twLkZZ8Su//FmOlPAVERRPYX
 4/RINjnPVwPfj84ih/R0NkFtLvib9XEIE1HeHQsEm/dUfkg/sb+KypJDhCIFdyMuQjr8
 y7BS5GGRbHvKwX+BZCFkC9YoLUoLMKU2ckrDSIL+aD3SmWaBHgRqvfKYEuy5/AiESRb5
 mb4g==
X-Gm-Message-State: APjAAAXRoU7Xi5R/RrSkSoEBv/ynuKw0PLrrXiNsR+t3mirzReTzDIZg
 a/pv4EJm/oxaSVcZoE8ZT2FicwpLvmXy/7fMJJA=
X-Google-Smtp-Source: APXvYqwBT4rAcuQeOHJxjAVo+7f4dDVhPgouvyax7CqptIx3vwCxyANHomTDgsG9t3gu6Db+jTmJTNDy7Wqr/XjIUWk=
X-Received: by 2002:a54:4813:: with SMTP id j19mr21421854oij.34.1564163200442; 
 Fri, 26 Jul 2019 10:46:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
 <CA+E=qVfhDEQER2UTj65hR9erzej9Ey2FrUa9GV=iCFYsWZ2ztw@mail.gmail.com>
 <CA+E=qVdAUFJM27cNL6WRkk5moX=mEk7WUs6UBoX58Y7ove40oQ@mail.gmail.com>
In-Reply-To: <CA+E=qVdAUFJM27cNL6WRkk5moX=mEk7WUs6UBoX58Y7ove40oQ@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Fri, 26 Jul 2019 10:46:35 -0700
Message-ID: <CA+E=qVdw+DG7Bj4xg5-wjatyHMH76q2usanZ7Ty6pGHuaA_=5Q@mail.gmail.com>
Subject: Re: [PATCH v4 00/11] add thermal driver for h6
To: Yangtao Li <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_104642_389880_9845753A 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hey Yangtao,

Are you planning to send v5 anytime soon?

On Sat, Jul 13, 2019 at 11:01 AM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> On Wed, Jul 10, 2019 at 4:09 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
> >
> > On Sun, Jun 23, 2019 at 9:42 AM Yangtao Li <tiny.windzz@gmail.com> wrote:
> > >
> > > This patchset add support for H3 and H6 thermal sensor.
> > >
> > > BTY, do a cleanup in thermal makfile.
> > >
> > > Yangtao Li (11):
> > >   thermal: sun8i: add thermal driver for h6
> > >   dt-bindings: thermal: add binding document for h6 thermal controller
> > >   thermal: fix indentation in makefile
> > >   thermal: sun8i: get ths sensor number from device compatible
> > >   thermal: sun8i: rework for sun8i_ths_get_temp()
> > >   thermal: sun8i: get ths init func from device compatible
> > >   thermal: sun8i: rework for ths irq handler func
> > >   thermal: sun8i: support ahb clocks
> > >   thermal: sun8i: rework for ths calibrate func
> > >   dt-bindings: thermal: add binding document for h3 thermal controller
> > >   thermal: sun8i: add thermal driver for h3
> >
> > It would be nice to add dts changes to this series. It's unlikely that
> > you'll get any "Tested-by" otherwise.
>
> I added A64 support on top of this series, see
> https://github.com/anarsoul/linux-2.6/tree/v5.2-thermal
>
> Branch also contains patches to enable DVFS on A64, feel free to
> cherry pick only those related to thermal driver if you want to
> include A64 support into v5 series.
>
> >
> > >  .../bindings/thermal/sun8i-thermal.yaml       |  94 +++
> > >  MAINTAINERS                                   |   7 +
> > >  drivers/thermal/Kconfig                       |  14 +
> > >  drivers/thermal/Makefile                      |   9 +-
> > >  drivers/thermal/sun8i_thermal.c               | 534 ++++++++++++++++++
> > >  5 files changed, 654 insertions(+), 4 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
> > >  create mode 100644 drivers/thermal/sun8i_thermal.c
> > >
> > > ---
> > > v4:
> > > -add h3 support
> > > -fix yaml file
> > > ---
> > > 2.17.1
> > >
> > >
> > > _______________________________________________
> > > linux-arm-kernel mailing list
> > > linux-arm-kernel@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
