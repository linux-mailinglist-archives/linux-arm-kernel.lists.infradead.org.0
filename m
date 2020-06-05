Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF4C1EF2F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 10:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XT7OwjHq/ElMgpWz6138P9Ro6ipXCJ5G4pMaoimv0t0=; b=XEPS76ZsmrwEIR
	QawhSxwBSjXqU2p7Dy3Tv94Kkgwg9rjENYiLn2RykLTD8wnlCUaOnYUg4QaLjNxLSmjxpOW1VGz6L
	21xPF7SDlaMlmSsntupaA1ZN3JEZSAgjLFliDDMuyCVk5K3LSa7CEkh53EZwwPS0pNn67o8ZC1rHs
	+RpATOs+vVafNCrgQQq3ox/Rns0fRG7e9mx6QQSUkeQ3dKDZ4mi9d9C13oANoZhUSrVJgBg+uwkdt
	I7hEu/zNqe9LThvDxHdsZHpfkbxDeE5oS/y9ebqXqw2mJmz1yfMqK5GQ5HjpWiGuvMfarEMw7hHtl
	T9PUtQtFuZ1ECabXf3VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh7WU-0002JB-Rb; Fri, 05 Jun 2020 08:16:18 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh7WN-0002Ik-Nq
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 08:16:12 +0000
Received: by mail-pj1-x1042.google.com with SMTP id 5so2412283pjd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 01:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kXdVxsGQNpOmqOgFOL5sHVJSy+udx7MLTpgYocPDlMI=;
 b=CmWf+Q1LPKkZFcz/UUCEbKgiD4xwszew0h0vP1mFw1Sri5IdNxgZoMooG8JO0czgk6
 atcXFR84tLy0cvzPKI1nKeJQl/vjaYcYzjMDSAFElp+J7NDj3DshbpW/Rhz5NrrC7aYS
 O2YT8xyZueQZsiPAZTU0ehVKvGYNpyJSsnWfcrrkGPazVl716JM4yAUWpHi2ZHkCdZEY
 10SeHCEghYnDA5rb2wk5xvQvGg4u/RGKrojjyJ2MeuMhogLguXaZuVi7sJnnMxLgrvG6
 oNepqfXmK4Hl6cDCyeYIch7viNWooW+94utqoB6gZ2sMx+YGxt2qmVONoin9lNo4LhWK
 g2EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kXdVxsGQNpOmqOgFOL5sHVJSy+udx7MLTpgYocPDlMI=;
 b=bIPHIDResT70lq26QT3OWxFmFoYRMdZ2G7/qrg2PMOoc8GoGFVKwpHSBpkqNpcKZEk
 Ek1hh5n56VyGh4TSSvuO+FcIST7k8GUii+gFpOmDew8as5/NB4oVeOH44/y0ajtbVDrA
 7bjGzxORjPOgrKRopzayPanTODDZmIQvA4A/4e8dHdk2vBBvNoJyqbocH3JKmZThqDxQ
 oozdAubEVJ3tKUQyH+DJCuQ2kNIAJP+Iv4IAEsD16fU/aXxEiLw2fYaImmgyFtsrxBJ7
 SFO5d/1RKPgXirD7eNfUPGVnKt+p9uHXBb+BJ2mWHX/+X522hAkYdAoKYFtTgTk9YHtP
 D10A==
X-Gm-Message-State: AOAM530zP0+3BxPpkqJ/OPFeZ9pkZ8mVFqd9yt8M9FIzaYxWGrf72bvA
 M51Lbc7SCkGHFz63JwopWyhLGPHFytcq6lugX00=
X-Google-Smtp-Source: ABdhPJy3i2DiYiciOYsCGwbkuo32YvAjkeb6+tWaO1KQxza8n48SGhUI9qlNJgafRWk9Ki7WXIN2lLq/PTS+WyN/su0=
X-Received: by 2002:a17:902:b206:: with SMTP id
 t6mr8185421plr.262.1591344970979; 
 Fri, 05 Jun 2020 01:16:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-6-michael@walle.cc>
In-Reply-To: <20200604211039.12689-6-michael@walle.cc>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 5 Jun 2020 11:15:54 +0300
Message-ID: <CAHp75VdMSoj2+jKkA=oais2QAWBmvgzE6PLJdm6rebooubLCcw@mail.gmail.com>
Subject: Re: [PATCH v4 05/11] pwm: add support for sl28cpld PWM controller
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_011611_771003_AE7C0579 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 5, 2020 at 12:16 AM Michael Walle <michael@walle.cc> wrote:
>
> Add support for the PWM controller of the sl28cpld board management
> controller. This is part of a multi-function device driver.
>
> The controller has one PWM channel and can just generate four distinct
> frequencies.

So same comments (extra comma, cargo cult headers, etc) are applied
here and perhaps to all other patches in the series.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
