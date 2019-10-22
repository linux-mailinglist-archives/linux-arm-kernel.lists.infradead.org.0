Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE66E00FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 11:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LdPH2ng+/zTDKtNrqCBETHLnOqTYde+mVXfmtOpL4SU=; b=cRlGj8aNWRBXgx
	t3TLFxhxh/6fcHEREJ5oc99uVDlZpo2XEKN6QnMFEQCGS/JE5jMxvXLOgyQqieVYf5ePqhMFPL2mh
	VR0avspLz/2msfmjH8DKRjpjTGvaWakSsP80LOAh9968/9cPxPKHvbu5zeXgTD2A18JtHsTcgtIBh
	lpNT7eG5QkDqAqWO/NoUhsvr0hENnHr77Qpsszd0yqmBcCG3aWusUBwcX9Gh4xqQP8+JluTJ11Xo2
	MT0nv6DC45aZqKJ4FMjOBWVvyUZ/YzHxLeMhVo73jhbNe2QtupSZ5+QX8jsGhrYCMQ7bbZ8KWTD2b
	kDgTbmu3nomHHCdt+2aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMqj4-0004Yb-Sf; Tue, 22 Oct 2019 09:45:14 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMqim-0004Xp-0W
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 09:44:57 +0000
Received: from mail-qt1-f169.google.com ([209.85.160.169]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M5fQq-1iOVPV1gUs-007CPm for <linux-arm-kernel@lists.infradead.org>; Tue,
 22 Oct 2019 11:44:51 +0200
Received: by mail-qt1-f169.google.com with SMTP id t20so25764047qtr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 02:44:50 -0700 (PDT)
X-Gm-Message-State: APjAAAW7JbPfWTcQg2bsUFIbmKVFL6/vECqbFclAGpcQvg2I71uvf8qY
 HgCN4aXv3IyFBlrgnW2p1rPnWaTWlrGm3xGet0Y=
X-Google-Smtp-Source: APXvYqxUguCPOp5LGMrfhG+G2UL8MgJST6yvwsbwS5pSbXnjYf7SsBUo3nYRm7EHYr0oSYA+LoNeUI92RIaCIkpSbmY=
X-Received: by 2002:ac8:18eb:: with SMTP id o40mr2367412qtk.304.1571737490006; 
 Tue, 22 Oct 2019 02:44:50 -0700 (PDT)
MIME-Version: 1.0
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-9-arnd@arndb.de>
 <bb4713a0-60bd-8d27-874f-e7e3a5adaec8@roeck-us.net>
In-Reply-To: <bb4713a0-60bd-8d27-874f-e7e3a5adaec8@roeck-us.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 22 Oct 2019 11:44:33 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0GPVs+PqUwsL2H8VJqLh=MJnMTwPu9nhX+Nq-xiMS1yQ@mail.gmail.com>
Message-ID: <CAK8P3a0GPVs+PqUwsL2H8VJqLh=MJnMTwPu9nhX+Nq-xiMS1yQ@mail.gmail.com>
Subject: Re: [PATCH 09/46] watchdog: sa1100: use platform device registration
To: Guenter Roeck <linux@roeck-us.net>
X-Provags-ID: V03:K1:63Fa3NslVgC7CRuCZH5eXimympf+oArix8CuaSPvsoSttRhJooS
 irXbm3Ea45NVbecC9D/EWZzEbaa7iyClkTiGPJPk9kT5bbHm+nJtEZ0vMNrbYK3o4mh4Vlq
 f5u9wQp6xNivsixeYwCFjco5zWn+l9rqSzINHGE/8eFl9r+pIJPuPkSGvciCJyGiQ0NIL3x
 QKlhrGtQ9RUB2e4JHsghA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FrszP12h4Ms=:V+PpPXTKdG8hvJdzMEhq0K
 CD2kdbGWu4RZk8JvM+Leoq+luabHaBlcZ26Yaobd4fscz9pGqCaGAoguvVIY6Wsae8Ayr5SVi
 qKy2kBps8nBLVTwnX5K3Ubb+eApHFHi/0RXJrJQkIHwEigb4apfBRl2FIv+s2BbTENmHQetjS
 MaqH/8GbuyUs2yT0foQs2/rnOS9MNGfHOYPGcVqmjlRdDwm+wmILw8Pc5xZJJkzyMoD//nRfQ
 j3jDI4NjpYVeDfY78oYDfNJUWE/pYZmfD3UJaj2DYCihlEkoAEWGZfXM7AwnuvFQDEKyA+Z3S
 2LzOh61Ok4xuyLDfpzzLcA9q47XcXdo5RFO+z4jlDjMeCY0eLu9BN388aw4k1+jfaKJ7dHJU/
 9USGKxyYemc4M6YC4m+fPniLc3P7jx444HfuOm7XlhQQX9QPulQ0+tR5MafT+b+FLfQ9tPpuc
 CNDyJQTb0QZq4avLdtNq9GNMFAe3d3+9S3zlP0LzGOfpV14xKo/DQW/z923YGhYSb4wwCUDgS
 SHJzmojqU3sAJLHVb3iisRGgoXBDzfAyODo+khFL0/2k+lk7kq3Vikl73gnrkYSlNbaPkOyCp
 h0/xEs6SErKtErj0eWMrXtGwuNw4KZT5WzL3LiEPv70cmQiixetfcJApV2HlH4Wyo1+QAZY2L
 KKkeiJRd1GCu2e9zaMy8OW+nGYTr3UrEJpglkFeDhHydThUmlYgywng5l0joJxhxismhYEDAp
 PeA59nZ4BD0pkJbEhl0AV2VLN7cDOzUmZzrXcRWxtV661wZ7DWGjdGY5HB8Gz6CXNDEIcRCqu
 OdxvGDhv6wK7fXoZzN3zjRXaiT4ftAZQ1isttBa+PgtJB3czW9qSGyVdVGxtSsVcPMym0ZmBG
 iJOn6shwQ4Tvc2QrJJng==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_024456_350790_16C6DB5A 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 19, 2019 at 4:07 PM Guenter Roeck <linux@roeck-us.net> wrote:

> > @@ -319,10 +316,13 @@ static struct platform_device *sa11x0_devices[] __initdata = {
> >
> >   static int __init sa1100_init(void)
> >   {
> > +     struct resource wdt_res = DEFINE_RES_MEM(0x90000000, 0x20);
> >       pm_power_off = sa1100_power_off;
> >
> >       regulator_has_full_constraints();
> >
> > +     platform_device_register_simple("sa1100_wdt", -1, &wdt_res, 1);
> > +
> >       return platform_add_devices(sa11x0_devices, ARRAY_SIZE(sa11x0_devices));
>
> Wouldn't it be better to add the watchdog device to sa11x0_devices ?

Generally speaking, platform_device_register_simple() is better than
platform_add_devices(), it does the same thing with fewer source lines
and smaller object code, and it doesn't have the problem of lifetime rules
for statically allocated reference-counted devices.

One day we may want to replace all static platform_device instances with
platform_device_info instead, but right now there are too many of those.

I can change this one to a platform_device for consistency though if you
think it's worth it.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
