Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DF7E88D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:14:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T9T7GHDq4+dvn9qH2ySCdtCKDrPWMHK2pmwdi9+ugCo=; b=K42dCngO1CYJyL
	vgcSC85H3pzqSnN40XB36FDho8zGKGnKZaUWJY/cmE3iFguHP9hqqfpxcD1NnG3DRCgC2/pgLHedF
	fyrvlvy37xo4jrnzlBjaLZilgEypQv9v+gyvx39+1Ai+iJokIIomFVYtqe8enYZkqiQjUxxKkLHdB
	0zMG65YzFwZznl4vqS8LzdiYJqf2Yzz0emjxTM1Qjq1KJEVUGEZ6bLpogM0wLad6YoWdIcVHAiTsr
	baPoKX27qmussBIQBHnz72hq8oSXsNeXsvdf0MyvTnTKDJmWNt6DDb07fuj1JT/U0eKNFw/AzDKkf
	1kx5eusBnS1cyT9RyqFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9qh-0000zn-Kg; Mon, 29 Apr 2019 17:13:51 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9pu-0000qr-3y
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:13:03 +0000
Received: by mail-it1-x141.google.com with SMTP id q19so195177itk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=25fiyi7j1Bbc8JQlGA4N04qFKyRP6T12Pl+h/G3rDyI=;
 b=UWe7teRVNHnVVVX7AxpBK7ppMB7htmVYCLs2maddnhAQN3s3CmuabCZeOMH8mGI/+6
 /JAfjgHvCS2HhFocaMlJd0BXxYtS9navSccjbvY6qbHBMMr4XEP05Vux6hRDc7FRqF9t
 kiOiH9k0iz1UZcROEN79XDk6Y4qZ4lS4HzZB2oSvWSi83Rn8F2YFkjGPBu66JMg3b00L
 7fc+GysM/pjBsAmOQm4Bn8C/JvFBndEdO1r5YjJ9N0VM9tkAqjSOPKtK1qzYDc9iIoYW
 FuK/BnRIigm4/uC2qkKopwb616CzVTL2ueBStfTT9+WDc3wTMj6WBvJkt9HrY9wm4l1G
 xNXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=25fiyi7j1Bbc8JQlGA4N04qFKyRP6T12Pl+h/G3rDyI=;
 b=YfanZnEFvX9vvOftJlT3S7bWmZT3qEc+96TslRl2CQibCQp54slKkGXjKYM6FZiYnA
 516yxDQmH3tc77pssDjC5UmsSezIt0cCCavG0hcTvkeGSnmwgnaW4UrNwchTiISJGWW2
 zuOVBJS5SzEiwK8niM9wmpvMgoMKXtTti4zr7rdsL0GeJKtDdymhV/tuHgcVAIVdWZVg
 OrODEGLYDIi5iZsbQn0YGxzRGaADe8yFkfuoUDHrEBVUB3ZRPvL3RjJu4f0hKv3QA9dj
 1jkE0BB3G1P89dzBIJtN7OwP0lB8cmrz7hcmiSDVvf4ukRu6OHT7cZaSDh6y6Ob6zY7O
 4Z+A==
X-Gm-Message-State: APjAAAUHo6Eg9H3wQaWmaRph9eND4joDRDf/Iv1zkIWjoyGmq7K2LrSk
 DJUhEx5IbM2d22GZJGwmKJ6+z5OdyHQllz9DpH++1w==
X-Google-Smtp-Source: APXvYqweY4l9yaoGv4MZCSEVnHgtdmzETHUyk5nS1Ww7LwbZsUOtMDtCJk63xjgrLfehIEYLnqh+/O9ZQ0ZLjkXKcqk=
X-Received: by 2002:a24:58c:: with SMTP id 134mr87853itl.103.1556557980790;
 Mon, 29 Apr 2019 10:13:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190423142629.120717-1-venture@google.com>
 <CAO=notzjzpt0WHfJEWXMGgkoJU8UiLnqZnrGrPs-dRH5GNdJyQ@mail.gmail.com>
 <CAO=notz9QVoqKLrhJ3kx9FHja5+Mh68f36O36+1ewLG+SanmOA@mail.gmail.com>
 <20190425172549.GA12376@kroah.com> <20190429165137.mwj4ehhwerunbef4@localhost>
In-Reply-To: <20190429165137.mwj4ehhwerunbef4@localhost>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 29 Apr 2019 10:12:48 -0700
Message-ID: <CAOesGMg49z4Gip-bLK-h7+LSLa4Fu68r11gT2EV8E8xMCPGDxg@mail.gmail.com>
Subject: Re: [PATCH v2] soc: add aspeed folder and misc drivers
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_101302_160950_2006DF80 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-aspeed@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
 Andrew Jeffery <andrew@aj.id.au>, Patrick Venture <venture@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, soc@kernel.org,
 arm-soc <arm@kernel.org>, Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 10:08 AM Olof Johansson <olof@lixom.net> wrote:
>
> On Thu, Apr 25, 2019 at 07:25:49PM +0200, Greg KH wrote:
> > On Tue, Apr 23, 2019 at 08:28:14AM -0700, Patrick Venture wrote:
> > > On Tue, Apr 23, 2019 at 8:22 AM Patrick Venture <venture@google.com> wrote:
> > > >
> > > > On Tue, Apr 23, 2019 at 7:26 AM Patrick Venture <venture@google.com> wrote:
> > > > >
> > > > > Create a SoC folder for the ASPEED parts and place the misc drivers
> > > > > currently present into this folder.  These drivers are not generic part
> > > > > drivers, but rather only apply to the ASPEED SoCs.
> > > > >
> > > > > Signed-off-by: Patrick Venture <venture@google.com>
> > > >
> > > > Accidentally lost the Acked-by when re-sending this patchset as I
> > > > didn't see it on v1 before re-sending v2 to the larger audience.
> > >
> > > Since there was a change between v1 and v2, Arnd, I'd appreciate you
> > > Ack this version of the patchset since it changes when the soc/aspeed
> > > Makefile is followed.
> >
> > I have no objection for moving stuff out of drivers/misc/ so the SOC
> > maintainers are free to take this.
> >
> > Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>
> I'm totally confused. This is the second "PATCH v2" of this patch that I came
> across, I already applied the first.
>
> Patrick: Follow up with incremental patch in case there's any difference.
> Meanwhile, please keep in mind that you're adding a lot of work for people when
> you respin patches without following up on the previous version. Thanks!

Not only that, but subthreads were cc:d to arm@kernel.org and some
were not, so I missed the overnight conversation on the topic.

If this email thread is any indication of how the code will be
flowing, there's definitely need for more structure. Joel, I'm hoping
you'll coordinate.

I'm with Arnd on whether the code should be in drivers/soc or not --
most of it likely should not.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
