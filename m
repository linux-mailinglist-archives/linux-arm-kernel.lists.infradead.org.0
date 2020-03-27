Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E64195E0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 20:02:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDTaKdjNgRuDFksqZnC5Yy+a5GG6GVE4ny452p83pso=; b=poTkge114ZSpI8
	vH38iIvQV2J/cNLwHefonJaeqk+vQ0Q2qgxfMbZyhb060QOq9qOlp8PBuEDyK5ozAg/buY9k2amAE
	/p9K0761imwlJI9DYAvS222UryX1V2abOHHkRmF+jJPA/AqDwigNb1h+iJjSY4i9rZkadOKPvxbPQ
	yCWTHo7RKBlvAKhuT+AD7slgtYbofrBglOAcdf4q/1O7SGNQD0ooWuoY2KwSt1CzHhLSywumWKabm
	Junc2wZz6cVa0XQqK+zDKr+qEj59xDHicuHOGYrDhlvxQEYKkLmGsc9DS41cSyxpHxUa8DHpBWzee
	01k0ix9uQAUJ+uIBJH1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHuF4-0000sJ-FO; Fri, 27 Mar 2020 19:02:06 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHuEw-0000rh-2h
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 19:01:59 +0000
Received: by mail-lf1-x143.google.com with SMTP id t21so8756642lfe.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 12:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CooN/lA7d5yACqkmjNxbvElnXH9xWYc5D690cPagV5A=;
 b=XzwTwOQ2tZqjO9DLphNswRW0Faz+tkI3lW4QKn8PnDodceq0s69XJc+EX+CaxLUZAc
 DsmeaJdkg7faxGR2WlOr2Q2xOqCK3LhvO83UpvhTPjbrrDITVXe01nU0HW2zIBGLSdNK
 x+SI4S2qeU3EY5SopL7X1UD90wHcT3WjJvLfVVsAO2U5Em5d1XWCXX0PRhRjUwlFbFjC
 /RhNOl/qPgtup89fKy/XuqC10uHh8xb2p99SAbLCDPTbSVvO8tHFnVGOGXPs57VzLKHy
 z3pNrxrHAv/ZVQFSEpVOjEocb4Os2eKubiclJ5LN8KBbJgdGF3NkBVCWlJGOm0DbvFTa
 Y1mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CooN/lA7d5yACqkmjNxbvElnXH9xWYc5D690cPagV5A=;
 b=UBP51A9Z7ws3ImNDxeZ0HHPxb/xaKAR1UmtgeXSKSKKfdAwkWyHSCbuN5wLZKfdxIn
 avb8ehlVGoup6ZFRYxMMykMTXugPLTlLbTZg0oxON5ccVg8ZtiiTQbG5Zqp4xjALcGdI
 tnYfPJCmDZwX/U3s6AxmP8z4a/EVeLaiiqn40uL22Awv/9IB9+68ePTx0nPrdK4fC/yq
 6mIJcNtCZpePLZL+0Zl+1zBYVKulTdjrAyh3kfxbxeV5yB5OBcnRT7ncNzmtEUgg+Njc
 N6s5vjw2PLx7vaaQ8UDhHAwmfXQcKX6qdAyo09RgIuQU7JPCHV9UQv6HZqRhtshanU7D
 2RqA==
X-Gm-Message-State: AGi0PuZja/d9J3M5Dux61yV5M8IWwZe5XCGQzW/QuAq3PRnY229teny0
 x7AmXunTUqomUy1zl6Mn2OLcWjnf7/pShUAyo/D/bw==
X-Google-Smtp-Source: APiQypLD/fNDqtD4u7+uuQ8ZqMmHjJHk9/rbkJ2Ows6MzWRJlKEVAAUCTvzeqzTfoWN78XIJxBngK/onAWpgkIOJt00=
X-Received: by 2002:ac2:5f7c:: with SMTP id c28mr457241lfc.4.1585335716191;
 Fri, 27 Mar 2020 12:01:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200317205017.28280-1-michael@walle.cc>
 <20200317205017.28280-13-michael@walle.cc>
 <CAMpxmJW770v6JLdveEe1hkgNEJByVyArhorSyUZBYOyFiVyOeg@mail.gmail.com>
 <9c310f2a11913d4d089ef1b07671be00@walle.cc>
 <CAMpxmJXmD-M+Wbj6=wgFgP2aDxbqDN=ceHi1XDun4iwdLm55Zg@mail.gmail.com>
 <22944c9b62aa69da418de7766b7741bd@walle.cc>
 <CACRpkdbJ3DBO+W4P0n-CfZ1T3L8d_L0Nizra8frkv92XPXR4WA@mail.gmail.com>
 <4d8d3bc26bdf73eb5c0e5851589fe085@walle.cc>
In-Reply-To: <4d8d3bc26bdf73eb5c0e5851589fe085@walle.cc>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Mar 2020 20:01:44 +0100
Message-ID: <CACRpkdYwqReW+UcY=4S3ZnC+jFeVr=e+Ns12A_CK6o7VBUXHbA@mail.gmail.com>
Subject: Re: [PATCH 12/18] gpio: add support for the sl28cpld GPIO controller
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_120158_658529_0A4EFE5D 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-hwmon@vger.kernel.org, linux-devicetree <devicetree@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, Marc Zyngier <maz@kernel.org>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>, linux-pwm@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, linux-gpio <linux-gpio@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 4:28 PM Michael Walle <michael@walle.cc> wrote:

> For starters, would that be a drivers/gpio/gpio-regmap.c or a
> drivers/base/regmap/regmap-gpio.c? I would assume the first,

Yeah I would name it like that. gpio-regmap.c.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
