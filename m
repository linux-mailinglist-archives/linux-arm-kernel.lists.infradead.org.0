Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FE447582
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 17:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZaRkyW2tcSBpMlrgDhyOTVZqcQCDjdNGSUfpkHLd8tk=; b=Y8vdhjzkytXrlS
	fPNJ99zx7dPIzILqNKjfxz2y8p8ObCRcT3I8VPOQ3A1s4g7pVcNZfaBDrV3H0XC4NoAys5DPUONil
	RJeraiaXZBl6gojh3JDa2sLsCYqMPGqxN8bjTJwEEv/WKZn57b+pUgP1EkAxuESh49R0qClH79bjW
	+IR4yChrrKhk5Rz7PWSNy2xKV1eJmFOUEsEA0w7YU5b3sOgMMz2MDrfmuivCsREpZWNGMSvAbSaRE
	8m8g30b/JEH1hM+BojPlD6pnfHb5eODHZj5hUAT2pN0JnyUg7BmZm40PYG/reZESktCWAaMGMnQXb
	ZsbGvygkab5A76zKUfig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcX4r-0006AZ-G6; Sun, 16 Jun 2019 15:28:17 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcX4X-00069n-GA
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 15:27:58 +0000
Received: by mail-io1-xd41.google.com with SMTP id w25so15915520ioc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 08:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aPdgLhFxC6S2iXglokqYTyVchXogMF9BrEQ21au7qLg=;
 b=uLl1WLigX67Y767DajoTMuwBZl+FMbCzg3H0R+gdR8tvCtt6AspF3DXQt6YHTFEZ5C
 n8Yvjo7pXBdo4PMdDHsIA1nq/u69en2un8UqNEsP1ykVPJCfMB0fZb69WafPuyK1cv9e
 g9QjhtZdtU4FCgk+hi2+6kOzcrE8LVbaoJDCLjwxhgDUzEUH6YYvtT0nz5qk4gN44Wyt
 hwbKTZzxfMC2ofYjznYNCrsrrkPnSzhkyOtWW6CyLIfK9VIfIw43cWhV/wOltf41T0LV
 VvwSZYUIXLX1V/6ATgESQFdX8XmOoAa8H9Z4Ccy+K/czrTTo6TB08A48xaZqE/C2ftvD
 W9yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aPdgLhFxC6S2iXglokqYTyVchXogMF9BrEQ21au7qLg=;
 b=cNNodCCKAR7kyazH6WiTAKBrXRcbKGb7JR8KoFOlaxeDcl6OT9IWo1qH3kp/9sajnp
 ipPdv4EUWEEfe6xNpVyrQ7w53yx9qc9TAS9GbOExfgerevSp9Zz2nTX/po9piR2z3+vi
 4D2HS48RcwMfw4WLlB2myFxq7MSh33dPsbfV4zaTLIc52m2LR9qMEdmJQqNmdPClVk39
 P5mUySbbLrp5CGgAvXE10/y6lqgQyY91ohpr0xMIfCa5BxvHAggOZSseYPQ0QTmf/s3p
 sj+2EHouIsG99YRnqvEgBI9+nyuL3C3+kgd+92x/hH3/SdyLM1syqbQAwSb2OCPYgSr6
 mxFw==
X-Gm-Message-State: APjAAAUqL/I2sKIYLduRHFvF3oLNsfWso9GKsq95KJ9PTV55veV19VfF
 bueYZPtSnR2AiLN/POT93iQnxlA4QlQ4C1SZoyg=
X-Google-Smtp-Source: APXvYqyF2bj9jxL7xKv9ieUmH9q3g6ph/705HIVbMWqkgg4NJla/npMnFF+tY5IccVOZhEi0qd3NB0W8VtO4QPo4oMQ=
X-Received: by 2002:a5e:8e42:: with SMTP id r2mr15141138ioo.305.1560698875702; 
 Sun, 16 Jun 2019 08:27:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190525181329.18657-1-tiny.windzz@gmail.com>
 <20190525181329.18657-2-tiny.windzz@gmail.com>
 <CA+E=qVdh1E8Y7dZO0JSS4DJE2bo=98MuSKRt7nmeFg-td7Ua9Q@mail.gmail.com>
 <CAEExFWtjNridLsMXOnBe2mJOPhUOYJ6G3wGF3gx=0oQoQROOGg@mail.gmail.com>
 <CA+E=qVeOSw=_z4OiQ4++z8g-KN29UYVXGicNd3PtHobg4xaG+w@mail.gmail.com>
 <CAEExFWs58UNcVcQNnwK3dk5cpmfQRnjdRWAmYs5M1t_ONr1Bpw@mail.gmail.com>
 <CA+E=qVf-_2DWbf55bCnjbkZH9N4a1_K16OxN9=o=NrZAV7GXPA@mail.gmail.com>
In-Reply-To: <CA+E=qVf-_2DWbf55bCnjbkZH9N4a1_K16OxN9=o=NrZAV7GXPA@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Sun, 16 Jun 2019 23:27:44 +0800
Message-ID: <CAEExFWthch7MOafwyma0qkx3szii6TG_kB26K+KeY=82xwu=Aw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] thermal: sun8i: add thermal driver for h6
To: Vasily Khoruzhick <anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_082757_567249_A7985DC0 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Sat, Jun 15, 2019 at 7:08 AM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> On Wed, Jun 12, 2019 at 9:50 AM Frank Lee <tiny.windzz@gmail.com> wrote:
> >
> > > If you have a git tree I'll be happy to contribute A64 support. IIRC
> > > it was quite similar to H3.
> >
> > I built a ths branch and I will do some work later.
> >
> > https://github.com/TinyWindzz/linux/tree/ths
>
> Looks like you forgot to add your patches to this branch.

Frankly, I started the new version this weekend. There is still a
small part of the
hand that has not been completed, and I will push patches to my branch
these two days.

MBR,
Yangtao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
