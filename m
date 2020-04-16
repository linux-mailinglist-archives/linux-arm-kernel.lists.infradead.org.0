Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 352E01ABCAA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 11:21:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b9HyhV6ls+LSE6rbhcwXaFirclXi54iEgWc5mQkxWTM=; b=rVpqysTa1mw/4Z
	aqu1gaofTkQCd7UwHY53X4PPdQ9W9GkLZ9CFI2xLFeRmeCiMTFtDDfLsMMnulIdoOLgyOaI2XOOvH
	rkslMhpml8WfYgv1zbiRHWK8HxjnhaHGm0rHIXVLFeGIzFf6RSOwnqGUrorcpCTm40QHijkXSLN1i
	Qp/K1KwtX+KJ6fpwSVyMl5NLDdcxIi3zoT9LhpIQDRn33OI6Dg4F2O8ZSAJVgcb9ds5lTEwiLsDc8
	g4TRgItB7M7z4VvSeYOe+RokLxz87rv30DVJ+sDJKTufpU/qWqNvDm/HgFs7RE4JS+R3CGCiMUJIC
	3w3hxtTyBnPRI5rO1Ylg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0hk-0000vO-1X; Thu, 16 Apr 2020 09:21:04 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0hY-0000uQ-Kl
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 09:20:53 +0000
Received: by mail-lf1-x144.google.com with SMTP id w145so5046041lff.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 02:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iuZQPq25LlhzAjymFw6DX/CB5GWOdpk6lIwmaoZu2BE=;
 b=hkTtnz2DkVpj5FadPidho1Yi0E3E7wBAIYmB61/Kj4lK/X8UrCLL81x5xmrcWGWc+H
 azS6fkmcowWvwOnDXcI9l4y6Ucno0mzyziNpLxV9Mthz8Y0YUdXq82D8FzhAITXPdDF8
 3tFd/DXFS5Ty+STvGvcwXllNt8lFNMCiTuvCiXYSz2PukY3ig/gTtCqCjuJHHyXpd1A3
 QDfx/KUMUCLzLxrTqLoSlNd+gU4YBuAYH/DvcY6yoeUzHZc1o3NaKorVY+VcrIzkfObd
 u7uovSiNsexRzNZk8c0flO0ZydCK1WaSDd1IcMQT71DefMnE/zm8iho+FD/0QJcA2MJG
 wMcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iuZQPq25LlhzAjymFw6DX/CB5GWOdpk6lIwmaoZu2BE=;
 b=cqA82BXOv1lRGXWNFX32yJoAm2zKfvVp2324KeUF1Q1NinAlLkkdWkNymIADyXmP17
 /alixj5bxfc4KihvSMzq/rDRC7vAS/Dv3m/MEW+fFtkxVa08ISImwx8xTXUoCm3PUB+6
 oqFJaRJzeSnGEuxwqIqcESW1uPuHWgQIo5mADv5B710xXcC8rBQaFZUoh/K3Srvvc2EC
 tQtEKQ/nJKNXtTs2kxxpS8iTNz0lPqlLUFtVr2N/XGchuig2/m+6mhL2tV0TWAdzok+F
 QQ8TDFEDYsjhzvwpMKTCVb9Q95cmJqR2eMG5Yc4bRbTRsdXY3FWeyO5SzFzjfH8QF8uZ
 LupA==
X-Gm-Message-State: AGi0PuYW4y+oKZOBB0pFnYMgHILMbsKvdXjyx6t5ba9OxusXHb9nDaoh
 /+xasHstFw267+X4b9OwYlibO+XFQibgrC+6uuLRPw==
X-Google-Smtp-Source: APiQypJvAs9P0NYlc+VDp3QIFWPUjuxP+cKRiyTPcwcbTngB4Tr+zwZ10UYlTO8u+2AsTbbibFkxTpAAASs25r3y/l8=
X-Received: by 2002:a05:6512:52c:: with SMTP id
 o12mr5352302lfc.217.1587028850060; 
 Thu, 16 Apr 2020 02:20:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-11-michael@walle.cc>
 <CAMpxmJVE3PgVCxkQ-ryc5=KSrKcpdmk1cnJUxJBz9QFCx-e_+A@mail.gmail.com>
 <80bd8661ec8a1f5eda3f09a267846eaa@walle.cc>
 <CAMpxmJVC7e9JnHzBo-h8M1+KmcA32=Rvxo7+znH=-kAbcCr_LQ@mail.gmail.com>
 <e0388a2137e23d76b2415a7549c01dd1@walle.cc>
 <CAMpxmJW1x4Orh1BZ4TUoCsYeaAAZ4NBUNvoMG9JgP0iLvXTOtg@mail.gmail.com>
 <62d157198a75a59ada15c496deeab49b@walle.cc>
 <eab972adf53bbac20b5a9e613fcfb5b0@walle.cc>
In-Reply-To: <eab972adf53bbac20b5a9e613fcfb5b0@walle.cc>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 11:20:38 +0200
Message-ID: <CACRpkdZPZ4nFQ6B3tGG9wvceoTWqAkfY0r1UKs2pf_c=ZNBG=w@mail.gmail.com>
Subject: Re: [PATCH v2 10/16] gpio: add a reusable generic gpio_chip using
 regmap
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_022052_694569_828AE42A 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 9:57 PM Michael Walle <michael@walle.cc> wrote:

> So what about the following:
>
> #define GPIO_REGMAP_ADDR_ZERO (unsigned int)(-1)

Yeah with regmap explicitly using int I guess we can't use
S32_MAX, so that is fair.

> So this way the user might assign the base addresses the normal way
> except when he wants to use zero, in that case he has to use
>
>    ->base_adr = GPIO_REGMAP_ADDR_ZERO;
>
> gpio-regmap.c could use then:
>
> if (base_addr)
>    something_useful(gpio_regmap_addr(base_addr));
>
> unsigned int gpio_regmap_addr(unsigned int addr)
> {
>    return (addr == GPIO_REGMAP_ADDR_ZERO) ? 0 : addr;
> }

That's reasonably clean.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
