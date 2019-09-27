Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DD5C0C7F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 22:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohctiuFvzKepLl9xD0lM2Vc7cij9j4iwQuCwS4luAIM=; b=gN1S87V9hm00+W
	19khQN2y37OhXhfPBqzHspYQBXSKLcsgrtVhb1EaKIdNcTlNffKr9w8Ribsb/rocG8qhAT/PF3HMD
	lnY8eVISECGE/5HfuwPjLQc4s5x+leq2YaWlHJ+slfhG5KA9gUwCK8gqdiFwNbyvtcBljKeEXXGRV
	BhY2HuVzT7ACP/qCoZknIQlvpdyclMn8JKRC8S1ja/cn/BBwQpS6WSeEUPpcNMfm+ZwPmLYJJWCbj
	RahEJNjQjn5mWRC1ap5q/hJgllVIZZvlU6ATRq/97L22Bep9u524mhuX2cZNBRCx40xYVyNcCEWDg
	y/CKpm8kjIdwODwss9rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDweL-0005mA-Tw; Fri, 27 Sep 2019 20:15:33 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDwe4-0005in-Pt
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 20:15:18 +0000
Received: by mail-lj1-x244.google.com with SMTP id m13so3664637ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 13:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qXC46ElY52rOcZF+haJMaG9kGcpXjGEmuqnl/s6D7sU=;
 b=iJFiMf8oaWyvJ8t2FRdzBieJmBW5yu3HRnK01HFEMVSw7D+/9QK25m8hgUZhlWOrkd
 GziWqf9HwAaV/7hi26Io+K/S80D/MN/x+ezIQfe7uGfBQiGtpImE2fapnlVBtF1Vb+/3
 yQFsiXQup4fp1DCtB1o8KLpGpzcrECIOGG0AqChAK5VdPoNZvJJkWfrIX+n1PXyv3VmT
 xGys7w1WQGLfw68iLVFJYjP9Y2g0uImlpyLL/hpSnSJNSyZYO9tVpYVdCkiH5gkniz8q
 qLMAKTa17sTc5w77+WioyDKi/0DjMl+dAoWnHWw2RP+jPn1YO6K5X6L28U4WNAe5qVco
 U9RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qXC46ElY52rOcZF+haJMaG9kGcpXjGEmuqnl/s6D7sU=;
 b=BJqbJ+WBnqgh0nH87hV8UxfwtP1kCrGHVGyFOObtPPR5fqiA50yIS+j+k/9NOJ+ieB
 HKQiBu9WIVbP+VfrzOE51Hd6/OFvjLVR9KU+eLf7ud6tBMU6v1xyntw3iBy4ED7S1SsH
 gBQCsVcFSuVPzqy8AVAeHqQbEEQN8vUw+9H48RU980FxJVQr48NpWFwGD1mZvxIdzeZa
 dVW5kt6vBh5awZCj2bUrp1FDp9dpOtXWnP6JbI2hkBogLjsA31cAUNLfiqQIueQub6dA
 su3TJj+LhSt2UZQVMCZR2DEre3ZP2152qTUYHX9sB6g7ia8MiKA37Z9LEOY2hrXqYqF4
 +kyQ==
X-Gm-Message-State: APjAAAUu1415yW8sW3g0OjdIkI4d+2oIWJYhu9lOubzUJuOjLu/fnXca
 cO3M9YZauzEAsQgg9lwUFmxuKyb+GnVs7xoYCx82Qg==
X-Google-Smtp-Source: APXvYqyc5PxTmVaJ0Ok+2gj+DX5t1h/U/xZZiw2Ey28AqH+xKmSmLTYAFO5aIUid9OVGoQCZP/0p7sxnItq2tt3rgmM=
X-Received: by 2002:a2e:98ce:: with SMTP id s14mr4228705ljj.108.1569615315050; 
 Fri, 27 Sep 2019 13:15:15 -0700 (PDT)
MIME-Version: 1.0
References: <1563776607-8368-1-git-send-email-wahrenst@gmx.net>
 <1563776607-8368-3-git-send-email-wahrenst@gmx.net>
 <CACRpkdabfiDbGmAQciAUSThY-KfTsVq3tHz0bBszs2j_ej18Nw@mail.gmail.com>
 <63f17284-5551-9492-9eff-f8a4c003196b@gmx.net>
 <66dc2cad-673e-0a0b-0aeb-3d62fa2d4ccf@gmx.net>
In-Reply-To: <66dc2cad-673e-0a0b-0aeb-3d62fa2d4ccf@gmx.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Sep 2019 22:15:01 +0200
Message-ID: <CACRpkdb9pxCF-WvA0f3rU2cttX1XmQxB=xtOhPAaP+nYoBd_LA@mail.gmail.com>
Subject: Re: [PATCH 12/18] pinctrl: bcm2835: Add support for BCM2711 pull-up
 functionality
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_131516_905644_2377016C 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Matthias Brugger <mbrugger@suse.com>, Scott Branden <sbranden@broadcom.com>,
 Eric Anholt <eric@anholt.net>, Stephen Boyd <sboyd@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Michael Turquette <mturquette@baylibre.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 9:29 PM Stefan Wahren <wahrenst@gmx.net> wrote:

> today i had the time to try this out. Instead of the following:
>
>     i2c0_gpio0: i2c0_gpio0 {
>         brcm,pins = <0 1>;
>         brcm,function = <BCM2835_FSEL_ALT0>;
>         brcm,pull = <BCM2835_PUD_UP
>                  BCM2835_PUD_OFF>;
>     }
>
> you want this?
>
>     i2c0_gpio0: i2c0_gpio0 {
>         pin-sda {
>             function = "alt0";
>             pins = "gpio0";
>             bias-pull-up;
>         };
>         pin-scl {
>             function = "alt0";
>             pins = "gpio1";
>             bias-disable;
>         };
>     };

Yes that looks much better. In my opinion.

I understand that it puts some developers off because of being
more lines or excessively verbose, so to be on the clear,
verboseness in itself is not the goal.

The goal is universal
portability: i.e. it should not matter one bit whether I work
on an 2001 Intel StrongARM SoC, a 2019 Broadcom SoC
or a 2011 ST-Ericsson SoC: I will understand what bias-disable;
or bias-pull-up; means, which lowers the threshold to
maintenance.

Opaque macros, however helpfully named, still creates
a higher cognitive resistance and stresses developers.

> Unfortunately i don't know U-Boot is handle the BCM2835 specific pinctrl
> functions.

I think it would be nice if boot loaders avoid to forking the
standards, but I suppose it will invariably happen.
Just keep in mind the IETF motto "rough consensus and
running code".

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
