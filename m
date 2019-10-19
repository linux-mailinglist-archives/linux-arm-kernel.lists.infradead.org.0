Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2642DDAB7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 21:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K733ZsA0Yp7MU9CmOR3qGrHCCv31Yr7T0LdXCbzhSfw=; b=OY6d287kkpZRSF
	W3gwfK0K6dkF86QehV+CbcID0nM63LzCCl6POQgQvlte3blCLB3mGGd+eg56MLb7MBbR/zWz26Cca
	v/T7xyiH373LitKLBNDZIkLTZoa4k7iuQXO1xPdQDURPYpjaS5qG4dHW0ylDyGxRu7gcGWNUbbU06
	FKst0GuVg0YqTxsRVOMWWS2H/UJEKOElT+TG6fp1wh1/sxDdzzyz3N5VKm3YdjktCq9qZ2ndtsS5X
	aEcE2z5R5bv9yi7G1td4x+XfvIvOZzaSjDHCQuV7Wqtgt9G5TcbAKtZlda+wE9pnprU1lkZfdIdLp
	F/rh+t0O79cmfAmXiXOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLuVO-0001ep-L3; Sat, 19 Oct 2019 19:35:14 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLuV8-0001eM-Rr
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 19:35:00 +0000
Received: from mail-qt1-f178.google.com ([209.85.160.178]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mofst-1hfxye1zFh-00p3XR for <linux-arm-kernel@lists.infradead.org>; Sat,
 19 Oct 2019 21:34:53 +0200
Received: by mail-qt1-f178.google.com with SMTP id c17so11314175qtn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 19 Oct 2019 12:34:53 -0700 (PDT)
X-Gm-Message-State: APjAAAUaqD3wV7gdnNzsAGh1U2KLajfEhpHOW3qXxXoKXxwZdZKd3VsS
 RH2hz6iMX7uku4m9KqijntQge2hoBMRt1yIX8Ic=
X-Google-Smtp-Source: APXvYqy22GrAJBe0FkPxmOqPm4Xlz+XL09o/POQr34X5BMu5W279MixtQUydyM5HiIo/UQu7OEriNwiYVGEphslC9R0=
X-Received: by 2002:ac8:38e3:: with SMTP id g32mr16775838qtc.304.1571513692155; 
 Sat, 19 Oct 2019 12:34:52 -0700 (PDT)
MIME-Version: 1.0
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-44-arnd@arndb.de>
 <4d6920e9fab519ddf69aae9da13a1cd02d13bddd.camel@v3.sk>
In-Reply-To: <4d6920e9fab519ddf69aae9da13a1cd02d13bddd.camel@v3.sk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 19 Oct 2019 21:34:36 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1buT7K7YWAdztqnZ83Jq6f4q-7x_G3Ed09cKQxtKLJSQ@mail.gmail.com>
Message-ID: <CAK8P3a1buT7K7YWAdztqnZ83Jq6f4q-7x_G3Ed09cKQxtKLJSQ@mail.gmail.com>
Subject: Re: [PATCH 44/46] ARM: mmp: remove tavorevb board support
To: Lubomir Rintel <lkundrak@v3.sk>
X-Provags-ID: V03:K1:WglhJ1ZcCmgKfktUs9SG0vSlpK+OKTgIfQnrx5eZ48tN9yUNn8m
 CalP7edxblWuSz6jlYWewftsCTL5K2M+PnJN/wkGMwJkiPv90GmMXkr2D4mxgu5EvC4dwuj
 WbUYVMKPju4YRp+WHQXJaeiEHfdsR5Yt1K3IszbyJTrD9QzEMs8Ap/V3C3/cuQ7e8glIuXr
 n24sKSN3P4rpzYp4RdfOQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CSJHMOLHrrI=:tgbxJo7E6izfAOSMb6gW4w
 F6nrxuE68Dr7h8bknCGGjaFKhCpJss/PuYWasHlls2VyphfMcmfikWyN7dvTj5q5yjjkHNGLw
 T3i044TlmczzlM49qSlBtHgK5PheALzUTXyf6BsBgsTXDl26jYGgsv3uHhEdFW3v/CpAOuw3o
 iJTWvEBzimUPOrkxo35X1ojUTA6RNJsa5vImF4aatNb+uzBI3BuxnSN75M7z1vvtlI64NilkI
 GDyuedvapw6QfNZupED4xcV0ELG/+tbLqwi7m+nqAci284o9c8ciyyOHIDIuf54IEQgTUU6EH
 jzvaJEDW0U3b1WAIbRKVBV3ytTrgd4MwizYjx5+06cg5ubcrz0DrMQREeBDNCFdi7rA5FulP7
 ElwUmt8jxlo2tJ9QM7aXBtuuDDuTtP7zMZBpM4wOzcPSRAjUOk0ZxUXbmRYuaRvwa2VJ90iGr
 VIbEu9Z9ffgkpZLvnq6rql+8d3qav7AHYLUvRWuJCuxZ+jIJnpFbXfizhx6n0Csm0Bl/XQ2Xp
 PKX4QKPTjrLdzTxIiiDUFy6VXiCm/2+sI28dZw5MxVY4LZCuczyneayG1Cc8WNZazJAfR5J2z
 nBJ8EUYctwxn6xgJDFHpZQPzMD3TRmblupLnQmQTP9K+i+MV2Nbhx3d26O6iUk2YqmpYp6Ar8
 iU8P+gc8TUSemZrqQ8AL/4FKuE2yzNxDucZ3E1o+U47vj/TPMYX8bzqg5L7J1yDbpcbwbLQVj
 jYJoFf5vGARP9srFXqtX80X3pc520sOWb+B31oZPwmuV540scBbipDBczYOl4+Jcfcn/7/nAn
 5VD989wOvTDmF7msfWbX/GkpTmpBA6aa0FLEtdqB375A6IMWKHo4u144m9F/SP8Vr1rpQIQ36
 QyW0baoS/v4XwYRk+o6A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_123459_191635_1AD6CB91 
X-CRM114-Status: GOOD (  19.77  )
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Daniel Mack <daniel@zonque.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 19, 2019 at 4:20 PM Lubomir Rintel <lkundrak@v3.sk> wrote:
> On Fri, 2019-10-18 at 17:41 +0200, Arnd Bergmann wrote:
> >
> > There is a third board named TavorEVB in the Kconfig description,
> > but this refers to the "TTC_DKB" machine. The two are clearly
> > related, so I change the Kconfig description to just list both
> > names.
> >
> > Cc: Lubomir Rintel <lkundrak@v3.sk>
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Reviewed-by: Lubomir Rintel <lkundrak@v3.sk>
>
> In fact, I'd love to see more non-DT boards go from mach-mmp. There are
> good indications nobody is looking after MMP2-based "Jasper", "Flint"
> and "Brownstone" and they probably weren't seen outside Marvell either.
> The latter has a DTS file.
>
> Would anybody miss them?

Probably not, but I had a hard time identifying any boards in mmp
and some other platforms that are actually worth keeping.

Back in the days, a common way the platforms were maintained
was to only have the official development board in mainline Linux,
while many products were left with out of tree board files.
This means it's impossible to see which SoCs actually got used
in the field and which ones did not. It also means the other
machines stopped getting forward-ported and nobody could test
the mainline changes.

I wouldn't mind just removing all of the machines that were clearly
reference hardware rather than actual products unless we know of
someone still using them.

In case of MMP, that doesn't leave a lot though, the gplugD is the
only one that clearly meant as an end-user product. I'd also leave
all the DT based platforms as a rule, mainly because the DT has
made it possible to support additional boards with a custom dt blob
and no kernel changes.

If you have any more insight into what particular boards actually
were used for, and which ones can get removed, that would
be very welcome.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
