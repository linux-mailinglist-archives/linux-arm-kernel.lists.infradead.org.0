Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A06FDD7F9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 12:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wz3KLowEE/mR92nCZxhHJKgLgpMrwakHMmvndpupKYY=; b=aU0HefA0a9UFlB
	FqxQoIQ60y5+QRqtY4ValjmbX/0WH2t8TJFFI/sPMF4HTDHqakPd16Olqgox8vCEoqx0J/4t2i6+3
	ElENvbOtKNljBkMs6omceILRrF/gKeMM4+WNO2UbCJ8OAJoWfI67sJrN24Bzlr6Moj4/cdcSB643s
	8eLVLdoIj3zzeJkLP77SnKztUe2OujLiFx51njW77ZdmpuWvkzFgKa0R5IyJo3LAtPyBM0ooeAonu
	IfFxnvzO8BD2PPqkrytMv5yx4o8zFqOMKIXrlOW12PNTu9GwfnYofbytPZmn9qzx+HDzSZgLvGAdY
	6sbraQ0zu01ritNMp45g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLlfT-0006mJ-NO; Sat, 19 Oct 2019 10:09:03 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLlfN-0006lg-S3; Sat, 19 Oct 2019 10:08:59 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M5PRT-1iN9F50own-001OOA; Sat, 19 Oct 2019 12:08:54 +0200
Received: by mail-qt1-f171.google.com with SMTP id c21so12872483qtj.12;
 Sat, 19 Oct 2019 03:08:52 -0700 (PDT)
X-Gm-Message-State: APjAAAWOAHxZfdHrIp4Xc1vRDRMeSsysyRc9yeRyHXPlkZH7/2BcwavV
 6kUpd3sU1J5MuFeX35hJh1GOXFd5m5EEh+DyaVs=
X-Google-Smtp-Source: APXvYqx0KL/4UEXxK6gF6MT84x40msmTgoc3wUmUnzQ2wz5CAlnxhFheu9zzXtORTNxkRfpad8/dgIDVulcScXUuQ7U=
X-Received: by 2002:ac8:33d4:: with SMTP id d20mr14268876qtb.204.1571479731943; 
 Sat, 19 Oct 2019 03:08:51 -0700 (PDT)
MIME-Version: 1.0
References: <20191018154052.1276506-1-arnd@arndb.de>
 <803f6fa5-b929-007c-5302-4a2d5042241c@roeck-us.net>
In-Reply-To: <803f6fa5-b929-007c-5302-4a2d5042241c@roeck-us.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 19 Oct 2019 12:08:35 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3gOn6qkvvKaBzqYUzZToMKv3E587_8fQHmaF2u7erd5w@mail.gmail.com>
Message-ID: <CAK8P3a3gOn6qkvvKaBzqYUzZToMKv3E587_8fQHmaF2u7erd5w@mail.gmail.com>
Subject: Re: [PATCH 00/46] ARM: pxa: towards multiplatform support
To: Guenter Roeck <linux@roeck-us.net>
X-Provags-ID: V03:K1:ADUPOA71xPUayYJhitm++6aCsJepG0J0hKYF2rGg49y72xr3K7k
 6bh2WH8JAkT8YGsKAB+4TYKTYYfsIbNzNxctGumhnzKxt/wCEHEMKIdKrtZYT4QczBP+bjV
 dmigIOKaXQL9THcyCnWES54YRt6eJ8z1tzaUlqBoL59/m0/OdLCDKcW2TTrmx/mZcJTukwB
 FH4gGF/YPX5nGV67MRrQQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cTnHUQ2c7rQ=:1NC4gfpagxuqo20u+bxaBO
 Q0NmJX8JXFeNe1ypcCgo0wqOyW5OJ4mRN/TSn9r50gMiboF5ovuHaKQw/BOSg9O4Mel3voXoM
 pIEQuC7XOi0GZOYQBLDsG5TUpvfOAIfm6MyBDZw/sUG7xwONut/D4TEFpE34wEJJ6VieBOXY2
 U1LcwNCszBHKQqhX/jTzmjzgaPCdom3HaD3uG0s3MJGgtr+HTSZUiK0a4bGdCUdKQQgNNY9Z8
 df2cYrj0yKE9AQMjgtE/UKa85tmTGDv9xEb8eLDxm1pPr3w3QTXj4+HKg8Xq6zzkIH/TF+lH3
 PjCHlxW9Ecn8mO7KA33OJs6lLT5CeceFYD+s+tD4Bb2XsykBGiZ/gnJtQ3Mmc2gcnA6d39FPO
 pN65tvBtMi0qTsUJ18oNQsY3za4/xV6G7aRDNWA/uGqmksjLOkGF4nQO5jSh2haPDQtXUxBRT
 C+uHfSxwdJxzDD8/7C0AWslZotOcnhFdSEjrnM9BFE30UR/8cXwUM6IQ/sPI2uu/EQ8hYShFp
 K780qYiBcWWbAlkGTzyR5ylyaZRJfe9nYOx3hsu9QjmiK/zhze6CAn9J4SEPPg0j6+ZzlZH9L
 BVBOzk03p6yZ9P+vydwtFxj958nGGdQubBFFFKm+Y83TGEanF1DN53qaBK/fUsAtEJMmIzC99
 eJ91+2iQu6M1Z2qlDW2SBrqkAl8cc/dktu6ZCbrhPz/9VE1GwV5Hns6ber9MvjXsGvDSCA5hw
 n3ZOx6HDc0M+NU8CEPrEdhRdfpHi4jRfOPrqmHaVkInwtDkwtEeMeqbW3CRzKB46sWwebRP/3
 piq8DoF80l94cBMfbGrcTi9SbHNZF/ZBHOGJAyQEhU4u6/2Fd4HQvxLnIOqsqQ85BLNqAPjE4
 XeMB5CFR9ermdb79qtGg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_030858_203045_C7E516B3 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: linux-rtc@vger.kernel.org,
 Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, USB list <linux-usb@vger.kernel.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, IDE-ML <linux-ide@vger.kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>, Daniel Mack <daniel@zonque.org>,
 linux-leds@vger.kernel.org,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 19, 2019 at 3:03 AM Guenter Roeck <linux@roeck-us.net> wrote:
>
> On 10/18/19 8:40 AM, Arnd Bergmann wrote:
> >
> > Hi PXA maintainers,
> >
> > I'm in the process of getting the old ARM platforms to all build
> > in a single kernel. The largest part of that work is changing all
> > the device drivers to no longer require mach/*.h header files.
> >
> > This series does it for arch/pxa/.
> >
> > As with the omap1 and s3c24xx series I sent before, I don't
> > expect this all to be correct in the first version, though
> > a lot of the patches are fairly simple and I did exhaustive
> > compile-time testing on them.
> >
> > Please test if you have the hardware, or review!
> >
>
> I don't get very far.
>
> $ make-arm pxa_defconfig
> arch/arm/Kconfig:677: can't open file "arch/arm/plat-pxa/Kconfig"
> scripts/kconfig/Makefile:90: recipe for target 'pxa_defconfig' failed
> make[1]: *** [pxa_defconfig] Error 1
> Makefile:567: recipe for target 'pxa_defconfig' failed
> make: *** [pxa_defconfig] Error 2
> $ git describe
> v5.4-rc3-52-gfcc4181cd625
>
> Also:
>
> $ git grep plat-pxa
> Documentation/arm/marvel.rst:   arch/arm/plat-pxa
> Documentation/arm/marvel.rst:   arch/arm/plat-pxa
> Documentation/arm/marvel.rst:   directory. The plat-pxa/ would therefore disappear.
> arch/arm/Kconfig:source "arch/arm/plat-pxa/Kconfig"
> arch/arm/mach-mmp/Makefile:ccflags-$(CONFIG_ARCH_MULTIPLATFORM) := -I$(srctree)/arch/arm/plat-pxa/include
> drivers/gpio/gpio-pxa.c: *  linux/arch/arm/plat-pxa/gpio.c
> drivers/soc/pxa/mfp.c: * linux/arch/arm/plat-pxa/mfp.c
>
> Did I pick the wrong tree ?
>
> Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
