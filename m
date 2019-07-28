Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFB578263
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAsW+lbNKLC27WGEs11/Ceiho7AEk9HhHOuOFqQiQhs=; b=MPXnRhqD+94qc0
	3Okq73zMc7k6Bg2JYKjXvFojnFtqBLPbHeyGnCZyh8qVf1r7YMTqnFKnhqpp6X+esoOxw14GrNPO+
	NmrZOgD+rSbA6BWXtaJ8RYxunONg/G/b2wBR+X9aY+8n6DsQmSfrSjX8cnFONIRBcgYvBDzfn2JqZ
	kaOd+xY97sXMusyUhAOzb4uf/ibmi8f403qEIrXZo9d7xqEoFonTSwuHWAwUd0ywVaQRUU51/SMBm
	r1LRdjY9lQ3CAEVVyedhHnj6h/abupVlz6P7i9fs3B023A8GKRlJHz2nhnAUY/gaWtvB1oC7cAh/K
	qhQDfTuXhwWb69nD7FLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrsgm-0005SF-4o; Sun, 28 Jul 2019 23:34:52 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrsgD-0005C6-4R
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:34:19 +0000
Received: by mail-lf1-x144.google.com with SMTP id z15so36456580lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 16:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eUvn9OI5nD/4S7v8ywB8lgEu/KDQowtKmV6CtOSPqUA=;
 b=aEFFIjaZRLhrPDgULFaRicTLJcOaMeowEaKUJOOHKxsU0QeLveEc4UGQHyiCE9z748
 LokY6dj1a7TghWqOkoJZ0mkFKXLYJN/B++Ka3tTFhWmvmB78ADuM9y9mObtiU0E4Trqz
 yeY0A1yraFZKZIdaaAh0yHYrBWOyKpGLB5iZhDkYTZOU/kUmbgRr9tG+Bvf4lOWB324F
 svF5yh/hqwRzyr0EgJCkUZhzkclqGfGdEZE6Jd5Tb3xOCak99/+GzYvbwS5TI3h5A998
 sN1u/IeShA4POS42IOkF4YLja9CWZ5LFecqlS73MoehKEDHT6PnnW3TJx2g8hZYF7j2s
 Zopg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eUvn9OI5nD/4S7v8ywB8lgEu/KDQowtKmV6CtOSPqUA=;
 b=Tt0RveEWS3qMGRNSIWjk/JPNZfeA+DmeHqGmWcnhSgRKcuasH3+c11xNaSAUg/cpQk
 aYCJk+YKgFxS9ok1UaXmJdmOdSX0xt8BsJd5cWbipMX9R4iLXkbQu8tlTkg4Trd4/ZBX
 xJXHbWIEk45a3/GzDIWCM5sqcAqBdLsbxpJ9FxHbFd+ZhfJawhgOIpfHxx3mAS3RUnAt
 yBGlWpA2Toe1T/3D9UMDMzn/wMYF0Jq5iypHuFk/UIK/RLMXIJRxsNrAPANiZwzViUnf
 ocFH4EtwBK1mNCfl2v3tgrngYMEkea4WjSn0Fsmg53r6p4NO7u4PvmKsjKSi+YPFTRE0
 F8hA==
X-Gm-Message-State: APjAAAUGUQcPb73nrruhI+/GW4Wcth0S9Lc4NPIZBsGkWUpJ3UL26CUl
 hZcuIoKZ/1uSgjCdH0rAuB7DwbKR2I15BUMnhAR4WA==
X-Google-Smtp-Source: APXvYqysascwZ7s8p4u+iWYY6k2d56GISla2oOhZmhWM9B7cI6Cbtauk+/chIBA1grY5/zLjWKJ3aCLJJa9z3+4C1R8=
X-Received: by 2002:ac2:4891:: with SMTP id x17mr51451245lfc.60.1564356855227; 
 Sun, 28 Jul 2019 16:34:15 -0700 (PDT)
MIME-Version: 1.0
References: <1563564291-9692-1-git-send-email-hongweiz@ami.com>
 <1563564291-9692-2-git-send-email-hongweiz@ami.com>
 <CACRpkdYhVoP75ZDfASW+DH5yf-a5diitiXsh7eLsJx5hsTC9sQ@mail.gmail.com>
 <ef9d9c17-6e2d-4a4e-ac44-f8da4bb3b8eb@www.fastmail.com>
In-Reply-To: <ef9d9c17-6e2d-4a4e-ac44-f8da4bb3b8eb@www.fastmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 29 Jul 2019 01:34:02 +0200
Message-ID: <CACRpkdZxsF9gQj0VicVLsPKXg6rKA1mLwbywmazOf0w8PLnOfA@mail.gmail.com>
Subject: Re: [v5 1/2] dt-bindings: gpio: aspeed: Add SGPIO support
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_163417_193091_81048895 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Hongwei Zhang <hongweiz@ami.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 3:42 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> If the clock driver owns the control register, it also needs to know how
> many GPIOs we want to emit on the bus. This seems like an awkward
> configuration parameter for a clock driver.
>
> To avoid the weird parameter we could protect the control register
> with a lock shared between the clock driver and the SGPIO driver. This
> way the SGPIO driver could have the ngpios parameter, and request
> the clock after its written the ngpios value to the control register. A
> regmap would be useful here to avoid the resource clash and it also
> provides the required lock.

Nah. Too complicated.

What about using the clock API locally (in the singleton driver,
much as it is today) though, to give the right abstraction?

See
drivers/gpu/drm/pl111/pl111_display.c
pl111_init_clock_divider() for an example of a local
clock.

> However, you're also going down the path of splitting the driver such
> that there's one instance per bank. With this approach we need to
> solve two problems: Accounting for the total number of GPIOs,

I don't see that as a big problem since each driver instance will
handle 8 GPIOs and don't need to know how many the
other instances have and whether they exist or not.

> and
> only enabling the bus after the last bank has had its driver probed.

That is a bigger problem and a good reason to stick with
some complex driver like this.

> The accounting might be handled by accumulating the number of
> GPIOs in each bank in the control register itself, e.g. the driver
> implementation does something like:
>
> spin_lock(...)
> ctrl = ioread32(...)
> ngpios = FIELD_GET(ASPEED_SGPIO_CTRL_NGPIOS, ctrl);
> ngpios += 8;
> ctrl &= ~ASPEED_SGPIO_CTRL_NGPIOS;
> ctrl |= FIELD_PREP(ASPEED_SGPIO_CTRL_NGPIOS, ngpios);
> iowrite32(ctrl, ...);
> spin_unlock(...);

But why. The gpio_chip only knows the ngpios for its own instance.
It has no business knowing about how many gpios are on the
other chips or not. If this is split across several instances this should
not be accounted that is the point.

> This works on cold boot of the device when the ngpios field is set to
> zero due to reset, however will fail on subsequent warm reboots if
> the GPIO IP block is protected from reset by the SoC's watchdog
> configuration: the field will not be zeroed in this case, and the
> value of the field is represented by `NR_BOOTS * NR_GPIOS`,
> which is incorrect. To do this correctly I guess we would need some
> other global state held in the driver implementation (zeroed when
> the kernel is loaded), and write the incremented value to the control
> register on each probe() invocation.

This is answered about I guess.

> However, that aside, we can't simply enable the bus in the clock
> enable callback if enable is called per-bank, as it is called once on
> the first request with further requests simply refcounted as you
> mentioned. This is exactly the behaviour we can't tolerate with the
> bus: it must only be enabled after the last GPIO bank is registered,
> when we know the total number of GPIOs to emit.

So the bus needs to know the total number of GPIOs or
everything breaks, and that is the blocker for this
divide-and-conquer approach.

Why does the bus need to know the total number of GPIOs?

(Maybe the answer is elsewhere in the thread...)

I guess I will accept it if it is really this complex in the
hardware.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
