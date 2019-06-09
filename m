Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBA03AC03
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 23:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtq1C7f3mLXyAafRg3ns3pieh+S5TKvueTdt8pXjYqE=; b=Lfd0cyrcv9+iZY
	ygzIrg7NeO6T+zcfNmmPW0frbxpntOGrJK4XNMSsGn2E8UtEz/aDvlNXwQhiNXfHQBPcUGOmrj0un
	gm+qmJLfoipHQJotsFRi50yXascesutfSDzmPUDgdMSbDFR5In6dSr/gXo2vrnTw/uwVcfP0JGgpT
	WaKwIDcjiJNWGhhe71nG7o0sZgCn6PjSxXQY5bdrJfmrzVdihoUsBAM7zrcedwXTqnVIJnGoz5YJJ
	XGsrDiE5qSo/4InYLMEF1MhgVwaTQjmlEVKl9jyrdUwhosgwF5ZNMxs58aQaFshqw9+IHTacgz0LR
	4hvlQBMSraO2lA/zbAuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha5Fl-0005qL-Pr; Sun, 09 Jun 2019 21:21:25 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha5FY-0005ou-Iq; Sun, 09 Jun 2019 21:21:13 +0000
Received: by mail-ot1-x342.google.com with SMTP id p4so3334913oti.0;
 Sun, 09 Jun 2019 14:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ILeRyRcjcESncIl+P40HqpETCX7L+NY2Xryuox2AyAU=;
 b=vA8aLg9fXf3AMIkpttufBddw8qtRPGAoEkExHeDBLzOR4ig+7ulCusH6Lq+Zfq8Qy5
 n27AtawXPi6N876u0WAnmpjFukegBqhtfOW/ivahVb3zJx84+aXeWYfmY/OxlTSL+60z
 pPIp2tpUv36aNJY8n/MYH5MSJcHb2SNryQAWScuOiMrGIzF2uO8eI0Gr6Wb6Gp4DaMBU
 jexUiHzfshPGcZCvgWMl3ZEua5Wax4mKYIBULPDfCC4gchorb1Csg6suVmgsML8voafP
 aTaX4gv7DsUxW5b9B20uLabF+OX3m0RmUUEyB77CsWTj8DKhnic5nkMeGNUYSfiJxWAZ
 T2/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ILeRyRcjcESncIl+P40HqpETCX7L+NY2Xryuox2AyAU=;
 b=I45ReTZ7YvrWx4xZwGegO7xe2r8HYua5a5w530yHpHhkacNypW2n4LVD87ITQPrEUp
 Z1NNNdYESBP+PGZMO3zrwGfUdjuRjINbi1CKkZcTn4E9/j6ovzdWaAdeKSaDg2Vi7XoF
 q71mJHGV3bf7fxeOn4yRIWoEYNu3rfNJfSbHHldPiwgoH2fZEPg+/7ZSyfMTHAAcudVD
 wDR4SROcEiX/VQG38V4cNQMxluo+BjmcdMqcgKmyeurb1JISMaHkJ+JjuQsv1nPcMS9K
 ZA63PlIOjvZnkAE0EJnjbfnaErO4EmOAEVoVv+1vS8LS4gRUp+cyNT28gYaAnlEUdR03
 5Dww==
X-Gm-Message-State: APjAAAUTmFfi38afK4NKuNZeYo5t5MhoXOBiT4gF96Jipkb6IrqDK8l0
 V7JWjNVAK7DibfMQ9aRCIark68lar19JY+Z/5X0=
X-Google-Smtp-Source: APXvYqxchWD3SK/5TgN7AGYLIIb5pfYYcmdM95qajFTt87HFoDR3f82VHMstyE2SNxDn2jQ7NIGHtL0BVjkO1m192S0=
X-Received: by 2002:a9d:6405:: with SMTP id h5mr16556583otl.42.1560115271456; 
 Sun, 09 Jun 2019 14:21:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
 <20190609180621.7607-3-martin.blumenstingl@googlemail.com>
 <20190609203828.GA8247@lunn.ch>
In-Reply-To: <20190609203828.GA8247@lunn.ch>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 9 Jun 2019 23:21:00 +0200
Message-ID: <CAFBinCA1xp5+77DhYMFjX31D3DsaU7d9EqFkWbn+UFFx5LSqEw@mail.gmail.com>
Subject: Re: [RFC next v1 2/5] gpio: of: parse stmmac PHY reset line specific
 active-low property
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_142112_652165_4C9E6495 
X-CRM114-Status: GOOD (  19.61  )
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
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-gpio@vger.kernel.org, netdev@vger.kernel.org, linus.walleij@linaro.org,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, joabreu@synopsys.com, khilman@baylibre.com,
 peppe.cavallaro@st.com, linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Sun, Jun 9, 2019 at 10:38 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Sun, Jun 09, 2019 at 08:06:18PM +0200, Martin Blumenstingl wrote:
> > The stmmac driver currently ignores the GPIO flags which are passed via
> > devicetree because it operates with legacy GPIO numbers instead of GPIO
> > descriptors.
>
> Hi Martin
>
> I don't think this is the reason. I think historically stmmac messed
> up and ignored the flags. There are a number of device tree blobs
> which have the incorrect flag value, but since it was always ignored,
> it did not matter. Then came along a board which really did need the
> flag, but it was too late, it could not be enabled because too many
> boards would break. So the hack was made, and snps,reset-active-low
> was added.
that seems appropriate. I don't know whether you can fetch the GPIO
flags when using legacy GPIO numbers.
so it may also be a mix of your explanation and mine.
in the end it's the same though: stmmac ignores the GPIO flags

> Since snps,reset-active-low is a hack, it should not be in the
> core. Please don't add it to gpiolib-of.c, keep it within stmmac
> driver.
I don't know how to keep backwards compatibility with old .dtb / .dts
when moving this into the stmmac driver again.

let's assume I put the "snps,reset-active-low" inversion logic back into stmmac.
then I need to ignore the flags because some .dts file use the flag
GPIO_ACTIVE_LOW *and* set "snps,reset-active-low" at the same time.
"snps,reset-active-low" would then invert GPIO_ACTIVE_LOW again, which
basically results in GPIO_ACTIVE_HIGH

however, I can't ignore the flags because then I'm losing the
information I need for the newer Amlogic SoCs like open drain / open
source.

so the logic that I need is:
- use GPIO flags from .dtb / .dts
- set GPIO_ACTIVE_LOW in addition to the flags if
"snps,reset-active-low" is set (this is different to "always invert
the output value")

my understanding that of_gpio_flags_quirks (which I'm touching with
this patch) is supposed to manage similar quirks to what we have in
stmmac (it also contains some regulator and MMC quirks too).
however, that's exactly the reason why I decided to mark this as RFC -
so I'm eager to hear Linus comments on this


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
