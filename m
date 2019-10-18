Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC5FDCF52
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 21:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=246sns3UCU3i67FtAGDkzHrEH7DgiPQyRoUIrJJ+lkQ=; b=jfZnbHMYnWHgmg
	K+A7B7ol6+V+vDarUiNHsBNqvR2neOZ4EF8WwZwuVRfKazbsR9C4HgoEtNNdaUQbr5LE86mymNvSB
	SfTCfYYASb3LtQXqgVYmMu6ysdpRszKI9tHiRFwtsjEk60ydkDQMi7ftrq5obqcDixI02Clb/bKPB
	GLh9Gc5L/J8p69wwE3MhBHUkoie5JRo0mAXwDxfVQ3BvrWafNGy6Ptl3LzbmrVtD2zav50iIzk/mb
	+nLMYuUfJ+lMurIF0kBStHj4lKci03y8qr42lSBT2SoIcfxPjFfNjlIqhocE3+lJeaIX5WEXDePyG
	4XK/FFa5vAt6z3pUCWkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLXzo-0001FQ-Kd; Fri, 18 Oct 2019 19:33:08 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLXzf-0001ER-KH; Fri, 18 Oct 2019 19:33:01 +0000
Received: from mail-qk1-f176.google.com ([209.85.222.176]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mow4E-1hgSwS1bTi-00qOw1; Fri, 18 Oct 2019 21:32:54 +0200
Received: by mail-qk1-f176.google.com with SMTP id y189so6381214qkc.3;
 Fri, 18 Oct 2019 12:32:54 -0700 (PDT)
X-Gm-Message-State: APjAAAWoMeW7XQndBfJEzgYqVdYQnHH0jCjgAEGsXvjwu5voRYZeNwHP
 GhI4Aa6t2E+sqnzWyk//fmp3alj+8DFyzsjwX3A=
X-Google-Smtp-Source: APXvYqzndIi4+lrEFsQAJTvDSAykrBEjXYWBlihPsFokm/QiIqztK3NntxmM4iVAVoSe7PNdrIRvDpgwbQhfLS5cKrs=
X-Received: by 2002:a37:db0a:: with SMTP id e10mr10369877qki.3.1571427173049; 
 Fri, 18 Oct 2019 12:32:53 -0700 (PDT)
MIME-Version: 1.0
References: <20191018154052.1276506-1-arnd@arndb.de>
 <87v9slg9k5.fsf@belgarion.home>
 <CAK8P3a1JDtHsOW=iaxEycbJ4TBkR9MHUyDMeJnwxCtb=tefnBQ@mail.gmail.com>
In-Reply-To: <CAK8P3a1JDtHsOW=iaxEycbJ4TBkR9MHUyDMeJnwxCtb=tefnBQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 18 Oct 2019 21:32:36 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0376Anmoc8VWXcEBg+z2B+1vcxJoywYYROBQNxpVmZuA@mail.gmail.com>
Message-ID: <CAK8P3a0376Anmoc8VWXcEBg+z2B+1vcxJoywYYROBQNxpVmZuA@mail.gmail.com>
Subject: Re: [PATCH 00/46] ARM: pxa: towards multiplatform support
To: Robert Jarzmik <robert.jarzmik@free.fr>
X-Provags-ID: V03:K1:oVxVVROF7CdkHyfWKdI6PCQrM0NTe3NiNlNYmyf6A/UCuBDJfg9
 GuZ9rmwHtnpHjjHsVHRNpM9jrQDtGniDggK5MId0bh0uu/JH2f6riovxVgC7qXpgrAw98xI
 1bJI79Wbm2VNHC0T273821Wn5bnFLXrFZm+MFzseQ2YYIExWjMo8e8AYwNu+sMEtrNyZ/HC
 I7bRAg0Pk4F1gOKBh5J9Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uOwyo+Gtsn0=:BymXWljFFF3QRJ/hIT/KBC
 IN5sVfq/OdAXurlgZ+ocFeQBq5MLlJoW847NV57n4i4SS+bwN9in5/SGuuGi8G9ZsxIT1IRkX
 taEq3fqA4PXVHDAZsM9i8umsMHWsprdEzNp1d4RcTu4tHb0jVVujiAT9RWPkHyQTs+4NXlRKe
 wB71z4edVJ2krPLAe65HrYvUh+wyz9/dggjgYNByuLy3wrS8537hFuFsvsXq4y2fLb+3MdsPw
 zJ8jxYiZIWWLi6nviZy09U7J3JHYOJIyecXEtMrYMTfqBoeS30rC5cr0p5QHq2h2UQG/shuzo
 12z650AU2hJKMfe7uM9NPXYL4pWAFLQXV0/DAWbJzraE1MFbMp/QIkeNtkqQ+GXm+fqZ7kzw5
 QOa3BNSPyLeNIWv8w/75aAL2fiADWvhBG41wQy92qmv8GHW+uJkN1zoqcbgWLLBKZFVH6shhQ
 3C7O7zQ7o5Vj7tuDLiOymS0hp0+8CMpvKsNDbiJZoCX0KRLPLsYGrg7/DW2iTRZwp0AvgQbBR
 DJwdKSaflbZH9CtrGZiht2jsBPs0ULk4QUYpfjQ8IF4E1KlAnTw9WolrJoGWro30dH9m1RYeV
 GRjDOzn+hzEwaitSLTvDbEtaSakOgPPpH43y8/DP44/7PAgMVX3NLLL2w2jD2ttpoA2e2g8wL
 N0gn6RkbrA245mYKw20aApj1A3KA9XPQ+av6eolwdjm81cUwjMlFsJYiwLlZJB2c2a1aq0Ggp
 k/qGMgf5X5YYkIO+OuHgHf0Af5adriSfpAxvDJCFUrnHeon/vxZj6CQriHAmuCz13vZDofSPJ
 GtgJq8Kez8UfzbbKhC/KgpwY8pR5iKHMfBhZV8eTzD4b4hhOKZsbimrCShK8H1LBQMd4bK5YA
 zA1dVuLG4skFA/rY9vTQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_123259_957387_EE371F74 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 9:17 PM Arnd Bergmann <arnd@arndb.de> wrote:
> On Fri, Oct 18, 2019 at 9:04 PM Robert Jarzmik <robert.jarzmik@free.fr> wrote:
> > Arnd Bergmann <arnd@arndb.de> writes:
> >
> > > Hi PXA maintainers,
> > >
> > > I'm in the process of getting the old ARM platforms to all build
> > > in a single kernel. The largest part of that work is changing all
> > > the device drivers to no longer require mach/*.h header files.
> > >
> > > This series does it for arch/pxa/.
> > >
> > > As with the omap1 and s3c24xx series I sent before, I don't
> > > expect this all to be correct in the first version, though
> > > a lot of the patches are fairly simple and I did exhaustive
> > > compile-time testing on them.
> > >
> > > Please test if you have the hardware, or review!
> >
> > Hi Arnd,
> >
> > Would you have a git tree I can pull from ?
> > That would make my life easier than applying manually 46 patches...
>
> I've now pushed it to
>
> git://git.kernel.org:/pub/scm/linux/kernel/git/arnd/playground.git
> pxa-multiplatform

Sorry for the duplication, I had some problems with email configuration
so my reply got rejected, let's see if it goes through this time.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
