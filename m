Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FF0C318A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 12:34:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/3rOPVc+2Wsqbuxj/ucRJQt2CVVjYQ9e5gb4W/oYxE=; b=nU3VTsuubT5g6Z
	QRZlLygFWOmtxaI4B0rEhpqlC8GzNqq7/8YhXtoqR40DSHLzaD9p0LYi5BLUCJrnQQ+rx58tRqsRW
	wfja/BhF3SM2Y4Lp7YmMhneNm77HUlDzMXQMImFWKS80js/HfJqAknBJKo4zufM2zwsFoX4GGyuW2
	Xo0psHy8DDotySWifpxqDrC9CZPeElp0J6aDbj4S+B/xkK8RsIH5WGJ95CI3ctLqquXtpKtncBixE
	bQ9xnJohvizq7m8jw+Qx8IDfxpNhr69VMC/Gm/FSrSXgmSzJsENbfjJ2u87+gJTxAP3EKCDbnRhnf
	2pwJIMwCIxee2UgF88IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFFU1-0006fI-2j; Tue, 01 Oct 2019 10:34:17 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFFTq-0006dc-S6
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 10:34:08 +0000
Received: by mail-io1-xd43.google.com with SMTP id a1so46581686ioc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 03:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6AUoGAsc63xfOju6F5+pghwj/1bxK9PF7awTWjOwEOw=;
 b=XUYmuQi/GnwvsxCVi1F3iJRRhqxT2zq5bjp2Uoi/9d7VjsYEhxlebxKmO7/pd0xa0H
 OlITP0GsH0tmVi8M0vQbKLXpWPrI6YwTCXgJNnvpO0zkclQPnr1DDQ4PgxjuhEdIFZVb
 vXJlKxDJKbr82gIIl2ssLSyg+wte6jcrsEVPM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6AUoGAsc63xfOju6F5+pghwj/1bxK9PF7awTWjOwEOw=;
 b=QojZhrHHF2MhoCpbQFLnOXh1+oUhj8gu4h/hCLupMtDLnvHGU5noUTcYs0FzhtND9R
 3O2k4tiqGV4mtiI5jF8COqnKmfnGLVa98TM3jp2zw8NOqrd3x/uA35ylsjlTlcdwBNLm
 Uxrol+l9avKVPar3+ZQ+/tqMsMjJlYuQaZOsqzrLF3ZLEL/4Pz0zlY8pXhixC28934v6
 z7ePBKT5dWY9MVWZzFocI843etQ9F4sQlHD26U0RoAlF9qJKVFjkyMGmncAim7TRiCo6
 /RffsIlFFysDoA4JvsX3UOWLKVo4cBpEv6mqVEOd/hFI47ZNMqMOscYIA1Vt5rI66dQT
 Op7g==
X-Gm-Message-State: APjAAAX7bMB7iWIIVmQtXo/YHQwzS67BVLedOQYICs/Zl03wRVRRK5NZ
 ehcF0xnID9/kS1dO2M1u01iwlkwQTb7CuPMSQbt00g==
X-Google-Smtp-Source: APXvYqxHnKG/AQXbNeChYThj5dd5yvNkhFAenW0UYhhzFKDyKT0mVDkf/X7vv/S8KA9rQY7cWNQ/6OoDgDEEox0dNiU=
X-Received: by 2002:a02:6284:: with SMTP id d126mr23167865jac.51.1569926045668; 
 Tue, 01 Oct 2019 03:34:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <20190919052822.10403-5-jagan@amarulasolutions.com> <4177305.6QI6aNXrAv@phil>
In-Reply-To: <4177305.6QI6aNXrAv@phil>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 1 Oct 2019 16:03:54 +0530
Message-ID: <CAMty3ZBZ0kXsc-4EwUwy9rAHcDvhhYL1JWkyhhdvSvfRdyvvwA@mail.gmail.com>
Subject: Re: [PATCH 4/6] arm64: dts: rockchip: Rename roc-pc with libretech
 notation
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_033406_911919_BB27A380 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Da Xue <da@lessconfused.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Levin Du <djw@t-chip.com.cn>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 3:02 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi Jagan,
>
> Am Donnerstag, 19. September 2019, 07:28:20 CEST schrieb Jagan Teki:
> > Though the ROC-PC is manufactured by firefly, it is co-designed
> > by libretch like other Libretech computer boards from allwinner,
> > amlogic does.
> >
> > So, it is always meaningful to keep maintain those vendors who
> > are part of design participation so-that the linux mainline
> > code will expose outside world who are the makers of such
> > hardware prototypes.
> >
> > So, rename the existing rk3399-roc-pc.dts with libretch notation,
> > rk3399-libretech-roc-rk3399-pc.dts
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile                           | 2 +-
> >  .../{rk3399-roc-pc.dts => rk3399-libretech-roc-rk3399-pc.dts}   | 0
>
> Somewhat "randomly" renaming files for "exposure" of the maker isn't the
> way to go. Especially as the file name itself is merely a handle and not
> meant for fame. The board filename should mainly enable developers to
> hopefully the correct board file to use/change - and "rk3399-roc-pc"
> is sufficiently unique to do that.
>
> Similar to how the NanoPi boards do that.
>
> And renames not only loose the history of changes but also in this case
> the file is in the kernel since july 2018 - more than a year, so this might
> actually affect the workflow of someone.

Yes, I agreed this point.

>
> So I'd really expect an actual technical reason for a rename.

This changes purely based on the recent changes on naming conventions
that have been followed in amlogic and allwinner with regards to
libretech [1]. I have seen few Bananapi boards from Allwinner H3 has
been converted as per Libretech computer recently. I assume these
changes are because libretech has part of co-designed vendor and also
open source forum supported for these hardware.

For further information, may be Da Xue can comment on this.

[1] https://libre.computer/products/boards/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
