Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9FA67C5E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jul 2019 00:59:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MdaektHPj6Q+7iKbnUc7KS/sKqduhfr/RHogot1sOA0=; b=jfOrkTvG58WzkU
	1UEjMDuEKiRxMe7QAErhhtLuk1GSUbq8MsKEcCFl6x3whKvJaxM/el4p33m8zK3V2ZJM/ShaFTE0T
	Y0Y4+bgM6+W6PfJlnLzJ/uWwSRqu5Qcf7Toi6J82MAa2TEN9dw10nzFefw2V53kpzx5LymcyXG3T0
	Yum0u7tDbJEAMzuDfoVelXa14D19K+878/G3I0mo8+/3iV2DrHsM1ObXagNljVdzib2VSp3QumM9f
	YTIJqa4S8YK4ItMj9EMg6dKHcVhi4pou5LbBeKK0wp6sVVZkyMS2tpet1tKL9J/NFmw5h+mR9rAwj
	GvoyenzHWd7C9d1Ijipg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmQyp-000201-E8; Sat, 13 Jul 2019 22:58:59 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmQyd-0001zH-NE
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jul 2019 22:58:49 +0000
Received: by mail-ua1-x944.google.com with SMTP id 34so5383593uar.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jul 2019 15:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C521pemh84hQDpPKGvZwcyDQbmvvEOy9KjEBffRDfy8=;
 b=tMVaEtsma6gM3qxAeq2DWlq9ccipMteWpzx1QSsbtJxp1KQsgpUK1O3Xm3rUL7U5d6
 7HIlcZjebo4lVO1eu7C9v7gvyXfkALLm01JlnyVN1tom+hEFpiwojkqysbG+gMY8eAFU
 19eHob+krzEh4d+U1Rt3N+ZUqIK0qMaXE6YwJAClmNlCZvYNRPxV/qsRQUnAPU3nqWd5
 tL6X3DfIXabcYmh0gJ8H2oOt2n0UMY5pkjVBuG/IN7GzDV502O1UVmZehdQQIDupVzto
 9in+iY7dMAO36YkrkXzPqfuQtXMBScjUQpLZBG7jDuXub8zkFyZa4zLDdSnd322Pjcq0
 8L1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C521pemh84hQDpPKGvZwcyDQbmvvEOy9KjEBffRDfy8=;
 b=X1NX9NEKxGSHQSXewEiRIqaeaTVb7s2Hio1gkyKm3zO+R0rH4/6crEmmp2zgUeeVKV
 Rmxt02bx+Huw2MK8I/rSBASFCN9FIbqbMNT/nztoXi72EkdPpkIWedXmWi/ezv/6qQCp
 N3KgDfALVM1GIYQx3QR/+td3ZqMPPwFIBLhfqx6SjBCShiGO4cfMcJOUsBslSY7pFor7
 4R4npxmWmCAeJqyQDQ26ZIXJOzadllxyEGHAX0pN7HwuhPTDZK1+ho0wj0NPq9m697qA
 qsJL3wT+4uzqoyu6Ix7V1uJoOoGSMPX9FHearnp0Din654Jte7s/yRjJmLcQZjNR/5x+
 TcXw==
X-Gm-Message-State: APjAAAXiN1rN0zWFJzb0evhCQCMsGqxJVyZbPio1+eZCOQJAyGYrDPoz
 A6oVswpMCE6R7EMmBaZYX4wNPqFOHBX6jYiYYrc=
X-Google-Smtp-Source: APXvYqy9iyOxbGuuKGCYA7P9x4/jCssoGs1MvrDafxGacYP2yXkE8lKvX3eDFZmQr3u0yULaYS1miZoz7xW6gN4q6+4=
X-Received: by 2002:ab0:2a49:: with SMTP id p9mr12794749uar.0.1563058726092;
 Sat, 13 Jul 2019 15:58:46 -0700 (PDT)
MIME-Version: 1.0
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
 <5fe66d5d-0624-323f-3bf8-56134ca85eca@gmx.co.uk>
 <f47f8759-8113-812a-b17a-4be09665369e@gmx.co.uk>
 <2648434.ut0pN6mfR1@phil> <2d52b787-187c-5638-660c-33d51a07770c@gmx.co.uk>
In-Reply-To: <2d52b787-187c-5638-660c-33d51a07770c@gmx.co.uk>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Sat, 13 Jul 2019 19:58:38 -0300
Message-ID: <CAAEAJfAeZaT5wd4k8Lkf6T3G7LpK5LmOOG2ZbVJAQ6Xb7Wtdcw@mail.gmail.com>
Subject: Re: [REGRESSION] Xorg segfaults on Asus Chromebook CP101 with Linux
 v5.2 (was Asus C101P Chromeboot fails to boot with Linux 5.2)
To: Alex Dewar <alex.dewar@gmx.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_155848_177176_F44DDFB5 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Heiko Stuebner <heiko@sntech.de>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 13 Jul 2019 at 13:43, Alex Dewar <alex.dewar@gmx.co.uk> wrote:
>
> On 13/07/2019 16:17, Heiko Stuebner wrote:
> > Hi,
> >
> > Am Samstag, 13. Juli 2019, 13:38:45 CEST schrieb Alex Dewar:
> >> I initially thought my machine was failing to boot entirely, but it
> >> turns out it was just failing to start the display manager. I managed to
> >> escape to a tty by hammering the keyboard a bit.
> >>
> >> I suspect the culprit is the rockchip_vpu driver (in staging/media),
> >> which has been renamed to hantro in this merge window. When I run startx
> >> from a terminal, X fails to start and Xorg segfaults (log here:
> >> http://users.sussex.ac.uk/~ad374/xorg.log). X seems to work without any
> >> issues in v5.1.
> >
> > 5.2 also has support for Panfrost (Mali-Midgard GPUs) but I'm not
> > sure if it already can support X11 yet and your X11 log mentions
> > libglamoregl in the segfault stack trace.
> >
> > Apart from it bisect that Greg suggested you could also just try
> > blacklisting either panfrost or vpu kernel modules
> > /etc/udev/somewhere . This would prevent them from loading
> >
> > Hope that helps
> > Heiko
> >
> >
>
> Hi Heiko,
>
> Thanks for this. I blacklisted the panfrost driver and X magically
> started working again.
>
> I'll try to do a bisect later to find the offending commit though.
>
> In related news, it also seems that the sound and wifi drivers aren't
> working either in 5.2 (although I need to do a bit more testing to
> confirm the latter).
>

Adding myself and Tomeu.

Perhaps we need to disable Panfrost from defconfig from now?

Regards,
Eze

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
