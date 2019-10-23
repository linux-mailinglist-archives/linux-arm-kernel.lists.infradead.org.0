Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EE6E19B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:14:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDEGAehmCIW9ACoUTG27S+T/bbjiZrI1hTvNoCPQjYs=; b=YEGDYCR5SKts+4
	/6T5beADxVVOwmCS5ptlNfc/RxqdFg0qdrHsrneFfLgU96KUwHEeMepwav7344rJDPpLbWxxU6ElQ
	bR+eJDF0PdrKaDzWXHvXxgMpKlhSt6g6MGE4dhjERhoKq1nrPH2vrIlbXWGLaO92WIkioCzkNHIgU
	laltj1SLTD5ZhrIPrgBDv/nWKIacfHYS7/w6J5QNCRKCwU9dtB0bo4sMfeMt9cqH7YRSEwQcXKOm+
	Fr+YOywrEQZisdE/5imlx+UxA/tzgJtaRYbq89ua9CsG58xyXSjZKfNN6mbjxiJZW8jw6XF1taVXU
	95W9xzJu7sqTOItIWQjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFWy-00047o-8M; Wed, 23 Oct 2019 12:14:24 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFWo-00046t-OI
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:14:16 +0000
Received: from mail-qk1-f176.google.com ([209.85.222.176]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MLi4c-1iemPa2qxs-00HbTC for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 14:14:10 +0200
Received: by mail-qk1-f176.google.com with SMTP id m4so2555847qke.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 05:14:10 -0700 (PDT)
X-Gm-Message-State: APjAAAWoU2LC1ZZJQ7SdYby+Kpj8Khhmb9orwgH2hSef+aAS7/0W7Q6L
 Hm/fs3Zi5y0Boe7p27/7KEq3S7m7cMvcPJzjWwA=
X-Google-Smtp-Source: APXvYqx9FmGVkwD8EbgMmlWydk5PgzJ33OYlaEnM7tpXys5e+jS3v3e/vy3XLGsCvMOw7vkw88sF/Z9WI6L06moKLMI=
X-Received: by 2002:a37:9442:: with SMTP id w63mr7673807qkd.138.1571832849353; 
 Wed, 23 Oct 2019 05:14:09 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-5-arnd@arndb.de> <20191023102750.GD10630@pi3>
In-Reply-To: <20191023102750.GD10630@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 14:13:52 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0SwvSHRddMZEiRy3hHQB5OpyP1H05c0oZt3JUeKOf+=g@mail.gmail.com>
Message-ID: <CAK8P3a0SwvSHRddMZEiRy3hHQB5OpyP1H05c0oZt3JUeKOf+=g@mail.gmail.com>
Subject: Re: [PATCH 05/36] ARM: samsung: make pm-debug platform independent
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:HkL2cogERMX8p/j4EoY1qkxiKbMe9m37m2tmdJcM8axmVWNhDTC
 1wo6lL/7j8ZbqP3sJsOq2ihs+FGjricjSkyJQWG+wzqxjfRmmT0xdDbmmAzs8G5x0OW1muV
 phB0qihZSV+aTHTiehU/7182NjgADNn+jjqeNV9UtIWh8yXG+RrMRxeTnFoPaJgeBajNY1P
 20DuQhevPXA4vOPrlcFlg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1NR6ApreyEs=:+2LVNOP0zdDmhAFDIxVTfZ
 F7LiDYM+P7alJkefwZkgwf2KrfumJ0cR/ULfgYSS23tMbLRP09IAz0HHkjzvPkPcRbBzK+Xkq
 aGvIHrXcYtErwCLUyU6RKYVeoBHS2TRaaFXKT/2gwlehU4ECspTDLpItGWwdEB7H3UdIyEKG4
 DejGo09i8xBABzLVNvOxfLt++tt0byANve8ohsj+4xHvVWjRzlOZMFW3yvYKX2ltVX5FNfM55
 Eun5Z0LVt6d3pWDml/saZYkx1V+KwTtUGGldjf30I/oGYRC0KRtYzsErBag0pZ2Bsqo0E6YUQ
 2Q3/wKi2zAYm6KHqfBKtsyIL8D2vSJ6B1PaGfS9mDI8mJfyDwDpDWFDzOcbNgSHJrkFK9ouy8
 tCQ+LvjOXhOmjaMzKqyXRQ4n2oeBUhOR7P9Q5CjGEgbYxGWoVoK5yAIywvW/BkeJ0GcXTor+7
 mVbT9rPPJZhyg+GiumeMyVqfhQXRMDBA1MszMlUOrcnKEVZT0sl9iujOMzr4Qr/qEsfBq1FpM
 Q/En33+S6Gw8jxUmF3EBpz5kIF6pd7I46SUUBe+HWUM/Qwv8X5+nIMtSr2DhmOa1IaH/6YWD8
 c9F2SJy3T26dD5fxB6lq7NOgstgRD/xPrCEXJCPGPWrH4rfpNGw5EXzmPQRytsZYSrukilmnN
 LwZHum4fwB3JnsDMJ4cjYoQRllqM0Z9ge+XAD0VbECHb/r43kW616MZ6LXrQb0d5KNokWEzMF
 BDZ0I29BladL+/mDHADlxS8fjIXH1KaU1sLaT2THmc+PfZxJHT2BdbCzA9mgKfcQIUDk1w2Rf
 BUzTNdMGxwliutUQPG1/Jpk7Q6JzrPIlyTnsQOcVemEFMhROa3dEHAUvG/99+oIewyUNMwO2f
 uum/UqtzphkuRuMDC4kQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_051415_088813_5810B492 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Tomasz Figa <tomasz.figa@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 12:27 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Thu, Oct 10, 2019 at 10:29:49PM +0200, Arnd Bergmann wrote:
> > diff --git a/arch/arm/mach-s5pv210/pm.c b/arch/arm/mach-s5pv210/pm.c
> > index b336df0c57f3..efdb5a27c060 100644
> > --- a/arch/arm/mach-s5pv210/pm.c
> > +++ b/arch/arm/mach-s5pv210/pm.c
> > @@ -99,8 +99,6 @@ static int s5pv210_suspend_enter(suspend_state_t state)
> >       u32 eint_wakeup_mask = s5pv210_read_eint_wakeup_mask();
> >       int ret;
> >
> > -     s3c_pm_debug_init();
>
> Your patch is not equivalent here. If there is a reason behind removal
> of UART init (e.g. not needed), I prefer to make it in separate patch.

It is equivalent, but the reason is a bit subtle:

The definition looks like

#ifdef CONFIG_SAMSUNG_ATAGS
#include <plat/pm.h>
#include <mach/pm-core.h>
#else
static inline void s3c_pm_debug_init_uart(void) {}
#endif
void s3c_pm_debug_init(void)
{
        /* restart uart clocks so we can use them to output */
        s3c_pm_debug_init_uart();
}

On s5pv210, CONFIG_SAMSUNG_ATAGS is never set, so this
function does not do anything. Splitting the change out into a
separate patch to explain that is a good idea, I'll do this.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
