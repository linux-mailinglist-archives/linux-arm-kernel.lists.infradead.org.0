Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 195443AC33
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 00:07:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0F4m8P02SBBUj1gv5KxOmSomdb3xE+nm01XjScBwWTA=; b=hpUwGBZd2cQ/ta
	qQBLBE+TDUXJqzXT18W0IFZIf5cAUiuzcIPafR282Bb+jz/xSTA+DUstfirSNK3GSYK3XRSnSvIZS
	7nEkWc1BfmZBfcQK9qzeywdZPIIkY8DL2irKBOvuHHVzB0wQb3/FC2bzZdMrlSDEzQgSe3840V4+u
	VAQ5VqxWLRpk30OEleINnoddgjUdljRnprSGlTrwzsgAIWoLxa7u/9MzhvDnO0fMWF2LuARhEIMkS
	k0EA9A82+evfZSjZaIJo/PAYo6bUJTkBB9LkBqY/eJkc74y9rmg/WKqkNrGmQeIdSiSrEc3UYMqlj
	Dp2BXll2M3KNK29fFTTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha5y2-0004lD-2W; Sun, 09 Jun 2019 22:07:10 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha5xs-0004kI-Sd
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 22:07:02 +0000
Received: by mail-lj1-x22e.google.com with SMTP id t28so6142409lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Jun 2019 15:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=50GXZwDHzCmpvzbBJ8yBES+uMhcVk2V2rV15ilN2B0c=;
 b=g+6Vbl0iiwSmN9H6YowhpGLJ73aounTBDzKhwymCbPXUe3YFtgu1z4wNCKLkILsZs/
 FKkBcFH//l4EcaLCokbemf+udf2+h3MZo4BZFRGYU0k7TFa+hJCq1VGJB8Umrkcd98kp
 lkU4Vk37IHqN9wT2FoTtsaWc4lSpIcqfaJWjxgoAuWi5z29YyrlYWbhjuKr84CHN2XUL
 C2Bgw1IznFw2WLjGRQbyFjkn0b3MoPs5N/0e4hn/Gacris0AR8lDHFeUzYiZwq4bXQfE
 jk4STLcb4kxRKe1TPxcO+kpC+f7ibP9nIBlvBlZvmdNUtRzohvJfxSy8G4TpJbomtPW1
 PR3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=50GXZwDHzCmpvzbBJ8yBES+uMhcVk2V2rV15ilN2B0c=;
 b=PH+Qha/qGmOUCl3ne2egrZhaPMak5VAZ293fgpwwXc3WbRXZcAJOPyTY8j/rEHOUbP
 W31+R+gmpdKZ8nVSwWwqOrzCwCrzMyfwjN0BcoDMhYVSxyIfDiuWN7mVMk846H+8aoqO
 VNNcjTgNJ/EyQWp7LA7igoKKzdWyFYq2boLHiIp/p/IkCVayubxItzo6DQCIV5GeADal
 tyoliA/bFkLJTiedzOpfGNEJ25mv/eWlkSVVdKMONBNxix2Ha8CdZQtxt0VypzHM1KTi
 o0At2V3D2+THHuCVSA5Z6XSRCsjgVk9su66KrOCbL+aN2UR9BImZBSLKTzXhIbNDC4pY
 GuOQ==
X-Gm-Message-State: APjAAAVS9m8TamZIq+FU6fThYH58ru45TdcKYjY47AIjdlyOSqdx/Kqm
 Fy58KuFZ6/+fB9FhOIRoZ4YZhqXgaH2mnRzKmy33zg==
X-Google-Smtp-Source: APXvYqyA9vzJYqRBM9b+TZM/4DaVcMYzTW8e9CaOv9ikhog+XAeu8+oeZTxmSSNapo5H1D99QLI3ZR7brOWlp3Po/C4=
X-Received: by 2002:a2e:5bdd:: with SMTP id m90mr25061179lje.46.1560118018248; 
 Sun, 09 Jun 2019 15:06:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
 <20190609180621.7607-6-martin.blumenstingl@googlemail.com>
 <CACRpkdYzeiLB7Yuixv6NsnLJoa_FnGKRHHQm=t4gMH34NdFSYA@mail.gmail.com>
 <CAFBinCBgoLb+Hfdo-sZ_0H6ct=UJm7j6wD_C6udbA6BTRvFOWQ@mail.gmail.com>
In-Reply-To: <CAFBinCBgoLb+Hfdo-sZ_0H6ct=UJm7j6wD_C6udbA6BTRvFOWQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 10 Jun 2019 00:06:51 +0200
Message-ID: <CACRpkdYur+dwC1LqasQR-cvTWcpV12vr+8Wi5o9kXVWe-0teZw@mail.gmail.com>
Subject: Re: [RFC next v1 5/5] arm64: dts: meson: g12a: x96-max: fix the
 Ethernet PHY reset line
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_150700_937761_A8BB032B 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 <devicetree@vger.kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Jose Abreu <joabreu@synopsys.com>, Kevin Hilman <khilman@baylibre.com>,
 Giuseppe CAVALLARO <peppe.cavallaro@st.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 9, 2019 at 11:36 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:

> > If "snps,reset-active-low" was set it results in the sequence 1, 0, 1
> > if it is not set it results in the sequence 0, 1, 0.
>
> I'm changing this logic with earlier patches of this series.
> can you please look at these as well because GPIO_OPEN_SOURCE doesn't
> work with the old version of stmmac_mdio_reset() that you are showing.

OK but the logic is the same, just that the polarity handling is moved
into gpiolib.

> > The high (reset) is asserted by switching the pin into high-z open drain
> > mode, which happens by switching the line into input mode in some
> > cases.
> >
> > I think the real reason it works now is that reset is actually active high.
>
> let me write down what I definitely know so far
>
> the RTL8211F PHY wants the reset line to be LOW for a few milliseconds
> to put it into reset mode.
> driving the reset line HIGH again takes it out of reset.
>
> Odroid-N2's schematics [0] (page 30) shows that there's a pull-up for
> the PHYRSTB pin, which is also connected to the NRST signal which is
> GPIOZ_15

Looks correct, R143 is indeed a pull up indicating that the line is
open drain, active low.

> > It makes a lot of sense, since if it resets the device when set as input
> > (open drain) it holds all devices on that line in reset, which is likely
> > what you want as most GPIOs come up as inputs (open drain).
> > A pull-up resistor will ascertain that the devices are in reset.
>
> my understanding is that the pull-up resistor holds it out of reset
> driving GPIOZ_15's (open drain) output LOW pulls the signal to ground
> and asserts the reset

Yep that seems correct.

Oh I guess it is this:

        amlogic,tx-delay-ns = <2>;
-       snps,reset-gpio = <&gpio GPIOZ_14 0>;
+       snps,reset-gpio = <&gpio GPIOZ_15 GPIO_OPEN_SOURCE>;
        snps,reset-delays-us = <0 10000 1000000>;
-       snps,reset-active-low;

Can you try:
snps,reset-gpio = <&gpio GPIOZ_15 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
?

Open source is nominally (and rarely) used for lines that are active high.
For lines that are active low, we want to use open drain combined
with active low.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
