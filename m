Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A76ED3AC13
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 23:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LksUN6hlHsFnq1Z0kkH9Uzma5vpvjJqEexKj1LPAEfY=; b=caSmfbqbVkfV6m
	7HbJarS9uurK1Txjk4f0ihT7CzcoOVG2iibZUpTlz2y3vzwfr9MwzM0UXv26p9qBwkyBE+/BzUe89
	YfDERKYHZW/LjkYdpcfIN3stpsF3aKyEkrm4E+8tJAPkm6FOf55t08nekMEbEbM1M42N4MMusM5Yu
	ELPMBeO4c9FbmgoVhbmGc5zZxhvE6ub/jeFIc0sH3+IvrvUMJGJh5K8Wi8rNGsXlQX40lp7N0el4i
	ImlBdGIxxonudBDp557Fbkjk6znRx7sS4Z75OMtl/71H75yAIfA2ylW/TLuR6sK2UXFURRmgvC2qI
	9kqfjPki7xawvqrQ8h8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha5Uf-0002TY-E2; Sun, 09 Jun 2019 21:36:49 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha5US-0002RD-Mb; Sun, 09 Jun 2019 21:36:38 +0000
Received: by mail-ot1-x342.google.com with SMTP id z24so6577599oto.1;
 Sun, 09 Jun 2019 14:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZiIIarVNYc+IPXqi3ZtMcJmmvmMmviVgkK+GA+EHbhA=;
 b=YUw1qnx0j9Q6GWh+yYTbdK8KRLJ8DYZRAv2/6rqS18LKK2PYUFJNNBBxVO310T59MS
 Q0i8zJFB3HY8cV5PD1VOHDjD/z+NFcnqah+3Q/zqm73sHRlLC1ASFZw0cX0VlhoshrKv
 2NdoPU57kcsbbb6cyiu31yotsMdoiKtyqUlk+oz0TSs2h3o9jxAedd8Wjh+6kd3N5Wg+
 GNrG2ug/7KcCS8BCPGMHaK19XFYSvObeanbptGVJ6SWzWds4XUFordT+2Nw3RJbmbgoy
 ZUyWpNRCOWJjFXG7qRElzCAT2CD5fnSwCiKEdSjLcMg4+7makbLxk9rKUHqbu6H2Bfo7
 kFtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZiIIarVNYc+IPXqi3ZtMcJmmvmMmviVgkK+GA+EHbhA=;
 b=uQWF849kJ6wC3VJ790J85JEoPHZXofSACM4SWtTJPDdUIoekZct9qx2y9xY8JITOkt
 xxFhZK/s4AZrvWSUs2PXNzbodgpnHnY/BP0igOhtfHkqFDlGrgZeURWQ0QcOJ8Bq2sHg
 JavThx0updjYVlks9EdJNqG0NGEQvZwqQdIHFY21LFdUx90zUhGLB5aEf+k9hcKwShsj
 oO1nqtMTWl5QpvoKeCEhpviOVrM4pVKwMKoNU606Prv7jDP/BejYG00RLadFgdxRP0Ap
 wz6WLXzmxVLyy6yj4WvwHpKiIJ0syG+NPojRrBRa1iLPU4AKlwXYhMtYS3unEVBFi+ER
 rNoQ==
X-Gm-Message-State: APjAAAVTxr2CKiPrAKLZFPO3xj7bfR25XJRhNr0SSVtdamyKzRFQPYt+
 /Q+X8CV+gwU9ldDXgDsUhfJT4F5Wy4OaRe29nDE=
X-Google-Smtp-Source: APXvYqyj9+ZRfTdLuN0mjg8NPOB46WOVRAt5cAu/Bhj4I4pqwq7IzgkWyjvVj6FI5s4pm42EnCqsEyqY25k+7COMUw8=
X-Received: by 2002:a9d:6405:: with SMTP id h5mr16586195otl.42.1560116195631; 
 Sun, 09 Jun 2019 14:36:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
 <20190609180621.7607-6-martin.blumenstingl@googlemail.com>
 <CACRpkdYzeiLB7Yuixv6NsnLJoa_FnGKRHHQm=t4gMH34NdFSYA@mail.gmail.com>
In-Reply-To: <CACRpkdYzeiLB7Yuixv6NsnLJoa_FnGKRHHQm=t4gMH34NdFSYA@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 9 Jun 2019 23:36:24 +0200
Message-ID: <CAFBinCBgoLb+Hfdo-sZ_0H6ct=UJm7j6wD_C6udbA6BTRvFOWQ@mail.gmail.com>
Subject: Re: [RFC next v1 5/5] arm64: dts: meson: g12a: x96-max: fix the
 Ethernet PHY reset line
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_143636_765710_5CA54794 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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

On Sun, Jun 9, 2019 at 11:17 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Sun, Jun 9, 2019 at 8:06 PM Martin Blumenstingl
> <martin.blumenstingl@googlemail.com> wrote:
>
> > The PHY reset line and interrupt line are swapped on the X96 Max
> > compared to the Odroid-N2 schematics. This means:
> > - GPIOZ_14 is the interrupt line (on the Odroid-N2 it's the reset line)
> > - GPIOZ_15 is the reset line (on the Odroid-N2 it's the interrupt line)
> >
> > Also the GPIOZ_14 and GPIOZ_15 pins are special. The datasheet describes
> > that they are "3.3V input tolerant open drain (OD) output pins". This
> > means the GPIO controller can drive the output LOW to reset the PHY. To
> > release the reset it can only switch the pin to input mode. The output
> > cannot be driven HIGH for these pins.
> > This requires configuring the reset line as GPIO_OPEN_SOURCE because
> > otherwise the PHY will be stuck in "reset" state (because driving the
> > pin HIGH seeems to result in the same signal as driving it LOW).
>
> This far it seems all right.
...except the "seeems" typo which I just noticed.
thank you for sanity-checking this so far!

> > Switch to GPIOZ_15 for the reset GPIO with the correct flags and drop
> > the "snps,reset-active-low" property as this is now encoded in the
> > GPIO_OPEN_SOURCE flag.
>
> Open source doesn't imply active low.
>
> We have this in stmmac_mdio_reset():
>
>                 gpio_direction_output(data->reset_gpio,
>                                       data->active_low ? 1 : 0);
>                 if (data->delays[0])
>                         msleep(DIV_ROUND_UP(data->delays[0], 1000));
>
>                 gpio_set_value(data->reset_gpio, data->active_low ? 0 : 1);
>                 if (data->delays[1])
>                         msleep(DIV_ROUND_UP(data->delays[1], 1000));
>
>                 gpio_set_value(data->reset_gpio, data->active_low ? 1 : 0);
>                 if (data->delays[2])
>                         msleep(DIV_ROUND_UP(data->delays[2], 1000));
>
> If "snps,reset-active-low" was set it results in the sequence 1, 0, 1
> if it is not set it results in the sequence 0, 1, 0.
I'm changing this logic with earlier patches of this series.
can you please look at these as well because GPIO_OPEN_SOURCE doesn't
work with the old version of stmmac_mdio_reset() that you are showing.

> The high (reset) is asserted by switching the pin into high-z open drain
> mode, which happens by switching the line into input mode in some
> cases.
>
> I think the real reason it works now is that reset is actually active high.
let me write down what I definitely know so far

the RTL8211F PHY wants the reset line to be LOW for a few milliseconds
to put it into reset mode.
driving the reset line HIGH again takes it out of reset.

Odroid-N2's schematics [0] (page 30) shows that there's a pull-up for
the PHYRSTB pin, which is also connected to the NRST signal which is
GPIOZ_15

> It makes a lot of sense, since if it resets the device when set as input
> (open drain) it holds all devices on that line in reset, which is likely
> what you want as most GPIOs come up as inputs (open drain).
> A pull-up resistor will ascertain that the devices are in reset.
my understanding is that the pull-up resistor holds it out of reset
driving GPIOZ_15's (open drain) output LOW pulls the signal to ground
and asserts the reset

> Other than the commit message:
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
thank you for looking into this!


Martin


[0] https://dn.odroid.com/S922X/ODROID-N2/Schematic/odroid-n2_rev0.4_20190307.pdf

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
