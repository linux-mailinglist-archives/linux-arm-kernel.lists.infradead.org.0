Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1297F1E0EEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 15:00:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqgBLKxdR+7F0FhsZeHoFnSig0iv1RRg3mrqKG1KP1U=; b=L5HnwUYCahLQMN
	Xr990DFlgSrDxFgQN+eDznqYgEpmdVua4WjPKuxfqA5Z1/3QTafqik8K5l9mEBBOjLiEi+YTCbwyV
	/ITXzEbxPqJJhQaVwdjkRpCiR2dXgNNWF9BdWOTk6j3HpDgDOTSYudYkt1ADJLudL0pApCyFPjCO5
	In6nNZdt1MmvWbZZNOCoOrltlWeCbfoXhxI2j1/nqfFSOHi/yjDYVBF/juTrbSm8ZbD/pnwFmVbfw
	zgCzytKcNCo0rP71u1Pz0RXQgMO+ClnJeO4mSQ56LChRbPPwkOnur5qHuPEVn+Wl80SZCEynHHRz8
	R2GFKjOEVxxr6omVKfyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdChz-0004p2-PY; Mon, 25 May 2020 12:59:59 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdCho-0004og-Vp
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 12:59:50 +0000
Received: by mail-lf1-x142.google.com with SMTP id x27so10460213lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 05:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EXtqB8Wun/tgjNkBpbPrNbEYBqWbgFsLrLS2OmL1m/M=;
 b=JqXkjdW/TwAhV/+ZstLcQDiGkcnh2vaThxK4UuXw1ZT4EbewRbqEMxF8cLo9srENSG
 y2bzMe8eVT4GRDrV5lIfGsLezcWERXdbNA0we0XcZSk7s/wgI/0Bg36o+Q5s+WrQwFnR
 9Ezeei8Zk5ZuBxczU7luJMzFJL4NWTdRSEvpgnxSVbeH3cK/DSXlN9Tdbn/KKHl0ElRF
 1c79At+nt2Qv3ftKSagmriY4yHRJuT3SfL5MLqCGu+N67fiYVIz6F+xk123QNykV4Ed1
 Wi4Uy6bedneHNi7QQrkTEzS6GmgrbN7iai2K6CwtEDX6745b9xMfceJdYvhJEE/s2F96
 nJvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EXtqB8Wun/tgjNkBpbPrNbEYBqWbgFsLrLS2OmL1m/M=;
 b=JwcI3sdGEzX0v1w+YyEMsWrO/tf9LI2AxT3D1RdXwKWIAGbdfzu/Vs0d18cLCGdOrS
 5/Yv8iVqtBPLqDVQFWDJa4stUSIdlSD3pUGrYS8oTM5wB+Ypd2BtV+ckm/9Ttv1Gq8Sz
 caABXkcWeUI/rB3Vr/Ju1bmc9kIY1/74zq55EMiYF9SPMnmNusR4nLh8JvjCbVUzqjue
 f6JYAI45rW4RSGapsKNaY9gel4KnbUEU4b7X+WqIGbVA9A/idD8+qjpuwe7pC5zQPIZe
 qWIplS3LXXNUlCY9XuYDZ0mG2TmKQ5wNrvvCW3Wf0/NblSc6iEq4qxyuQxP33nHhj2eI
 tfWw==
X-Gm-Message-State: AOAM530fi3nNgyqUyhpfvywDiEe7J22C6i1LJkY0Td/7SlfUwlrrlkQn
 TSQJ0/4nOiQxPdbfbvClX078wEZdmfu3+JXK5B7Y9b5R
X-Google-Smtp-Source: ABdhPJxD2+KgVOK9WTwoquq8HqW2c21+zgJ2wXOdh5XtNRaWnyUiVdw++6s8JUaftb7+v3ytf4RuSWtwx/6fIhWUhyk=
X-Received: by 2002:ac2:5a07:: with SMTP id q7mr14490822lfn.77.1590411586745; 
 Mon, 25 May 2020 05:59:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-11-michael@walle.cc>
 <CAMpxmJV3XTOxuoKeV-z2d75qWqHkgvV9419tfe3idDeKwoeoLA@mail.gmail.com>
 <75bff2917be1badd36af9f980cf59d2c@walle.cc>
 <CAMpxmJXctc5cbrjSeJxa7DfmjiVsbyhqAbEKt-gtayKhQj0Cnw@mail.gmail.com>
 <951244aab2ff553a463f7431ba09bf27@walle.cc>
In-Reply-To: <951244aab2ff553a463f7431ba09bf27@walle.cc>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 May 2020 14:59:36 +0200
Message-ID: <CACRpkdZYEZk7o+Y2-AqnHGsY8N7KGGmPGSuSS=H7YY8VLZ3jZw@mail.gmail.com>
Subject: Re: [PATCH v3 10/16] gpio: add a reusable generic gpio_chip using
 regmap
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_055949_028121_F2585580 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Wim Van Sebroeck <wim@linux-watchdog.org>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 12:20 PM Michael Walle <michael@walle.cc> wrote:

> If you like I could submit this patch on its own. But then there
> wouldn't be a user for it.

I'm pretty much fine with that, we do merge code that has no
users if we anticipate they will be around the corner.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
