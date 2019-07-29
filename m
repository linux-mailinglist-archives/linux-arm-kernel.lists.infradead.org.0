Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 226CF78FB6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 17:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PH3NioglvOaJUzxwjazPkcOVxZ2oCo1dctGNe/TsYJ0=; b=UbsMRAMoHWPj0Q
	ZwLM0usxqzeEMnx1WLtgJy1hF2PJsFVljizrKgAcL19HkD18QDu8nbIHQ8AoAgbmD/k0h187Ym2x0
	cfsnSzpaSCQfdM30aEDIC7kcC43mxkvj9GSVntZ8KXfi6TLPYreAJuJYcUclGtCiJPf4RzTdpM2IS
	2twcJOq4eEKs7VltvM7jGxNxE/8OInJ+4hUCPipSeL7qA6If5LlnwNdl1G5cFpSxfDFgHdxntb4Xz
	OO1s1JxJEDnhyN4M+jdh1FE8i9lFiXEtPeFAq6W2Lo3Bfjjfoxsyt7PyrTCF+CGDlfZPafnBOakcA
	OGGSESID4C7GYG0YX9Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs7qy-0005Ce-4Q; Mon, 29 Jul 2019 15:46:24 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs7qm-0005Bn-67
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 15:46:13 +0000
Received: by mail-qt1-f193.google.com with SMTP id r6so55862357qtt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 08:46:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MdHXLZwaqbOv7T3Hj3y1o9Z8ZEiEvQ/Zlrs0AB1LjQo=;
 b=tRcoACAo7OTvTCv8O6gPXcmAe1YoL2+ZUO005GsqeymheBszl2H8egK3XqBTAbrRMp
 PoDxBrScvf8XQyMt29CWgWc4hmqoGmCrDg5ssf+ouQCoAl9/nrwWwcQDKdOykfOkYI04
 gd85hOlpw8nkGE2vGtEJhP6NnSR/nZER65S+Qoy4py2ijpyQDjuhEr/Y7sWTtd/auw0U
 nQnJWCcJ8h06DO5Kw/4oQL6aWHdHb8Hwb6prI6itdsk2FcPX9cqdruy398ECJFW4XbXZ
 ij6NdXYMUFZ3x6rivW+x8mi9Ci7WDBS+TPs7ACG0z7j/sruNrgs37gPrS8viOr+q3J2P
 FxRg==
X-Gm-Message-State: APjAAAX+1CKY8H73STRHF4wGxApacj0VejpaozzGUL47f+5vPVJ/PJsS
 6LlK4OoBKVT1IZ+I35Jgx3GCOHygqAU+C88FdCk=
X-Google-Smtp-Source: APXvYqw/cgcq+yELqIxSSobC3ksc1GJZ0AXgiz/NIbvMz4AkwGr0gHwZI//W5CKPZAtnvTrcbOFyZ+FH8T2J6P7vEGY=
X-Received: by 2002:a0c:b88e:: with SMTP id y14mr77156754qvf.93.1564415170331; 
 Mon, 29 Jul 2019 08:46:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190415202501.941196-1-arnd@arndb.de>
 <2424c672-e3fb-4c32-4c24-fafc59d03a96@uclinux.org>
 <CACRpkdaJ+2bub_nDp9=5b4kyKjWDnOGKscWg3KsEVixDpk8rzA@mail.gmail.com>
 <20190503170613.GA1783@roeck-us.net>
 <d8d81aca-722d-8b5f-cd5f-30cc3e4e407b@kernel.org>
 <CAK8P3a0StV==jMq1L9k91qEsvRD1Cw2FB1V25wr1AQqzmjsTVw@mail.gmail.com>
 <2bc41895-d4f9-896c-0726-0b2862fcbf25@kernel.org>
In-Reply-To: <2bc41895-d4f9-896c-0726-0b2862fcbf25@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 29 Jul 2019 17:45:53 +0200
Message-ID: <CAK8P3a19W73-NSdrTbG4NcVw1nYPV+K78kRbeZ8CwMUjnXhTzQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] ARM: ks8695: watchdog: stop using mach/*.h
To: Greg Ungerer <gerg@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_084612_230144_4EACEE2D 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 arm-soc <arm@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 2:53 PM Greg Ungerer <gerg@kernel.org> wrote:
> On 23/7/19 12:44 am, Arnd Bergmann wrote:
> > On Sat, May 4, 2019 at 4:27 PM Greg Ungerer <gerg@kernel.org> wrote:
> >> On 4/5/19 3:06 am, Guenter Roeck wrote:
> >>> On Fri, May 03, 2019 at 08:16:05AM +0100, Linus Walleij wrote:
> >>>> With IXP4xx, Gemini and EP93xx we have found active users and
> >>>> companies selling the chips and reference designs and even
> >>>> recommending it for new products (!) at times.  If this is not the
> >>>> case with KS8695 and no hobbyists are willing to submit it
> >>>> to OpenWrt and modernize it to use device tree I think it should be
> >>>> deleted from the kernel.
> >>>>
> >>>
> >>> That may be the best approach if indeed no one is using it,
> >>> much less maintaining it.
> >>
> >> Well, I for one don't really use it any more. So I don't have a lot
> >> of motivation to maintain it any longer.
> >
> > I came across my patches while rebasing my backlog to 5.3-rc1.
> >
> > Should I save the (very small) trouble of sending them out again
> > and just remove the platform then?
>
> At this time I have no issue with removing it.

Ok, let's do that then.

For reference, this is what I think we should do for the
remaining ARM9 based platforms that never gained multiplatform
support, as time permits:

netx: is now removed
ks8695: remove next
w90x900: probably remove, need to confirm with last known users
davinci: almost multiplatform now, should be done in 5.4
ep93xx: convert to common-clk, generic-irq, then enable multiplatform
 (linusw is on it)
omap1: convert to common-clk, change pcmcia driver to common
  I/O space method, use dma_pfn_offset for virt_to_bus, add ugly
  hacks for cpu_is_omap*() and omap_readl(), then enable multiplatform
  (arnd has started this)
lpc32xx: clean up header files so we can build last 6 drivers
  independently, then move to multiplatform, probably after 5.4
  I have patches for this somewhere.
s3c24xx: change 18 drivers that still use mach/* headers, get
  creative about mach-bast ISA I/O space

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
