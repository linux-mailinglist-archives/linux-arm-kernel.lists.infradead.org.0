Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 498F41A2923
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 21:09:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/Rszl6puWCsfoqMN1NKbQE48Su8X7RvQDkDvNocsEE=; b=CAXaIMJ+VV29Zw
	zKw1vzGbEBZRzzqYR//vUDvnlWsXGJa5/BhZqjm4EY8U8ki1iw6asR7vr6HSZ7Cqsv0/vgGPcWO7L
	LI+ir+ogXUBMWaePM1u9imlaR4y+4dVf3qmUVwgx6bZNMo9I9NjCSb5YunV2Jnt1sYZdCOu91CeH7
	aq7rNiZXLRL4Y3er5l0n9jaU6PLnNjdXlATbdphrL8eC8aeKBx7gtWfS5hvwwwannxKB/7Xh3Q/No
	VswQbd+wprebfrUqpyMqMDnVowIBLYLJd0go7tWhDea177ZOEqVRZQySuW6CN5I633lIWkh9lJCPe
	Cp+7DutSul1MWp6wq/Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMG4b-0007cK-9u; Wed, 08 Apr 2020 19:09:17 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMG4T-0007aa-3R; Wed, 08 Apr 2020 19:09:10 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M3UlW-1jLi6d3x4s-000dKs; Wed, 08 Apr 2020 21:09:06 +0200
Received: by mail-qt1-f171.google.com with SMTP id s30so815404qth.2;
 Wed, 08 Apr 2020 12:09:05 -0700 (PDT)
X-Gm-Message-State: AGi0PuYt+Hd5WG5FcJu2805RpUM9Yws7e9ksBRvQLqfQ5AesOVeid7dK
 fSilZTFq9akChMjLyLbi+qfOSmSgPeTUEs+IltE=
X-Google-Smtp-Source: APiQypLVZg9HrJ8HaBMPoIbgmXFLy2wkvpPQbu4xfZqD2UDsW3+2l9wXsJzoILy3lNnN0lCMXpZUMWd32YBEbRrW7/A=
X-Received: by 2002:aed:3b4c:: with SMTP id q12mr8495378qte.18.1586372944700; 
 Wed, 08 Apr 2020 12:09:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200408155325.2077345-1-arnd@arndb.de>
 <3336c3105120d2f90dbc20d47ff98e722a123d5b.camel@collabora.com>
In-Reply-To: <3336c3105120d2f90dbc20d47ff98e722a123d5b.camel@collabora.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 8 Apr 2020 21:08:48 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1K5T2e2kAQMVi=ubPN3v4rYgtb9TaGC6evNXSUc4embQ@mail.gmail.com>
Message-ID: <CAK8P3a1K5T2e2kAQMVi=ubPN3v4rYgtb9TaGC6evNXSUc4embQ@mail.gmail.com>
Subject: Re: [PATCH] media: staging: rkisp1: avoid unused variable warning
To: Ezequiel Garcia <ezequiel@collabora.com>
X-Provags-ID: V03:K1:ZHzyAxc4Zl2FZl+MMfSgYt3GCW7UrV9T9pwFjqOF6swX9Y7gSsE
 hJ9HjRum88ksWA0pWE/VO2T0jKUNzUUpTIt5DfGwLlElGE9S17o5zo+TKIYsuZUB3It7Qh4
 jwSVj/zjstO4SswpgEEq4rmM15kH7ruZhMY12CmJaCXOSgbXoU3EGjHOIGPRaselwtZHZYA
 +s9Jd0lAPc72fuXGSNQ9Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1FBaUaK+ujs=:eMGs83NfAmC/8qAeZjZv/B
 1HyxMQH89+MMMOoY6kdrw5dFWH/S6UjiFaiIEarD61BUtBrDhSELfG7zGZyDrJMrGZ9+cKmT3
 GrhOoImq6/byqLItpM7FU4agWSigk4C6ULo5mWcC6yDQ4V9FnTO6NWM0ty9voBrJAtVZfDWYB
 MARG5ypW7xZS7PHSLyldVN8jXl8efz0l8hxSLw48jJUw0XGgjpHnfGIdXxDEivjnYAptWzNkq
 +n5Sf6HCLRPRzGFBk6oq+t8zPjstvu37WtvKof8BZFzQAysxDNdbsAHbjdO68BEmIqV2nF0Kd
 EJhJzRbHNIxbqWiEdgzvU/T0DOzn8Cqkj4HUWCcZX4nT1LaRbbukMNLnI1x32+mdkF6Srt+ps
 ETQ/Zn8l8y4961FknaEpVaGfD4d/z9gepM3h2fHWa3riu4NuArEOd44xNmMkQOENtslAg8JcF
 6eBdB4pBiwyz5DIxxDyoN8fNJ9c433Dk7roKYFsykDAvW4Dri0WSnwD/F43XZ+Qo0e2oLSje+
 PR3oqFJwdAXMmLsj52D6s9ofdsXaO9USs0+bfUBBnONCR3bMNM2C4LylhLQwUv6Y2cInHIZgK
 Ye45w74hMFJ93zx7cQXWit8Z9/zCNXKl/ueJuX5mgTVaq1c+l/7RqvBg4+BvTSzO150dZvw7x
 D+xhyf+ng8tQseqAWXMqcp5teCWEFgjj/CuX1mUXyH4H9immCx55R8LjoPxZM73RVCuAsinvd
 qrgQqQFQXLlvFtjQ+cmjqJLimXVFQ3FkIujHrxlNesnILsTYJ0VadWrD6nJdwhIVFvp0/mbZe
 fkzUofdTplaQUNKdVG6XHzKnHbS3OufbJnoJ+adSYXq0zlxAi0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_120909_431150_C980CAEE 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Eddie Cai <eddie.cai.linux@gmail.com>, Jacob Chen <cc@rock-chips.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Jacob Chen <jacob2.chen@rock-chips.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, Yichong Zhong <zyc@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Allon Huang <allon.huang@rock-chips.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 8, 2020 at 7:56 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> On Wed, 2020-04-08 at 17:52 +0200, Arnd Bergmann wrote:
> > When compile-testing with CONFIG_OF disabled, we get a warning
> > about an unused variable, and about inconsistent Kconfig dependencies:
> >
> > WARNING: unmet direct dependencies detected for PHY_ROCKCHIP_DPHY_RX0
> >   Depends on [n]: STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y]) && OF [=n]
> >   Selected by [m]:
> >   - VIDEO_ROCKCHIP_ISP1 [=m] && STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && VIDEO_V4L2 [=m] && VIDEO_V4L2_SUBDEV_API [=y] &&
> > (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y])
> >
> > drivers/staging/media/rkisp1/rkisp1-dev.c: In function 'rkisp1_probe':
> > drivers/staging/media/rkisp1/rkisp1-dev.c:457:22: error: unused variable 'node' [-Werror=unused-variable]
> >   457 |  struct device_node *node = pdev->dev.of_node;
> >
> > Simply open-coding the pointer dereference in the only place
> > the variable is used avoids the warning in all configurations,
> > so we can allow compile-testing as well.
> >
>
> Hello Arnd,
>
> Thanks for your patch.
>
> I believe this is already fixed here:
>
> https://patchwork.linuxtv.org/patch/62774/
> https://patchwork.linuxtv.org/patch/62775/

Ok, sorry for the duplicate. I only tested on mainline from a few days ago,
so I must have missed it getting merged in the meantime.

    Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
