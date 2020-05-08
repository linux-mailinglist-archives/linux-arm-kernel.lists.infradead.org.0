Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE19C1CA1B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 05:53:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aRKpPX00oqFaqIfmvaalFORrY0bWmqWtG/50EzDrMW8=; b=Uva52MM9vbOpvr
	ODEIdHYBdlbqcFxKcFTe0GbRTEV7Fjr/cpqa52ZGeGppFzgksaX6HIcSHBE2JzsCb8uwcjmyh1hr+
	qMPKqjZex3QJGFyaFEQlNQeMRQ9gHqJ7XFbNmHFSNsOFkPrH/Dqe3dbWkP8FSGu3fIiy1jzLRgcQy
	OJa/sSLV37AucHWEyo+Gz89l+yuStZHFG2R4I6m7ryV8bjwzvF21gC5/884oDKTSMEfS2j1WCdknk
	lnbl/DnVN5x1RTUHH0YafVXr1eqnoxQur22luKnOJx44mzm2Xdv7Y1pKsZzJpRJbm+l8sTYjDUZ7k
	SRrqDSdPWxXBN93y08mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWu4R-0000Rz-Ar; Fri, 08 May 2020 03:53:07 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWu4H-0000QI-E6
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 03:52:59 +0000
Received: by mail-vs1-xe43.google.com with SMTP id l25so280269vso.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 20:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AofEIL6YwXkUVr1SNl6pGav5cBT+5klZGSSb4tIGh2s=;
 b=Ws3HSrFplgBdKEF0d6Ef/CDW5EwS0mXz/l1DIcB7Yh88VTMzo5MJ1/iiMYqJgvjIps
 jZg+hxl63XPpkntjE6T09riZ2WW1K61v5WIqxg3xsIhYwQxmE9xabjYObXdDyEBG0BhN
 8VAe1as355JZIKEi5T6z7jcGg7UCgngipOJMay+JgSZzBvvfdm/Y/HE6PGURFLejYcae
 Qtj8iGyb6pngMMlDtfEwrZ0/7V8aPDpDm/HfLafQRWixtrEN1tg7Y1xjHAfOIXjAfH69
 mCETeiAkyA5W7hcljWLKKIu1/rag+QSkJSJ+/oMXE9NhCaqWtxFh2DTEV+zJZmpiIx2X
 Jxzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AofEIL6YwXkUVr1SNl6pGav5cBT+5klZGSSb4tIGh2s=;
 b=gRzRVAod22br50VlRSoRwxNF5xABPX0D7+agjqjlck17NvcU/wPCNGWzmaqcXTi2oh
 zqeqTBPptizEbav6qq7KU6XNtnFLVrsySsl5lKOokevH485CUTADuG3jrteSs2NOAl7J
 CsUOvViDPlJkLiaiZQegk72GPMDUOvnkIu7wWeYdD6tRYVo5sIv+gI6b7M5PUu2h3N7l
 CUtfP8Y6VRbcGVdZxvQLhvc2M9pccjaGQNOYUFpvL/ImgWgPoaF8h0hymQAtJYE5UVLX
 W4bV7s/B+7JnEOZMRf5asjwpM8pvBpMvnl6UK9o1oFutFBtcgZDnRUFgQOWCjLEqyviH
 iWfA==
X-Gm-Message-State: AGi0PuaF4/m0Tk7G+ey4HfAojZbt3jkSytS6anUpun/fff+3qf843wu9
 phts201cjfb7a0CF/We5YoWjJNbXCh3DooJDscQJjQ==
X-Google-Smtp-Source: APiQypK0VwJrY4iB2MHXq8SKZlSKQAWMfhS/ZAicl7WYe0F28/ri1drVF8Qs2B+UBwYxgSQnt7BKpD8v0MZ88ZPq2H4=
X-Received: by 2002:a67:302:: with SMTP id 2mr347325vsd.165.1588909975527;
 Thu, 07 May 2020 20:52:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200503222805.2668941-1-martin.blumenstingl@googlemail.com>
 <CAPDyKFrY0ApUCNL4gVHRc2FRcYaS0PKr_P4a18RUZHxcVceVWg@mail.gmail.com>
 <CAFBinCAhLiunUvw+BAHnv3XVmmU=Wxs1i=WLAAFL5=Hn0RPOvQ@mail.gmail.com>
In-Reply-To: <CAFBinCAhLiunUvw+BAHnv3XVmmU=Wxs1i=WLAAFL5=Hn0RPOvQ@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 8 May 2020 05:52:18 +0200
Message-ID: <CAPDyKFqO8D-UUvq3Ebtnp73xfD_0kaWBq=75wvFL=4xbK5Zj-g@mail.gmail.com>
Subject: Re: [PATCH] mmc: meson-mx-sdio: trigger a soft reset after a timeout
 or CRC error
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_205257_560969_7C68D2BA 
X-CRM114-Status: GOOD (  22.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Tobias Baumann <017623705678@o2online.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 May 2020 at 23:14, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Hi Ulf,
>
> On Thu, May 7, 2020 at 11:29 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > On Mon, 4 May 2020 at 00:28, Martin Blumenstingl
> > <martin.blumenstingl@googlemail.com> wrote:
> > >
> > > The vendor driver (from the 3.10 kernel) triggers a soft reset every
> > > time before starting a new command. While this fixes a problem where
> > > SDIO cards are not detected at all (because all commands simply
> > > timed out) this hurts SD card read performance a bit (in my tests
> > > between 10% to 20%).
> > >
> > > Trigger a soft reset after we got a CRC error or if the previous command
> > > timed out (just like the vendor driver from the same 3.10 kernel for the
> > > newer SDHC controller IP does). This fixes detection of SDIO cards and
> > > doesn't hurt SD card read performance at the same time.
> > >
> > > With this patch the initialization of an RTL8723BS SDIO card looks like
> > > this:
> > >   req done (CMD52): -110: 00000000 00000000 00000000 00000000
> > >   clock 400000Hz busmode 2 powermode 2 cs 1 Vdd 21 width 1 timing 0
> > >   starting CMD0 arg 00000000 flags 000000c0
> > >   req done (CMD0): 0: 00000000 00000000 00000000 00000000
> > >   clock 400000Hz busmode 2 powermode 2 cs 0 Vdd 21 width 1 timing 0
> > >   starting CMD8 arg 000001aa flags 000002f5
> > >   req done (CMD8): -110: 00000000 00000000 00000000 00000000
> > >   starting CMD5 arg 00000000 flags 000002e1
> > >   req done (CMD5): 0: 90ff0000 00000000 00000000 00000000
> > >   starting CMD5 arg 00200000 flags 000002e1
> > >   req done (CMD5): 0: 90ff0000 00000000 00000000 00000000
> > >   starting CMD3 arg 00000000 flags 00000075
> > >   req done (CMD3): 0: 00010000 00000000 00000000 00000000
> > >   starting CMD7 arg 00010000 flags 00000015
> > >   req done (CMD7): 0: 00001e00 00000000 00000000 00000000
> > >   starting CMD52 arg 00000000 flags 00000195
> > >   req done (CMD52): 0: 00001032 00000000 00000000 00000000
> > >   [... more CMD52 omitted ...]
> > >   clock 400000Hz busmode 2 powermode 2 cs 0 Vdd 21 width 1 timing 2
> > >   clock 50000000Hz busmode 2 powermode 2 cs 0 Vdd 21 width 1 timing 2
> > >   starting CMD52 arg 00000e00 flags 00000195
> > >   req done (CMD52): 0: 00001000 00000000 00000000 00000000
> > >   starting CMD52 arg 80000e02 flags 00000195
> > >   req done (CMD52): 0: 00001002 00000000 00000000 00000000
> > >   clock 50000000Hz busmode 2 powermode 2 cs 0 Vdd 21 width 4 timing 2
> > >   starting CMD52 arg 00020000 flags 00000195
> > >   req done (CMD52): 0: 00001007 00000000 00000000 00000000
> > >   [... more CMD52 omitted ...]
> > >   new high speed SDIO card at address 0001
> > >
> > > Fixes: ed80a13bb4c4c9 ("mmc: meson-mx-sdio: Add a driver for the Amlogic Meson8 and Meson8b SoCs")
> > > Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > > ---
> > > Ulf, I consider this non-critical because as long as the meson-mx-sdhc
> > > driver is not merged we only have one MMC driver for these platforms.
> > > I don't know anybody to prefer SDIO wifi over SD card access, so this
> > > can go into -next (in my option at least).
> > >
> >
> > Alright, applied for next, thanks!
> thank you for taking this patch!
>
> I received a confirmation (off-list) saying that this patch works as it should.
> Tobias was not Cc'ed on the original mail so he gave me to permission
> (again, off-list - he's Cc'ed now) to add his:
> Tested-by: Tobias Baumann <017623705678@o2online.de>

I will add it next time I rebase my branch, probably on Monday, thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
