Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA391BA240
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 13:26:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8BsIVCgraOT+oEXtCHAh7kwcr7oLxxbwN2ib+GdS84=; b=KCbGG9X9PMPaAP
	5rMdzfdOQLwNW4s9n+gKWayqPFBtv5MtqhtYpcEcvBFSiNxW8nm8OB7Y8iVXBs60u+5Zoh9YHMpBe
	Ivley2MxcKN9iVuayWyKFxDxt4ML0g1yPKCcg6GxhT4ZyKdbv5g39Mpq/HC/YDXRXVE/haqsrTvaV
	eMPuci+nZbZQdiu/FCRxcLLPX4wRu1zIPJPYd9nQNH3U+hGY3k8vsYFCVG89fk4iTYtSkq7ADiBAZ
	Xku3cUHy/uAz24zrqkj5yVBA0Z1Jyfnq6bmh0eINoq3uaZeccbrSLWKrDJF5DtlNJz83557ebsWva
	Ht4wwhfRpWAdClYShTjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT1u1-0002TE-I1; Mon, 27 Apr 2020 11:26:21 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT1tf-0002RP-FQ
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 11:26:01 +0000
Received: from mail-lj1-f174.google.com ([209.85.208.174]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N01hu-1jDzxF2Jhm-00x7Vi for <linux-arm-kernel@lists.infradead.org>; Mon,
 27 Apr 2020 13:25:55 +0200
Received: by mail-lj1-f174.google.com with SMTP id f18so17145266lja.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 04:25:55 -0700 (PDT)
X-Gm-Message-State: AGi0PuYcHyqSaw+HG4tGZrCMo3ZyYu8TX+bWt3gi6LQ8/8slFp0tndP4
 Mg6hpb+r6GmdiZHCu3sPYOjgRDxc/9j07RR3uxs=
X-Google-Smtp-Source: APiQypIq0ASCjxz2l793vCnkxz7mMfufmJDW99FACiQR0YIhaLSyFoSV6Nq7RSPRCfYSqnClXjs/aDcMosfF1VJVBdI=
X-Received: by 2002:a2e:8999:: with SMTP id c25mr14254347lji.73.1587986754907; 
 Mon, 27 Apr 2020 04:25:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200408143040.57458-1-max.krummenacher@toradex.com>
In-Reply-To: <20200408143040.57458-1-max.krummenacher@toradex.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 27 Apr 2020 13:25:38 +0200
X-Gmail-Original-Message-ID: <CAK8P3a104Njrxb7vh+YJGpSBxW2ODMJ6M+PvN=WAuM_VRBM9bQ@mail.gmail.com>
Message-ID: <CAK8P3a104Njrxb7vh+YJGpSBxW2ODMJ6M+PvN=WAuM_VRBM9bQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] defconfig: fix changed configs and refresh
To: Max Krummenacher <max.oss.09@gmail.com>
X-Provags-ID: V03:K1:xBHFQKeZvKVCBlUUvxtrxOerNK7p0OzP0H+F43w8V9+mTJL1+PK
 bDoirAkLvWUqj/uLaesU+67bSQzp0OLTqMy7/ZYjTwYFJAa1thpahrOLeD25dUWLWlQcSKg
 7ugbgzez6wN2/QNWmvexnVWpOSyTd0DpsnI3ZeqTeW3gc5UcZXfr6zE5Uoy/NbAZw3fJRHF
 GPwTMwxTTyR92DmokdN/w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:I6NOWqpXY70=:zmAV2lgzY960QmJya+KYBW
 pIPba+bm5T0nZuFMvn6U1lqHwQyA+akUq6v2xd8usca5RRgPiyekle8ErY4K7lfvM8jdS+rmG
 D5AdFsDpHnvhLuDag5bskrFRW7EYMGtLgh+0dvLTuDyCP5Iwc9rNJk7mz0X8ERtskrLNlc+qY
 4QMDJwyWQFCx8bi3afSr9fYhyUoupi+EFhAXuDFFeoIkmpC7hAZ1YZCQgFeoZ9zcgGj4lNE0+
 0lUv05E35LiM07HAqfoSM6aEhhZqQQ7aMT1RlAQsCpoSZIcGLs8Ho5M6BpR79UHvcmzo8jfN1
 nu3xzSNgqUaFUtdli00hEDUlvO3Dp3OhJm+KZVAX+uzJulGMBFZMkKNQRGRdHE5wzMAi59467
 SYHgbaEgDT0Pq/bbfpITLKO45fbcY3MNgCxj8O//Qf7gAtJR1XiAYdYOH0EcsX+CiVZB5p4SB
 CcWRNblOj4VvWimAlP7JtGF5yyWHoQhifdxIyE15Sfrt47otUpm3r1ysNjBoSDI8Pt85nRHCQ
 nReQzsQOn0GfzPeBj6mzxQrnNCizbU7/bS6v9Yq7QXWjgQyOhkjpFDUY2QbgtVMZ9B2Q6El1Y
 f00O7SgmNnKCLxCJ03b92BN3oEw6yc+u/RIms5oH19cz7TozOItvjqqFmBnIoQguQR4fGmQOc
 sfQxJgn9EXI9SpsyvSlPbhlNkakpKWyAh4gqRea7IiSyvBfCG0gz1+mDJYgzgj93VOHphKRCm
 oraKcvGQjOEkv6lNvOLdVg6Ztu0WyPMRLbKlDBCz7EacdMSbkddRIx5p3eNHLcmU9iiiBo4sZ
 BMkowOMcqdLdecYZHoKnMxoSS1fCUiWGzRHxUben4nLDx6HDrI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_042559_847902_00A3D0D5 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Will Deacon <will@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Olof Johansson <olof@lixom.net>, Vidya Sagar <vidyas@nvidia.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 8, 2020 at 4:31 PM Max Krummenacher <max.oss.09@gmail.com> wrote:
>
> Three configs have been renamed and/or changed behaviour.
> Clean that by using the new config name.
> With the name change to DRM_SIMPLE_BRIDGE the related
> DRM_DISPLAY_CONNECTOR got introduced, enable that additionally.
>
> Then refresh the defconfig with make defconfig savedefconfig.
>
> The refreshed defconfig does result in a not changed .config.
>
> Applies on linux-next/master tag: next-20200407
>
>
> Changes in v2:
> - additional patch adding DRM_DISPLAY_CONNECTOR as recommended by Geert and Laurent
> - add reviewed-by tags

Thank you for the series!

When you are reasonably confident that you have done these patches correctly,
feel free to send them to soc@kernel.org so they make it into the
lore.kernel.org
patchwork instance and we pick them up from there.

From the description, I guess the first four are supposed to be
applied as bugfixes
for v5.7, and the last one is meant as a cleanup and queued for v5.8? Please
indicated in the cover letter what you think should happen with them, then we
can either follow that suggestion or see if anyone disagrees.

For the last patch, I want a better description, as you do not say how you made
sure that nothing else changed that needs to be addressed with a separate
patch. From the diffstat "1 file changed, 7 insertions(+), 10 deletions(-)", it
sounds like seven options got moved around but did not change behavior,
but three others have either disappeared or also got renamed. I could look
more closely to see what happened exactly, but I'd prefer this to be obvious
from the changelog.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
