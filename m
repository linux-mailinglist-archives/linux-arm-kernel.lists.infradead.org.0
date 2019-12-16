Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C27120597
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 13:29:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nhxALIruJHDCFt6B4sTv9d9HE3fYzuhkIJ6i60L8RcY=; b=A+mkXR/tVsYuFe
	E605Dv3KsYBircGEJRFDV+gyZ6yfdb03Y9PfXcyKcERhg6TCJCUTi/hi5AgSS5SlgBPx4nGDEhXkd
	YAriAs3GNhuaQ7vKGhlDd+0gXiSUCEaE6Uwv0tONefYektGkI0O74iy1qJ1HDe5GerKqDuUwslJrv
	FDakHQ1wzRZUd5fYMTgTv3tslyR4kJcZBoAW30X+62uukCQD7IhbYcDT5rC5qQjjqnmMOlrZR8J75
	ld9etb4BnH1mQFv4KiUHrB/6brgWrwDC8zmyeILme5ypGvIEr8EoK2Ggh1NDXj1IbmjM/TUalxGgE
	aMLsCJTGDh/3auOtzjKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpUf-0006xJ-S6; Mon, 16 Dec 2019 12:28:57 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpUR-0006v4-19
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 12:28:44 +0000
Received: by mail-vk1-xa42.google.com with SMTP id i4so1558720vkc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 04:28:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QaoPgwh2xfV295jRIGnmPYl36fDZZNdnkiloN5hh4CE=;
 b=S/B9vSxtl+yCUJ5TJtpNk2Stv/n4pxJen2cvthe3ynAP3s2fdfTEDf3tZomPyz6/ti
 c56rzuxM4QAB6cX1SwuBlhogEMIItrAmGHHi3ns9bmKzWiSCvIoPoAQsE6LewWidcSt/
 uS/ygBA6WwzxnYrECvxR1yO2wGs7T55an3bXKgv1VII9O7KQetwebEVFyS7PP5o5JG8Z
 WXw7M3EFBu/VJ44dxGgmBl8Gz7OGufeX8UpyQueudgpm0MdnhWFUBNsCWFzcddS22VKX
 sPNZI3c8eaEF8pJD1EuxwIwS1BAOsagfTF+6dyoXqycYB/nk0NUuEatN48eLbR9wzjR0
 GqBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QaoPgwh2xfV295jRIGnmPYl36fDZZNdnkiloN5hh4CE=;
 b=IdbaZvIPx8LCBPpY4bm75CRm/oA7HUtgDDQG/h7AUSdf6H1xZpOwTMoC2u8AK/TYm8
 21NxvX3exwTmKqFlbexRpy7noLfM6jK0AU0few3xHW2WyYxJEaHqmy/CBpK5fa9rhp1Q
 E+F/pLlO5pFFEFXHxUsmaysKsugTJZHA7eKC78RTuN8zjTvy7Rw/AhkapWGkd8S64yJz
 h28Nk6J64U0QCgi183YGO8PWpgV3NEbQnIgwIFXhDR8Wp9x/6TFdvua9s+fUMh02JefM
 jxLHSdvTewCeYJt5ubneHpA+4NLTyHkhceHNU3x2NuvuFMRizXzOGTCEQKHPDTeIQYTA
 EGbQ==
X-Gm-Message-State: APjAAAWLn9/08kBxIx66TM7LKG1INMwOjn6poQ3oZ9zs+3xB58f6Wa/s
 CV1odMGkkXmrTMq281t8s62j+PZLfBWgPTa+jmj02Q==
X-Google-Smtp-Source: APXvYqw/AlQK61lzoibi6xl6okziErleCZ8cs/LBZLmTMrBvWdsoY+o2BjyAVo3CYVnu+ks556/YdO+EFNqOolU0srg=
X-Received: by 2002:a1f:fe4e:: with SMTP id l75mr24217758vki.18.1576499321815; 
 Mon, 16 Dec 2019 04:28:41 -0800 (PST)
MIME-Version: 1.0
References: <20191129172537.31410-1-m.felsch@pengutronix.de>
 <20191129172537.31410-4-m.felsch@pengutronix.de>
 <20191204134631.GT1998@sirena.org.uk>
 <20191210094144.mxximpuouchy3fqu@pengutronix.de>
 <AM5PR1001MB099497419E4DCA69D424EC35805A0@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
 <20191211170918.q7kqkd4lrwwp7jl3@pengutronix.de>
 <20191212161019.GF4310@sirena.org.uk>
 <20191212162152.5uu3feacduetysq7@pengutronix.de>
In-Reply-To: <20191212162152.5uu3feacduetysq7@pengutronix.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Dec 2019 13:28:30 +0100
Message-ID: <CACRpkdbkiQLmyxHG4mAOqOho34UkUZwctRwsUgyJKCgZBOUEvQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] dt-bindings: mfd: da9062: add regulator voltage
 selection documentation
To: Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_042843_207125_F48831C7 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Support Opensource <Support.Opensource@diasemi.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "andrew@aj.id.au" <andrew@aj.id.au>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 Mark Brown <broonie@kernel.org>, "joel@jms.id.au" <joel@jms.id.au>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 5:21 PM Marco Felsch <m.felsch@pengutronix.de> wrote:
> On 19-12-12 16:10, Mark Brown wrote:

> > Note that there's two bits to my concern - one is if we should be using
> > gpiolib or pinctrl, the other is what's driving the input (whichever API
> > it's configured through) which didn't seem to be mentioned.
>
> gpiolib or pinctrl:
> I pointed out all my arguments above so I think it is time for Linus.

I think I've elaborated on this?

The API is fine with me, because this thing does some autonomous
control and I don't know any better way to share that same line
with the GPIO subsystem than to make this offset available to
the regulator driver.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
