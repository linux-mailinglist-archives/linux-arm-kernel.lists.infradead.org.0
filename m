Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1943AC6A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 00:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZEWbHPhw3gZnXGl5T4z2+wrks35lJCuL9vDctOBPuY=; b=Mbh59FL8TVPAJh
	7hP/G369LJe+uJbZlElYCHmOagdu4imlh8QbU4Jl9RZk/Y+PIg4tlu5z5L03NyGG5oPhr9VZNNZu9
	pwCKOPVfvrxCYQMR1iU+7gcR3hl4RCs7qNO0DRcX1FqeRvSoWs/4cAaYQfplAidQJp95jlFkE4O+L
	ipMKQwESfeSbO2gcddU0B1Q7ieqwJHrCdGXt9tMrLY4u2PzzkUvVHe8SDfuco1dfqgRArdg8KvUzG
	QvxoiHQHk0UthJrgINZydcXNnaorevIdMf7+E7ZsHXxWc4iIO7O5UCSuguHyYdiffKTTDay4iG0tw
	zQzmD9aAtMHtPUonVfzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha6JL-0002j1-Bb; Sun, 09 Jun 2019 22:29:11 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha6JD-0002hH-1K; Sun, 09 Jun 2019 22:29:04 +0000
Received: by mail-ot1-x341.google.com with SMTP id z24so6636167oto.1;
 Sun, 09 Jun 2019 15:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sePl1BxoH8M2Ag9hWKHMM9PC7HT35mw+FBXMYc8ap6c=;
 b=Yw5lxz2MiGWV6OwbaX63dQW+cirM/W4o6b7Xia0ej4yEhpRzVI0DltV0GAL7UAgwaM
 91vcaOnjNUJVMHrChqbrsdrWY1l2Pa5hrSha6gqLWFmHolBLQThdwquKORq0rFPGJTEn
 gZn4TkcAPDzh40IsgK0PORqVgyrCwVi4/QyzPw03MCCouiZZuHfzu16PhSjZnuX7pkA7
 eJ0xRRqfgEK1OJNXktIsRvAD4kIC/8m+yQgBfYmzQnLkefvqmaESBfZ+7XJoqqfzlx87
 i0dDU/jG2ZRsV61cQKa9bl8ip8+MV72DncqyaXYNGoJxCZHJLUbY0n7nRGhZ/GjAfjKk
 ZZ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sePl1BxoH8M2Ag9hWKHMM9PC7HT35mw+FBXMYc8ap6c=;
 b=KnDbvk840PvR7uKL/pZdmgkNkRZZs0WiU61l8fK6lrJBsWVVdG806AFBE5OOWRkHOO
 vkSeQuVZlktTVfXv5sb9lJpUSoqQWN12/nhuu74lYpgqbZ4bmMnw4vgdI9yy1gcGxMGR
 mNfjoiUchy3jX1poANZ9C2GXqC/GBBDHOMo21gCBpbcsBQffv/x+cA0qHro9zebicHIF
 FGwZ2SCGI7rkEuE7ZoSmy/k02ZTTziVCyYAEAUTmVv7UlvEev71Dwi+WAci8YHL8ajx5
 m6ZK3/BDpCshdAq/KJEWNDFyihd3PQoKWVe2uEL9SwkRuW/bf0RA7t7EWe1zs+U9DT82
 uugQ==
X-Gm-Message-State: APjAAAV0c93koFhigInNUJ0zwPCTZFdwj24M3j/CQMxKd/I4/nszP4u/
 R900N+mILDJyC2DUisUHETAxBJ4SNWtW3OrxqTG1suVG
X-Google-Smtp-Source: APXvYqy+T7mpPqt6GkRiQjZzGluZ3AiR4EAUVviHS6NHy+UPPLubdx6ZNTH4stn3vXNw9TQ8wcN2BMs2ClwdoqNifV0=
X-Received: by 2002:a9d:6405:: with SMTP id h5mr16693612otl.42.1560119341436; 
 Sun, 09 Jun 2019 15:29:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
 <20190609180621.7607-6-martin.blumenstingl@googlemail.com>
 <CACRpkdYzeiLB7Yuixv6NsnLJoa_FnGKRHHQm=t4gMH34NdFSYA@mail.gmail.com>
 <CAFBinCBgoLb+Hfdo-sZ_0H6ct=UJm7j6wD_C6udbA6BTRvFOWQ@mail.gmail.com>
 <CACRpkdYur+dwC1LqasQR-cvTWcpV12vr+8Wi5o9kXVWe-0teZw@mail.gmail.com>
In-Reply-To: <CACRpkdYur+dwC1LqasQR-cvTWcpV12vr+8Wi5o9kXVWe-0teZw@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 10 Jun 2019 00:28:50 +0200
Message-ID: <CAFBinCDOhBUqNx4y+j1NeE08wWuZ-bhX5DsE8kcG4LUHKEQ+nQ@mail.gmail.com>
Subject: Re: [RFC next v1 5/5] arm64: dts: meson: g12a: x96-max: fix the
 Ethernet PHY reset line
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_152903_109194_5BD36D69 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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

Hi Linus,

On Mon, Jun 10, 2019 at 12:06 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Sun, Jun 9, 2019 at 11:36 PM Martin Blumenstingl
> <martin.blumenstingl@googlemail.com> wrote:
>
> > > If "snps,reset-active-low" was set it results in the sequence 1, 0, 1
> > > if it is not set it results in the sequence 0, 1, 0.
> >
> > I'm changing this logic with earlier patches of this series.
> > can you please look at these as well because GPIO_OPEN_SOURCE doesn't
> > work with the old version of stmmac_mdio_reset() that you are showing.
>
> OK but the logic is the same, just that the polarity handling is moved
> into gpiolib.
>
> > > The high (reset) is asserted by switching the pin into high-z open drain
> > > mode, which happens by switching the line into input mode in some
> > > cases.
> > >
> > > I think the real reason it works now is that reset is actually active high.
> >
> > let me write down what I definitely know so far
> >
> > the RTL8211F PHY wants the reset line to be LOW for a few milliseconds
> > to put it into reset mode.
> > driving the reset line HIGH again takes it out of reset.
> >
> > Odroid-N2's schematics [0] (page 30) shows that there's a pull-up for
> > the PHYRSTB pin, which is also connected to the NRST signal which is
> > GPIOZ_15
>
> Looks correct, R143 is indeed a pull up indicating that the line is
> open drain, active low.
good so far

> > > It makes a lot of sense, since if it resets the device when set as input
> > > (open drain) it holds all devices on that line in reset, which is likely
> > > what you want as most GPIOs come up as inputs (open drain).
> > > A pull-up resistor will ascertain that the devices are in reset.
> >
> > my understanding is that the pull-up resistor holds it out of reset
> > driving GPIOZ_15's (open drain) output LOW pulls the signal to ground
> > and asserts the reset
>
> Yep that seems correct.
>
> Oh I guess it is this:
>
>         amlogic,tx-delay-ns = <2>;
> -       snps,reset-gpio = <&gpio GPIOZ_14 0>;
> +       snps,reset-gpio = <&gpio GPIOZ_15 GPIO_OPEN_SOURCE>;
>         snps,reset-delays-us = <0 10000 1000000>;
> -       snps,reset-active-low;
>
> Can you try:
> snps,reset-gpio = <&gpio GPIOZ_15 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
> ?
I tried it and it works!

> Open source is nominally (and rarely) used for lines that are active high.
> For lines that are active low, we want to use open drain combined
> with active low.
thank you for the explanation - I'll take your version for v2 :)


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
