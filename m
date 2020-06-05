Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D511EF2AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 10:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeoSPNTRArML0sZBllEuyRm+d9MYF/7EoBbQXF2P0fA=; b=tbbwtS/S0CtJqk
	KyjCHDrFDNys/pRoxoQA7Nw9Zg+BUnToc7M7dFSo81jX4HRMOhygcIZyFWmEC+Qll5T/V+orhYFLo
	0SUibt3d52pGnqJ621DVv32HZtKkd70LTWBX1osqI+OhWluqOQoe4O0voFoM5yj+JB48OIXh8b82M
	kHMgSR0U+/9BoffDJk+m+omg6sTXl1cDfiTETv8x4DERfv5/tN+TKIvSGTotof9h882v7C+zVvn7K
	3BcrieHf5cSH/Ua07uK4RFHcphJ5kN4MdtJcfzhjNMytpPO73GYHdopl1eOpCV0EuGQqbhYoi2ej6
	DGB+xVZKhEoWSiroQGaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh7Jy-0000rC-3F; Fri, 05 Jun 2020 08:03:22 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh7Jq-0000qo-Jb
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 08:03:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id j1so4399465pfe.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 01:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UHwub92QAXzXijZjt4YnToucQrRKEkeW4WsAEf/TOL4=;
 b=T8Yqt6jKBgrcWFcSffwTEeC/DOrsly6hcsf69VAlxmTs1ZkOehtZHCN7riSnT3gjwT
 pwfj5PueFKNhmJk8jDfM+NXKjSrQU9zgXAekkgppiNN9ds0DBn6vPZiVykL3SXkqMCfF
 uL46/XNSmQuoB0SX1CzXwIik9VoRrLwTmb3o8z9ycl2M6IJZOGG9O7zkDv2PUN1u18x2
 AZV+346+RapXYzcm6fPw9qK0LGn48ACHQgw9vVntQS1+xnurdH9xdl8iMUZ76J9HYm+u
 Zo02L+Rpnc4wLLdQxU7tY7UXyXdl/1q6194tmsMtvV/DYRLv+TjWstktsFCKcnboAKMI
 +CBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UHwub92QAXzXijZjt4YnToucQrRKEkeW4WsAEf/TOL4=;
 b=L/lSQddmuh2MoIvkYDCZz+8FolozRPb2ha29VOIi6wOm1F4f41LUfvhijTE9lfwn7s
 eMInGgSClav3K5g5v55jKfagGO5MT+BIQ0VUcGyJm1JAyB/a2RZiWrWVaduI5coC5gl6
 b85w/fMBCejbXkFPE+af3zJdzF90NKbNlsNq4ejAtI69yWfyF9ACXD58g5p0Ec3pFawm
 W9PiB7AcT90oJRvl/kYGtJN142ZO9fYfUCYD1uwum2rsfS/0bkhPpVY2Gexo1ViHsJwr
 ekpdhs4rRH7qMLvSciv72ydfLFOhiDDAEMbh321PNYhIrgKzs2OtqGBRcfoxAHSKsoxp
 y4wA==
X-Gm-Message-State: AOAM530JgtpjfLnMgyTrJzOZr7A/7PpI+qYWxAHGAXUAwslouZbnIFqw
 8xP9qxU4Zn+8b25FcvE81v/97m5lgD9IbI6NoBI=
X-Google-Smtp-Source: ABdhPJw2VSZ6DRFi00rf7DMs7d0yVlBq9BqobpT3xUZu+XAE5n8q6rYFKa5+khR6g8c2wjiKOciXdvfUo1oI3CLEiLw=
X-Received: by 2002:a63:ff52:: with SMTP id s18mr8530984pgk.203.1591344190940; 
 Fri, 05 Jun 2020 01:03:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc>
 <CAHp75Vd-R3yqhq88-whY6vdDhESpzvFCsbi-ygSTjfXfUzOrtg@mail.gmail.com>
In-Reply-To: <CAHp75Vd-R3yqhq88-whY6vdDhESpzvFCsbi-ygSTjfXfUzOrtg@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 5 Jun 2020 11:02:54 +0300
Message-ID: <CAHp75VfKtt7ZnVdE+n7JjGH-MXsOch-GNZpbv5r780a=VsgZXQ@mail.gmail.com>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld management
 controller
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_010314_645195_0E3F998C 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
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

On Fri, Jun 5, 2020 at 11:01 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
> On Fri, Jun 5, 2020 at 12:16 AM Michael Walle <michael@walle.cc> wrote:

...

> > Please note that the MFD driver is defined as bool in the Kconfig
> > because the next patch will add interrupt support.

> > +       bool "Kontron sl28 core driver"
> > +       depends on I2C=y
>
> Why not module?

To be clear, I have read above, but it didn't shed a light.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
